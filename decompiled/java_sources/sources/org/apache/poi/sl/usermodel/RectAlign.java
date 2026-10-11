package org.apache.poi.sl.usermodel;

/* loaded from: classes12.dex */
public enum RectAlign {
    TOP_LEFT("tl"),
    TOP("t"),
    TOP_RIGHT("tr"),
    LEFT("l"),
    CENTER("ctr"),
    RIGHT("r"),
    BOTTOM_LEFT("bl"),
    BOTTOM("b"),
    BOTTOM_RIGHT("br");

    private final String dir;

    RectAlign(String str) {
        this.dir = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.dir;
    }
}
