#dotnet publish -c Release -o publish
echo off
echo "��ǰdocker��"
docker images nfine

echo "������汾��:"
set /p version=

dotnet clean
dotnet publish -c Release -o publish


docker build -t nfine:%version% .

echo "����Repository:nfine  Tag:%version%��ɣ�����"


