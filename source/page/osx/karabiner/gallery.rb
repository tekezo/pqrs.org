#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Gallery < KarabinerBase
  def tabs_definition
    [
      {
        :href => '#change-either-the-left-or-right-modifier-key',
        :name_l10n => {
          :en => 'Change either the left or right modifier key',
          :ja => '左右のいずれかのモディファイアを変更する',
        },
      },
      {
        :href => '#mouse-keys-mode-v2',
        :name_l10n => {
          :en => 'Mouse Keys Mode v2',
          :ja => 'Mouse Keys Mode v2',
        },
      },
      {
        :href => '#ignore-bouncing',
        :name_l10n => {
          :en => 'Ignore bouncing (chattering) events',
          :ja => 'チャタリングの抑制',
        },
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/gallery.html', Gallery)
