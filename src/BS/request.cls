Class SFT.src.BS.request Extends (%CSP.REST, Ens.BusinessService)
{

Parameter HandleCorsRequest = 1;

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
	<Route Url="/exams" Method="POST" Call="Exams"/>
</Routes>
}

ClassMethod Exams() As %Status
{
	Set tSC = $$$OK

	Try {

		Set %response.ContentType = "application/json"
		Set data = ##class(Ens.Director).CreateBusinessService("SFT.src.BS.request",.pService)
		
		Set rawPayload = $ZCONVERT(%request.Content.Read(), "I", "UTF8")
		Set tSC = ##class(Ens.Util.JSON).JSONStreamToObject(rawPayload, .pRequest, "SFT.src.Msg.request", 1)
 		
 		Set tSC = pService.Destin("SFT.src.BP.Process.process",pRequest,.output)
		$$$ThrowOnError(tSC)

		If ($IsObject(output))
		{
            Do ##class(%ZEN.Auxiliary.jsonProvider).%ObjectToJSON(output,,0,"ueal")
			Set %response.Status = 200
			$$$LOGINFO("Ok")
		}
        Else 
        {
			Throw ##class(%Exception.General).%New("Response failure",500,,"There's a problem with BP response")
		}

	}
    Catch ex {		
		Set %response.Status = 500
		$$$LOGERROR(ex.DisplayString())
	}

	Quit $$$OK
}

Method Destin(target As %String, input As %Stream.Object, Output output As %Stream.Object) As %Status
{
	Quit ..SendRequestSync(target, input, .output, 120)
}

ClassMethod OnHandleOptionsRequest(pUrl As %String) As %Status
{
	Quit $$$OK
}

}
