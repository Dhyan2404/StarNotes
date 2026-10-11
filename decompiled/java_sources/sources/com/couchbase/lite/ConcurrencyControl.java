package com.couchbase.lite;

/* loaded from: classes4.dex */
public enum ConcurrencyControl {
    LAST_WRITE_WINS(0),
    FAIL_ON_CONFLICT(1);

    private final int value;

    ConcurrencyControl(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}
