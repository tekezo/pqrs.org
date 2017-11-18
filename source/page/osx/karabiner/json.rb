#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Json < KarabinerBase
  def enable_prettify
    true
  end

  def title
    'karabiner.json Reference Manual - ' + super()
  end

  def tabs_definition
    [
      {
        :href => '#location',
        :name => 'File location',
      },
      {
        :name => 'data structure',
      },
      {
        :href => '#root-data-structure',
        :name => 'karabiner.json data structure',
      },
      {
        :name => 'complex_modifications',
      },
      {
        :href => '#complex_modifications-data-structure',
        :name => 'data structure',
      },
      {
        :href => '#complex_modifications-manipulator-priority',
        :name => 'manipulator priority',
      },
      {
        :href => '#complex_modifications-manipulator-definition',
        :name => 'manipulator definition',
      },
      {
        :href => '#from-event-definition',
        :name => 'from event definition',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/json.html', Json)
