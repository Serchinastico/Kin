grammar PBXProj;

// PARSER

start
    : root_element
    ;

// Root

root_element
    : '{'
        archive_version
        classes
        object_version
        objects
        root_object
      '}'
    ;

archive_version
    : ARCHIVE_VERSION '=' NUMBER ';'
    ;

classes
    : CLASSES '=' '{' '}' ';'
    ;

object_version
    : OBJECT_VERSION '=' NUMBER ';'
    ;

objects
    : OBJECTS '=' '{'
        pbx_aggregate_target_section?
        pbx_build_file_section?
        pbx_build_rule_section?
        pbx_build_style_section?
        pbx_container_item_proxy_section?
        pbx_copy_files_build_phase_section?
        pbx_file_reference_section?
        pbx_file_system_synchronized_build_file_exception_set_section?
        pbx_file_system_synchronized_root_group_section?
        pbx_frameworks_build_phase_section?
        pbx_group_section
        pbx_headers_build_phase_section?
        pbx_legacy_target_section?
        pbx_native_target_section?
        pbx_project_section
        pbx_reference_proxy_section?
        pbx_resources_build_phase_section?
        pbx_shell_script_build_phase_section?
        pbx_shell_build_phase_section?
        pbx_sources_build_phase_section?
        pbx_target_dependency_section?
        pbx_variant_group_section?
        xc_build_configuration_section
        xc_configuration_list_section
        xc_local_swift_package_reference_section?
        xc_remote_swift_package_reference_section?
        xc_swift_package_product_dependency_section?
        xc_version_group_section?
      '}' ';'
    ;

root_object
    : ROOT_OBJECT '=' REFERENCE ';'
    ;

// Object sections

pbx_aggregate_target_section
    : (pbx_aggregate_target)+
    ;

pbx_build_file_section
    : (pbx_build_file)+
    ;

pbx_build_rule_section
    : (pbx_build_rule)+
    ;

pbx_build_style_section
    : (pbx_build_style)+
    ;

pbx_container_item_proxy_section
    : (pbx_container_item_proxy)+
    ;

pbx_copy_files_build_phase_section
    : (pbx_copy_files_build_phase)+
    ;

pbx_file_reference_section
    : (pbx_file_reference)+
    ;

pbx_file_system_synchronized_build_file_exception_set_section
    : (pbx_file_system_synchronized_build_file_exception_set)+
    ;

pbx_file_system_synchronized_root_group_section
    : (pbx_file_system_synchronized_root_group)+
    ;

pbx_frameworks_build_phase_section
    : (pbx_frameworks_build_phase)+
    ;

pbx_group_section
    : (pbx_group)+
    ;

pbx_headers_build_phase_section
    : (pbx_headers_build_phase)+
    ;

pbx_native_target_section
    : (pbx_native_target)+
    ;

pbx_legacy_target_section
    : (pbx_legacy_target)+
    ;

pbx_project_section
    : (pbx_project)+
    ;

pbx_reference_proxy_section
    : (pbx_reference_proxy)+
    ;

pbx_resources_build_phase_section
    : (pbx_resources_build_phase)+
    ;

pbx_shell_script_build_phase_section
    : (pbx_shell_script_build_phase)+
    ;

pbx_shell_build_phase_section
    : (pbx_shell_build_phase)+
    ;

pbx_sources_build_phase_section
    : (pbx_sources_build_phase)+
    ;

pbx_target_dependency_section
    : (pbx_target_dependency)+
    ;

pbx_variant_group_section
    : (pbx_variant_group)+
    ;

xc_build_configuration_section
    : (xc_build_configuration)+
    ;

xc_configuration_list_section
    : (xc_configuration_list)+
    ;

xc_remote_swift_package_reference_section
    : (xc_remote_swift_package_reference)+
    ;

xc_local_swift_package_reference_section
    : (xc_local_swift_pacakge_reference)+
    ;

xc_swift_package_product_dependency_section
    : (xc_swift_package_product_dependency)+
    ;

xc_version_group_section
    : (xc_version_group)+
    ;

// Object components

pbx_aggregate_target
    : REFERENCE '=' '{'
        isa_pbx_aggregate_target
        build_configuration_list
        build_phases
        build_settings?
        comments?
        dependencies
        name
        product_name?
      '}' ';'
    ;

pbx_build_file
    : REFERENCE '=' '{'
        isa_pbx_build_file
        file_ref?
        platform_filter?
        platform_filters?
        product_ref?
        settings?
      '}' ';'
    ;

pbx_build_rule
    : REFERENCE '=' '{'
        isa_pbx_build_rule
        compiler_spec
        file_patterns?
        file_type
        input_files
        is_editable
        output_files
        run_once_per_arch?
        script?
      '}' ';'
    ;

pbx_build_style
    : REFERENCE '=' '{'
        isa_pbx_build_style
        build_settings?
        name?
      '}' ';'
    ;

pbx_container_item_proxy
    : REFERENCE '=' '{'
        isa_pbx_container_item_proxy
        container_portal
        proxy_type
        remote_global_id_string
        remote_info
      '}' ';'
    ;

pbx_copy_files_build_phase
    : REFERENCE '=' '{'
        isa_pbx_copy_files_build_phase
        build_action_mask
        dst_path?
        dst_subfolder_spec
        files?
        name?
        run_only_for_deployment_postprocessing
      '}' ';'
    ;

