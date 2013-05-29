# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := components_component_resources_gyp
LOCAL_MODULE_STEM := component_resources
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "component_resources":
$(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h: $(LOCAL_PATH)/tools/gritsettings/resource_ids $(LOCAL_PATH)/components/component_resources.grd $(LOCAL_PATH)/tools/grit/PRESUBMIT.py $(LOCAL_PATH)/tools/grit/grit.py $(LOCAL_PATH)/tools/grit/grit/__init__.py $(LOCAL_PATH)/tools/grit/grit/clique.py $(LOCAL_PATH)/tools/grit/grit/clique_unittest.py $(LOCAL_PATH)/tools/grit/grit/constants.py $(LOCAL_PATH)/tools/grit/grit/exception.py $(LOCAL_PATH)/tools/grit/grit/extern/BogoFP.py $(LOCAL_PATH)/tools/grit/grit/extern/FP.py $(LOCAL_PATH)/tools/grit/grit/extern/__init__.py $(LOCAL_PATH)/tools/grit/grit/extern/tclib.py $(LOCAL_PATH)/tools/grit/grit/format/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/android_xml.py $(LOCAL_PATH)/tools/grit/grit/format/android_xml_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/c_format.py $(LOCAL_PATH)/tools/grit/grit/format/c_format_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/chrome_messages_json.py $(LOCAL_PATH)/tools/grit/grit/format/chrome_messages_json_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/data_pack.py $(LOCAL_PATH)/tools/grit/grit/format/data_pack_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/html_inline.py $(LOCAL_PATH)/tools/grit/grit/format/html_inline_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/js_map_format.py $(LOCAL_PATH)/tools/grit/grit/format/js_map_format_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/PRESUBMIT.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/policy_template_generator.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/policy_template_generator_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/template_formatter.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writer_configuration.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/adm_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/adm_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/adml_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/adml_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/admx_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/admx_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/doc_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/doc_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/json_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/json_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/mock_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_helper.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_strings_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_strings_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/reg_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/reg_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/template_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/template_writer_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/writer_unittest_common.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/xml_formatted_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/xml_writer_base_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/rc.py $(LOCAL_PATH)/tools/grit/grit/format/rc_header.py $(LOCAL_PATH)/tools/grit/grit/format/rc_header_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/rc_unittest.py $(LOCAL_PATH)/tools/grit/grit/format/repack.py $(LOCAL_PATH)/tools/grit/grit/format/resource_map.py $(LOCAL_PATH)/tools/grit/grit/format/resource_map_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/__init__.py $(LOCAL_PATH)/tools/grit/grit/gather/admin_template.py $(LOCAL_PATH)/tools/grit/grit/gather/admin_template_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/chrome_html.py $(LOCAL_PATH)/tools/grit/grit/gather/chrome_html_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/chrome_scaled_image.py $(LOCAL_PATH)/tools/grit/grit/gather/chrome_scaled_image_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/igoogle_strings.py $(LOCAL_PATH)/tools/grit/grit/gather/igoogle_strings_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/interface.py $(LOCAL_PATH)/tools/grit/grit/gather/json_loader.py $(LOCAL_PATH)/tools/grit/grit/gather/muppet_strings.py $(LOCAL_PATH)/tools/grit/grit/gather/muppet_strings_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/policy_json.py $(LOCAL_PATH)/tools/grit/grit/gather/policy_json_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/rc.py $(LOCAL_PATH)/tools/grit/grit/gather/rc_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/regexp.py $(LOCAL_PATH)/tools/grit/grit/gather/skeleton_gatherer.py $(LOCAL_PATH)/tools/grit/grit/gather/tr_html.py $(LOCAL_PATH)/tools/grit/grit/gather/tr_html_unittest.py $(LOCAL_PATH)/tools/grit/grit/gather/txt.py $(LOCAL_PATH)/tools/grit/grit/gather/txt_unittest.py $(LOCAL_PATH)/tools/grit/grit/grd_reader.py $(LOCAL_PATH)/tools/grit/grit/grd_reader_unittest.py $(LOCAL_PATH)/tools/grit/grit/grit_runner.py $(LOCAL_PATH)/tools/grit/grit/grit_runner_unittest.py $(LOCAL_PATH)/tools/grit/grit/lazy_re.py $(LOCAL_PATH)/tools/grit/grit/lazy_re_unittest.py $(LOCAL_PATH)/tools/grit/grit/node/__init__.py $(LOCAL_PATH)/tools/grit/grit/node/base.py $(LOCAL_PATH)/tools/grit/grit/node/base_unittest.py $(LOCAL_PATH)/tools/grit/grit/node/custom/__init__.py $(LOCAL_PATH)/tools/grit/grit/node/custom/filename.py $(LOCAL_PATH)/tools/grit/grit/node/custom/filename_unittest.py $(LOCAL_PATH)/tools/grit/grit/node/empty.py $(LOCAL_PATH)/tools/grit/grit/node/include.py $(LOCAL_PATH)/tools/grit/grit/node/include_unittest.py $(LOCAL_PATH)/tools/grit/grit/node/io.py $(LOCAL_PATH)/tools/grit/grit/node/io_unittest.py $(LOCAL_PATH)/tools/grit/grit/node/mapping.py $(LOCAL_PATH)/tools/grit/grit/node/message.py $(LOCAL_PATH)/tools/grit/grit/node/message_unittest.py $(LOCAL_PATH)/tools/grit/grit/node/misc.py $(LOCAL_PATH)/tools/grit/grit/node/misc_unittest.py $(LOCAL_PATH)/tools/grit/grit/node/structure.py $(LOCAL_PATH)/tools/grit/grit/node/structure_unittest.py $(LOCAL_PATH)/tools/grit/grit/node/variant.py $(LOCAL_PATH)/tools/grit/grit/pseudo.py $(LOCAL_PATH)/tools/grit/grit/pseudo_rtl.py $(LOCAL_PATH)/tools/grit/grit/pseudo_unittest.py $(LOCAL_PATH)/tools/grit/grit/scons.py $(LOCAL_PATH)/tools/grit/grit/shortcuts.py $(LOCAL_PATH)/tools/grit/grit/shortcuts_unittests.py $(LOCAL_PATH)/tools/grit/grit/tclib.py $(LOCAL_PATH)/tools/grit/grit/tclib_unittest.py $(LOCAL_PATH)/tools/grit/grit/test_suite_all.py $(LOCAL_PATH)/tools/grit/grit/tool/__init__.py $(LOCAL_PATH)/tools/grit/grit/tool/android2grd.py $(LOCAL_PATH)/tools/grit/grit/tool/android2grd_unittest.py $(LOCAL_PATH)/tools/grit/grit/tool/build.py $(LOCAL_PATH)/tools/grit/grit/tool/build_unittest.py $(LOCAL_PATH)/tools/grit/grit/tool/buildinfo.py $(LOCAL_PATH)/tools/grit/grit/tool/buildinfo_unittest.py $(LOCAL_PATH)/tools/grit/grit/tool/count.py $(LOCAL_PATH)/tools/grit/grit/tool/diff_structures.py $(LOCAL_PATH)/tools/grit/grit/tool/interface.py $(LOCAL_PATH)/tools/grit/grit/tool/menu_from_parts.py $(LOCAL_PATH)/tools/grit/grit/tool/newgrd.py $(LOCAL_PATH)/tools/grit/grit/tool/postprocess_interface.py $(LOCAL_PATH)/tools/grit/grit/tool/postprocess_unittest.py $(LOCAL_PATH)/tools/grit/grit/tool/preprocess_interface.py $(LOCAL_PATH)/tools/grit/grit/tool/preprocess_unittest.py $(LOCAL_PATH)/tools/grit/grit/tool/rc2grd.py $(LOCAL_PATH)/tools/grit/grit/tool/rc2grd_unittest.py $(LOCAL_PATH)/tools/grit/grit/tool/resize.py $(LOCAL_PATH)/tools/grit/grit/tool/test.py $(LOCAL_PATH)/tools/grit/grit/tool/toolbar_postprocess.py $(LOCAL_PATH)/tools/grit/grit/tool/toolbar_preprocess.py $(LOCAL_PATH)/tools/grit/grit/tool/transl2tc.py $(LOCAL_PATH)/tools/grit/grit/tool/transl2tc_unittest.py $(LOCAL_PATH)/tools/grit/grit/tool/unit.py $(LOCAL_PATH)/tools/grit/grit/tool/xmb.py $(LOCAL_PATH)/tools/grit/grit/tool/xmb_unittest.py $(LOCAL_PATH)/tools/grit/grit/util.py $(LOCAL_PATH)/tools/grit/grit/util_unittest.py $(LOCAL_PATH)/tools/grit/grit/xtb_reader.py $(LOCAL_PATH)/tools/grit/grit/xtb_reader_unittest.py $(LOCAL_PATH)/tools/grit/grit_info.py $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating resources from component_resources.grd ($@)"
	$(hide)cd $(gyp_local_path)/components; mkdir -p $(gyp_shared_intermediate_dir)/component_resources/grit $(gyp_shared_intermediate_dir)/component_resources; python ../tools/grit/grit.py -i component_resources.grd build -f ../tools/gritsettings/resource_ids -o "$(gyp_shared_intermediate_dir)/component_resources" -D _chromium -E "CHROMIUM_BUILD=chromium" -t android -E "ANDROID_JAVA_TAGGED_ONLY=true" -D use_concatenated_impulse_responses

$(gyp_shared_intermediate_dir)/component_resources/component_resources_am.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ar.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_bg.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_bn.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ca.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_cs.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_da.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_de.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_el.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_en-GB.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_en-US.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_es.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_es-419.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_et.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_fa.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_fake-bidi.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_fi.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_fil.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_fr.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_gu.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_he.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_hi.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_hr.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_hu.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_id.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_it.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ja.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_kn.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ko.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_lt.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_lv.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ml.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_mr.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ms.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_nl.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_nb.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_pl.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_pt-BR.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_pt-PT.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ro.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ru.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_sk.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_sl.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_sr.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_sv.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_sw.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_ta.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_te.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_th.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_tr.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_uk.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_vi.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_zh-CN.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;
$(gyp_shared_intermediate_dir)/component_resources/component_resources_zh-TW.pak: $(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/component_resources/grit/component_resources.h \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_am.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ar.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_bg.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_bn.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ca.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_cs.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_da.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_de.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_el.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_en-GB.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_en-US.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_es.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_es-419.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_et.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_fa.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_fake-bidi.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_fi.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_fil.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_fr.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_gu.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_he.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_hi.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_hr.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_hu.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_id.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_it.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ja.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_kn.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ko.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_lt.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_lv.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ml.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_mr.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ms.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_nl.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_nb.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_pl.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_pt-BR.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_pt-PT.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ro.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ru.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_sk.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_sl.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_sr.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_sv.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_sw.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_ta.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_te.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_th.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_tr.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_uk.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_vi.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_zh-CN.pak \
	$(gyp_shared_intermediate_dir)/component_resources/component_resources_zh-TW.pak

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: components_component_resources_gyp

# Alias gyp target name.
.PHONY: component_resources
component_resources: components_component_resources_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@
