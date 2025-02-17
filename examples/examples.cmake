
if(${CMAKE_SYSTEM_NAME} STREQUAL XCORE_XS3A)
    include(${CMAKE_CURRENT_LIST_DIR}/speech_recognition/speech_recognition.cmake)
    include(${CMAKE_CURRENT_LIST_DIR}/ffva/ffva.cmake)
    include(${CMAKE_CURRENT_LIST_DIR}/ffd/ffd.cmake)
    include(${CMAKE_CURRENT_LIST_DIR}/low_power_ffd/low_power_ffd.cmake)
else()
    # Determine OS, set up install dir
    if(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
        set(HOST_INSTALL_DIR "$ENV{USERPROFILE}\\.xmos\\bin")
    else()
        set(HOST_INSTALL_DIR "/opt/xmos/bin")
    endif()

    add_subdirectory(modules/xscope_fileio/xscope_fileio/host)
    install(TARGETS xscope_host_endpoint DESTINATION ${HOST_INSTALL_DIR})
endif()
