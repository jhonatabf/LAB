/// 
Class SFT.src.Rule.validation.inputs Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "Ens.Rule.GeneralBusinessRuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="" production="">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<assign property="ctxRetorno" value="&quot;sucesso&quot;"></assign>
<assign property="ctxErroExame" value="&quot;Erro: É necessário no mínimo um exame&quot;"></assign>
<rule name="Validadores" disabled="false">
<when condition="ctxIdentificador = &quot;&quot;">
<assign property="ctxRetorno" value="&quot;Erro: O identificador não foi informado&quot;"></assign>
</when>
<when condition="ctxPedido = &quot;&quot;">
<assign property="ctxRetorno" value="&quot;Erro: O Código do pedido não foi informado&quot;"></assign>
</when>
<when condition="ctxPaciente = &quot;&quot;">
<assign property="ctxRetorno" value="&quot;Erro: O Código do paciente não foi informado&quot;"></assign>
</when>
<when condition="ctxB64 != ctxPedido">
<assign property="ctxRetorno" value="&quot;Erro: O Código do paciente deve ser composto da base 64 dos campos de Identificador com o campo Ordem de Serviço&quot;"></assign>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
