/// 
Class SFT.src.BP.Process.process Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='SFT.src.Msg.request' response='SFT.src.Msg.response' height='2000' width='2000' >
<context>
<property name='ctxIdentificador' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
<property name='ctxPedido' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
<property name='ctxPaciente' type='%Integer' instantiate='0' />
<property name='ctxRetorno' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
<property name='ctxB64Pedido' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
<property name='k1' type='%Integer' instantiate='0' />
<property name='ctxErroExame' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
<property name='ctxB64' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
<property name='contExames' type='%Integer' initialexpression='0' instantiate='0' />
</context>
<sequence xend='200' yend='1250' >
<code xpos='200' ypos='250' >
<![CDATA[ Set context.ctxIdentificador = request.Identificador
 Set context.ctxPedido = request.Pedido.Codigo
 Set context.ctxPaciente = request.Paciente.Codigo
 Set context.ctxB64Pedido = $ZCONVERT(request.Identificador_""_request.Pedido.OrdemServico,"O","UTF8")
 Set context.ctxB64  = $system.Encryption.Base64Encode(context.ctxB64Pedido )]]>
</code>
<rule name='Validation' rule='SFT.src.Rule.validation.inputs'  xpos='200' ypos='350' >
</rule>
<if name='Sucesso' condition='context.ctxRetorno = "sucesso"' xpos='200' ypos='450' xend='200' yend='1050' >
<true>
<foreach property='request.Exames' key='context.k1' xpos='335' ypos='600' xend='200' yend='450' >
<call name='Gravar XML' target='SFT.src.BO.LIS.output' async='0' xpos='200' ypos='250' >
<request type='SFT.src.Msg.XML.request' >
<assign property="callrequest.Identificador" value="request.Identificador" action="set" />
<assign property="callrequest.CodigoExame" value="request.Exames.GetAt(context.k1).Codigo" action="set" />
<assign property="callrequest.Codigo" value="request.Pedido.Codigo" action="set" />
<assign property="callrequest.CodigoPaciente" value="request.Paciente.Codigo" action="set" />
<assign property="callrequest.DescricaoExame" value="request.Exames.GetAt(context.k1).Descricao" action="set" />
<assign property="callrequest.NomePaciente" value="request.Paciente.Nome" action="set" />
<assign property="callrequest.OrdemServico" value="request.Pedido.OrdemServico" action="set" />
<assign property="callrequest.Sexopaciente" value="request.Paciente.Sexo" action="set" />
</request>
<response type='Ens.Response' />
</call>
<assign name="Contar Exame" property="context.contExames" value="context.contExames + 1" action="set" xpos='200' ypos='350' />
</foreach>
<if name='Sem exames' condition='context.contExames = 0' xpos='335' ypos='700' xend='335' yend='950' >
<true>
<assign property="context.ctxRetorno" value="context.ctxErroExame" action="set" xpos='470' ypos='850' />
</true>
</if>
</true>
</if>
<assign name="Retorno" property="response.return" value="context.ctxRetorno" action="set" xpos='200' ypos='1150' />
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
