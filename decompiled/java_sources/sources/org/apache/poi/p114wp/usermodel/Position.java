package org.apache.poi.p114wp.usermodel;

/* loaded from: classes13.dex */
public enum Position {
    NONE,
    ABSOLUTE,
    FLOAT_LEFT,
    FLOAT_RIGHT,
    MIDDLE,
    BOTTOM;

    public static Position positionOf(String str) {
        return "absolute".equals(str) ? ABSOLUTE : NONE;
    }

    public String getStyle() {
        int ordinal = ordinal();
        return ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? ordinal != 5 ? "" : "vertical-align:bottom;" : "vertical-align:middle;" : "float:right;" : "float:left;" : "position:absolute;";
    }
}
