Class SFT.src.Obj.Paciente.paciente Extends (%Persistent, %XML.Adaptor)
{

Property Codigo As %Integer;

Property Nome As %String(MAXLEN = 255);

Property Sexo As %String(MAXLEN = 1);

Storage Default
{
<Data name="pacienteDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Codigo</Value>
</Value>
<Value name="3">
<Value>Nome</Value>
</Value>
<Value name="4">
<Value>Sexo</Value>
</Value>
</Data>
<DataLocation>^SFT.src.Obj.Paciente.pacienteD</DataLocation>
<DefaultData>pacienteDefaultData</DefaultData>
<IdLocation>^SFT.src.Obj.Paciente.pacienteD</IdLocation>
<IndexLocation>^SFT.src.Obj.Paciente.pacienteI</IndexLocation>
<StreamLocation>^SFT.src.Obj.Paciente.pacienteS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
