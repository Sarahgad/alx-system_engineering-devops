Description of Shell Redirection I/O - filters
#!/bin/bash
echo Hello, World
#!/bin/bash
echo "\"(Ôo)'"
#!/bin/bash
cat /etc/passwd
#!/bin/bash
cat /etc/passwd /etc/hosts
#!/bin/bash
tail /etc/passwd
#!/bin/bash
head /etc/passwd
#!/bin/bash
head -n 3 iacta| tail -n 1 
#!/bin/bash
echo 'Best School' > \\\*\\\\\'\"Best\ School\"\\\'\\\\\*\$\\\?\\\*\\\*\\\*\\\*\\\*\:\)
#!/bin/bash
ls -la > ls_cwd_content
#!/bin/bash
tail -n 1 iacta >> iacta
#!/bin/bash
find -type f -name "*.js" -delete
#!/bin/bash
find . -mindepth 1 -type d| wc -l
#!/bin/bash
ls -t| head
#!/bin/bash
sort | uniq -u
#!/bin/bash
grep root /etc/passwd| sort
#!/bin/bash
grep bin /etc/passwd| wc -l
#!/bin/bash
grep -A 3  "root" /etc/passwd
#!/bin/bash
grep -v "bin" /etc/passwd
#!/bin/bash
grep '^[a-zA-Z]' /etc/ssh/sshd_config
#!/bin/bash
tr 'Ac' 'Ze'
#!/bin/bash
tr -d "cC"
#!/bin/bash
rev
#!/bin/bash
cut -d: -f1,6 /etc/passwd | sort
