package com.onegravity.colorpreference;

/* loaded from: classes7.dex */
public enum PreviewSize {
    NORMAL,
    LARGE;

    public static PreviewSize getSize(int i) {
        return i == 2 ? LARGE : NORMAL;
    }
}
