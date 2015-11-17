XCODE_PATH=$1

if [ $# -eq 0 ]
then
		XCODE_PATH='/Applications/Xcode.app'
fi

echo $XCODE_PATH

XCODEUUID=`defaults read ${XCODE_PATH}/Contents/Info DVTPlugInCompatibilityUUID`
for f in ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/*
	do defaults write "$f/Contents/Info" DVTPlugInCompatibilityUUIDs -array-add $XCODEUUID
done
