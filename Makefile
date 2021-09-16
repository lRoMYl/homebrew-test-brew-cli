TOOL_NAME = homwbrew-test-brew-cli
FORMULA_NAME = dh-graphql-codegen-ios-test
VERSION = $(shell git describe --abbrev=0 --tags)

PREFIX = /usr/local
INSTALL_PATH = $(PREFIX)/bin/$(TOOL_NAME)
SHARE_PATH = $(PREFIX)/share/$(TOOL_NAME)
BUILD_PATH = .build/release/$(TOOL_NAME)
CURRENT_PATH = $(PWD)
REPO = https://github.com/lRoMYl/$(TOOL_NAME)
RELEASE_TAR = $(REPO)/archive/$(VERSION).tar.gz
SHA = $(shell curl -L -s $(RELEASE_TAR) | shasum -a 256 | sed 's/ .*//')

build:
	xcodebuild clean build -project "DHGraphQLCodegenSwift.xcodeproj" -scheme "DHGraphQLCodegenSwift" -configuration Release -destination "platform=macOS"

install: build
	mkdir -p $(PREFIX)/bin
	cp -f $(BUILD_PATH) $(INSTALL_PATH)

uninstall:
	rm -f $(INSTALL_PATH)

format:
	swiftformat .

update_brew:
	sed -i '' 's|\(url ".*/archive/\)\(.*\)\(.tar\)|\1$(VERSION)\3|' Formula/$(FORMULA_NAME).rb
	sed -i '' 's|\(sha256 "\)\(.*\)\("\)|\1$(SHA)\3|' Formula/$(FORMULA_NAME).rb

	git add .
	git commit -m "Update brew to $(VERSION)"