# Replace $$DEVICE$$ with your Device Name's Value. Mine is CPH1923.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value, Mine is OPPO

ifneq ($(filter CPH1923,$(TARGET_DEVICE)),)

LOCAL_PATH := device/oppo/cph1923

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
