# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := third_party_opus_opus_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "convert_assembler":
$(gyp_intermediate_dir)/celt_pitch_xcorr_arm_gnu.S: gyp_local_path := $(LOCAL_PATH)
$(gyp_intermediate_dir)/celt_pitch_xcorr_arm_gnu.S: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_intermediate_dir)/celt_pitch_xcorr_arm_gnu.S: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_intermediate_dir)/celt_pitch_xcorr_arm_gnu.S: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_intermediate_dir)/celt_pitch_xcorr_arm_gnu.S: $(LOCAL_PATH)/third_party/opus/src/celt/arm/arm2gnu.pl $(LOCAL_PATH)/third_party/opus/src/celt/arm/celt_pitch_xcorr_arm.s $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Convert Opus assembler for ARM. ($@)"
	$(hide)cd $(gyp_local_path)/third_party/opus; mkdir -p $(gyp_intermediate_dir); bash -c "perl src/celt/arm/arm2gnu.pl src/celt/arm/celt_pitch_xcorr_arm.s | sed \"s/OPUS_ARM_MAY_HAVE_[A-Z]*/1/g\" | sed \"/.include/d\" > $(gyp_intermediate_dir)/celt_pitch_xcorr_arm_gnu.S"



GYP_GENERATED_OUTPUTS := \
	$(gyp_intermediate_dir)/celt_pitch_xcorr_arm_gnu.S

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES := \
	$(gyp_intermediate_dir)/celt_pitch_xcorr_arm_gnu.S

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	third_party/opus/src/celt/bands.c \
	third_party/opus/src/celt/celt.c \
	third_party/opus/src/celt/celt_decoder.c \
	third_party/opus/src/celt/celt_encoder.c \
	third_party/opus/src/celt/celt_lpc.c \
	third_party/opus/src/celt/cwrs.c \
	third_party/opus/src/celt/entcode.c \
	third_party/opus/src/celt/entdec.c \
	third_party/opus/src/celt/entenc.c \
	third_party/opus/src/celt/kiss_fft.c \
	third_party/opus/src/celt/laplace.c \
	third_party/opus/src/celt/mathops.c \
	third_party/opus/src/celt/mdct.c \
	third_party/opus/src/celt/modes.c \
	third_party/opus/src/celt/pitch.c \
	third_party/opus/src/celt/quant_bands.c \
	third_party/opus/src/celt/rate.c \
	third_party/opus/src/celt/vq.c \
	third_party/opus/src/silk/A2NLSF.c \
	third_party/opus/src/silk/ana_filt_bank_1.c \
	third_party/opus/src/silk/biquad_alt.c \
	third_party/opus/src/silk/bwexpander.c \
	third_party/opus/src/silk/bwexpander_32.c \
	third_party/opus/src/silk/check_control_input.c \
	third_party/opus/src/silk/CNG.c \
	third_party/opus/src/silk/code_signs.c \
	third_party/opus/src/silk/control_audio_bandwidth.c \
	third_party/opus/src/silk/control_codec.c \
	third_party/opus/src/silk/control_SNR.c \
	third_party/opus/src/silk/debug.c \
	third_party/opus/src/silk/dec_API.c \
	third_party/opus/src/silk/decode_core.c \
	third_party/opus/src/silk/decode_frame.c \
	third_party/opus/src/silk/decode_indices.c \
	third_party/opus/src/silk/decode_parameters.c \
	third_party/opus/src/silk/decode_pitch.c \
	third_party/opus/src/silk/decode_pulses.c \
	third_party/opus/src/silk/decoder_set_fs.c \
	third_party/opus/src/silk/enc_API.c \
	third_party/opus/src/silk/encode_indices.c \
	third_party/opus/src/silk/encode_pulses.c \
	third_party/opus/src/silk/fixed/apply_sine_window_FIX.c \
	third_party/opus/src/silk/fixed/autocorr_FIX.c \
	third_party/opus/src/silk/fixed/burg_modified_FIX.c \
	third_party/opus/src/silk/fixed/corrMatrix_FIX.c \
	third_party/opus/src/silk/fixed/encode_frame_FIX.c \
	third_party/opus/src/silk/fixed/find_LPC_FIX.c \
	third_party/opus/src/silk/fixed/find_LTP_FIX.c \
	third_party/opus/src/silk/fixed/find_pitch_lags_FIX.c \
	third_party/opus/src/silk/fixed/find_pred_coefs_FIX.c \
	third_party/opus/src/silk/fixed/k2a_FIX.c \
	third_party/opus/src/silk/fixed/k2a_Q16_FIX.c \
	third_party/opus/src/silk/fixed/LTP_analysis_filter_FIX.c \
	third_party/opus/src/silk/fixed/LTP_scale_ctrl_FIX.c \
	third_party/opus/src/silk/fixed/noise_shape_analysis_FIX.c \
	third_party/opus/src/silk/fixed/pitch_analysis_core_FIX.c \
	third_party/opus/src/silk/fixed/prefilter_FIX.c \
	third_party/opus/src/silk/fixed/process_gains_FIX.c \
	third_party/opus/src/silk/fixed/regularize_correlations_FIX.c \
	third_party/opus/src/silk/fixed/residual_energy16_FIX.c \
	third_party/opus/src/silk/fixed/residual_energy_FIX.c \
	third_party/opus/src/silk/fixed/schur64_FIX.c \
	third_party/opus/src/silk/fixed/schur_FIX.c \
	third_party/opus/src/silk/fixed/solve_LS_FIX.c \
	third_party/opus/src/silk/fixed/vector_ops_FIX.c \
	third_party/opus/src/silk/fixed/warped_autocorrelation_FIX.c \
	third_party/opus/src/silk/gain_quant.c \
	third_party/opus/src/silk/HP_variable_cutoff.c \
	third_party/opus/src/silk/init_decoder.c \
	third_party/opus/src/silk/init_encoder.c \
	third_party/opus/src/silk/inner_prod_aligned.c \
	third_party/opus/src/silk/interpolate.c \
	third_party/opus/src/silk/lin2log.c \
	third_party/opus/src/silk/log2lin.c \
	third_party/opus/src/silk/LP_variable_cutoff.c \
	third_party/opus/src/silk/LPC_analysis_filter.c \
	third_party/opus/src/silk/LPC_inv_pred_gain.c \
	third_party/opus/src/silk/NLSF2A.c \
	third_party/opus/src/silk/NLSF_decode.c \
	third_party/opus/src/silk/NLSF_del_dec_quant.c \
	third_party/opus/src/silk/NLSF_encode.c \
	third_party/opus/src/silk/NLSF_stabilize.c \
	third_party/opus/src/silk/NLSF_unpack.c \
	third_party/opus/src/silk/NLSF_VQ.c \
	third_party/opus/src/silk/NLSF_VQ_weights_laroia.c \
	third_party/opus/src/silk/NSQ.c \
	third_party/opus/src/silk/NSQ_del_dec.c \
	third_party/opus/src/silk/pitch_est_tables.c \
	third_party/opus/src/silk/PLC.c \
	third_party/opus/src/silk/process_NLSFs.c \
	third_party/opus/src/silk/quant_LTP_gains.c \
	third_party/opus/src/silk/resampler.c \
	third_party/opus/src/silk/resampler_down2.c \
	third_party/opus/src/silk/resampler_down2_3.c \
	third_party/opus/src/silk/resampler_private_AR2.c \
	third_party/opus/src/silk/resampler_private_down_FIR.c \
	third_party/opus/src/silk/resampler_private_IIR_FIR.c \
	third_party/opus/src/silk/resampler_private_up2_HQ.c \
	third_party/opus/src/silk/resampler_rom.c \
	third_party/opus/src/silk/shell_coder.c \
	third_party/opus/src/silk/sigm_Q15.c \
	third_party/opus/src/silk/sort.c \
	third_party/opus/src/silk/stereo_decode_pred.c \
	third_party/opus/src/silk/stereo_encode_pred.c \
	third_party/opus/src/silk/stereo_find_predictor.c \
	third_party/opus/src/silk/stereo_LR_to_MS.c \
	third_party/opus/src/silk/stereo_MS_to_LR.c \
	third_party/opus/src/silk/stereo_quant_pred.c \
	third_party/opus/src/silk/sum_sqr_shift.c \
	third_party/opus/src/silk/table_LSF_cos.c \
	third_party/opus/src/silk/tables_gain.c \
	third_party/opus/src/silk/tables_LTP.c \
	third_party/opus/src/silk/tables_NLSF_CB_NB_MB.c \
	third_party/opus/src/silk/tables_NLSF_CB_WB.c \
	third_party/opus/src/silk/tables_other.c \
	third_party/opus/src/silk/tables_pitch_lag.c \
	third_party/opus/src/silk/tables_pulses_per_block.c \
	third_party/opus/src/silk/VAD.c \
	third_party/opus/src/silk/VQ_WMat_EC.c \
	third_party/opus/src/src/analysis.c \
	third_party/opus/src/src/mlp.c \
	third_party/opus/src/src/mlp_data.c \
	third_party/opus/src/src/opus.c \
	third_party/opus/src/src/opus_decoder.c \
	third_party/opus/src/src/opus_encoder.c \
	third_party/opus/src/src/opus_multistream.c \
	third_party/opus/src/src/opus_multistream_decoder.c \
	third_party/opus/src/src/opus_multistream_encoder.c \
	third_party/opus/src/src/repacketizer.c \
	third_party/opus/src/celt/arm/arm_celt_map.c \
	third_party/opus/src/celt/arm/armcpu.c


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	-funwind-tables

