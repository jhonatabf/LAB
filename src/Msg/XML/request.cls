Class SFT.src.Msg.XML.request Extends Ens.Request
{

Property Identificador As %String(MAXLEN = 255);

Property Codigo As %String(MAXLEN = 4000);

Property OrdemServico As %Integer;

Property CodigoPaciente As %Integer;

Property NomePaciente As %String(MAXLEN = 255);

Property Sexopaciente As %String(MAXLEN = 1);

Property CodigoExame As %Integer;

Property DescricaoExame As %String(MAXLEN = 255);

Storage Default
{
<Data name="requestDefaultData">
<Subscript>"request"</Subscript>
<Value name="1">
<Value>Identificador</Value>
</Value>
<Value name="2">
<Value>Codigo</Value>
</Value>
<Value name="3">
<Value>OrdemServico</Value>
</Value>
<Value name="4">
<Value>CodigoPaciente</Value>
</Value>
<Value name="5">
<Value>NomePaciente</Value>
</Value>
<Value name="6">
<Value>Sexopaciente</Value>
</Value>
<Value name="7">
<Value>CodigoExame</Value>
</Value>
<Value name="8">
<Value>DescricaoExame</Value>
</Value>
</Data>
<DefaultData>requestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
