#
# Initialize project
#
init:
	@echo "Installing dependecies using bower..."
	mkdir -p tmp && TMP=tmp bower install && rm -rf tmp

#
# Build project
#
build:
	@echo "Building Twitter Bootstrap components..."
	cd components/bootstrap && make bootstrap && cd ../..
	cp -a components/bootstrap/bootstrap assets/bootstrap
	@echo "Compiling LESS to minimized CSS..."
	for f in css/*.less; do lessc -x $f > ${f/.less/.css}; done

#
# Update project dependencies
#
update:
	@echo "Updating dependencies with bower..."
	mkdir -p tmp && TMP=tmp bower update && rm -rf tmp
	@echo "Building project..."
	make build

#
# Deploy to server (maintainer only)
#
deploy:
	@echo "Deploying to hinoki.ryu.titech.ac.jp..."
	rsync -avP index.html assets img css js hinoki.ryu.titech.ac.jp:/var/www/html/hinoki-portal/

#
# Clean project
#
clean:
	rm -rf components/* assets/*

.PHONY: clean
