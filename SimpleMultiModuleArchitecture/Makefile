BUILD_TOOLS_DIR := BuildTools

build-cli:
	swift build -c release --package-path $(BUILD_TOOLS_DIR) --product swift-format
	swift build -c release --package-path $(BUILD_TOOLS_DIR) --product swiftgen
	swift build -c release --package-path $(BUILD_TOOLS_DIR) --product license-plist

exec-licenseplist:
	$(BUILD_TOOLS_DIR)/.build/release/license-plist --force --output-path ./Shared/Settings.bundle --package-paths $(BUILD_TOOLS_DIR)/Package.swift ./Modules/Package.swift --config-path $(BUILD_TOOLS_DIR)/licence/license_plist.yml
#	$(BUILD_TOOLS_DIR)/.build/release/license-plist --force --output-path ./Shared/Settings.bundle --package-paths $(BUILD_TOOLS_DIR)/Package.swift ./Modules/Package.swift --config-path $(BUILD_TOOLS_DIR)/licence/license_plist.yml --github-token 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