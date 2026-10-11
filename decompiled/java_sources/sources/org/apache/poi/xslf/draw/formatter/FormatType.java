package org.apache.poi.xslf.draw.formatter;

/* loaded from: classes13.dex */
public enum FormatType {
    NONE,
    GENERAL,
    PERCENT,
    DATE,
    CUSTOM;

    private String format;

    public static FormatType from(String str) {
        return (str == null ? NONE : str.contains("%") ? PERCENT : str.contains("yyyy/m/d") ? DATE : str.equalsIgnoreCase("General") ? GENERAL : CUSTOM).setFormat(str);
    }

    public String getFormat() {
        return this.format;
    }

    public FormatType setFormat(String str) {
        this.format = str;
        return this;
    }
}
