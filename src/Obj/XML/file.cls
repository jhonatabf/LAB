Class SFT.src.Obj.XML.file Extends (%Persistent, %XML.Adaptor)
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
<Data name="fileDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Identificador</Value>
</Value>
<Value name="3">
<Value>Codigo</Value>
</Value>
<Value name="4">
<Value>OrdemServico</Value>
</Value>
<Value name="5">
<Value>CodigoPaciente</Value>
</Value>
<Value name="6">
<Value>NomePaciente</Value>
</Value>
<Value name="7">
<Value>Sexopaciente</Value>
</Value>
<Value name="8">
<Value>CodigoExame</Value>
</Value>
<Value name="9">
<Value>DescricaoExame</Value>
</Value>
</Data>
<DataLocation>^SFT.src.Obj.XML.fileD</DataLocation>
<DefaultData>fileDefaultData</DefaultData>
<IdLocation>^SFT.src.Obj.XML.fileD</IdLocation>
<IndexLocation>^SFT.src.Obj.XML.fileI</IndexLocation>
<StreamLocation>^SFT.src.Obj.XML.fileS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