pbx_file_reference
    : REFERENCE '=' '{'
        isa_pbx_file_reference
        comments?
        file_encoding?
        explicit_file_type?
        file_encoding?
        include_in_index?
        indent_width?
        last_known_file_type?
        line_ending?
        name?
        path?
        ref_type?
        plist_structure_definition_identifier?
        source_tree?
        tab_width?
        xc_language_specification_identifier?
        uses_tabs?
        wraps_lines?
      '}' ';'
    ;

pbx_file_system_synchronized_build_file_exception_set
    : REFERENCE '=' '{'
        isa_pbx_file_system_synchronized_build_file_exception_set
        membership_exceptions
        target
    '}' ';'
    ;

pbx_file_system_synchronized_root_group
    : REFERENCE '=' '{'
        isa_pbx_file_system_synchronized_root_group
        exceptions
        explicit_file_types
        explicit_folders
        path
        source_tree
    '}' ';'
    ;

pbx_frameworks_build_phase
    : REFERENCE '=' '{'
        isa_pbx_frameworks_build_phase
        build_action_mask
        files
        run_only_for_deployment_postprocessing
      '}' ';'
    ;

pbx_group
    : REFERENCE '=' '{'
        isa_pbx_group
        children
        comments?
        indent_width?
        include_in_index?
        name?
        path?
        source_tree
        tab_width?
        uses_tabs?
        wraps_lines?
      '}' ';'
    ;

pbx_headers_build_phase
    : REFERENCE '=' '{'
        isa_pbx_header_build_phase
        build_action_mask
        files
        run_only_for_deployment_postprocessing
     '}' ';'
    ;

pbx_native_target
    : REFERENCE '=' '{'
        isa_pbx_native_target
        build_configuration_list
        build_phases
        build_rules
        comments?
        build_settings?
        dependencies
        name
        product_install_path?
        package_product_dependencies?
        product_name
        product_reference?
        product_type
      '}' ';'
    ;

pbx_legacy_target
    : REFERENCE '=' '{'
        isa_pbx_legacy_target
        build_arguments_string
        build_configuration_list
        build_phases
        build_tool_path
        build_working_directory
        dependencies
        name
        pass_build_settings_in_environment
        product_name
      '}' ';'
    ;

pbx_project
    : REFERENCE '=' '{'
        isa_pbx_project
        attributes?
        build_configuration_list
        build_settings?
        build_styles?
        compatibility_version?
        development_region?
        has_scanned_for_encodings
        known_regions?
        main_group
        package_references?
        preferred_project_object_version?
        product_ref_group?
        project_dir_path
        project_references?
        project_root?
        targets
      '}' ';'
    ;

pbx_reference_proxy
    : REFERENCE '=' '{'
        isa_pbx_reference_proxy
        file_type
        name?
        path
        remote_ref
        source_tree
      '}' ';'
    ;

pbx_resources_build_phase
    : REFERENCE '=' '{'
        isa_pbx_resources_build_phase
        build_action_mask
        files
        run_only_for_deployment_postprocessing
      '}' ';'
    ;

pbx_shell_script_build_phase
    : REFERENCE '=' '{'
        isa_pbx_shell_script_build_phase
        always_out_of_date?
        build_action_mask
        files
        input_file_list_paths?
        input_paths?
        name?
        output_file_list_paths?
        output_paths?
        run_only_for_deployment_postprocessing
        shell_path
        shell_script
        show_env_vars_in_log?
      '}' ';'
    ;

pbx_shell_build_phase
    : REFERENCE '=' '{'
        isa_pbx_shell_build_phase
        build_action_mask
        files
        input_file_list_paths
        input_paths
        name
        output_file_list_paths
        output_paths
        run_only_for_deployment_postprocessing
        shell_path
        shell
      '}' ';'
    ;

pbx_sources_build_phase
    : REFERENCE '=' '{'
        isa_pbx_sources_build_phase
        build_action_mask
        files
        run_only_for_deployment_postprocessing
      '}' ';'
    ;

pbx_target_dependency
    : REFERENCE '=' '{'
        isa_pbx_target_dependency
        name?
        platform_filter?
        platform_filters?
        product_ref?
        target?
        target_proxy?
      '}' ';'
    ;

pbx_variant_group
    : REFERENCE '=' '{'
        isa_pbx_variant_group
        children
        name
        path?
        source_tree
      '}' ';'
    ;

xc_build_configuration
    : REFERENCE '=' '{'
        isa_xc_build_configuration
        base_configuration_reference?
        build_settings
        name
      '}' ';'
    ;

xc_configuration_list
    : REFERENCE '=' '{'
        isa_xc_configuration_list
        build_configurations
        default_configuration_is_visible
        default_configuration_name?
      '}' ';'
    ;

xc_remote_swift_package_reference
    : REFERENCE '=' '{'
        isa_xc_remote_swift_package_reference
        repository_url
        requirement
      '}' ';'
    ;

xc_local_swift_pacakge_reference
    : REFERENCE '=' '{'
        isa_xc_local_swift_package_reference
        relative_path
      '}' ';'
    ;

xc_swift_package_product_dependency
    : REFERENCE '=' '{'
        isa_xc_swift_package_product_dependency
        xc_package?
        product_name
      '}' ';'
    ;

xc_version_group
    : REFERENCE '=' '{'
        isa_xc_version_group
        children
        current_version
        name?
        path
        source_tree
        version_group_type
      '}' ';'
    ;

// ISA rules

