vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO northwindtraders/beison
	REF 308fc6da46cc51c38157eb82bbe5d179bdf4cf29
	SHA512 9f6b3d36d3aa63af2235781d9ac13b076d738b295f6a7e9e97805e7d0414f6c1f63c0f3bb72258afd686b2490d8047ab7e9843e9c0a669dae950b0fc81e1650a
	HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
