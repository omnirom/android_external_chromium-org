# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := content_content_jni_headers_gyp
LOCAL_MODULE_STEM := content_jni_headers
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,content_java_set_jni_headers_gyp)/java_set_jni_headers.stamp


### Generated for rule "content_content_gyp_content_jni_headers_target_generate_jni_headers":
# "{'inputs': ['../base/android/jni_generator/jni_generator.py'], 'process_outputs_as_sources': '1', 'extension': 'java', 'outputs': ['$(gyp_shared_intermediate_dir)/content/jni/%(INPUT_ROOT)s_jni.h'], 'rule_name': 'generate_jni_headers', 'rule_sources': ['public/android/java/src/org/chromium/content/app/ChildProcessService.java', 'public/android/java/src/org/chromium/content/app/ContentMain.java', 'public/android/java/src/org/chromium/content/app/LibraryLoader.java', 'public/android/java/src/org/chromium/content/browser/AndroidBrowserProcess.java', 'public/android/java/src/org/chromium/content/browser/ChildProcessLauncher.java', 'public/android/java/src/org/chromium/content/browser/ContentSettings.java', 'public/android/java/src/org/chromium/content/browser/ContentVideoView.java', 'public/android/java/src/org/chromium/content/browser/ContentViewCore.java', 'public/android/java/src/org/chromium/content/browser/ContentViewRenderView.java', 'public/android/java/src/org/chromium/content/browser/ContentViewStatics.java', 'public/android/java/src/org/chromium/content/browser/DeviceMotionAndOrientation.java', 'public/android/java/src/org/chromium/content/browser/DownloadController.java', 'public/android/java/src/org/chromium/content/browser/input/ImeAdapter.java', 'public/android/java/src/org/chromium/content/browser/input/DateTimeChooserAndroid.java', 'public/android/java/src/org/chromium/content/browser/InterstitialPageDelegateAndroid.java', 'public/android/java/src/org/chromium/content/browser/LoadUrlParams.java', 'public/android/java/src/org/chromium/content/browser/LocationProvider.java', 'public/android/java/src/org/chromium/content/browser/MediaResourceGetter.java', 'public/android/java/src/org/chromium/content/browser/SmoothScroller.java', 'public/android/java/src/org/chromium/content/browser/TouchPoint.java', 'public/android/java/src/org/chromium/content/browser/TracingIntentHandler.java', 'public/android/java/src/org/chromium/content/browser/WebContentsObserverAndroid.java', 'public/android/java/src/org/chromium/content/common/CommandLine.java', 'public/android/java/src/org/chromium/content/common/DeviceTelephonyInfo.java', 'public/android/java/src/org/chromium/content/common/TraceEvent.java'], 'action': ['../base/android/jni_generator/jni_generator.py', '--input_file', '$(RULE_SOURCES)', '--output_dir', '$(gyp_shared_intermediate_dir)/content/jni', '--optimize_generation', '0'], 'message': 'Generating JNI bindings from $(RULE_SOURCES)'}":
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessService_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessService_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessService_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessService_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessService_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/app/ChildProcessService.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/app/ChildProcessService.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ChildProcessService_jni.h

$(gyp_shared_intermediate_dir)/content/jni/ContentMain_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ContentMain_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentMain_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentMain_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ContentMain_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/app/ContentMain.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/app/ContentMain.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ContentMain_jni.h

$(gyp_shared_intermediate_dir)/content/jni/LibraryLoader_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/LibraryLoader_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/LibraryLoader_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/LibraryLoader_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/LibraryLoader_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/app/LibraryLoader.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/app/LibraryLoader.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/LibraryLoader_jni.h

$(gyp_shared_intermediate_dir)/content/jni/AndroidBrowserProcess_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/AndroidBrowserProcess_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/AndroidBrowserProcess_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/AndroidBrowserProcess_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/AndroidBrowserProcess_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/AndroidBrowserProcess.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/AndroidBrowserProcess.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/AndroidBrowserProcess_jni.h

$(gyp_shared_intermediate_dir)/content/jni/ChildProcessLauncher_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessLauncher_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessLauncher_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessLauncher_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ChildProcessLauncher_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/ChildProcessLauncher.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/ChildProcessLauncher.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ChildProcessLauncher_jni.h

