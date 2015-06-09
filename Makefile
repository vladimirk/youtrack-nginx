VERSION=0.0.1

all:
	mkdir -p src/var/lib/youtrack/db
	mkdir -p src/var/lib/youtrack/backup
	fpm -C src -s dir -t rpm -n youtrack-nginx --version=${VERSION} \
	--depends=nginx --depends=curl --depends java \
	--pre-install rpm-scripts/before-install.sh
