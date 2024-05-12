BUILD_TOOLS_DIR := BuildTools

build-cli:
	swift build -c release --package-path $(BUILD_TOOLS_DIR) --product swift-format
	swift build -c release --package-path $(BUILD_TOOLS_DIR) --product swiftgen