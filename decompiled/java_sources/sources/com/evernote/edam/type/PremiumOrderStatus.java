package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum PremiumOrderStatus implements TEnum {
    NONE(0),
    PENDING(1),
    ACTIVE(2),
    FAILED(3),
    CANCELLATION_PENDING(4),
    CANCELED(5);

    private final int value;

    PremiumOrderStatus(int i) {
        this.value = i;
    }

    public static PremiumOrderStatus findByValue(int i) {
        if (i == 0) {
            return NONE;
        }
        if (i == 1) {
            return PENDING;
        }
        if (i == 2) {
            return ACTIVE;
        }
        if (i == 3) {
            return FAILED;
        }
        if (i == 4) {
            return CANCELLATION_PENDING;
        }
        if (i != 5) {
            return null;
        }
        return CANCELED;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
