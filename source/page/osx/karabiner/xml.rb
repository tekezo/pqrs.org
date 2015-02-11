#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Xml < KarabinerBase
  def current_nav_path
    '/osx/karabiner/xml.html'
  end

  def enable_prettify
    true
  end

  def tabs_definition
    [
     {
       :name_l10n => {
         :en => 'examples',
         :ja => 'examples',
       }
     },
     {
       :href => '#examples',
       :name_l10n => {
         :en => 'examples',
         :ja => 'examples',
       },
     },
     {
       :href => '#autogen-examples',
       :name_l10n => {
         :en => 'existing settings',
         :ja => 'existing settings',
       },
     },
     {
       :name_l10n => {
         :en => 'basic',
         :ja => 'basic',
       }
     },
     {
       :href => '#basic-syntax',
       :name_l10n => {
         :en => 'basic syntax',
         :ja => 'basic syntax',
       }
     },
     {
       :name_l10n => {
         :en => 'filters',
         :ja => 'filters',
       }
     },
     {
       :href => '#filter-overview',
       :name_l10n => {
         :en => 'overview',
         :ja => 'overview',
       }
     },
     {
       :href => '#appdef',
       :name_l10n => {
         :en => 'specify application',
         :ja => 'specify application',
       }
     },
     {
       :href => '#windownamedef',
       :name_l10n => {
         :en => 'specify window name (window title)',
         :ja => 'specify window name (window title)',
       }
     },
     {
       :href => '#uielementroledef',
       :name_l10n => {
         :en => 'specify ui element role',
         :ja => 'specify ui element role',
       }
     },
     {
       :href => '#devicedef',
       :name_l10n => {
         :en => 'specify device',
         :ja => 'specify device',
       }
     },
     {
       :name_l10n => {
         :en => 'special key code',
         :ja => 'special key code',
       }
     },
     {
       :href => '#inputsourcedef',
       :name_l10n => {
         :en => 'input source',
         :ja => 'input source',
       }
     },
     {
       :href => '#vkopenurldef',
       :name_l10n => {
         :en => 'launch app / open url / execute shell commands',
         :ja => 'launch app / open url / execute shell commands',
       }
     },
     {
       :name_l10n => {
         :en => 'advanced features',
         :ja => 'advanced features',
       }
     },
     {
       :href => '#include',
       :name_l10n => {
         :en => 'include external XML',
         :ja => 'include external XML',
       }
     },
     {
       :href => '#replacementdef',
       :name_l10n => {
         :en => 'string replacement',
         :ja => 'string replacement',
       }
     },
     {
       :href => '#keycode',
       :name_l10n => {
         :en => 'new keycode definition',
         :ja => 'new keycode definition',
       }
     },
     {
       :href => '#modifier',
       :name_l10n => {
         :en => 'new virtual modifier definition',
         :ja => 'new virtual modifier definition',
       }
     },
     {
       :href => '#prepared',
       :name_l10n => {
         :en => 'modify prepared settings',
         :ja => 'modify prepared settings',
       }
     },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/xml.html', Xml)
