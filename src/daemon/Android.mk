LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := dlt-daemon

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../../include/dlt \
	$(LOCAL_PATH)/../shared \
	$(LOCAL_PATH)/../../musl/include

LOCAL_CFLAGS := $(JOKER_CFLAGS) 

DLT_DAEMON_SRCS := \
	dlt-daemon.c \
	dlt_daemon_common.c \
	dlt_daemon_socket.c \
	dlt_daemon_serial.c \
	dlt_daemon_client.c \
	../shared/dlt_user_shared.c \
	../shared/dlt_common.c \
	../shared/dlt_shm.c \
	../shared/dlt_offline_trace.c

LOCAL_CPP_EXTENSION := .cpp
LOCAL_SRC_FILES := $(foreach F, $(DLT_DAEMON_SRCS), $(addprefix $(dir $(F)),$(notdir $(wildcard $(LOCAL_PATH)/$(F)))))
LOCAL_SHARED_LIBRARIES :=
LOCAL_STATIC_LIBRARIES := musl
LOCAL_LDLIBS := -ldl

include $(BUILD_EXECUTABLE)


