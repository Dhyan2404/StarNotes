package org.apache.poi.ss.usermodel;

/* loaded from: classes13.dex */
public enum ReadingOrder {
    CONTEXT,
    LEFT_TO_RIGHT,
    RIGHT_TO_LEFT;

    public static ReadingOrder forLong(long j) {
        if (j >= 0 && j < values().length) {
            return values()[(int) j];
        }
        throw new IllegalArgumentException("Invalid ReadingOrder code: " + j);
    }

    public short getCode() {
        return (short) ordinal();
    }
}
