package org.apache.poi.style;

/* loaded from: classes13.dex */
public enum LineStyle {
    NONE("none"),
    DASHED("dashed"),
    DOTTED("dotted"),
    SOLID("solid"),
    DOUBLE("double"),
    WAVY("wavy"),
    INSET("inset"),
    OUTSET("outset");

    public String value;

    LineStyle(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}