isa_pbx_aggregate_target
    : ISA '=' PBX_AGGREGATE_TARGET ';'
    ;

isa_pbx_build_file
    : ISA '=' PBX_BUILD_FILE ';'
    ;

isa_pbx_build_rule
    : ISA '=' PBX_BUILD_RULE ';'
    ;

isa_pbx_build_style
    : ISA '=' PBX_BUILD_STYLE ';'
    ;

isa_pbx_container_item_proxy
    : ISA '=' PBX_CONTAINER_ITEM_PROXY ';'
    ;

isa_pbx_copy_files_build_phase
    : ISA '=' PBX_COPY_FILES_BUILD_PHASE ';'
    ;

isa_pbx_file_reference
    : ISA '=' PBX_FILE_REFERENCE ';'
    ;

isa_pbx_file_system_synchronized_build_file_exception_set
    : ISA '=' PBX_FILE_SYSTEM_SYNCHRONIZED_BUILD_FILE_EXCEPTION_SET ';'
    ;

isa_pbx_file_system_synchronized_root_group
    : ISA '=' PBX_FILE_SYSTEM_SYNCHRONIZED_ROOT_GROUP ';'
    ;

isa_pbx_frameworks_build_phase
    : ISA '=' PBX_FRAMEWORKS_BUILD_PHASE ';'
    ;

isa_pbx_group
    : ISA '=' PBX_GROUP ';'
    ;

isa_pbx_header_build_phase
    : ISA '=' PBX_HEADERS_BUILD_PHASE ';'
    ;

isa_pbx_native_target
    : ISA '=' PBX_NATIVE_TARGET ';'
    ;

isa_pbx_legacy_target
    : ISA '=' PBX_LEGACY_TARGET ';'
    ;

isa_pbx_project
    : ISA '=' PBX_PROJECT ';'
    ;

isa_pbx_reference_proxy
    : ISA '=' PBX_REFERENCE_PROXY ';'
    ;

isa_pbx_resources_build_phase
    : ISA '=' PBX_RESOURCES_BUILD_PHASE ';'
    ;

isa_pbx_shell_script_build_phase
    : ISA '=' PBX_SHELL_SCRIPT_BUILD_PHASE ';'
    ;

isa_pbx_shell_build_phase
    : ISA '=' PBX_SHELL_BUILD_PHASE ';'
    ;

isa_pbx_sources_build_phase
    : ISA '=' PBX_SOURCES_BUILD_PHASE ';'
    ;

isa_pbx_target_dependency
    : ISA '=' PBX_TARGET_DEPENDENCY ';'
    ;

isa_pbx_variant_group
    : ISA '=' PBX_VARIANT_GROUP ';'
    ;

isa_xc_build_configuration
    : ISA '=' XC_BUILD_CONFIGURATION ';'
    ;

isa_xc_configuration_list
    : ISA '=' XC_CONFIGURATION_LIST ';'
    ;

isa_xc_remote_swift_package_reference
    : ISA '=' XC_REMOTE_SWIFT_PACKAGE_REFERENCE ';'
    ;

isa_xc_local_swift_package_reference
    : ISA '=' XC_LOCAL_SWIFT_PACKAGE_REFERENCE ';'
    ;

isa_xc_swift_package_product_dependency
    : ISA '=' XC_SWIFT_PACKAGE_PRODUCT_DEPENDENCY ';'
    ;

isa_xc_version_group
    : ISA '=' XC_VERSION_GROUP ';'
    ;

// Other rules

always_out_of_date
    : ALWAYS_OUT_OF_DATE '=' NUMBER ';'
    ;

file_ref
    : FILE_REF '=' REFERENCE ';'
    ;

product_ref
    : PRODUCT_REF '=' REFERENCE ';'
    ;

container_portal
    : CONTAINER_PORTAL '=' REFERENCE ';'
    ;

proxy_type
    : PROXY_TYPE '=' NUMBER ';'
    ;

remote_global_id_string
    : REMOTE_GLOBAL_ID_STRING '=' REFERENCE ';'
    ;

remote_info
    : REMOTE_INFO '=' str_number_variable ';'
    ;

file_encoding
    : FILE_ENCODING '=' NUMBER ';'
    ;

comments
    : COMMENTS '=' str_number_variable ';'
    ;

explicit_file_type
    : EXPLICIT_FILE_TYPE '=' str_number_variable ';'
    ;

explicit_file_types
    : EXPLICIT_FILE_TYPES '=' '{' key_value* '}' ';'
    ;

explicit_folders
    : EXPLICIT_FOLDERS '=' any_string_list ';'
    ;

last_known_file_type
    : LAST_KNOWN_FILE_TYPE '=' str_number_variable ';'
    ;

include_in_index
    : INCLUDE_IN_INDEX '=' NUMBER ';'
    ;

indent_width
    : INDENT_WIDTH '=' NUMBER ';'
    ;

tab_width
    : TAB_WIDTH '=' NUMBER ';'
    ;

uses_tabs
    : USES_TABS '=' NUMBER ';'
    ;

wraps_lines
    : WRAPS_LINES '=' NUMBER ';'
    ;

platform_filter
    : PLATFORM_FILTER '=' any_string ';'
    ;

platform_filters
    : PLATFORM_FILTERS '=' any_string_list ';'
    ;

children
    : CHILDREN '=' reference_list ';'
    ;

product_install_path
    : PRODUCT_INSTALL_PATH '=' any_string ';'
    ;

