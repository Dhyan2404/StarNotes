package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public enum PageProgressionDirection {
    LTR,
    RTL;

    public static PageProgressionDirection valueOf(int i) {
        for (PageProgressionDirection pageProgressionDirection : values()) {
            if (pageProgressionDirection.ordinal() == i) {
                return pageProgressionDirection;
            }
        }
        return LTR;
    }
}
