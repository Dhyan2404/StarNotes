package com.couchbase.lite.internal.core;

/* loaded from: classes4.dex */
public enum C4ReplicatorMode {
    C4_DISABLED(0),
    C4_PASSIVE(1),
    C4_ONE_SHOT(2),
    C4_CONTINUOUS(3);

    private final int val;

    C4ReplicatorMode(int i) {
        this.val = i;
    }

    public int getVal() {
        return this.val;
    }
}
