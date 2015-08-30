#!/bin/env ruby
# encoding: utf-8

Redmine::Plugin.register :xheaders do
  name 'X-Headers'
  author 'Alexander Blum'
  description 'Additional X-Headers in outgoing mails'
  version '0.1'
  author_url 'mailto:a.blum@free-reality.net'
  url 'https://github.com/C3S/redmine_xheaders'
  settings(
    :default => {
      'updated_by' => true,
      'status' => true,
      'priority' => true,
    },
    :partial => 'settings/xheaders'
  )
end

# add X-Headers to outgoing mails
ActionDispatch::Callbacks.to_prepare do
  require_dependency 'mailer'
  Mailer.send(:include, Xheaders)
end
