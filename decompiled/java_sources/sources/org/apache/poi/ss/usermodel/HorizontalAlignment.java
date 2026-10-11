package org.apache.poi.ss.usermodel;

/* loaded from: classes13.dex */
public enum HorizontalAlignment {
    GENERAL,
    LEFT,
    CENTER,
    RIGHT,
    FILL,
    JUSTIFY,
    CENTER_SELECTION,
    DISTRIBUTED;

    public static HorizontalAlignment forInt(int i) {
        if (i >= 0 && i < values().length) {
            return values()[i];
        }
        throw new IllegalArgumentException("Invalid HorizontalAlignment code: " + i);
    }

    public short getCode() {
        return (short) ordinal();
    }
}
