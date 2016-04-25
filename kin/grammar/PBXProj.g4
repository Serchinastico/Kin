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
    : ARCHIVE_VERSION '=' NON_QUOTED_STRING ';'
    ;

classes
    : CLASSES '=' '{' '}' ';'
    ;

object_version
    : OBJECT_VERSION '=' NON_QUOTED_STRING ';'
    ;

objects
    : OBJECTS '=' '{'
        pbx_aggregate_target_section?
        pbx_build_file_section
        pbx_container_item_proxy_section?
        pbx_copy_files_build_phase_section?
        pbx_file_reference_section
        pbx_frameworks_build_phase_section
        pbx_group_section
        pbx_headers_build_phase_section?
        pbx_native_target_section?
        pbx_project_section
        pbx_reference_proxy_section?
        pbx_resources_build_phase_section?
        pbx_shell_script_build_phase_section?
        pbx_sources_build_phase_section
        pbx_target_dependency_section?
        pbx_variant_group_section?
        xc_build_configuration_section
        xc_configuration_list_section
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

pbx_container_item_proxy_section
    : (pbx_container_item_proxy)+
    ;

pbx_copy_files_build_phase_section
    : (pbx_copy_files_build_phase)+
    ;

pbx_file_reference_section
    : (pbx_file_reference)+
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

xc_version_group_section
    : (xc_version_group)+
    ;

// Object components

pbx_aggregate_target
    : REFERENCE '=' '{'
        isa_pbx_aggregate_target
        build_configuration_list
        build_phases
        dependencies
        name
        product_name
      '}' ';'
    ;

pbx_build_file
    : REFERENCE '=' '{'
        isa_pbx_build_file
        file_ref
        settings?
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
        dst_path
        dst_subfolder_spec
        files
        name?
        run_only_for_deployment_postprocessing
      '}' ';'
    ;

pbx_file_reference
    : REFERENCE '=' '{'
        isa_pbx_file_reference
        explicit_file_type?
        file_encoding?
        include_in_index?
        last_known_file_type?
        line_ending?
        name?
        path?
        source_tree?
        xc_language_specification_identifier?
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
        indent_width?
        name?
        path?
        source_tree
        tab_width?
        uses_tabs?
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
        dependencies
        name
        product_install_path?
        product_name
        product_reference
        product_type
      '}' ';'
    ;

pbx_project
    : REFERENCE '=' '{'
        isa_pbx_project
        attributes
        build_configuration_list
        compatibility_version
        development_region
        has_scanned_for_encodings
        known_regions
        main_group
        product_ref_group?
        project_dir_path
        project_references?
        project_root
        targets
      '}' ';'
    ;

pbx_reference_proxy
    : REFERENCE '=' '{'
        isa_pbx_reference_proxy
        file_type
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
        build_action_mask
        files
        input_paths
        name?
        output_paths
        run_only_for_deployment_postprocessing
        shell_path
        shell_script
        show_env_vars_in_log?
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
        target?
        target_proxy
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

xc_version_group
    : REFERENCE '=' '{'
        isa_xc_version_group
        children
        current_version
        path
        source_tree
        version_group_type
      '}' ';'
    ;

// ISA rules

isa_pbx_aggregate_target
    : ISA '=' 'PBXAggregateTarget' ';'
    ;

isa_pbx_build_file
    : ISA '=' 'PBXBuildFile' ';'
    ;

isa_pbx_container_item_proxy
    : ISA '=' 'PBXContainerItemProxy' ';'
    ;

isa_pbx_copy_files_build_phase
    : ISA '=' 'PBXCopyFilesBuildPhase' ';'
    ;

isa_pbx_file_reference
    : ISA '=' 'PBXFileReference' ';'
    ;

isa_pbx_frameworks_build_phase
    : ISA '=' 'PBXFrameworksBuildPhase' ';'
    ;

isa_pbx_group
    : ISA '=' 'PBXGroup' ';'
    ;

isa_pbx_header_build_phase
    : ISA '=' 'PBXHeadersBuildPhase' ';'
    ;

isa_pbx_native_target
    : ISA '=' 'PBXNativeTarget' ';'
    ;

isa_pbx_project
    : ISA '=' 'PBXProject' ';'
    ;

isa_pbx_reference_proxy
    : ISA '=' 'PBXReferenceProxy' ';'
    ;

isa_pbx_resources_build_phase
    : ISA '=' 'PBXResourcesBuildPhase' ';'
    ;

isa_pbx_shell_script_build_phase
    : ISA '=' 'PBXShellScriptBuildPhase' ';'
    ;

isa_pbx_sources_build_phase
    : ISA '=' 'PBXSourcesBuildPhase' ';'
    ;

