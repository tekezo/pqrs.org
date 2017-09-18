#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class History < KarabinerBase
  def title
    'Version History - ' + super()
  end

  def histories
    data = [
      {
        :version => '10.22.0',
        :updated => '2016-10-31',
        :link => 'files/Karabiner-10.22.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      Some Qt apps might be crash when AXNotifier is enabled. (VirtualBox, LyX, Wireshark)
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Default setting of AXNotifier has been changed. (Enabled in Microsoft Office)
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Prepared settings have been updated.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '10.21.0',
        :updated => '2016-07-05',
        :link => 'files/Karabiner-10.21.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      The initial key repeat rate of Karabiner will be set the slower value if you have not changed the key repeat rate in System Preferences.
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      Karabiner does not save preferences properly in an edge case.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Prepared settings have been updated.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '10.20.0',
        :updated => '2016-06-16',
        :link => 'files/Karabiner-10.20.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      Remote Desktop detection will be failed in some cases.
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      Input source switching settings does not work in some environments.
    </div>
  </div>

  <hr />
  <h3>Updates for people who add new settings by oneself</h3>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      `Option::FLIPSCROLLWHEEL_HORIZONTAL` and `Option::FLIPSCROLLWHEEL_VERTICAL` have been supported in `__PointingRelativeToScroll__`.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '10.19.0',
        :updated => '2016-06-09',
        :link => 'files/Karabiner-10.19.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The multi-touch extension default configuration has been changed. <br />
      If you are using ThumbSense, please enable ThumbSense setting manually in multi-touch extension preferences.
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      The argument treatment in `warp-mouse-cursor-position` utility is wrong. <br />
      These adjustment values for `screen` and `front_window` were exchanged. <br />
      For example, the vertical adjustment value for `screen` and `front_window` is used in horizontal adjustment.
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      Some Java apps might be crash when AXNotifier is enabled. (SAP GUI for Java)
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The device disconnect handling has been improved.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      `Use modifier symbols (⌘⌃⌥⇧⇪) in place of the modifier names` has been added into Karabiner Preferences &gt; Status Message tab.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Prepared settings have been updated.
    </div>
  </div>

  <hr />
  <h3>Updates for people who add new settings by oneself</h3>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      `&lt;bundleidentifieroverridedef&gt;` has been introduced.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      `Option::KEYTOKEY_DELAYED_ACTION_MILLISECONDS` has been added.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The following filters have been added. <br />
      * &lt;deviceexists_not&gt;<br />
      * &lt;deviceexists_only&gt;<br />
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The following environment variables has been added into replacementdef. <br />
      * {{ ENV_Select_the_previous_input_source_shortcut }}<br />
      * {{ ENV_Select_next_source_in_input_menu_shortcut }}<br />
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      In some case, ModifierFlag pattern matching of `Option::KEYTOKEY_AFTER_KEYUP` in `__KeyOverlaidModifier__` and `__HoldingKeyToKey__` does not work property.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '10.18.0',
        :updated => '2016-03-07',
        :link => 'files/Karabiner-10.18.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue that is introduced in Karabiner 10.17.0:<br />
      Karabiner will be crashed when you change settings after you opened and closed the Preferences window in OS X 10.10.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '10.17.0',
        :updated => '2016-03-05',
        :link => 'files/Karabiner-10.17.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      "Show icon in Dock" setting has been added.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      "Resume at login" setting has been added. <br />
      You can disable auto resume function.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      "Disable an internal keyboard while external keyboards are connected" setting has been improved.
      <ul>
        <li>Mionix Naos 7000 has been supported.</li>
        <li>Logitech Bluetooth Mouse M555b has been supported.</li>
        <li>Microsoft Sculpt Touch Mouse has been supported.</li>
      </ul>
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The word-wrap property of setting description in Preferences became break-word.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The font size in Preferences has been selectable from "default font" and "large font".
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The consumer keys (media keys) repeat values has been synchronized with the key repeat values.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The behavior of starting Karabiner on system startup has been improved.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Prepared settings have been updated.
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      Some Qt apps might be crash when AXNotifier is enabled. (WISO apps)
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      Microsoft Excel scroll position is sometimes reset while using scroll wheel.
    </div>
  </div>

  <hr />
  <h3>Updates for people who add new settings by oneself</h3>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Option::FLIPSCROLLWHEEL_ROTATE has been added.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      PointingRelative::ANY has been added into __PointingRelativeToKey__.
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed an issue:<br />
      __KeyDownUpToKey__ sends only the last interrupted events when multiple interrupted events are specified.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '10.15.0',
        :updated => '2015-12-21',
        :link => 'files/Karabiner-10.15.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The safety limit of key repeat rate has been removed.<br />
      You can overwrite key repeat rate by extreme fast values.<br />
      <br />
      The limit was 200 ms and 5 ms in the previous versions of Karabiner.<br />
      Please increase the key repeat values to 200 ms and 5 ms if you feel new key repeat is too fast.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      GUI for enabling debug mode has been added into Karabiner Preferences.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Prepared settings have been updated.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      "Disable an internal keyboard while external keyboards are connected" setting has been improved.
      <ul>
        <li>Razer DeathAdder Chroma has been supported.</li>
      </ul>
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      ModifierFlag treatment has been improved in Option::KEYTOKEY_DELAYED_ACTION.
    </div>
  </div>

  <div class="update-description-item update-description-item-fixed">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Fixed issue: Some Java apps might be crash when AXNotifier is enabled. (Fiji)
    </div>
  </div>

  <hr />
  <h3>Updates for people who add new settings by oneself</h3>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Some error messages have been improved.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '10.14.0',
        :updated => '2015-11-05',
        :link => 'files/Karabiner-10.14.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    New functions and improvements:
    <ul>
      <li>"Karabiner Preferences &gt; Key Repeat tab" UI has been improved.</li>
    </ul>
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>The key repeat configuration migration sometimes does not set properly values when Karabiner has been upgrade from v10.11.0 or prior.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.13.0',
        :updated => '2015-11-02',
        :link => 'files/Karabiner-10.13.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    New functions and improvements:
    <ul>
      <li>
        "Overwrite the key repeat values of system" option has been added. <br />
        Karabiner uses the system values unless this option is enabled.
      </li>
      <li>The key up event handling has been improved in some keyboards.</li>
      <li>"Don't remap Apple's keyboards" setting supported Magic Keyboard.</li>
      <li>Karabiner Preferences became resizable.</li>
      <li>Prepared settings have been updated.</li>
    </ul>
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>__SimultaneousKeyPresses__ sometimes fails sending key up event when __BlockUntilKeyUp__ is used together.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.11.0',
        :updated => '2015-10-10',
        :link => 'files/Karabiner-10.11.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed issues:
    <ul>
      <li><code>__SimultaneousKeyPresses__</code> sends key events continuously even if all keys are released when using multiple keyboards at the same time and both keyboards are pressed.</li>
      <li>Some Java apps might be crash when AXNotifier is enabled. (Spine, SpineTrial)</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.10.0',
        :updated => '2015-10-08',
        :link => 'files/Karabiner-10.10.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    New functions and improvements:
    <ul>
      <li>
        "Use prepared settings" option has been added into Karabiner Preferences &gt; Misc &amp; Uninstall tab. <br />
        Turning off the setting allows you to drop prepared settings and improve the speed of reloading XML.
      </li>
      <li>
        EventViewer has been improved.<br />
        Media control events and some key combinations are supported.
      </li>
      <li>Event modification has been improved when you are using multiple keyboards at the same time.</li>
      <li>AXNotifier supported OmniFocus2 Quick Entry.</li>
      <li>Prepared settings have been updated.</li>
      <li>
        Updates for people who add new settings by oneself:
        <ul>
          <li><code>once</code> attribute has been introduced into <code>&lt;include&gt;</code> tag.</li>
        </ul>
      </li>
    </ul>
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>The CPU usage of Preview.app might be 100% at opening a huge PDF file when AXNotifier is enabled.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.9.0',
        :updated => '2015-09-07',
        :link => 'files/Karabiner-10.9.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Incompatibility changes:
    <ul>
      <li>
        The fn keypad has been removed from implicit behavior. <br />
        Please use either of the following settings instead if you need.
        <ul>
          <li>"Fn+Number to KeyPad"</li>
          <li>"Use old style fn keypad"</li>
        </ul>
      </li>
    </ul>
  </li>
  <li>
    New functions and improvements:
    <ul>
      <li>The external keyboard handling has been improved.</li>
      <li>Prepared settings have been updated.</li>
      <li>
        Updates for people who add new settings by oneself:
        <ul>
          <li>
            The following filters have been added.
            <ul>
              <li><code>&lt;lastsentevent_not&gt;</code></li>
              <li><code>&lt;lastsentevent_only&gt;</code></li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>
  <li>
    Fixed issues:
    <ul>
      <li><code>__DropKeyAfterRemap__</code> does not work properly if the target key is changed by <code>&lt;autogen&gt;</code> that is defined before <code>__DropKeyAfterRemap__</code>.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.8.0',
        :updated => '2015-08-24',
        :link => 'files/Karabiner-10.8.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    New functions and improvements:
    <ul>
      <li>AXNotifier supported new Alfred (Alfred 2.7.2).</li>
      <li>Prepared settings have been updated.</li>
      <li><code>__PassThrough__</code> behavior has been improved.</li>
      <li>
        Updates for people who add new settings by oneself:
        <ul>
          <li>
            The following filters have been added.
            <ul>
              <li><code>&lt;lastreleasedphysicalkey_only&gt;</code></li>
              <li><code>&lt;lastreleasedphysicalkey_not&gt;</code></li>
              <li><code>&lt;elapsedtimesincelastreleased_greaterthan&gt;</code></li>
              <li><code>&lt;elapsedtimesincelastreleased_lessthan&gt;</code></li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>multi-touch extension might stop working after wake up.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.7.0',
        :updated => '2015-08-10',
        :link => 'files/Karabiner-10.7.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Incompatibility changes:
    <ul>
      <li>The default mouse keys scroll direction has been changed to natural.</li>
      <li>
        <code>&lt;inputsourcedetail_only&gt;</code> and <code>&lt;inputsourcedetail_not&gt;</code> filters have been merged into <code>&lt;inputsource_only&gt;</code> and <code>&lt;inputsource_not&gt;</code>.<br />
        Please use <code>&lt;inputsource_only&gt;</code> and <code>&lt;inputsource_not&gt;</code> in your private.xml.
      </li>
      <li>
        Launcher Mode v2 uses own modifier flag in order to improve usability. <br />
        If you extended Launcher Mode v2 by <code>LAUNCHER_MODE_V2_EXTRA</code>, please remove <code>ModifierFlag::NONE</code> from <code>LAUNCHER_MODE_V2_EXTRA</code>. <br />
        Example:<br />
        old: <code>&lt;autogen&gt;__KeyDownUpToKey__ KeyCode::A, ModifierFlag::NONE, KeyCode::VK_OPEN_URL_APP_Activity_Monitor&lt;/autogen&gt;</code><br />
        new: <code>&lt;autogen&gt;__KeyDownUpToKey__ KeyCode::A, KeyCode::VK_OPEN_URL_APP_Activity_Monitor&lt;/autogen&gt;</code><br />
      </li>
    </ul>
  </li>
  <li>New option has been added into command line interface: <code>toggle</code>, <code>be_careful_to_use__clear_all_values_by_name</code></li>
  <li>New option has been added into <code>post-hid-event</code> command line utility: <code>--flag</code></li>
  <li>"Status Message &gt; Show caps lock state" option has been added.</li>
  <li>Multiple displays support has been improved. The status message will be shown in the all screen.</li>
  <li>Fast User Switching support has been improved.</li>
  <li>Prepared settings have been updated.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li><code>__DropAllKeys__</code> has been added.</li>
      <li><code>Option::KEYTOKEY_DELAYED_ACTION</code> has been added.</li>
      <li><code>Option::KEYTOKEY_INCREASE_MODIFIER_FLAGS</code> has been added.</li>
      <li><code>Option::SIMULTANEOUSKEYPRESSES_POST_FROM_EVENTS_AS_RAW</code> has been added.</li>
      <li>
        The following filters have been added.
        <ul>
          <li><code>&lt;pressingphysicalkeys_greaterthan&gt;</code></li>
          <li><code>&lt;pressingphysicalkeys_lessthan&gt;</code></li>
        </ul>
      </li>
      <li><code>__HoldingKeyToKey__</code> has been improved at you pressed modifiers while holding target key down.</li>
      <li>ModifierFlag pattern matching has been introduced into <code>Option::KEYTOKEY_AFTER_KEYUP</code>.</li>
      <li><code>&lt;background /&gt;</code> support has been added into <code>&lt;vkopenurldef&gt;</code> tag.</li>
      <li><code>high_priority</code> attribute has been introduced into <code>&lt;identifier&gt;</code> tag.</li>
      <li><code>&lt;appdef&gt;</code> behavior has been improved. It preserves prepared settings when you use <code>&lt;appdef&gt;</code> in private.xml for bundle identifiers that are in prepared appdef.xml.</li>
      <li><code>KeyCode::VK_MOUSEKEY_FIXED_DISTANCE_SCROLL_*</code> have been added.</li>
    </ul>
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>Some Java apps might be crash when AXNotifier is enabled. (Eclipse, Screencast-O-Matic, RazorSQL, EditRocket)</li>
      <li>kext loading issue on OS X 10.11 beta 6 has been fixed.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.6.0',
        :updated => '2015-01-13',
        :link => 'files/Karabiner-10.6.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    A following prepared setting has been fixed.
    <ul>
      <li>General &gt; Disable an internal keyboard while external keyboards are connected.</li>
    </ul>
  </li>
  <li>"Sort by name" and "Sort by created" button have been added in Preferences &gt; MenuBar.</li>
  <li>Prepared settings have been updated.</li>
</ul>
EOS
      },
      {
        :version => '10.5.0',
        :updated => '2014-12-12',
        :link => 'files/Karabiner-10.5.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed issues:
    <ul>
      <li>Some Java apps might be crash when AXNotifier is enabled. (IntelliJ IDEA, PhpStorm, RubyMine, Android Studio)</li>
      <li>&lt;device_only&gt; and &lt;device_not&gt; filters are ignored when multiple keyboards are connected and same keys are pressed at the same time.</li>
    </ul>
  </li>
  <li>
    Improvements:
    <ul>
      <li>"Ignore bouncing (chattering) events" setting has been added.</li>
      <li>Spotlight has been supported in &lt;only&gt; and &lt;not&gt; filters.</li>
      <li>Quit button has been added into Preferences.</li>
      <li>Simultaneous presses detection with rapid key typing has been improved.</li>
      <li>ModifierFlag manipulation when key up has been improved.</li>
      <li>Prepared settings have been updated.</li>
    </ul>
  </li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>Option::FORCENUMLOCKON_FORCE_OFF has been added.</li>
      <li>__KeyDownUpToKey__ has been added.</li>
      <li>&lt;include&gt; ignores missing files. (Karabiner does not show an alert dialog when &lt;include&gt; refers missing files.)</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.4.0',
        :updated => '2014-10-14',
        :link => 'files/Karabiner-10.4.0.dmg',
        :body => <<EOS,
<ul>
  <li>A broken prepared setting has been fixed.</li>
</ul>
EOS
      },
      {
        :version => '10.3.0',
        :updated => '2014-10-07',
        :link => 'files/Karabiner-10.3.0.dmg',
        :body => <<EOS,
<ul>
  <li>Stability at reloading XML has been improved.</li>
  <li>OS X 10.10 support has been improved.</li>
  <li>Prepared settings have been updated.</li>
  <li>"Check for updates" (Sparkle) has been updated.</li>
  <li>"Restart AXNotifier" button has been added into Preferences.</li>
  <li>
    Fixed issue:
    <ul>
      <li>EventViewer does not show control-tab and control-shift-tab event when Full Keyboard Access is enabled.</li>
    </ul>
  </li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>
        The following filters have been added.
        <ul>
          <li>&lt;modifierlocked_only&gt;</li>
          <li>&lt;modifierlocked_not&gt;</li>
          <li>&lt;modifierstuck_only&gt;</li>
          <li>&lt;modifierstuck_not&gt;</li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.2.0',
        :updated => '2014-08-20',
        :link => 'files/Karabiner-10.2.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed issues:
    <ul>
      <li>Shortcuts (eg. Ctrl-C, Ctrl-V) might not work properly in Microsoft Remote Desktop.</li>
      <li>Some Java apps will be crash.</li>
    </ul>
  </li>
  <li>Added an option to disable AXNotifier. ("AXNotifier" tab in Preferences.)</li>
  <li>Updated prepared settings.</li>
  <li>Some minor improvements.</li>
  <li>Profile management functions have been added into command line interface.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>__HoldingKeyToKey__ and __KeyOverlaidModifier__ support Option::KEYTOKEY_BEFORE_KEYDOWN and Option::KEYTOKEY_AFTER_KEYUP.</li>
      <li>You can also use __{ }__ as well as @begin, @end.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.1.0',
        :updated => '2014-07-21',
        :link => 'files/Karabiner-10.1.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed issues:
    <ul>
      <li>The continuous key sequence will be improper order in environments which VMWare Fusion is installed.</li>
      <li>A message "Karabiner cannot connect with kernel extension" might be shown in some environment.</li>
    </ul>
  </li>
  <li>Show an error alert when Karabiner is not placed in /Applications.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>Added KeyCode::VK_IOHIKEYBOARD_TOGGLE_NUMLOCK.</li>
    </ul>
  </li>
  <li>Updated prepared settings.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => '10.0.0',
        :updated => '2014-07-09',
        :link => 'files/Karabiner-10.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>KeyRemap4MacBook has been renamed to "Karabiner".</li>
  <li>
    AXNotifier has been added. <br />
    AXNotifier allows you to observe the window name (window title) and the focused ui element role (eg. whether textarea or not). <br />
    For example, a setting that allows you to use hjkl keys as arrow keys in Finder when you are not editing text such as filename has been added.
  </li>
  <li>
    A command line utility "warp-mouse-cursor-position" has been added.<br />
    Settings which use this utility have been added, too.<br />
    For example, this setting allows you to move mouse cursor by tapping fn key:
    <ul>
      <li>
        Custom Shortcuts
        <ul>
          <li>
            Move mouse cursor to the center of the frontmost app's window:
            <ul>
              <li>By pressing fn key alone.</li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>A message "Kernel extension is not loaded" might be shown in some environment.</li>
      <li>Status Message will not be shown properly when you are using multiple displays.</li>
    </ul>
  </li>
  <li>Updated prepared settings.</li>
  <li>Some minor improvements.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>
        You can add your own modifiers by &lt;modifierdef&gt;.
        <a href="https://pqrs.org/osx/karabiner/xml.html#modifier">Usage of &lt;modifierdef&gt;.</a>
      </li>
      <li>Added &lt;windowname_only&gt; and &lt;windowname_not&gt; filters.</li>
      <li>Added &lt;uielementrole_only&gt; and &lt;uielementrole_not&gt; filters.</li>
      <li>Added __PointingRelativeToKey__.</li>
      <li>
        Added __PassThrough__. You can disable all settings in specific situations.<br />
        For example, this item allow you to disable all settings while you are using virtual machine.<br />
        (This setting is already included in prepared settings.)
<pre>  &lt;item&gt;
    &lt;name&gt;Disable all settings while you are using virtual machine.&lt;/name&gt;
    &lt;identifier&gt;private.ignore_virtual_machine&lt;/identifier&gt;
    &lt;only&gt;VIRTUALMACHINE&lt;/only&gt;
    &lt;autogen&gt;__PassThrough__&lt;/autogen&gt;
  &lt;/item&gt;
</pre>
      </li>
      <li>You can use KeyCode and ConsumerKeyCode in __PointingRelativeToScroll__.</li>
      <li>
        Added ThresholdMillisecond into __HoldingKeyToKey__.<br />
        You can control a holding threshold:
<pre>  &lt;autogen&gt;
    __HoldingKeyToKey__
    KeyCode::ESCAPE,

    @begin
    KeyCode::ESCAPE
    @end

    @begin
    KeyCode::LAUNCHPAD,
    @end

    &lt;!-- open Launchpad by press and hold the escape key for 2 seconds. --&gt;
    ThresholdMillisecond::RawValue::2000,
  &lt;/autogen&gt;
</pre>
      </li>
      <li>Added __BlockUntilKeyUp__.</li>
      <li>Added Option::KEYOVERLAIDMODIFIER_REPEAT_TOKEYS.</li>
      <li>Added Option::DROPSCROLLWHEEL_DROP_MOMENTUM_SCROLL.</li>
      <li>Added KeyCode::VK_NEGATIVE_LOCK_*. (eg. KeyCode::VK_NEGATIVE_LOCK_COMMAND_L, KeyCode::VK_NEGATIVE_LOCK_SHIFT_L.)</li>
      <li>
        Added KeyCode::VK_STICKY_ACTIVE_MODIFIERS_*:
        <ul>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_TOGGLE</li>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_FORCE_ON</li>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_FORCE_OFF</li>
        </ul>
      </li>
      <li>
        An incompatible change:
        <ul>
          <li>
            KeyCode::VK_JIS_TEMPORARY_* are removed.<br />
            Please use &lt;inputsource_filter&gt;, Option::KEYTOKEY_BEFORE_KEYDOWN, Option::KEYTOKEY_AFTER_KEYUP, KeyCode::JIS_EISUU and KeyCode::JIS_KANA instead.
          </li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '9.3.0',
        :updated => '2014-02-15',
        :link => 'files/KeyRemap4MacBook-9.3.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed an issue:
    <ul>
      <li>"Kernel extension is not loaded" alert might be shown on some machines when automatic login is enabled.</li>
    </ul>
  </li>
  <li>Updated prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>
        These manipulators have been integrated into __KeyToKey__. <br />
        You can change KeyCode, ConsumerKeyCode and PointingButton by __KeyToKey__.
        <ul>
          <li>__KeyToConsumer__</li>
          <li>__ConsumerToKey__</li>
          <li>__ConsumerToConsumer__</li>
          <li>__KeyToPointingButton__</li>
          <li>__PointingButtonToKey__</li>
          <li>__PointingButtonToPointingButton__</li>
        </ul>
      </li>
      <li>
        You can use KeyCode, ConsumerKeyCode and PointingButton in these manipulators:
        <ul>
          <li>__KeyOverlaidModifier__</li>
          <li>__HoldingKeyToKey__</li>
          <li>__SimultaneousKeyPresses__</li>
          <li>__DoublePressModifier__</li>
          <li>__ScrollWheelToKey__</li>
          <li>__PointingRelativeToScroll__</li>
        </ul>
      </li>
      <li>Improved KeyCode::VK_CONFIG_* behavior in the edge case.</li>
      <li>
        You can change the delay and speed of keyboard repeat per autogen. <br />
        For example, this autogen changes control-p to up arrow with:
        <ul>
          <li>delay until repeat: 100ms</li>
          <li>key repeat: 10ms</li>
        </ul>
        <pre>
&lt;autogen&gt;
  __KeyToKey__
  KeyCode::P, MODIFIERFLAG_EITHER_LEFT_OR_RIGHT_CONTROL,
  KeyCode::CURSOR_UP,
  DelayUntilRepeat::RawValue::100,
  KeyRepeat::RawValue::10,
&lt;/autogen&gt;</pre>
      </li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '9.2.0',
        :updated => '2013-11-29',
        :link => 'files/KeyRemap4MacBook-9.2.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    KeyRemap4MacBook no longer requires system restart at installing or upgrading. <br />
    If you need to restart system for some reason, KeyRemap4MacBook will show an alert which urges you to restart.
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>System might crash when you disconnected a keyboard.</li>
    </ul>
  </li>
  <li>Updated some prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '9.0.0',
        :updated => '2013-11-15',
        :link => 'files/KeyRemap4MacBook-9.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>Optimized for OS X 10.9. <br />
    KeyRemap4MacBook 9.0.0 requires OS X 10.9+.</li>
  <li>Added delay configurations into multi-touch extension.</li>
  <li>Drop power button support due to limitations of OS X 10.9. <br />
    You can no longer change the power button on MacBook.</li>
  <li>Fixed issues:
    <ul><li>ENV_HOME does not work properly in included xml.</li>
      <li>New plugged devices will not be recognized on OS X 10.9.</li>
      <li>KeyRemap4MacBook disables the shut down dialog.</li>
      <li>Fn key on Leopold FC660M cancels mouse dragging.</li></ul></li>
  <li>Updated prepared settings:
    <ul><li>"VIM Emulation" has been updated.</li>
      <li>Fixed "MarkSet" in Emacs Mode.</li></ul></li>
  <li>Updated installer.</li>
  <li>Some minor improvements.</li>
  <li>Signed with Developer ID.</li>
</ul>
EOS
      },
      {
        :version => '8.4.0',
        :updated => '2013-09-23',
        :link => 'files/KeyRemap4MacBook-8.4.0.dmg',
        :body => <<EOS,
<ul>
  <li>Icons have been refined. (Thanks to Kouji TAMURA.).</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>
        @begin and @end have been introduced in private.xml.<br />
        You can use more than one key to remapped keys with __KeyOverlaidModifier__, __DoublePressModifier__.
      </li>
      <li>Shell commands execution has been supported with KeyCode::VK_OPEN_URL_*.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '8.3.0',
        :updated => '2013-05-19',
        :link => 'files/KeyRemap4MacBook-8.3.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed an issue that "Look up" feature of OS X (tap trackpad with three fingers) does not work properly.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => '8.2.0',
        :updated => '2013-05-17',
        :link => 'files/KeyRemap4MacBook-8.2.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed an issue that object selection is disabled on Adobe Fireworks.</li>
  <li>Fixed an issue that "General &gt; Don't remap XXX" does not take effect immediately.</li>
  <li>Fixed an issue that control-eject shortcut does not work properly on OS X 10.7 and 10.6.</li>
</ul>
EOS
      },
      {
        :version => '8.1.0',
        :updated => '2013-05-12',
        :link => 'files/KeyRemap4MacBook-8.1.0.dmg',
        :body => <<EOS,
<ul>
  <li>Power button remapping has been supported. (Thanks to Peter Kamb who is the author of PowerKey.)</li>
  <li>Added "Quit KeyRemap4MacBook" into menu bar.</li>
  <li>Added some styles into status message indicator.</li>
  <li>Improved compatibility with <a href="http://smoothmouse.com/" target="_blank">SmoothMouse</a>.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Supported more than three keys at __SimultaneousKeyPresses__.</li>
      <li>Added KeyCode::VK_OPEN_URL_*.</li>
      <li>Added KeyCode::VK_PARTIAL_KEYDOWN and KeyCode::VK_PARTIAL_KEYUP.</li>
      <li>Added Option::POINTINGRELATIVETOSCROLL_TOKEYS.</li>
      <li>Added __FlipPointingRelative__.</li>
      <li>Added __FlipScrollWheel__.</li>
      <li>
        Added filters:
        <ul>
          <li>&lt;lastpressedphysicalkey_not&gt;</li>
          <li>&lt;lastpressedphysicalkey_only&gt;</li>
          <li>&lt;elapsedtimesincelastpressed_greaterthan&gt;</li>
          <li>&lt;elapsedtimesincelastpressed_lessthan&gt;</li>
        </ul>
      </li>
    </ul>
  </li>
  <li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => '8.0.0',
        :updated => '2013-01-30',
        :link => 'files/KeyRemap4MacBook-8.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>Preferences has been integrated into app.</li>
  <li>Integrated a status message indicator. (Removed Growl support.)</li>
  <li>Added a preference of ignored area into "multi-touch extension".</li>
  <li>Changed KeyRemap4MacBook_cli location.</li>
  <li>Dynamic KeyCode::VK_CHANGE_INPUTSOURCE definition feature has been added.</li>
  <li>&lt;inputsource_only&gt; definition feature has been added.</li>
  <li>Added Option::SIMULTANEOUSKEYPRESSES_STRICT_KEY_ORDER.</li>
  <li>Added DeviceLocation into &lt;device_only&gt;, &lt;device_not&gt; filters.</li>
  <li>Changed --KeyToKey-- to __KeyToKey__ at &lt;autogen&gt;.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => '7.8.0',
        :updated => '2012-06-26',
        :link => 'files/KeyRemap4MacBook-7.8.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed an issue that "General &gt; Don't restore modifiers in the mouse event" does not work properly.</li>
  <li>Fixed an issue that private.xml does not work properly if &lt;identifier&gt; contains white space.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => '7.7.0',
        :updated => '2012-05-09',
        :link => 'files/KeyRemap4MacBook-7.7.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed an issue introduced in version 7.6.0 that detecting of Input Sources does not work properly in Japanese and some other languages.</li>
</ul>
EOS
      },
      {
        :version => '7.6.0',
        :updated => '2012-05-08',
        :link => 'files/KeyRemap4MacBook-7.6.0.dmg',
        :body => <<EOS,
<ul>
  <li>Improved XML processing engine. (XML reloading is 2x faster.)</li>
  <li>Some minor improvements.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Added &lt;replacementdef&gt;. You can replace preset settings behavior by this. <a href="xml.html#replacementdef">(reference)</a></li>
      <li>Added &lt;include&gt;. You can load external xml files in private.xml. <a href="xml.html#include">(reference)</a></li>
      <li>Added --ScrollWheelToKey--.</li>
      <li>Added --ScrollWheelToScrollWheel--.</li>
      <li>Added KeyCode::VK_WAIT_*.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '7.5.0',
        :updated => '2011-11-02',
        :link => 'files/KeyRemap4MacBook-7.5.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Support Growl-1.3 on notifications.</li>
  <li>Some minor improvements.</li>
  <li>Resolved a minor installer issue.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>
        Dynamic ApplicationType,DeviceVendor,DeviceProduct definition feature has been added.
        <ul>
          <li><a href="xml.html#appdef">Application Specific Setting</a></li>
          <li><a href="xml.html#devicedef">Device Specific Setting</a></li>
        </ul>
      </li>
      <li>Added --StripModifierFromScrollWheel--.</li>
      <li>Added Option::KEYTOKEY_BEFORE_KEYDOWN, Option::KEYTOKEY_AFTER_KEYUP.</li>
      <li>Added KeyCode::VK_CONSUMERKEY_*.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '7.4.0',
        :updated => '2011-08-23',
        :link => 'files/KeyRemap4MacBook-7.4.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Some improvements on Mac OS X 10.7 (Lion).</li>
  <li>
    Removed "General &gt; Enable CapsLock LED Hack" from preferences.<br />
    If you're using this setting for PCKeyboardHack, use <a href="seil.html#noaction">"No Action" configuration</a> instead.
  </li>
  <li>
    Cleaned up "Simultaneous Vi Mode".<br />
    (Some options have been moved into "Home Row Arrow and Modifier Mode".)
  </li>
  <li>
    Added "[Key Overlaid Modifier] Initial Modifier Wait" preference into "Key Repeat" tab.<br />
    KeyOverlaidModifier changes key to modifier after this wait.<br />
    This preference is useful if your typing speed is too fast.
  </li>
  <li>Some minor improvements.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Added KeyCode::VK_STICKY_*_FORCE_ON, KeyCode::VK_STICKY_*_FORCE_OFF.</li>
      <li>Added --DropScrollWheel--.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '7.3.0',
        :updated => '2011-05-17',
        :link => 'files/KeyRemap4MacBook-7.3.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Improved stability when using Sticky Keys in Universal Access.</li>
  <li>Improved stability when using multi-touch extension together.</li>
  <li>Improved "Lazy-Modifier (KeyCode::VK_LAZY_*)" behavior.</li>
  <li>Some minor improvements.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Added KeyCode::VK_MOUSEKEY_BUTTON_*.</li>
      <li>Added Option::NOREPEAT.</li>
      <li>Added DeviceProduct::ANY.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '7.2.0',
        :updated => '2011-03-08',
        :link => 'files/KeyRemap4MacBook-7.2.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Fixed an issue that Growl notification did not work in specific environment.</li>
  <li>Fixed an issue that the default setting of checkForUpdate was "Nothing".</li>
  <li>Improved multi-touch extension around sleep/wakeup.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '7.1.0',
        :updated => '2011-02-22',
        :link => 'files/KeyRemap4MacBook-7.1.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>
    Added setting to be able to use "Logitech Number Pad" which we were not able not use in Mac OS X.<br />
    Activate "Change KeyPad Key &gt; Logitech Number Pad Hack".
  </li>
  <li>
    Replaced StatusWindow with Growl.<br />
    StatusWindow was displaying the lock state of modifiers and extra message.<br />
    Now, these messages are shown by Growl.<br />
  </li>
  <li>
    Attached an application named "multi-touch extension".<br />
    This application activates specific setting while fingers touch the multi-touch device.<br />
    <a href="http://www.sonycsl.co.jp/person/rekimoto/tsense/soft/index.html" target="_blank">ThumbSense</a> is one of the function which this application supplies.<br />
    See <a href="document_v10.html#multitouchextension">Multi-touch extension</a> for more details.
  </li>
  <li>Fixed some issues.</li>
  <li>Increased prepared settings.</li>
  <li>Updates for people adding new setting by oneself
    <ul>
      <li>Added &lt;modifier_only&gt;, &lt;modifier_not&gt; filters.</li>
      <li>Added --ForceNumLockOn-- to &lt;autogen&gt;.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '7.0.0',
        :updated => '2010-12-14',
        :link => 'files/KeyRemap4MacBook-7.0.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>
    Now, you can add your original settings very very easily.<br />
    <a href="document_v10.html#privatexml">How to add new settings.</a><br />
    You don't need to build a package from source code anymore.
  </li>
  <li>
    Added momentum scroll feature to "CursorMove to ScrollWheel" on Pointing Devices.<br />
    If you don't like momentum scroll, turn on "Disable Momentum Scroll" by System Preferences.
  </li>
  <li>Added "Mouse Keys Mode". You can move mouse pointer by hjkl keys.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '6.9.0',
        :updated => '2010-09-14',
        :link => 'files/KeyRemap4MacBook-6.9.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Improved "Simultaneous Vi Mode" behavior. You can use Vi style navigation (hjkl) on all applications.</li>
  <li>Fixed a problem that a broken package may be generated depending on environment when we build a package from a source code.</li>
  <li>Fixed a problem which slight setting did not work properly.</li>
  <li>Fixed a minor problem around C-x prefix of "Emacs Mode".</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '6.8.0',
        :updated => '2010-07-27',
        :link => 'files/KeyRemap4MacBook-6.8.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>
    Changed the default value of key repeat wait.<br />
    Please set "[Key Repeat] wait" to "30ms" from "Key Repeat" tab if you prefer the previous default value.
  </li>
  <li>Added "Pass Through Mode". You can cancel all settings temporarily.</li>
  <li>Added "Sticky Modifiers".</li>
  <li>Fixed minor issues.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '6.7.0',
        :updated => '2010-05-15',
        :link => 'files/KeyRemap4MacBook-6.7.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Fixed the problem that a key and a mouse were not changed when we used KeyRemap4MacBook-6.6.0 with USB Overdrive.</li>
</ul>
EOS
      },
      {
        :version => '6.6.0',
        :updated => '2010-05-11',
        :link => 'files/KeyRemap4MacBook-6.6.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Added a function to define effective setting only with a specific keyboard. For example, "Change Control_L to Command_L" only in Happy Hacking Keyboard.</li>
  <li>Added a function of "Simultaneous Key Presses" re-mapping.</li>
  <li>Added virtual modifiers (ModifierFlag::EXTRA1 - ModifierFlag::EXTRA5).</li>
  <li>Added a function to set the repeat speed of the functional keys (volume adjustment, etc).</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '6.5.0',
        :updated => '2010-03-16',
        :link => 'files/KeyRemap4MacBook-6.5.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Added the key repeat feature to re-mapped functional keys (volume adjustment, etc),</li>
  <li>Added an Event Viewer application that could confirm a key event, a mouse event.</li>
  <li>Merged the configuration GUI of menu bar to the system preference pane.</li>
  <li>Added "Complete Vi Mode" that you can move the cursor only in "hjkl" without pushing the command key or any modifier keys.</li>
  <li>Added KeyCode::VK_CHANGE_INPUTMODE_FRENCH, and keys for the other languages. It is a virtual key to change the Input Source directly.</li>
  <li>Increased prepared settings.</li>
  <li>Fixed some issues.</li>
</ul>
EOS
      },
      {
        :version => '6.4.0',
        :updated => '2010-01-21',
        :link => 'files/KeyRemap4MacBook-6.4.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Improved stability when using with the driver of the 3rd vender such as "Logitech Control Center".</li>
  <li>Fixed a mouse drag movement when convert a key into a mouse click.</li>
  <li>Improved Paralles Desktop support at the recognition of the application.</li>
</ul>
EOS
      },
      {
        :version => '6.3.0',
        :updated => '2010-01-05',
        :link => 'files/KeyRemap4MacBook-6.3.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Supported Fast User Switching.</li>
  <li>Added software update feature.</li>
  <li>Improved the movement of the re-mapping.</li>
  <li>Improved the judgement method of the internal/external keyboard.</li>
  <li>Increased prepared settings.</li>
  <li>Fixed some issues.</li>
</ul>
EOS
      },
      {
        :version => '6.2.0',
        :updated => '2009-11-12',
        :link => 'files/KeyRemap4MacBook-6.2.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Fixed the issue that the server process crashes in English environment.</li>
</ul>
EOS
      },
      {
        :version => '6.1.0',
        :updated => '2009-11-11',
        :link => 'files/KeyRemap4MacBook-6.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Changed to enable the remapping of the third vendor's devices by default.</li>
  <li>Fixed the memory leak of the server process.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '6.0.0',
        :updated => '2009-10-08',
        :link => 'files/KeyRemap4MacBook-6.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Stable release for Snow Leopard.</li>
  <li>Fixed the third vendor's keyboard/mouse handling.</li>
  <li>Fixed the issue that the fn key doesn't work when "Don't Remap the Internal/External Keyboard" is activated.</li>
  <li>Improved behavior of key-repeating (continuing even if mouse button is clicked.)</li>
  <li>Improved the compatibility with Spaces.</li>
  <li>Fixed the uninstaller.</li>
  <li>Fixed the CapsLock handling.</li>
  <li>Improved the stability in the 64bit environment.</li>
  <li>Fixed to run PreferencePane in 64bit.</li>
  <li>Misc changes.</li>
</ul>
EOS
      },
      {
        :version => '5.1.0',
        :updated => '2008-05-26',
        :link => 'files/KeyRemap4MacBook-5.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Fixed the kernel panic after returning from hibernation.</li>
  <li>Fixed the kernel panic when all keyboard are detached on iMac.</li>
  <li>Fixed the issue which "SettingList" didn't work on some environment.</li>
  <li>Added uninstaller.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '5.0.0',
        :updated => '2008-05-07',
        :link => 'files/KeyRemap4MacBook-5.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Added the multi-user support.</li>
  <li>Added the multiple settings per user.</li>
  <li>Added remappings which are effective at only specific applications. (ex. Return -&gt; CMD+O only in Finder).</li>
  <li>"Emacs Mode" will be disabled in Terminal.app and Emacs.app automatically.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '4.0.0',
        :updated => '2008-04-02',
        :link => 'files/KeyRemap4MacBook-4.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Fixed an issue which disable any remappings when you logged out.</li>
  <li>Added the feature to enable remapping for only inside keyboard or an outside keyboard.</li>
  <li>Supported PointingDevice remappings (Key to Mouseclick, Fn+CursorMove to ScrollWheel).</li>
  <li>Changed a place to install. (/Library/org.pqrs/KeyRemap4MacBook)</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '3.2.0',
        :updated => '2008-02-29',
        :link => 'files/KeyRemap4MacBook-3.2.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Added an existence check of DoubleCommand to installer. If DoubleCommand has already installed, the installation will be aborted.</li>
  <li>Support PowerBook G4 &amp; iBook.</li>
  <li>Fixed the key repeat issue on VMware + emacsmode.</li>
  <li>Fixed a minor PreferencePane issue.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '3.1.0',
        :updated => '2008-02-18',
        :link => 'files/KeyRemap4MacBook-3.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Correct the key repeat behavior.</li>
  <li>Fixed a minor PreferencePane issue.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '3.0.0',
        :updated => '2008-02-04',
        :link => 'files/KeyRemap4MacBook-3.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Added PreferencePane. Now, you can configure by System Preferences.</li>
  <li>Added Key Repeat feature.</li>
  <li>Improved handling of CapsLock.</li>
  <li>Renamed many sysctl entries. Please set up by PreferencePane if you upgrade from older version.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '2.3.0',
        :updated => '2007-12-15',
        :body => <<EOS,
<ul>
  <li>Fixed the issue around arrow keys and delete key when remap.fn2* is enable.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '2.2.0',
        :updated => '2007-11-29',
        :body => <<EOS,
<ul>
  <li>Fixed the issue around "key to modifier" (enter2*, return2option, jis_eisuu2*, jis_kana2*).</li>
  <li>Support PowerBook enter key.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '2.1.0',
        :updated => '2007-11-15',
        :body => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '2.0.0',
        :updated => '2007-11-01',
        :body => <<EOS,
<ul>
  <li>Added support for Leopard.</li>
  <li>Added support for PowerBook restrictively.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '1.5.0',
        :updated => '2007-10-10',
        :body => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '1.4.0',
        :updated => '2007-09-09',
        :body => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '1.3.0',
        :updated => '2007-08-15',
        :body => <<EOS,
<ul>
  <li>Updated StartupScript.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '1.2.0',
        :updated => '2007-06-10',
        :body => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => '1.0.2',
        :updated => '2007-02-05',
        :body => <<EOS,
<ul>
  <li>Universal Binary.</li>
</ul>
EOS
      },
      {
        :version => '1.0.1',
        :updated => '2006-10-09',
        :body => <<EOS,
<ul>
  <li>Initial release.</li>
</ul>
EOS
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/history.html', History)
