Class SFT.src.Production.producao Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="SFT.src.Production.producao" TestingEnabled="true" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="SFT.src.BO.LIS.output" Category="Shift" ClassName="SFT.src.BO.LIS.output" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/durable/iris/mgr/user</Setting>
  </Item>
  <Item Name="SFT.src.BP.Process.process" Category="Shift" ClassName="SFT.src.BP.Process.process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="SFT.src.BS.request" Category="Shift" ClassName="SFT.src.BS.request" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
