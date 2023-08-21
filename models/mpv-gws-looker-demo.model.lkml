connection: "mpv-gws-looker-demo"

# include all the views
include: "/views/**/*.view"

datagroup: mpv-gws-looker-demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mpv-gws-looker-demo_default_datagroup

explore: connection_reg_r3 {}

explore: activity {
  join: activity__group_id {
    view_label: "Activity: Group Id"
    sql: LEFT JOIN UNNEST(${activity.group_id}) as activity__group_id ;;
    relationship: one_to_many
  }

  join: activity__token__scope {
    view_label: "Activity: Token Scope"
    sql: LEFT JOIN UNNEST(${activity.token__scope}) as activity__token__scope ;;
    relationship: one_to_many
  }

  join: activity__rules__actions {
    view_label: "Activity: Rules Actions"
    sql: LEFT JOIN UNNEST(${activity.rules__actions}) as activity__rules__actions ;;
    relationship: one_to_many
  }

  join: activity__drive__new_value {
    view_label: "Activity: Drive New Value"
    sql: LEFT JOIN UNNEST(${activity.drive__new_value}) as activity__drive__new_value ;;
    relationship: one_to_many
  }

  join: activity__drive__old_value {
    view_label: "Activity: Drive Old Value"
    sql: LEFT JOIN UNNEST(${activity.drive__old_value}) as activity__drive__old_value ;;
    relationship: one_to_many
  }

  join: activity__drive__recipients {
    view_label: "Activity: Drive Recipients"
    sql: LEFT JOIN UNNEST(${activity.drive__recipients}) as activity__drive__recipients ;;
    relationship: one_to_many
  }

  join: activity__drive__added_role {
    view_label: "Activity: Drive Added Role"
    sql: LEFT JOIN UNNEST(${activity.drive__added_role}) as activity__drive__added_role ;;
    relationship: one_to_many
  }

  join: activity__chat__target_users {
    view_label: "Activity: Chat Target Users"
    sql: LEFT JOIN UNNEST(${activity.chat__target_users}) as activity__chat__target_users ;;
    relationship: one_to_many
  }

  join: activity__rules__access_level {
    view_label: "Activity: Rules Access Level"
    sql: LEFT JOIN UNNEST(${activity.rules__access_level}) as activity__rules__access_level ;;
    relationship: one_to_many
  }

  join: activity__org_unit_name_path {
    view_label: "Activity: Org Unit Name Path"
    sql: LEFT JOIN UNNEST(${activity.org_unit_name_path}) as activity__org_unit_name_path ;;
    relationship: one_to_many
  }

  join: activity__drive__removed_role {
    view_label: "Activity: Drive Removed Role"
    sql: LEFT JOIN UNNEST(${activity.drive__removed_role}) as activity__drive__removed_role ;;
    relationship: one_to_many
  }

  join: activity__drive__old_value_id {
    view_label: "Activity: Drive Old Value Id"
    sql: LEFT JOIN UNNEST(${activity.drive__old_value_id}) as activity__drive__old_value_id ;;
    relationship: one_to_many
  }

  join: activity__drive__execution_id {
    view_label: "Activity: Drive Execution Id"
    sql: LEFT JOIN UNNEST(${activity.drive__execution_id}) as activity__drive__execution_id ;;
    relationship: one_to_many
  }

  join: activity__drive__new_value_id {
    view_label: "Activity: Drive New Value Id"
    sql: LEFT JOIN UNNEST(${activity.drive__new_value_id}) as activity__drive__new_value_id ;;
    relationship: one_to_many
  }

  join: activity__chrome__access_level {
    view_label: "Activity: Chrome Access Level"
    sql: LEFT JOIN UNNEST(${activity.chrome__access_level}) as activity__chrome__access_level ;;
    relationship: one_to_many
  }

  join: activity__mobile__ip_addresses {
    view_label: "Activity: Mobile Ip Addresses"
    sql: LEFT JOIN UNNEST(${activity.mobile__ip_addresses}) as activity__mobile__ip_addresses ;;
    relationship: one_to_many
  }

  join: activity__classroom__guardians {
    view_label: "Activity: Classroom Guardians"
    sql: LEFT JOIN UNNEST(${activity.classroom__guardians}) as activity__classroom__guardians ;;
    relationship: one_to_many
  }

  join: activity__drive__old_field_value {
    view_label: "Activity: Drive Old Field Value"
    sql: LEFT JOIN UNNEST(${activity.drive__old_field_value}) as activity__drive__old_field_value ;;
    relationship: one_to_many
  }

  join: activity__drive__new_field_value {
    view_label: "Activity: Drive New Field Value"
    sql: LEFT JOIN UNNEST(${activity.drive__new_field_value}) as activity__drive__new_field_value ;;
    relationship: one_to_many
  }

  join: activity__drive__source_folder_id {
    view_label: "Activity: Drive Source Folder Id"
    sql: LEFT JOIN UNNEST(${activity.drive__source_folder_id}) as activity__drive__source_folder_id ;;
    relationship: one_to_many
  }

  join: activity__admin__whitelisted_groups {
    view_label: "Activity: Admin Whitelisted Groups"
    sql: LEFT JOIN UNNEST(${activity.admin__whitelisted_groups}) as activity__admin__whitelisted_groups ;;
    relationship: one_to_many
  }

  join: activity__rules__snippets {
    view_label: "Activity: Rules Snippets"
    sql: LEFT JOIN UNNEST(${activity.rules__snippets}) as activity__rules__snippets ;;
    relationship: one_to_many
  }

  join: activity__classroom__invited_emails {
    view_label: "Activity: Classroom Invited Emails"
    sql: LEFT JOIN UNNEST(${activity.classroom__invited_emails}) as activity__classroom__invited_emails ;;
    relationship: one_to_many
  }

  join: activity__classroom__impacted_users {
    view_label: "Activity: Classroom Impacted Users"
    sql: LEFT JOIN UNNEST(${activity.classroom__impacted_users}) as activity__classroom__impacted_users ;;
    relationship: one_to_many
  }

  join: activity__rules__resource_recipients {
    view_label: "Activity: Rules Resource Recipients"
    sql: LEFT JOIN UNNEST(${activity.rules__resource_recipients}) as activity__rules__resource_recipients ;;
    relationship: one_to_many
  }

  join: activity__drive__old_attribute_value {
    view_label: "Activity: Drive Old Attribute Value"
    sql: LEFT JOIN UNNEST(${activity.drive__old_attribute_value}) as activity__drive__old_attribute_value ;;
    relationship: one_to_many
  }

  join: activity__drive__new_attribute_value {
    view_label: "Activity: Drive New Attribute Value"
    sql: LEFT JOIN UNNEST(${activity.drive__new_attribute_value}) as activity__drive__new_attribute_value ;;
    relationship: one_to_many
  }

  join: activity__drive__source_folder_title {
    view_label: "Activity: Drive Source Folder Title"
    sql: LEFT JOIN UNNEST(${activity.drive__source_folder_title}) as activity__drive__source_folder_title ;;
    relationship: one_to_many
  }

  join: activity__classroom__attachment_types {
    view_label: "Activity: Classroom Attachment Types"
    sql: LEFT JOIN UNNEST(${activity.classroom__attachment_types}) as activity__classroom__attachment_types ;;
    relationship: one_to_many
  }

  join: activity__groups__new_value_repeated {
    view_label: "Activity: Groups New Value Repeated"
    sql: LEFT JOIN UNNEST(${activity.groups__new_value_repeated}) as activity__groups__new_value_repeated ;;
    relationship: one_to_many
  }

  join: activity__groups__old_value_repeated {
    view_label: "Activity: Groups Old Value Repeated"
    sql: LEFT JOIN UNNEST(${activity.groups__old_value_repeated}) as activity__groups__old_value_repeated ;;
    relationship: one_to_many
  }

  join: activity__token__scope_data {
    view_label: "Activity: Token Scope Data"
    sql: LEFT JOIN UNNEST(${activity.token__scope_data}) as activity__token__scope_data ;;
    relationship: one_to_many
  }

  join: activity__drive__destination_folder_id {
    view_label: "Activity: Drive Destination Folder Id"
    sql: LEFT JOIN UNNEST(${activity.drive__destination_folder_id}) as activity__drive__destination_folder_id ;;
    relationship: one_to_many
  }

  join: activity__login__login_challenge_method {
    view_label: "Activity: Login Login Challenge Method"
    sql: LEFT JOIN UNNEST(${activity.login__login_challenge_method}) as activity__login__login_challenge_method ;;
    relationship: one_to_many
  }

  join: activity__chrome__triggered_rules_reason {
    view_label: "Activity: Chrome Triggered Rules Reason"
    sql: LEFT JOIN UNNEST(${activity.chrome__triggered_rules_reason}) as activity__chrome__triggered_rules_reason ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__link_domain {
    view_label: "Activity: Gmail Message Info Link Domain"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__link_domain}) as activity__gmail__message_info__link_domain ;;
    relationship: one_to_many
  }

  join: activity__drive__destination_folder_title {
    view_label: "Activity: Drive Destination Folder Title"
    sql: LEFT JOIN UNNEST(${activity.drive__destination_folder_title}) as activity__drive__destination_folder_title ;;
    relationship: one_to_many
  }

  join: activity__token__scope_data__product_bucket {
    view_label: "Activity: Token Scope Data Product Bucket"
    sql: LEFT JOIN UNNEST(${activity__token__scope_data.product_bucket}) as activity__token__scope_data__product_bucket ;;
    relationship: one_to_many
  }

  join: activity__rules__applied_actions {
    view_label: "Activity: Rules Applied Actions"
    sql: LEFT JOIN UNNEST(${activity.rules__applied_actions}) as activity__rules__applied_actions ;;
    relationship: one_to_many
  }

  join: activity__mobile__device_deactivation_reason {
    view_label: "Activity: Mobile Device Deactivation Reason"
    sql: LEFT JOIN UNNEST(${activity.mobile__device_deactivation_reason}) as activity__mobile__device_deactivation_reason ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__message_set {
    view_label: "Activity: Gmail Message Info Message Set"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__message_set}) as activity__gmail__message_info__message_set ;;
    relationship: one_to_many
  }

  join: activity__rules__triggered_actions {
    view_label: "Activity: Rules Triggered Actions"
    sql: LEFT JOIN UNNEST(${activity.rules__triggered_actions}) as activity__rules__triggered_actions ;;
    relationship: one_to_many
  }

  join: activity__rules__matched_detectors {
    view_label: "Activity: Rules Matched Detectors"
    sql: LEFT JOIN UNNEST(${activity.rules__matched_detectors}) as activity__rules__matched_detectors ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__attachment {
    view_label: "Activity: Gmail Message Info Attachment"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__attachment}) as activity__gmail__message_info__attachment ;;
    relationship: one_to_many
  }

  join: activity__rules__suppressed_actions {
    view_label: "Activity: Rules Suppressed Actions"
    sql: LEFT JOIN UNNEST(${activity.rules__suppressed_actions}) as activity__rules__suppressed_actions ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__destination {
    view_label: "Activity: Gmail Message Info Destination"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__destination}) as activity__gmail__message_info__destination ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__triggered_rule_info {
    view_label: "Activity: Gmail Message Info Triggered Rule Info"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__triggered_rule_info}) as activity__gmail__message_info__triggered_rule_info ;;
    relationship: one_to_many
  }

  join: activity__rules__evaluation_context__evaluation_resource_ids {
    view_label: "Activity: Rules Evaluation Context Evaluation Resource Ids"
    sql: LEFT JOIN UNNEST(${activity.rules__evaluation_context__evaluation_resource_ids}) as activity__rules__evaluation_context__evaluation_resource_ids ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__triggered_rule_info__string_match {
    view_label: "Activity: Gmail Message Info Triggered Rule Info String Match"
    sql: LEFT JOIN UNNEST(${activity__gmail__message_info__triggered_rule_info.string_match}) as activity__gmail__message_info__triggered_rule_info__string_match ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__triggered_rule_info__consequence {
    view_label: "Activity: Gmail Message Info Triggered Rule Info Consequence"
    sql: LEFT JOIN UNNEST(${activity__gmail__message_info__triggered_rule_info.consequence}) as activity__gmail__message_info__triggered_rule_info__consequence ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__connection_info__authenticated_domain {
    view_label: "Activity: Gmail Message Info Connection Info Authenticated Domain"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__connection_info__authenticated_domain}) as activity__gmail__message_info__connection_info__authenticated_domain ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__connection_info__failed_smtp_out_connect_ip {
    view_label: "Activity: Gmail Message Info Connection Info Failed Smtp Out Connect Ip"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__connection_info__failed_smtp_out_connect_ip}) as activity__gmail__message_info__connection_info__failed_smtp_out_connect_ip ;;
    relationship: one_to_many
  }

  join: activity__voice__usage_billing_metric_label {
    view_label: "Activity: Voice Usage Billing Metric Label"
    sql: LEFT JOIN UNNEST(${activity.voice__usage_billing_metric_label}) as activity__voice__usage_billing_metric_label ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__triggered_rule_info__consequence__subconsequence {
    view_label: "Activity: Gmail Message Info Triggered Rule Info Consequence Subconsequence"
    sql: LEFT JOIN UNNEST(${activity__gmail__message_info__triggered_rule_info__consequence.subconsequence}) as activity__gmail__message_info__triggered_rule_info__consequence__subconsequence ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__structured_policy_log_info__detected_file_types {
    view_label: "Activity: Gmail Message Info Structured Policy Log Info Detected File Types"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__structured_policy_log_info__detected_file_types}) as activity__gmail__message_info__structured_policy_log_info__detected_file_types ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients {
    view_label: "Activity: Gmail Message Info Structured Policy Log Info Exchange Journal Info Recipients"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients}) as activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__recipients ;;
    relationship: one_to_many
  }

  join: activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients {
    view_label: "Activity: Gmail Message Info Structured Policy Log Info Exchange Journal Info Unknown Recipients"
    sql: LEFT JOIN UNNEST(${activity.gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients}) as activity__gmail__message_info__structured_policy_log_info__exchange_journal_info__unknown_recipients ;;
    relationship: one_to_many
  }
}

explore: usage {
  join: usage__group_id {
    view_label: "Usage: Group Id"
    sql: LEFT JOIN UNNEST(${usage.group_id}) as usage__group_id ;;
    relationship: one_to_many
  }

  join: usage__accounts__authorized_apps {
    view_label: "Usage: Accounts Authorized Apps"
    sql: LEFT JOIN UNNEST(${usage.accounts__authorized_apps}) as usage__accounts__authorized_apps ;;
    relationship: one_to_many
  }

  join: usage__cros__device_version_distribution {
    view_label: "Usage: Cros Device Version Distribution"
    sql: LEFT JOIN UNNEST(${usage.cros__device_version_distribution}) as usage__cros__device_version_distribution ;;
    relationship: one_to_many
  }
}