repository_url
    : REPOSITORY_URL '=' QUOTED_STRING ';'
    ;

relative_path
    : RELATIVE_PATH '=' any_string ';'
    ;

requirement
    : REQUIREMENT '=' '{' key_value* '}' ';'
    ;

xc_package
    : PACKAGE '=' REFERENCE ';'
    ;

package_product_dependencies
    : PACKAGE_PRODUCT_DEPENDENCIES '=' reference_list ';'
    ;

name
    : NAME '=' any_string ';'
    ;

path
    : PATH '=' str_number_variable ';'
    ;

source_tree
    : SOURCE_TREE '=' any_string ';'
    ;

build_action_mask
    : BUILD_ACTION_MASK '=' NUMBER ';'
    ;

files
    : FILES '=' reference_list ';'
    ;

run_only_for_deployment_postprocessing
    : RUN_ONLY_FOR_DEPLOYMENT_POSTPROCESSING '=' NUMBER ';'
    ;

reference_list
    : '(' (REFERENCE ',')* ')'
    ;

any_string_list
    : '(' ')' |  '(' str_number_variable (',' str_number_variable)* ','? ')'
    ;

non_quoted_strings_list
    : '(' (NON_QUOTED_STRING ',')* ')'
    ;

build_configuration_list
    : BUILD_CONFIGURATION_LIST '=' REFERENCE ';'
    ;

build_phases
    : BUILD_PHASES '=' reference_list ';'
    ;

build_rules
    : BUILD_RULES '=' reference_list ';'
    ;

build_arguments_string
    : BUILD_ARGUMENTS_STRING '=' any_string ';'
    ;

build_tool_path
    : BUILD_TOOL_PATH '=' any_string ';'
    ;

build_working_directory
    : BUILD_WORKING_DIRECTORY '=' any_string ';'
    ;

pass_build_settings_in_environment
    : PASS_BUILD_SETTINGS_IN_ENVIRONMENT '=' NUMBER ';'
    ;

dependencies
    : DEPENDENCIES '=' reference_list ';'
    ;

product_name
    : PRODUCT_NAME '=' str_number_variable ';'
    ;

product_reference
    : PRODUCT_REFERENCE '=' REFERENCE ';'
    ;

product_type
    : PRODUCT_TYPE '=' QUOTED_STRING ';'
    ;

line_ending
    : LINE_ENDING '=' NUMBER ';'
    ;

xc_language_specification_identifier
    : XC_LANGUAGE_SPECIFICATION_IDENTIFIER '=' str_number_variable ';'
    ;

plist_structure_definition_identifier
    : PLIST_STRUCTURE_DEFINITION_IDENTIFIER '=' str_number_variable ';'
    ;

ref_type
    : REF_TYPE '=' NUMBER ';'
    ;

compiler_spec
    : COMPILER_SPEC '=' any_string ';'
    ;

file_patterns
    : FILE_PATTERNS '=' any_string ';'
    ;

input_files
    : INPUT_FILES '=' any_string_list ';'
    ;

is_editable
    : IS_EDITABLE '=' NUMBER ';'
    ;

output_files
    : OUTPUT_FILES '=' any_string_list ';'
    ;

run_once_per_arch
    : RUN_ONCE_PER_ARCH '=' NUMBER ';'
    ;

script
    : SCRIPT '=' any_string ';'
    ;

attributes
    : ATTRIBUTES '=' '{'
        build_targets_in_parallel?
        class_prefix?
        default_build_system_type_for_workspace?
        last_swift_migration?
        last_swift_update_check?
        last_testing_upgrade_check?
        last_upgrade_check?
        organization_name?
        target_attributes?
      '}' ';'
    ;

last_swift_migration
    : LAST_SWIFT_MIGRATION '=' NUMBER ';'
    ;

default_build_system_type_for_workspace
    : DEFAULT_BUILD_SYSTEM_TYPE_FOR_WORKSPACE '=' NON_QUOTED_STRING ';'
    ;

last_swift_update_check
    : LAST_SWIFT_UPDATE_CHECK '=' NUMBER ';'
    ;

build_targets_in_parallel
    : BUILD_INDEPENDENT_TARGETS_IN_PARALLEL '=' (NUMBER|NON_QUOTED_STRING) ';'
    ;

last_testing_upgrade_check
    : LAST_TESTING_UPGRADE_CHECK '=' NUMBER ';'
    ;

last_upgrade_check
    : LAST_UPGRADE_CHECK '=' NUMBER ';'
    ;

organization_name
    : ORGANIZATION_NAME '=' str_number_variable ';'
    ;

target_attributes
    : TARGET_ATTRIBUTES '=' '{' (target_attribute)* '}' ';'
    ;

target_attribute
    : REFERENCE '=' '{'
      created_on_tools_version?
      test_target_id?
      development_team?
      development_team_name?
      last_swift_migration?
      provisioning_style?
      system_capabilities?
      test_target_id?
      '}' ';'
    ;

created_on_tools_version
    : CREATED_ON_TOOLS_VERSION '=' NON_QUOTED_STRING ';'
    ;

test_target_id
    : TEST_TARGET_ID '=' REFERENCE ';'
    ;

development_team
    : DEVELOPMENT_TEAM '=' any_string ';'
    ;

development_team_name
    : DEVELOPMENT_TEAM_NAME '=' any_string ';'
    ;

provisioning_style
    : PROVISIONING_STYLE '=' NON_QUOTED_STRING ';'
    ;

