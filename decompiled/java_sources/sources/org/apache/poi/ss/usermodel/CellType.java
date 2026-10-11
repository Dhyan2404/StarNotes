package org.apache.poi.ss.usermodel;

/* loaded from: classes13.dex */
public enum CellType {
    _NONE(-1),
    NUMERIC(0),
    STRING(1),
    FORMULA(2),
    BLANK(3),
    BOOLEAN(4),
    ERROR(5);


    @Deprecated
    private final int code;

    CellType(int i) {
        this.code = i;
    }

    @Deprecated
    public static CellType forInt(int i) {
        for (CellType cellType : values()) {
            if (cellType.code == i) {
                return cellType;
            }
        }
        throw new IllegalArgumentException("Invalid CellType code: " + i);
    }

    @Deprecated
    public int getCode() {
        return this.code;
    }
}
