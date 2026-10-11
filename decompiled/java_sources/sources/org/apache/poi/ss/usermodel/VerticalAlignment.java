package org.apache.poi.ss.usermodel;

/* loaded from: classes13.dex */
public enum VerticalAlignment {
    TOP,
    CENTER,
    BOTTOM,
    JUSTIFY,
    DISTRIBUTED;

    public static VerticalAlignment forInt(int i) {
        if (i >= 0 && i < values().length) {
            return values()[i];
        }
        throw new IllegalArgumentException("Invalid VerticalAlignment code: " + i);
    }

    public short getCode() {
        return (short) ordinal();
    }
}
