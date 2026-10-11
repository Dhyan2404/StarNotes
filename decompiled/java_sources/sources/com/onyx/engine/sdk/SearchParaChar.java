package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public enum SearchParaChar {
    NORMAL,
    EMPTY,
    SPACE;

    public static SearchParaChar valueOf(int i) {
        for (SearchParaChar searchParaChar : values()) {
            if (searchParaChar.ordinal() == i) {
                return searchParaChar;
            }
        }
        return NORMAL;
    }
}
