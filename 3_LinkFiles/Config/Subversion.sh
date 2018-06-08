#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Subversion Config Files.."
DESTINATION_PATH=$HOME"/.subversion"
SOURCE_PATH=$HOME"/_AppConfig/Application/Subversion/AppConfig"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"