Class SFT.src.Obj.Pedido.pedido Extends (%Persistent, %XML.Adaptor)
{

Property Codigo As %String(MAXLEN = 4000);

Property OrdemServico As %Integer;

Storage Default
{
<Data name="pedidoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Codigo</Value>
</Value>
<Value name="3">
<Value>OrdemServico</Value>
</Value>
</Data>
<DataLocation>^SFT.src.Obj.Pedido.pedidoD</DataLocation>
<DefaultData>pedidoDefaultData</DefaultData>
<IdLocation>^SFT.src.Obj.Pedido.pedidoD</IdLocation>
<IndexLocation>^SFT.src.Obj.Pedido.pedidoI</IndexLocation>
<StreamLocation>^SFT.src.Obj.Pedido.pedidoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
