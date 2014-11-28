#JOKER_CFLAGS := -O2
JOKER_CFLAGS := -O0 -g

JOKER_LOCAL_PATH := $(call my-dir)

include $(JOKER_LOCAL_PATH)/../src/Android.mk
include $(JOKER_LOCAL_PATH)/../musl/Android.mk
