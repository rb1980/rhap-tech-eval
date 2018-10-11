foo:
- pkg.installed

mytemplatefile:
- source: salt://files/foo.conf
- mode: 644
- owner: foo

/mnt/foo:
mount.mounted:
 -name: /mnt/foo
 - device: nfsserver1:/export/foo
 - fstype: nfs

foo:
service.running:
   - enable: True
