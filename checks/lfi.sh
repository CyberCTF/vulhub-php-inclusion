#!/bin/sh
# phpinfo.php is PHP's info page and lfi.php includes the file it is given.
set -e
curl -fsS http://php/phpinfo.php | grep -q 'PHP Version'
curl -fsS 'http://php/lfi.php?file=/etc/passwd' | grep -q 'root:'
