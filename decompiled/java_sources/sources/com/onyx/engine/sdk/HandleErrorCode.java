package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public enum HandleErrorCode {
    OK,
    FILE_NOT_EXIST,
    OPEN_FAILED,
    ZIP_NOT_RECOGNISED,
    MSDOC_CONFIG_NOT_EXIST,
    MSDOC_CONTENT_NOT_EXIST,
    MARK_DOWN_CONVERT_FAILED,
    UNKNOWN;

    public static HandleErrorCode valueOf(int i) {
        for (HandleErrorCode handleErrorCode : values()) {
            if (handleErrorCode.ordinal() == i) {
                return handleErrorCode;
            }
        }
        return UNKNOWN;
    }
}
