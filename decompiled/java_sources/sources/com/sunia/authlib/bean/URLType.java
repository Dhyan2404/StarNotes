package com.sunia.authlib.bean;

/* loaded from: classes10.dex */
public enum URLType {
    PROD(0),
    TEST(1),
    INTER_PROD(2);

    private int value;

    URLType(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}
