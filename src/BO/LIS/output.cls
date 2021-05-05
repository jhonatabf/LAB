Class SFT.src.BO.LIS.output Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.File.OutboundAdapter";

Property Adapter As EnsLib.File.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method writeExam(pRequest As SFT.src.Msg.XML.request, Output pResponse As Ens.Response) As %Status
{
	Set tSC = $$$OK
	
	set pResponse = ##class(Ens.Response).%New()

    set writer = ##class(%XML.Writer).%New()
    Do writer.OutputToString()
    set status = writer.RootObject(pRequest)

    set newXml = writer.GetXMLString()

	Set tSC = ..Adapter.PutLine(pRequest.Codigo_""_pRequest.CodigoExame_""_$horolog_".xml",newXml)
	Set pResponse = $$$OK
	Quit tSC
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="SFT.src.Msg.XML.request">
		<Method>writeExam</Method>
	</MapItem>
</MapItems>
}

}
