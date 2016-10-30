include theos/makefiles/common.mk

TWEAK_NAME = MusiLyric

MusiLyric_FILES = Tweak.xm
MusiLyric_FRAMEWORKS = CydiaSubstrate UIKit
MusiLyric_PRIVATE_FRAMEWORKS = MediaRemote
MusiLyric_LDFLAGS = -Wl,-segalign,4000

export ARCHS = armv7 arm64
MusiLyric_ARCHS = armv7 arm64

include $(THEOS_MAKE_PATH)/tweak.mk
	
all::
	@echo "[+] Copying Files..."
	@cp -rf ./obj/obj/debug/MusiLyric.dylib //Library/MobileSubstrate/DynamicLibraries/MusiLyric.dylib
	@/usr/bin/ldid -S //Library/MobileSubstrate/DynamicLibraries/MusiLyric.dylib
	@echo "DONE"
	#@killall Music
	