isa_pbx_target_dependency
    : ISA '=' 'PBXTargetDependency' ';'
    ;

isa_pbx_variant_group
    : ISA '=' 'PBXVariantGroup' ';'
    ;

isa_xc_build_configuration
    : ISA '=' 'XCBuildConfiguration' ';'
    ;

isa_xc_configuration_list
    : ISA '=' 'XCConfigurationList' ';'
    ;

isa_xc_version_group
    : ISA '=' 'XCVersionGroup' ';'
    ;

// Other rules

file_ref
    : 'fileRef' '=' REFERENCE ';'
    ;

container_portal
    : 'containerPortal' '=' REFERENCE ';'
    ;

proxy_type
    : 'proxyType' '=' NON_QUOTED_STRING ';'
    ;

remote_global_id_string
    : 'remoteGlobalIDString' '=' REFERENCE ';'
    ;

remote_info
    : 'remoteInfo' '=' any_string ';'
    ;

file_encoding
    : 'fileEncoding' '=' NON_QUOTED_STRING ';'
    ;

explicit_file_type
    : 'explicitFileType' '=' any_string ';'
    ;

last_known_file_type
    : 'lastKnownFileType' '=' any_string ';'
    ;

include_in_index
    : 'includeInIndex' '=' NON_QUOTED_STRING ';'
    ;

indent_width
    : 'indentWidth' '=' NON_QUOTED_STRING ';'
    ;

tab_width
    : 'tabWidth' '=' NON_QUOTED_STRING ';' // NUMBER
    ;

uses_tabs
    : 'usesTabs' '=' NON_QUOTED_STRING ';' // NUMBER
    ;

children
    : 'children' '=' reference_list ';'
    ;

product_install_path
    : 'productInstallPath' '=' QUOTED_STRING ';'
    ;

name
    : 'name' '=' (QUOTED_STRING|NON_QUOTED_STRING) ';'
    ;

path
    : 'path' '=' (QUOTED_STRING|NON_QUOTED_STRING) ';'
    ;

source_tree
    : 'sourceTree' '=' (QUOTED_STRING|NON_QUOTED_STRING) ';'
    ;

build_action_mask
    : 'buildActionMask' '=' NON_QUOTED_STRING ';'
    ;

files
    : 'files' '=' reference_list ';'
    ;

run_only_for_deployment_postprocessing
    : 'runOnlyForDeploymentPostprocessing' '=' NON_QUOTED_STRING ';'
    ;

reference_list
    : '(' (REFERENCE ',')* ')'
    ;

any_string_list
    : '(' (any_string ',')* ')'
    ;

non_quoted_strings_list
    : '(' (NON_QUOTED_STRING ',')* ')'
    ;

build_configuration_list
    : 'buildConfigurationList' '=' REFERENCE ';'
    ;

build_phases
    : 'buildPhases' '=' reference_list ';'
    ;

build_rules
    : 'buildRules' '=' reference_list ';'
    ;

dependencies
    : 'dependencies' '=' reference_list ';'
    ;

product_name
    : 'productName' '=' any_string ';'
    ;

product_reference
    : 'productReference' '=' REFERENCE ';'
    ;

product_type
    : 'productType' '=' QUOTED_STRING ';'
    ;

line_ending
    : 'lineEnding' '=' NON_QUOTED_STRING ';' // NUMBER
    ;

xc_language_specification_identifier
    : 'xcLanguageSpecificationIdentifier' '=' NON_QUOTED_STRING ';'
    ;

attributes
    : 'attributes' '=' '{'
        class_prefix?
        last_swift_migration?
        last_swift_update_check?
        last_upgrade_check
        last_testing_upgrade_check?
        organization_name?
        target_attributes?
      '}' ';'
    ;

last_swift_migration
    : 'LastSwiftMigration' '=' NON_QUOTED_STRING ';'
    ;

last_swift_update_check
    : 'LastSwiftUpdateCheck' '=' NON_QUOTED_STRING ';'
    ;

last_upgrade_check
    : 'LastUpgradeCheck' '=' NON_QUOTED_STRING ';'
    ;

last_testing_upgrade_check
    : 'LastTestingUpgradeCheck' '=' NON_QUOTED_STRING ';'
    ;

organization_name
    : 'ORGANIZATIONNAME' '=' any_string ';'
    ;

target_attributes
    : 'TargetAttributes' '=' '{' (target_attribute)* '}' ';'
    ;

target_attribute
    : REFERENCE '=' '{'
      created_on_tools_version?
      test_target_id?
      development_team?
      system_capabilities?
      '}' ';'
    ;

created_on_tools_version
    : 'CreatedOnToolsVersion' '=' NON_QUOTED_STRING ';'
    ;