compatibility_version
    : COMPATIBILITY_VERSION '=' QUOTED_STRING ';'
    ;

development_region
    : DEVELOPMENT_REGION '=' NON_QUOTED_STRING ';'
    ;

has_scanned_for_encodings
    : HAS_SCANNED_FOR_ENCODINGS '=' NUMBER ';'
    ;

known_regions
    : KNOWN_REGIONS '=' any_string_list ';'
    ;

main_group
    : MAIN_GROUP '=' REFERENCE ';'
    ;

product_ref_group
    : PRODUCT_REF_GROUP '=' REFERENCE ';'
    ;

package_references
    : PACKAGE_REFERENCES '=' reference_list ';'
    ;

preferred_project_object_version
    : PREFERRED_PROJECT_OBJECT_VERSION '=' NUMBER ';'
    ;

project_dir_path
    : PRODUCT_DIR_PATH '=' any_string ';'
    ;

project_references
    : PROJECT_REFERENCES '=' str_number_variable ';'
    | PROJECT_REFERENCES '=' '(' project_references_list ')' ';'
    ;

project_root
    : PROJECT_ROOT '=' any_string ';'
    ;

targets
    : TARGETS '=' reference_list ';'
    ;

input_file_list_paths
    : INPUT_FILE_LIST_PATHS '=' any_string_list ';'
    ;

input_paths
    : INPUT_PATHS '=' any_string_list ';'
    ;

output_file_list_paths
    : OUTPUT_FILE_LIST_PATHS '=' any_string_list ';'
    ;

output_paths
    : OUTPUT_PATHS '=' any_string_list ';'
    ;

shell_path
    : SHELL_PATH '=' any_string ';'
    ;

shell
    : SHELL '=' QUOTED_STRING ';'
    ;

shell_script
    : SHELL_SCRIPT '=' any_string ';'
    ;

show_env_vars_in_log
    : SHOW_ENV_VARS_IN_LOG '=' NUMBER ';'
    ;

target
    : TARGET '=' REFERENCE ';'
    ;

target_proxy
    : TARGET_PROXY '=' REFERENCE ';'
    ;

file_type
    : FILE_TYPE '=' str_number_variable ';'
    ;

remote_ref
    : REMOTE_REF '=' REFERENCE ';'
    ;

base_configuration_reference
    : BASE_CONFIGURATION_REFERENCE '=' REFERENCE ';'
    ;

build_settings
    : BUILD_SETTINGS '=' '{'
        key_value*
      '}' ';'
    ;

build_styles
    : BUILD_STYLES '=' reference_list ';'
    ;

dst_path
    : DST_PATH '=' any_string ';'
    ;

dst_subfolder_spec
    : DST_SUBFOLDER_SPEC '=' NUMBER ';'
    ;

project_references_list
    : (project_references_list_element)*
    ;

project_references_list_element
    : '{'
        PRODUCT_GROUP '=' REFERENCE ';'
        PROJECT_REF '=' REFERENCE ';'
      '}' ','
    ;

membership_exceptions
    : MEMBERSHIP_EXCEPTIONS '=' any_string_list ';';

exceptions
    : EXCEPTIONS '=' reference_list ';';

key_value
    : str_number_variable '=' str_number_variable ';'
    | str_number_variable '=' NUMBER ';'
    | str_number_variable '=' ALPHA_NUMERIC ';'
    | str_number_variable '=' '{' key_value '}' ';'
    | str_number_variable '=' '(' str_number_variable? (',' str_number_variable)* ','? ')' ';'
    ;

build_configurations
    : BUILD_CONFIGURATIONS '=' reference_list ';'
    ;

default_configuration_is_visible
    : DEFAULT_CONFIGURATION_IS_VISIBLE '=' NUMBER ';'
    ;

default_configuration_name
    : DEFAULT_CONFIGURATION_NAME '=' any_string ';'
    ;

settings
    : SETTINGS '=' '{' key_value* '}' ';'
    ;

system_capabilities
    : SYSTEM_CAPABILITIES '=' '{' key_value* '}' ';'
    ;

current_version
    : CURRENT_VERSION '=' REFERENCE ';'
    ;

version_group_type
    : VERSION_GROUP_TYPE '=' NON_QUOTED_STRING ';'
    ;

class_prefix
    : CLASSPREFIX '=' str_number_variable ';'
    ;

any_string
    : NON_QUOTED_STRING
    | QUOTED_STRING
    | UNDERSCORE|DASH|DOT
    | any_token
    ;

str_number_variable
    : any_string
    | NUMBER
    | VARIABLE
    ;

