package org.apache.poi.p114wp.usermodel;

/* loaded from: classes13.dex */
public enum HeaderFooterType {
    DEFAULT(2),
    EVEN(1),
    FIRST(3);

    private final int code;

    HeaderFooterType(int i) {
        this.code = i;
    }

    public static HeaderFooterType forInt(int i) {
        for (HeaderFooterType headerFooterType : values()) {
            if (headerFooterType.code == i) {
                return headerFooterType;
            }
        }
        throw new IllegalArgumentException("Invalid HeaderFooterType code: " + i);
    }

    public int toInt() {
        return this.code;
    }
}