MY_DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DBLINK_SCALE_FILTERS_AT_RECORD_TIME' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DOPUS_BUILD' \
	'-DOPUS_EXPORT=' \
	'-DHAVE_LRINT' \
	'-DHAVE_LRINTF' \
	'-DVAR_ARRAYS' \
	'-DFIXED_POINT' \
	'-DOPUS_ARM_ASM' \
	'-DOPUS_ARM_INLINE_ASM' \
	'-DOPUS_ARM_INLINE_EDSP' \
	'-DOPUS_ARM_MAY_HAVE_EDSP' \
	'-DOPUS_ARM_MAY_HAVE_MEDIA' \
	'-DOPUS_ARM_MAY_HAVE_NEON' \
	'-DOPUS_HAVE_RTCD' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(LOCAL_PATH)/third_party/opus/src/celt \
	$(LOCAL_PATH)/third_party/opus/src/include \
	$(LOCAL_PATH)/third_party/opus/src/silk \
	$(LOCAL_PATH)/third_party/opus/src/silk/fixed \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-Wno-abi \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DBLINK_SCALE_FILTERS_AT_RECORD_TIME' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DENABLE_EGLIMAGE=1' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DOPUS_BUILD' \
	'-DOPUS_EXPORT=' \
	'-DHAVE_LRINT' \
	'-DHAVE_LRINTF' \
	'-DVAR_ARRAYS' \
	'-DFIXED_POINT' \
	'-DOPUS_ARM_ASM' \
	'-DOPUS_ARM_INLINE_ASM' \
	'-DOPUS_ARM_INLINE_EDSP' \
	'-DOPUS_ARM_MAY_HAVE_EDSP' \
	'-DOPUS_ARM_MAY_HAVE_MEDIA' \
	'-DOPUS_ARM_MAY_HAVE_NEON' \
	'-DOPUS_HAVE_RTCD' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(LOCAL_PATH)/third_party/opus/src/celt \
	$(LOCAL_PATH)/third_party/opus/src/include \
	$(LOCAL_PATH)/third_party/opus/src/silk \
	$(LOCAL_PATH)/third_party/opus/src/silk/fixed \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-Wno-abi \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.

LOCAL_LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,--fatal-warnings \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,--gc-sections \
	-Wl,--warn-shared-textrel \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,--fatal-warnings \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections \
	-Wl,--warn-shared-textrel


LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_$(GYP_CONFIGURATION))

LOCAL_STATIC_LIBRARIES :=

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_opus_opus_gyp

# Alias gyp target name.
.PHONY: opus
opus: third_party_opus_opus_gyp

include $(BUILD_STATIC_LIBRARY)