any_token
    : ARCHIVE_VERSION
    | CLASSES
    | ISA
    | OBJECT_VERSION
    | OBJECTS
    | ROOT_OBJECT
    | PBX_AGGREGATE_TARGET
    | PBX_BUILD_FILE
    | PBX_BUILD_RULE
    | PBX_BUILD_STYLE
    | PBX_CONTAINER_ITEM_PROXY
    | PBX_COPY_FILES_BUILD_PHASE
    | PBX_FILE_REFERENCE
    | PBX_FILE_SYSTEM_SYNCHRONIZED_BUILD_FILE_EXCEPTION_SET
    | PBX_FILE_SYSTEM_SYNCHRONIZED_ROOT_GROUP
    | PBX_FRAMEWORKS_BUILD_PHASE
    | PBX_NATIVE_TARGET
    | PBX_LEGACY_TARGET
    | PBX_PROJECT
    | PBX_REFERENCE_PROXY
    | PBX_RESOURCES_BUILD_PHASE
    | PBX_SHELL_SCRIPT_BUILD_PHASE
    | PBX_SOURCES_BUILD_PHASE
    | PBX_TARGET_DEPENDENCY
    | PBX_VARIANT_GROUP
    | PREFERRED_PROJECT_OBJECT_VERSION
    | XC_BUILD_CONFIGURATION
    | XC_CONFIGURATION_LIST
    | XC_REMOTE_SWIFT_PACKAGE_REFERENCE
    | XC_LOCAL_SWIFT_PACKAGE_REFERENCE
    | XC_SWIFT_PACKAGE_PRODUCT_DEPENDENCY
    | XC_VERSION_GROUP
    | FILE_REF
    | PRODUCT_REF
    | CONTAINER_PORTAL
    | PROXY_TYPE
    | REMOTE_GLOBAL_ID_STRING
    | REMOTE_INFO
    | FILE_ENCODING
    | COMMENTS
    | EXPLICIT_FILE_TYPE
    | EXPLICIT_FILE_TYPES
    | EXPLICIT_FOLDERS
    | LAST_KNOWN_FILE_TYPE
    | INCLUDE_IN_INDEX
    | INDENT_WIDTH
    | TAB_WIDTH
    | USES_TABS
    | WRAPS_LINES
    | PLATFORM_FILTER
    | PLATFORM_FILTERS
    | CHILDREN
    | PRODUCT_INSTALL_PATH
    | REPOSITORY_URL
    | RELATIVE_PATH
    | REQUIREMENT
    | PACKAGE
    | PACKAGE_PRODUCT_DEPENDENCIES
    | NAME
    | PATH
    | SOURCE_TREE
    | BUILD_ACTION_MASK
    | FILES
    | RUN_ONLY_FOR_DEPLOYMENT_POSTPROCESSING
    | BUILD_CONFIGURATION_LIST
    | BUILD_PHASES
    | BUILD_RULES
    | BUILD_ARGUMENTS_STRING
    | BUILD_TOOL_PATH
    | BUILD_WORKING_DIRECTORY
    | PASS_BUILD_SETTINGS_IN_ENVIRONMENT
    | DEPENDENCIES
    | PRODUCT_NAME
    | PRODUCT_REFERENCE
    | PRODUCT_TYPE
    | LINE_ENDING
    | XC_LANGUAGE_SPECIFICATION_IDENTIFIER
    | PLIST_STRUCTURE_DEFINITION_IDENTIFIER
    | REF_TYPE
    | COMPILER_SPEC
    | FILE_PATTERNS
    | INPUT_FILES
    | IS_EDITABLE
    | OUTPUT_FILES
    | RUN_ONCE_PER_ARCH
    | SCRIPT
    | ATTRIBUTES
    | LAST_SWIFT_MIGRATION
    | DEFAULT_BUILD_SYSTEM_TYPE_FOR_WORKSPACE
    | LAST_SWIFT_UPDATE_CHECK
    | BUILD_INDEPENDENT_TARGETS_IN_PARALLEL
    | LAST_TESTING_UPGRADE_CHECK
    | LAST_UPGRADE_CHECK
    | ORGANIZATION_NAME
    | TARGET_ATTRIBUTES
    | CREATED_ON_TOOLS_VERSION
    | TEST_TARGET_ID
    | DEVELOPMENT_TEAM
    | DEVELOPMENT_TEAM_NAME
    | PROVISIONING_STYLE
    | COMPATIBILITY_VERSION
    | DEVELOPMENT_REGION
    | HAS_SCANNED_FOR_ENCODINGS
    | KNOWN_REGIONS
    | MAIN_GROUP
    | PRODUCT_REF_GROUP
    | PACKAGE_REFERENCES
    | PRODUCT_DIR_PATH
    | PROJECT_REFERENCES
    | PROJECT_ROOT
    | TARGETS
    | INPUT_FILE_LIST_PATHS
    | INPUT_PATHS
    | OUTPUT_FILE_LIST_PATHS
    | OUTPUT_PATHS
    | SHELL_PATH
    | SHELL
    | SHELL_SCRIPT
    | SHOW_ENV_VARS_IN_LOG
    | TARGET
    | TARGET_PROXY
    | FILE_TYPE
    | REMOTE_REF
    | BASE_CONFIGURATION_REFERENCE
    | BUILD_SETTINGS
    | DST_PATH
    | DST_SUBFOLDER_SPEC
    | PRODUCT_GROUP
    | PROJECT_REF
    | BUILD_CONFIGURATIONS
    | DEFAULT_CONFIGURATION_IS_VISIBLE
    | DEFAULT_CONFIGURATION_NAME
    | SETTINGS
    | SYSTEM_CAPABILITIES
    | CURRENT_VERSION
    | VERSION_GROUP_TYPE
    | MEMBERSHIP_EXCEPTIONS
    | EXCEPTIONS
    | CLASSPREFIX
    ;

// LEXER

