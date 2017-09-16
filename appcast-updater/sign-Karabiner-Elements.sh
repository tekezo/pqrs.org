#!/bin/bash

basedir=`dirname $0`
cd "$basedir"

priv_pem="secret/karabiner_elements_priv.pem"
. scripts/check-priv_pem.sh

targetdir="../webroot/osx/karabiner/files"

latest_dmg=`ruby scripts/get-latest.rb $targetdir/Karabiner-Elements-*.dmg`
version=$(echo `basename $latest_dmg .dmg` | sed 's|Karabiner-Elements-||')
length=`ruby scripts/get-length.rb $latest_dmg`
dsaSignature=`sh scripts/sign_update.sh $latest_dmg $priv_pem`
pubDate=`ruby scripts/get-time.rb`

if [ "$version" == `ruby scripts/get-version.rb < "$targetdir/karabiner-elements-appcast-devel.xml"` ]; then
    echo " `basename $0`: Already up-to-date."
    exit 0
fi

rm -f "$targetdir/karabiner-elements-appcast-devel.xml.tmp"

>>"$targetdir/karabiner-elements-appcast-devel.xml.tmp" cat <<EOF
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle"  xmlns:dc="http://purl.org/dc/elements/1.1/">
  <channel>
    <title>Karabiner-Elements Changelog</title>
    <link>https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast-devel.xml</link>
    <description>Most recent changes with links to updates.</description>
    <language>en</language>

    <item>
      <title>Version $version</title>
      <sparkle:minimumSystemVersion>10.10.0</sparkle:minimumSystemVersion>
      <description><![CDATA[
<style>
EOF

>>"$targetdir/karabiner-elements-appcast-devel.xml.tmp" cat ../source/css/sparkle.css

>>"$targetdir/karabiner-elements-appcast-devel.xml.tmp" cat <<EOF
</style>

<h2>About v$version Update</h2>

<!-- update-description-begin -->

EOF

>>"$targetdir/karabiner-elements-appcast-devel.xml.tmp" ruby -e 'print $1.strip if /<!-- update-description-begin -->(.+?)<!-- update-description-end -->/m =~ $stdin.read' < "$targetdir/karabiner-elements-appcast-devel.xml"

>>"$targetdir/karabiner-elements-appcast-devel.xml.tmp" cat <<EOF


<!-- update-description-end -->
<p>
  <a href="https://pqrs.org/osx/karabiner/karabiner-elements.html#history">More</a>
</p>
]]>
      </description>
      <pubDate>$pubDate</pubDate>
      <enclosure url="https://pqrs.org/osx/karabiner/files/Karabiner-Elements-$version.dmg"
                 sparkle:version="$version" length="$length" type="application/octet-stream"
                 sparkle:dsaSignature="$dsaSignature"
                 />
    </item>

  </channel>
</rss>
EOF

mv "$targetdir/karabiner-elements-appcast-devel.xml.tmp" "$targetdir/karabiner-elements-appcast-devel.xml"
chmod 644 "$targetdir/karabiner-elements-appcast-devel.xml"
echo \
    '\033[33;40m' \
    "`basename $0`: karabiner-elements-appcast-devel.xml is updated." \
    '\033[0m'
