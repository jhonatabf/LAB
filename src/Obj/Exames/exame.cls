Class SFT.src.Obj.Exames.exame Extends (%SerialObject, %XML.Adaptor)
{

Property Codigo As %Integer;

Property Descricao As %String(MAXLEN = 255);

Storage Default
{
<Data name="exameState">
<Value name="1">
<Value>Codigo</Value>
</Value>
<Value name="2">
<Value>Descricao</Value>
</Value>
</Data>
<State>exameState</State>
<StreamLocation>^SFT.src.Obj.Exames.exameS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
