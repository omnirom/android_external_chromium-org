# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := gpu_command_buffer_service_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,STATIC_LIBRARIES,gpu_disk_cache_proto_gyp)/gpu_disk_cache_proto_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_gl_gl_gyp)/ui_gl_gl_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_ui_gyp)/ui_ui_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_khronos_khronos_headers_gyp)/khronos_headers.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	gpu/command_buffer/service/async_pixel_transfer_delegate.cc \
	gpu/command_buffer/service/async_pixel_transfer_delegate_android.cc \
	gpu/command_buffer/service/async_pixel_transfer_delegate_idle.cc \
	gpu/command_buffer/service/async_pixel_transfer_delegate_share_group.cc \
	gpu/command_buffer/service/async_pixel_transfer_delegate_stub.cc \
	gpu/command_buffer/service/async_pixel_transfer_delegate_sync.cc \
	gpu/command_buffer/service/buffer_manager.cc \
	gpu/command_buffer/service/cmd_parser.cc \
	gpu/command_buffer/service/command_buffer_service.cc \
	gpu/command_buffer/service/common_decoder.cc \
	gpu/command_buffer/service/context_group.cc \
	gpu/command_buffer/service/context_state.cc \
	gpu/command_buffer/service/error_state.cc \
	gpu/command_buffer/service/feature_info.cc \
	gpu/command_buffer/service/framebuffer_manager.cc \
	gpu/command_buffer/service/gles2_cmd_copy_texture_chromium.cc \
	gpu/command_buffer/service/gles2_cmd_decoder.cc \
	gpu/command_buffer/service/gles2_cmd_validation.cc \
	gpu/command_buffer/service/gl_context_virtual.cc \
	gpu/command_buffer/service/gl_state_restorer_impl.cc \
	gpu/command_buffer/service/gpu_scheduler.cc \
	gpu/command_buffer/service/gpu_switches.cc \
	gpu/command_buffer/service/gpu_tracer.cc \
	gpu/command_buffer/service/id_manager.cc \
	gpu/command_buffer/service/image_manager.cc \
	gpu/command_buffer/service/logger.cc \
	gpu/command_buffer/service/mailbox_manager.cc \
	gpu/command_buffer/service/memory_program_cache.cc \
	gpu/command_buffer/service/program_manager.cc \
	gpu/command_buffer/service/query_manager.cc \
	gpu/command_buffer/service/renderbuffer_manager.cc \
	gpu/command_buffer/service/program_cache.cc \
	gpu/command_buffer/service/program_cache_lru_helper.cc \
	gpu/command_buffer/service/safe_shared_memory_pool.cc \
	gpu/command_buffer/service/shader_manager.cc \
	gpu/command_buffer/service/shader_translator.cc \
	gpu/command_buffer/service/shader_translator_cache.cc \
	gpu/command_buffer/service/texture_definition.cc \
	gpu/command_buffer/service/texture_manager.cc \
	gpu/command_buffer/service/transfer_buffer_manager.cc \
	gpu/command_buffer/service/vertex_array_manager.cc \
	gpu/command_buffer/service/vertex_attrib_manager.cc \
	gpu/command_buffer/service/async_pixel_transfer_delegate_egl.cc


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
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
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
	$(LOCAL_PATH) \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(gyp_shared_intermediate_dir)/protoc_out \
	$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/third_party/mesa/MesaLib/include \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src \
	$(LOCAL_PATH)/third_party/re2 \
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

LOCAL_LDFLAGS := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-m32 \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--gc-sections \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_STATIC_LIBRARIES := \
	gpu_disk_cache_proto_gyp \
	ui_gl_gl_gyp \
	ui_ui_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: gpu_command_buffer_service_gyp

# Alias gyp target name.
.PHONY: command_buffer_service
command_buffer_service: gpu_command_buffer_service_gyp

include $(BUILD_STATIC_LIBRARY)
