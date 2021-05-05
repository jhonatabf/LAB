Class SFT.src.Msg.request Extends Ens.Request
{

Property Identificador As %String(MAXLEN = 255);

Property Pedido As SFT.src.Obj.Pedido.pedido;

Property Paciente As SFT.src.Obj.Paciente.paciente;

Property Exames As list Of SFT.src.Obj.Exames.exame;

Storage Default
{
<Data name="requestDefaultData">
<Subscript>"request"</Subscript>
<Value name="1">
<Value>Identificador</Value>
</Value>
<Value name="2">
<Value>Pedido</Value>
</Value>
<Value name="3">
<Value>Paciente</Value>
</Value>
<Value name="4">
<Value>Exames</Value>
</Value>
</Data>
<DefaultData>requestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
