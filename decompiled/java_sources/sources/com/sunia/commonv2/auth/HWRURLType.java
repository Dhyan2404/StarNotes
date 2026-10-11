package com.sunia.commonv2.auth;

/* loaded from: classes10.dex */
public enum HWRURLType {
    PROD(0),
    TEST(1),
    INTER_PROD(2);

    private int value;

    HWRURLType(int i) {
        this.value = i;
    }

    public static HWRURLType fromValue(int i) {
        for (HWRURLType hWRURLType : values()) {
            if (hWRURLType.getValue() == i) {
                return hWRURLType;
            }
        }
        throw new IllegalArgumentException("Invalid HWRURLType value: " + i);
    }

    public int getValue() {
        return this.value;
    }
}