test_target_id
    : 'TestTargetID' '=' REFERENCE ';'
    ;

development_team
    : 'DevelopmentTeam' '=' NON_QUOTED_STRING ';'
    ;

compatibility_version
    : 'compatibilityVersion' '=' QUOTED_STRING ';'
    ;

development_region
    : 'developmentRegion' '=' NON_QUOTED_STRING ';'
    ;

has_scanned_for_encodings
    : 'hasScannedForEncodings' '=' NON_QUOTED_STRING ';'
    ;

known_regions
    : 'knownRegions' '=' any_string_list ';'
    ;

main_group
    : 'mainGroup' '=' REFERENCE ';'
    ;

product_ref_group
    : 'productRefGroup' '=' REFERENCE ';'
    ;

project_dir_path
    : 'projectDirPath' '=' QUOTED_STRING ';'
    ;

project_references
    : 'projectReferences' '=' any_string ';'
    | 'projectReferences' '=' '(' project_references_list ')' ';'
    ;

project_root
    : 'projectRoot' '=' QUOTED_STRING ';'
    ;

targets
    : 'targets' '=' reference_list ';'
    ;

input_paths
    : 'inputPaths' '=' non_quoted_strings_list ';'
    ;

output_paths
    : 'outputPaths' '=' non_quoted_strings_list ';'
    ;

shell_path
    : 'shellPath' '=' NON_QUOTED_STRING ';'
    ;

shell_script
    : 'shellScript' '=' QUOTED_STRING ';'
    ;

show_env_vars_in_log
    : 'showEnvVarsInLog' '=' NON_QUOTED_STRING ';'
    ;

target
    : 'target' '=' REFERENCE ';'
    ;

target_proxy
    : 'targetProxy' '=' REFERENCE ';'
    ;

file_type
    : 'fileType' '=' any_string ';'
    ;

remote_ref
    : 'remoteRef' '=' REFERENCE ';'
    ;

base_configuration_reference
    : 'baseConfigurationReference' '=' REFERENCE ';'
    ;

build_settings
    : 'buildSettings' '=' '{'
        key_value*
      '}' ';'
    ;

dst_path
    : 'dstPath' '=' QUOTED_STRING ';'
    ;

dst_subfolder_spec
    : 'dstSubfolderSpec' '=' NON_QUOTED_STRING ';'
    ;

project_references_list
    : (project_references_list_element)*
    ;

project_references_list_element
    : '{'
        'ProductGroup' '=' REFERENCE ';'
        'ProjectRef' '=' REFERENCE ';'
      '}' ','
    ;

key_value
    : any_string '=' any_string ';'
    | any_string '=' '{' key_value '}' ';'
    | any_string '=' '(' (any_string ',')* ')' ';'
    ;

build_configurations
    : 'buildConfigurations' '=' reference_list ';'
    ;

default_configuration_is_visible
    : 'defaultConfigurationIsVisible' '=' NON_QUOTED_STRING ';'
    ;

default_configuration_name
    : 'defaultConfigurationName' '=' NON_QUOTED_STRING ';'
    ;

settings
    : 'settings' '=' '{' key_value* '}' ';'
    ;

system_capabilities
    : 'SystemCapabilities' '=' '{' key_value* '}' ';'
    ;

current_version
    : 'currentVersion' '=' REFERENCE ';'
    ;

version_group_type
    : 'versionGroupType' '=' NON_QUOTED_STRING ';'
    ;

class_prefix
    : 'CLASSPREFIX' '=' NON_QUOTED_STRING ';'
    ;

any_string
    : NON_QUOTED_STRING
    | QUOTED_STRING
    | VARIABLE
    ;

// LEXER

// Keywords

ARCHIVE_VERSION: 'archiveVersion';
CLASSES: 'classes';
ISA: 'isa';
OBJECT_VERSION: 'objectVersion';
OBJECTS: 'objects';
ROOT_OBJECT: 'rootObject';

REFERENCE
    : HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX HEX HEX HEX
      HEX HEX HEX HEX
    ;

QUOTED_STRING
    : '"' (QUOTED_STRING_CHARACTER)+ '"'
    | '"' '"'
    ;

NON_QUOTED_STRING
    : ([0-9a-zA-Z\_\-/\.])+
    ;

VARIABLE
    : '$' NON_QUOTED_STRING
    ;

fragment HEX
    : [0-9a-fA-F]
    ;

fragment QUOTED_STRING_CHARACTER
    : ~["]
    | '\\"'
    ;

// Whitespace & comments

WS  :  [ \t\r\n\u000C]+ -> skip
    ;

COMMENT
    :   '/*' .*? '*/' -> skip
    ;

LINE_COMMENT
    :   '//' ~[\r\n]* -> skip
    ;
