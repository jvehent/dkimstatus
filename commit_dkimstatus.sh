#! /bin/bash

tar -cvf dkimstatus-v`grep @version dkimstatus/dkimstatus.php | awk {'print $3'}`.tar dkimstatus --exclude-vcs
scp dkimstatus-v`grep @version dkimstatus/dkimstatus.php | awk {'print $3'}`.tar julien@sachiel.linuxwall.info:/var/www/chroot-jve/var/www/ressources/code/
