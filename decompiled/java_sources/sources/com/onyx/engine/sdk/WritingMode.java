package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public enum WritingMode {
    HORIZONTAL,
    VERTICAL_RL,
    VERTICAL_LR;

    public static WritingMode valueOf(int i) {
        if (i == 1) {
            return VERTICAL_RL;
        }
        if (i != 2) {
            return HORIZONTAL;
        }
        return VERTICAL_LR;
    }
}
