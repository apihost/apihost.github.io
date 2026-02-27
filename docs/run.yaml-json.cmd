@echo off
for %%i in (api\*.yml) do (
  yq -p "yaml" -o "json" -I 0 "api\%%~ni.yml" > "api\%%~ni.json"
)
