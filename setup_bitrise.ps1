
function envsubst {
  param([Parameter(ValueFromPipeline)][string]$InputObject)

  Get-ChildItem Env: | Set-Variable
  $ExecutionContext.InvokeCommand.ExpandString($InputObject)
}

cat .bitrise.bazelrc.tpl | envsubst > .bitrise.bazelrc

echo "using bitrise cache $BITRISE_CACHE_ENDPOINT"