$(gyp_shared_intermediate_dir)/content/jni/ContentSettings_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ContentSettings_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentSettings_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentSettings_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ContentSettings_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/ContentSettings.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/ContentSettings.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ContentSettings_jni.h

$(gyp_shared_intermediate_dir)/content/jni/ContentVideoView_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ContentVideoView_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentVideoView_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentVideoView_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ContentVideoView_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/ContentVideoView.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/ContentVideoView.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ContentVideoView_jni.h

$(gyp_shared_intermediate_dir)/content/jni/ContentViewCore_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ContentViewCore_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewCore_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewCore_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewCore_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/ContentViewCore.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/ContentViewCore.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ContentViewCore_jni.h

$(gyp_shared_intermediate_dir)/content/jni/ContentViewRenderView_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ContentViewRenderView_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewRenderView_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewRenderView_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewRenderView_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/ContentViewRenderView.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/ContentViewRenderView.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ContentViewRenderView_jni.h

$(gyp_shared_intermediate_dir)/content/jni/ContentViewStatics_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ContentViewStatics_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewStatics_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewStatics_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ContentViewStatics_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/ContentViewStatics.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/ContentViewStatics.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ContentViewStatics_jni.h

$(gyp_shared_intermediate_dir)/content/jni/DeviceMotionAndOrientation_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/DeviceMotionAndOrientation_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/DeviceMotionAndOrientation_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/DeviceMotionAndOrientation_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/DeviceMotionAndOrientation_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/DeviceMotionAndOrientation.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/DeviceMotionAndOrientation.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/DeviceMotionAndOrientation_jni.h

$(gyp_shared_intermediate_dir)/content/jni/DownloadController_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/DownloadController_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/DownloadController_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/DownloadController_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/DownloadController_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/DownloadController.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/DownloadController.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/DownloadController_jni.h

$(gyp_shared_intermediate_dir)/content/jni/ImeAdapter_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/ImeAdapter_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ImeAdapter_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/ImeAdapter_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/ImeAdapter_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/input/ImeAdapter.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/input/ImeAdapter.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/ImeAdapter_jni.h

$(gyp_shared_intermediate_dir)/content/jni/DateTimeChooserAndroid_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/DateTimeChooserAndroid_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/DateTimeChooserAndroid_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/DateTimeChooserAndroid_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/DateTimeChooserAndroid_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/input/DateTimeChooserAndroid.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/input/DateTimeChooserAndroid.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/DateTimeChooserAndroid_jni.h

$(gyp_shared_intermediate_dir)/content/jni/InterstitialPageDelegateAndroid_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/InterstitialPageDelegateAndroid_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/InterstitialPageDelegateAndroid_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/InterstitialPageDelegateAndroid_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/InterstitialPageDelegateAndroid_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/InterstitialPageDelegateAndroid.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/InterstitialPageDelegateAndroid.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/InterstitialPageDelegateAndroid_jni.h

$(gyp_shared_intermediate_dir)/content/jni/LoadUrlParams_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/LoadUrlParams_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/LoadUrlParams_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/LoadUrlParams_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/LoadUrlParams_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/LoadUrlParams.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/LoadUrlParams.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/LoadUrlParams_jni.h

$(gyp_shared_intermediate_dir)/content/jni/LocationProvider_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/LocationProvider_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/LocationProvider_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/LocationProvider_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/LocationProvider_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/LocationProvider.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/LocationProvider.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/LocationProvider_jni.h

$(gyp_shared_intermediate_dir)/content/jni/MediaResourceGetter_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/MediaResourceGetter_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/MediaResourceGetter_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/MediaResourceGetter_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/MediaResourceGetter_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/MediaResourceGetter.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/MediaResourceGetter.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/MediaResourceGetter_jni.h

$(gyp_shared_intermediate_dir)/content/jni/SmoothScroller_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/SmoothScroller_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/SmoothScroller_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/SmoothScroller_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/SmoothScroller_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/SmoothScroller.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/SmoothScroller.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/SmoothScroller_jni.h

$(gyp_shared_intermediate_dir)/content/jni/TouchPoint_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/TouchPoint_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/TouchPoint_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/TouchPoint_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/TouchPoint_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/TouchPoint.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/TouchPoint.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/TouchPoint_jni.h