// Keywords
ARCHIVE_VERSION: 'archiveVersion';
CLASSES: 'classes';
DASH: '-';
DOT: '.';
ISA: 'isa';
NUMBER: [0-9]+;
OBJECT_VERSION: 'objectVersion';
OBJECTS: 'objects';
ROOT_OBJECT: 'rootObject';
SLASH: '/';
UNDERSCORE: '_';
DOLLAR: '$';
PBX_AGGREGATE_TARGET: 'PBXAggregateTarget';
PBX_BUILD_FILE: 'PBXBuildFile';
PBX_BUILD_RULE: 'PBXBuildRule';
PBX_BUILD_STYLE: 'PBXBuildStyle';
PBX_CONTAINER_ITEM_PROXY: 'PBXContainerItemProxy';
PBX_COPY_FILES_BUILD_PHASE: 'PBXCopyFilesBuildPhase';
PBX_FILE_REFERENCE: 'PBXFileReference';
PBX_FILE_SYSTEM_SYNCHRONIZED_BUILD_FILE_EXCEPTION_SET: 'PBXFileSystemSynchronizedBuildFileExceptionSet';
PBX_FILE_SYSTEM_SYNCHRONIZED_ROOT_GROUP: 'PBXFileSystemSynchronizedRootGroup';
PBX_FRAMEWORKS_BUILD_PHASE: 'PBXFrameworksBuildPhase';
PBX_GROUP: 'PBXGroup';
PBX_HEADERS_BUILD_PHASE: 'PBXHeadersBuildPhase';
PBX_NATIVE_TARGET: 'PBXNativeTarget';
PBX_LEGACY_TARGET: 'PBXLegacyTarget';
PBX_PROJECT: 'PBXProject';
PBX_REFERENCE_PROXY: 'PBXReferenceProxy';
PBX_RESOURCES_BUILD_PHASE: 'PBXResourcesBuildPhase' | 'PBXRezBuildPhase';
PBX_SHELL_SCRIPT_BUILD_PHASE: 'PBXShellScriptBuildPhase';
PBX_SHELL_BUILD_PHASE: 'PBXShellBuildPhase';
PBX_SOURCES_BUILD_PHASE: 'PBXSourcesBuildPhase';
PBX_TARGET_DEPENDENCY: 'PBXTargetDependency';
PBX_VARIANT_GROUP: 'PBXVariantGroup';
XC_BUILD_CONFIGURATION: 'XCBuildConfiguration';
XC_CONFIGURATION_LIST: 'XCConfigurationList';
XC_REMOTE_SWIFT_PACKAGE_REFERENCE: 'XCRemoteSwiftPackageReference';
XC_LOCAL_SWIFT_PACKAGE_REFERENCE: 'XCLocalSwiftPackageReference';
XC_SWIFT_PACKAGE_PRODUCT_DEPENDENCY: 'XCSwiftPackageProductDependency';
XC_VERSION_GROUP: 'XCVersionGroup';
ALWAYS_OUT_OF_DATE: 'alwaysOutOfDate';
FILE_REF: 'fileRef';
PRODUCT_REF: 'productRef';
CONTAINER_PORTAL: 'containerPortal';
PROXY_TYPE: 'proxyType';
REMOTE_GLOBAL_ID_STRING: 'remoteGlobalIDString';
REMOTE_INFO: 'remoteInfo';
FILE_ENCODING: 'fileEncoding';
COMMENTS: 'comments';
EXPLICIT_FILE_TYPE: 'explicitFileType';
EXPLICIT_FILE_TYPES: 'explicitFileTypes';
EXPLICIT_FOLDERS: 'explicitFolders';
LAST_KNOWN_FILE_TYPE: 'lastKnownFileType';
INCLUDE_IN_INDEX: 'includeInIndex';
INDENT_WIDTH: 'indentWidth';
TAB_WIDTH: 'tabWidth';
USES_TABS: 'usesTabs';
WRAPS_LINES: 'wrapsLines';
PLATFORM_FILTER: 'platformFilter';
PLATFORM_FILTERS: 'platformFilters';
CHILDREN: 'children';
PRODUCT_INSTALL_PATH: 'productInstallPath';
REPOSITORY_URL: 'repositoryURL';
RELATIVE_PATH: 'relativePath';
REQUIREMENT: 'requirement';
PACKAGE: 'package';
PACKAGE_PRODUCT_DEPENDENCIES: 'packageProductDependencies';
NAME: 'name';
PATH: 'path';
SOURCE_TREE: 'sourceTree';
BUILD_ACTION_MASK: 'buildActionMask';
FILES: 'files';
RUN_ONLY_FOR_DEPLOYMENT_POSTPROCESSING : 'runOnlyForDeploymentPostprocessing';
BUILD_CONFIGURATION_LIST : 'buildConfigurationList';
BUILD_PHASES : 'buildPhases';
BUILD_RULES : 'buildRules';
BUILD_ARGUMENTS_STRING : 'buildArgumentsString';
BUILD_TOOL_PATH : 'buildToolPath';
BUILD_WORKING_DIRECTORY : 'buildWorkingDirectory';
PASS_BUILD_SETTINGS_IN_ENVIRONMENT : 'passBuildSettingsInEnvironment';
DEPENDENCIES : 'dependencies';
PRODUCT_NAME : 'productName';
PRODUCT_REFERENCE : 'productReference';
PRODUCT_TYPE : 'productType';
LINE_ENDING : 'lineEnding';
XC_LANGUAGE_SPECIFICATION_IDENTIFIER : 'xcLanguageSpecificationIdentifier';
PLIST_STRUCTURE_DEFINITION_IDENTIFIER : 'plistStructureDefinitionIdentifier';
REF_TYPE : 'refType';
COMPILER_SPEC: 'compilerSpec';
FILE_PATTERNS: 'filePatterns';
INPUT_FILES: 'inputFiles';
IS_EDITABLE: 'isEditable';
OUTPUT_FILES: 'outputFiles';
RUN_ONCE_PER_ARCH: 'runOncePerArchitecture';
SCRIPT: 'script';
ATTRIBUTES : 'attributes';
LAST_SWIFT_MIGRATION : 'LastSwiftMigration';
DEFAULT_BUILD_SYSTEM_TYPE_FOR_WORKSPACE : 'DefaultBuildSystemTypeForWorkspace';
LAST_SWIFT_UPDATE_CHECK : 'LastSwiftUpdateCheck';
BUILD_INDEPENDENT_TARGETS_IN_PARALLEL : 'BuildIndependentTargetsInParallel';
LAST_TESTING_UPGRADE_CHECK : 'LastTestingUpgradeCheck';
LAST_UPGRADE_CHECK : 'LastUpgradeCheck';
ORGANIZATION_NAME : 'ORGANIZATIONNAME';
TARGET_ATTRIBUTES : 'TargetAttributes';
CREATED_ON_TOOLS_VERSION : 'CreatedOnToolsVersion';
TEST_TARGET_ID : 'TestTargetID';
DEVELOPMENT_TEAM : 'DevelopmentTeam';
DEVELOPMENT_TEAM_NAME : 'DevelopmentTeamName';
PROVISIONING_STYLE : 'ProvisioningStyle';
COMPATIBILITY_VERSION : 'compatibilityVersion';
DEVELOPMENT_REGION : 'developmentRegion';
HAS_SCANNED_FOR_ENCODINGS : 'hasScannedForEncodings';
KNOWN_REGIONS : 'knownRegions';
MAIN_GROUP : 'mainGroup';
PRODUCT_REF_GROUP : 'productRefGroup';
PACKAGE_REFERENCES : 'packageReferences';
PREFERRED_PROJECT_OBJECT_VERSION : 'preferredProjectObjectVersion';
PRODUCT_DIR_PATH : 'projectDirPath';
PROJECT_REFERENCES : 'projectReferences';
PROJECT_ROOT : 'projectRoot';
TARGETS : 'targets';
INPUT_FILE_LIST_PATHS : 'inputFileListPaths';
INPUT_PATHS : 'inputPaths';
OUTPUT_FILE_LIST_PATHS : 'outputFileListPaths';
OUTPUT_PATHS : 'outputPaths';
SHELL_PATH : 'shellPath';
SHELL : 'shell';
SHELL_SCRIPT : 'shellScript';
SHOW_ENV_VARS_IN_LOG : 'showEnvVarsInLog';
TARGET : 'target';
TARGET_PROXY : 'targetProxy';
FILE_TYPE : 'fileType';
REMOTE_REF : 'remoteRef';
BASE_CONFIGURATION_REFERENCE : 'baseConfigurationReference';
BUILD_SETTINGS : 'buildSettings';
BUILD_STYLES : 'buildStyles';
DST_PATH : 'dstPath';
DST_SUBFOLDER_SPEC : 'dstSubfolderSpec';
PRODUCT_GROUP : 'ProductGroup';
PROJECT_REF : 'ProjectRef';
BUILD_CONFIGURATIONS : 'buildConfigurations';
DEFAULT_CONFIGURATION_IS_VISIBLE : 'defaultConfigurationIsVisible';
DEFAULT_CONFIGURATION_NAME : 'defaultConfigurationName';
SETTINGS : 'settings';
SYSTEM_CAPABILITIES : 'SystemCapabilities';
CURRENT_VERSION : 'currentVersion';
VERSION_GROUP_TYPE : 'versionGroupType';
MEMBERSHIP_EXCEPTIONS : 'membershipExceptions';
EXCEPTIONS : 'exceptions';
CLASSPREFIX : 'CLASSPREFIX';


