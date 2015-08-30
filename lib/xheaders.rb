module Xheaders

  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)
    base.class_eval do
      alias_method_chain :issue_edit, :new_header
      alias_method_chain :issue_add, :new_header
    end
  end

  module InstanceMethods

    def issue_edit_with_new_header(journal, to_users, cc_users)

      issue = journal.journalized.reload

      redmine_headers 'Status' => issue.status.name if
        Setting.plugin_xheaders['status']

      redmine_headers 'Priority' => issue.priority.name if
        Setting.plugin_xheaders['priority']

      issue_edit_without_new_header(journal, to_users, cc_users)

    end

    def issue_add_with_new_header(issue, to_users, cc_users)

      redmine_headers 'Status' => issue.status.name if
        Setting.plugin_xheaders['status']

      redmine_headers 'Priority' => issue.priority.name if
        Setting.plugin_xheaders['priority']

      issue_add_without_new_header(issue, to_users, cc_users)

    end

  end

end
