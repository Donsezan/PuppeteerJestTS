#!/bin/bash
MOCHAREPORTFOLDER="mochawesome-report"
if [ -d "$MOCHAREPORTFOLDER" ];
then
    echo "Deleting mochawesome folder with old reports"
    rm -rf "$MOCHAREPORTFOLDER"
fi
OLDREPORTFILE="output.json"
if [ -f "$OLDREPORTFILE" ];
then
    echo "Deleting old output report file"
    rm "$OLDREPORTFILE"
fi

echo "Creating Report folder"
mkdir -p mochawesome-report
echo "Creating screenshots folder"
mkdir -p mochawesome-report/screenshots
echo "Creating Logs folder"
mkdir -p mochawesome-report/Logs
echo "Creating downloads folder"
mkdir -p mochawesome-report/Downloads