REFERENCE
    : HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX? HEX? HEX? HEX?
      HEX? HEX? HEX? HEX?
    | ('FR_'|'G_') (HEX)+
    // Carthage references contain non-hex characters
    // This is a problem because if we ever find a name 24 chars long that uses only alpha numeric values with
    // capitalized letters, the lexer will find a REFERENCE when in reality we may just need a NON_QUOTED_STRING
    | ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP
      ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP
      ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP
      ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP
      ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP
      ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP ALPHA_NUMERIC_CAP
    | 'OBJ_' NUMBER
    | '"' NON_QUOTED_STRING+ ('::' NON_QUOTED_STRING+)+ '"'
    ;

QUOTED_STRING
    : '"' (QUOTED_STRING_CHARACTER)+ '"'
    | '"' '"'
    ;

NON_QUOTED_STRING: (ALPHA_NUMERIC|UNDERSCORE|DASH|SLASH|DOT|DOLLAR)+;

VARIABLE: ('$' NON_QUOTED_STRING) + SLASH?;

ALPHA_NUMERIC: [0-9a-zA-Z];
ALPHA_NUMERIC_CAP: [0-9A-Z];

fragment HEX
    : [0-9a-fA-F]
    ;

fragment QUOTED_STRING_CHARACTER
    : ~["]
    | '\\"'
    ;

// Whitespace & comments

WS:  [ \t\r\n\u000C]+ -> skip;

COMMENT: '/*' .*? '*/' -> skip;

LINE_COMMENT: '//' ~[\r\n]* -> skip;
