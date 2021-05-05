Class App.Installer
{

XData setup
{
<Manifest>
  <Default Name="Namespace" Value="irisshift"/>
  <Default Name="app" Value="irisshift" />
  <Namespace Name="${Namespace}" Code="${Namespace}" Data="${Namespace}" Create="yes" Ensemble="1">
    <Configuration>
      <Database Name="${Namespace}" Dir="/opt/${app}/data" Create="yes" Resource="%DB_${Namespace}"/>
    </Configuration>
    <CSPApplication
      Url="/csp/${app}"
      Directory="${cspdir}${app}"
      ServeFiles="1"
      Recurse="1"
      MatchRoles=":%DB_${Namespace}"
      AuthenticationMethods="32" />
    <Production Name="SFT.Production.shift" AutoStart="1" />
  </Namespace>
</Manifest>
}

ClassMethod Setup(ByRef pVars, pLogLevel As %Integer = 3, pInstaller As %Installer.Installer, pLogger As %Installer.AbstractLogger) As %Status [ CodeMode = objectgenerator, Internal ]
{
  #; Let XGL document generate code for this method. 
  Quit ##class(%Installer.Manifest).%Generate(%compiledclass, %code, "setup")
}

}
