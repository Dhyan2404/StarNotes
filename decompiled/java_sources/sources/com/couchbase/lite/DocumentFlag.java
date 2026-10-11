package com.couchbase.lite;

/* loaded from: classes4.dex */
public enum DocumentFlag {
    DELETED(1),
    ACCESS_REMOVED(2);

    private final int rawValue;

    DocumentFlag(int i) {
        this.rawValue = i;
    }

    public int rawValue() {
        return this.rawValue;
    }
}
