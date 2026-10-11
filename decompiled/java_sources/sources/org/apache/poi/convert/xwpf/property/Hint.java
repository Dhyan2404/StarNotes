package org.apache.poi.convert.xwpf.property;

/* loaded from: classes12.dex */
public enum Hint {
    NONE(""),
    EAST_ASIA("eastAsia"),
    ASCII("ascii"),
    HANSI("hAnsi"),
    CS("cs"),
    BIDI("bidi"),
    DEFAULT("default");

    private String desc;

    Hint(String str) {
        this.desc = str;
    }

    public static Hint getHint(String str) {
        for (Hint hint : values()) {
            if (hint.desc.equals(str)) {
                return hint;
            }
        }
        return NONE;
    }
}
