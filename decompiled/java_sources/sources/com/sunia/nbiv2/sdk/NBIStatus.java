package com.sunia.nbiv2.sdk;

/* loaded from: classes10.dex */
public enum NBIStatus {
    START(0),
    HANDING(1),
    FINISHED(2),
    STOPPED(3),
    EMPTY(4),
    INVALID_POINTER(5);

    private int status;

    NBIStatus(int i) {
        this.status = i;
    }

    public int getStatus() {
        return this.status;
    }
}
