package org.apache.poi.ss.usermodel;

/* loaded from: classes13.dex */
public enum FontScheme {
    NONE(1),
    MAJOR(2),
    MINOR(3);

    private final int value;
    private static final FontScheme[] _table = {null, NONE, MAJOR, MINOR};

    FontScheme(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }

    public static FontScheme valueOf(int i) {
        return _table[i];
    }
}
