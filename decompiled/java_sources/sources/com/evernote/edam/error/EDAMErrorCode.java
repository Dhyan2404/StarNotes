package com.evernote.edam.error;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum EDAMErrorCode implements TEnum {
    UNKNOWN(1),
    BAD_DATA_FORMAT(2),
    PERMISSION_DENIED(3),
    INTERNAL_ERROR(4),
    DATA_REQUIRED(5),
    LIMIT_REACHED(6),
    QUOTA_REACHED(7),
    INVALID_AUTH(8),
    AUTH_EXPIRED(9),
    DATA_CONFLICT(10),
    ENML_VALIDATION(11),
    SHARD_UNAVAILABLE(12),
    LEN_TOO_SHORT(13),
    LEN_TOO_LONG(14),
    TOO_FEW(15),
    TOO_MANY(16),
    UNSUPPORTED_OPERATION(17),
    TAKEN_DOWN(18),
    RATE_LIMIT_REACHED(19);

    private final int value;

    EDAMErrorCode(int i) {
        this.value = i;
    }

    public static EDAMErrorCode findByValue(int i) {
        switch (i) {
            case 1:
                return UNKNOWN;
            case 2:
                return BAD_DATA_FORMAT;
            case 3:
                return PERMISSION_DENIED;
            case 4:
                return INTERNAL_ERROR;
            case 5:
                return DATA_REQUIRED;
            case 6:
                return LIMIT_REACHED;
            case 7:
                return QUOTA_REACHED;
            case 8:
                return INVALID_AUTH;
            case 9:
                return AUTH_EXPIRED;
            case 10:
                return DATA_CONFLICT;
            case 11:
                return ENML_VALIDATION;
            case 12:
                return SHARD_UNAVAILABLE;
            case 13:
                return LEN_TOO_SHORT;
            case 14:
                return LEN_TOO_LONG;
            case 15:
                return TOO_FEW;
            case 16:
                return TOO_MANY;
            case 17:
                return UNSUPPORTED_OPERATION;
            case 18:
                return TAKEN_DOWN;
            case 19:
                return RATE_LIMIT_REACHED;
            default:
                return null;
        }
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
