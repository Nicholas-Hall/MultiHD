#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
multihdstart () {
rolevars
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 Welcome to MultiHD ~ http://multihd.pgblitz.com
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

NOTE: When finished making changes; PG Clone must redeploy in order for
the changes to take affect in (Union) MergerFS!

[1] HD or a MountPoint:  Add
[2] HD or a MountPoint:  Remove
[Z] Exit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
read -rp '↘️  Input Selection | Press [ENTER]: ' typed < /dev/tty
multihdstartinput
}

multihdstartinput () {
  case $typed in
        1 )
            addpoint ;;
        2 )
            removepoint ;;
        z )
            exit ;;
        Z )
            exit ;;
        * )
            multihdstart ;;
      esac
multihdstart
}
