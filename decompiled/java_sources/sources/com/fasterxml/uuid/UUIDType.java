package com.fasterxml.uuid;

/* loaded from: classes4.dex */
public enum UUIDType {
    TIME_BASED(1),
    DCE(2),
    NAME_BASED_MD5(3),
    RANDOM_BASED(4),
    NAME_BASED_SHA1(5),
    TIME_BASED_REORDERED(6),
    TIME_BASED_EPOCH(7),
    FREE_FORM(8),
    UNKNOWN(0);

    private final int _raw;

    UUIDType(int i) {
        this._raw = i;
    }

    public int raw() {
        return this._raw;
    }
}
