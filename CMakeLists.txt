cmake_minimum_required(VERSION 3.0)

project(TinyDNN VERSION 0.0.9 LANGUAGES CXX)


add_library(TinyDNN INTERFACE)

# add include folders to the library and targets that consume it
target_include_directories(TinyDNN INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/tiny_dnn>
    $<INSTALL_INTERFACE:include>
)

set_target_properties (TinyDNN PROPERTIES EXPORT_NAME TinyDNN)

install (TARGETS TinyDNN EXPORT TinyDNNTargets)

install(
    DIRECTORY tiny_dnn
    DESTINATION include
)

enable_testing()

set(config_install_dir "lib/cmake/${PROJECT_NAME}")
set(include_install_dir "include/${PROJECT_NAME}")
set(generated_dir "${CMAKE_CURRENT_BINARY_DIR}/generated")
set(version_config "${generated_dir}/${PROJECT_NAME}ConfigVersion.cmake")
set(project_config "${generated_dir}/${PROJECT_NAME}Config.cmake")
set(targets_export_name "${PROJECT_NAME}Targets")
set(namespace "${PROJECT_NAME}::")


include(CMakePackageConfigHelpers)


write_basic_package_version_file(
    "${version_config}" COMPATIBILITY SameMajorVersion
)


configure_package_config_file(
    "cmake/Config.cmake.in"
    "${project_config}"
    INSTALL_DESTINATION "${config_install_dir}"
)

install(
    TARGETS TinyDNN
    EXPORT "${TARGETS_EXPORT_NAME}"
    INCLUDES DESTINATION "${include_install_dir}"
)


install(
    FILES "${project_config}" "${version_config}"
    DESTINATION "${config_install_dir}"
)


install(
    EXPORT "${targets_export_name}"
    NAMESPACE "${namespace}"
    DESTINATION "${config_install_dir}"
)