$(gyp_shared_intermediate_dir)/content/jni/TracingIntentHandler_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/TracingIntentHandler_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/TracingIntentHandler_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/TracingIntentHandler_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/TracingIntentHandler_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/TracingIntentHandler.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/TracingIntentHandler.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/TracingIntentHandler_jni.h

$(gyp_shared_intermediate_dir)/content/jni/WebContentsObserverAndroid_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/WebContentsObserverAndroid_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/WebContentsObserverAndroid_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/WebContentsObserverAndroid_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/WebContentsObserverAndroid_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/browser/WebContentsObserverAndroid.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/browser/WebContentsObserverAndroid.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/WebContentsObserverAndroid_jni.h

$(gyp_shared_intermediate_dir)/content/jni/CommandLine_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/CommandLine_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/CommandLine_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/CommandLine_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/CommandLine_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/common/CommandLine.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/common/CommandLine.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/CommandLine_jni.h

$(gyp_shared_intermediate_dir)/content/jni/DeviceTelephonyInfo_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/DeviceTelephonyInfo_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/DeviceTelephonyInfo_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/DeviceTelephonyInfo_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/DeviceTelephonyInfo_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/common/DeviceTelephonyInfo.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/common/DeviceTelephonyInfo.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/DeviceTelephonyInfo_jni.h

$(gyp_shared_intermediate_dir)/content/jni/TraceEvent_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/content/jni/TraceEvent_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/TraceEvent_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/content/jni/TraceEvent_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/content/jni/TraceEvent_jni.h: $(LOCAL_PATH)/content/public/android/java/src/org/chromium/content/common/TraceEvent.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/content/jni; cd $(gyp_local_path)/content; ../base/android/jni_generator/jni_generator.py --input_file public/android/java/src/org/chromium/content/common/TraceEvent.java --output_dir "$(gyp_shared_intermediate_dir)/content/jni" --optimize_generation 0

.PHONY: content_content_jni_headers_gyp_rule_trigger
content_content_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/content/jni/TraceEvent_jni.h

### Finished generating for all rules

GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/content/jni/ChildProcessService_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentMain_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/LibraryLoader_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/AndroidBrowserProcess_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ChildProcessLauncher_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentSettings_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentVideoView_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentViewCore_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentViewRenderView_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentViewStatics_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/DeviceMotionAndOrientation_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/DownloadController_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ImeAdapter_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/DateTimeChooserAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/InterstitialPageDelegateAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/LoadUrlParams_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/LocationProvider_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/MediaResourceGetter_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/SmoothScroller_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/TouchPoint_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/TracingIntentHandler_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/WebContentsObserverAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/CommandLine_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/DeviceTelephonyInfo_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/TraceEvent_jni.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES := \
	$(gyp_shared_intermediate_dir)/content/jni/ChildProcessService_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentMain_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/LibraryLoader_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/AndroidBrowserProcess_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ChildProcessLauncher_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentSettings_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentVideoView_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentViewCore_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentViewRenderView_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ContentViewStatics_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/DeviceMotionAndOrientation_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/DownloadController_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/ImeAdapter_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/DateTimeChooserAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/InterstitialPageDelegateAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/LoadUrlParams_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/LocationProvider_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/MediaResourceGetter_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/SmoothScroller_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/TouchPoint_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/TracingIntentHandler_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/WebContentsObserverAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/CommandLine_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/DeviceTelephonyInfo_jni.h \
	$(gyp_shared_intermediate_dir)/content/jni/TraceEvent_jni.h \
	content_content_jni_headers_gyp_rule_trigger

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES :=


# Flags passed to both C and C++ files.
MY_CFLAGS := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-m32 \
	-mmmx \
	-march=pentium4 \
	-msse2 \
	-mfpmath=sse \
	-fuse-ld=gold \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-fno-stack-protector \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_CFLAGS_C :=

MY_DEFS := \
	'-DCONTENT_IMPLEMENTATION' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DENABLE_DOUBLE_RESOURCE_LOAD_TIMING' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DENABLE_LANGUAGE_DETECTION=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

LOCAL_CFLAGS := $(MY_CFLAGS_C) $(MY_CFLAGS) $(MY_DEFS)

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES := \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport

LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES)

# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: content_content_jni_headers_gyp

# Alias gyp target name.
.PHONY: content_jni_headers
content_jni_headers: content_content_jni_headers_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@
