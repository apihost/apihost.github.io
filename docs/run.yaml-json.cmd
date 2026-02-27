@echo off
for %%i in (*.yml) do (
  yq -p "yaml" -o "json" -I 0 "%%~ni.yml" > "%%~ni.json"
)
