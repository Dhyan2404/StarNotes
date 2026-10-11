package com.couchbase.lite.internal;

/* loaded from: classes4.dex */
public enum QueryLanguage {
    JSON(0),
    N1QL(1);

    private final int code;

    QueryLanguage(int i) {
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }
}
