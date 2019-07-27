#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Help < KarabinerBase
  def title
    'Help - ' + super()
  end

  def tabs_definition
    [
      {
        :name => 'Troubleshooting',
      },
      {
        :href => '#kext-allow-button-does-not-work',
        :name => 'Trouble: Allow button in System Preferences does not work.',
      },
      {
        :href => '#does-not-work-after-macos-update',
        :name => 'Trouble: Karabiner-Elements does not work after macOS update.',
      },
      {
        :href => '#touch-bar-function-keys',
        :name => 'Trouble: Touch bar does not change to f1-f12 when I press the fn key.',
      },
      {
        :href => '#control-eject',
        :name => 'Trouble: Control-eject shortcut does not work when Karabiner-Elements is running.',
      },
      {
        :href => '#json-owner-is-invalid',
        :name => 'Trouble: "karabiner.json is not owned by a valid user" error message',
      },
      {
        :name => 'How-to',
      },
      {
        :href => '#mouse-button',
        :name => 'How-to: How to change mouse buttons',
      },
      {
        :href => '#disable-caps-lock-delay',
        :name => 'How-to: How to disable caps lock delay',
      },
      {
        :href => '#key-repeat',
        :name => 'How-to: How to adjust the key repeat rate',
      },
      {
        :name => 'Advanced topics',
      },
      {
        :href => '#installed-files',
        :name => 'Installed files',
      }
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/help.html', Help)
