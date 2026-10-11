package com.tencent.cos.xml.common;

import com.onyx.android.sdk.data.common.data.template.OfficialTemplateType;

/* loaded from: classes10.dex */
public enum ClientErrorCode {
    UNKNOWN(-10000, "Unknown Error"),
    INVALID_ARGUMENT(10000, "InvalidArgument"),
    INVALID_CREDENTIALS(10001, "InvalidCredentials"),
    BAD_REQUEST(10002, "BadRequest"),
    SINK_SOURCE_NOT_FOUND(10003, "SinkSourceNotFound"),
    ETAG_NOT_FOUND(10004, "ETagNotFound"),
    INTERNAL_ERROR(20000, "InternalError"),
    SERVERERROR(OfficialTemplateType.TEMPLATE_CORNELL_NARROW_SPACING, "ServerError"),
    IO_ERROR(OfficialTemplateType.TEMPLATE_CORNELL_WIDE_SPACING, "IOError"),
    POOR_NETWORK(OfficialTemplateType.TEMPLATE_CORNELL_BLANK, "NetworkError"),
    USER_CANCELLED(30000, "UserCancelled"),
    ALREADY_FINISHED(OfficialTemplateType.TEMPLATE_TASK_LIST, "AlreadyFinished"),
    DUPLICATE_TASK(OfficialTemplateType.TEMPLATE_TODO_LIST, "DuplicateTask"),
    KMS_ERROR(40000, "KMSError");

    private int code;
    private String errorMsg;

    ClientErrorCode(int i, String str) {
        this.code = i;
        this.errorMsg = str;
    }

    /* renamed from: to */
    public static ClientErrorCode m59776to(int i) {
        for (ClientErrorCode clientErrorCode : values()) {
            if (clientErrorCode.code == i) {
                return clientErrorCode;
            }
        }
        throw new IllegalArgumentException("not error code defined");
    }

    public int getCode() {
        return this.code;
    }

    public String getErrorMsg() {
        return this.errorMsg;
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }
}
