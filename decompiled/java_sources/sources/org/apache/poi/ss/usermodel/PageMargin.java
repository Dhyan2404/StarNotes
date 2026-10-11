package org.apache.poi.ss.usermodel;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes13.dex */
public enum PageMargin {
    LEFT(0),
    RIGHT(1),
    TOP(2),
    BOTTOM(3),
    HEADER(4),
    FOOTER(5);

    private static final Map<Short, PageMargin> PAGE_MARGIN_BY_LEGACY_API_VALUE = new HashMap();
    private final short legacyApiValue;

    static {
        for (PageMargin pageMargin : values()) {
            PAGE_MARGIN_BY_LEGACY_API_VALUE.put(Short.valueOf(pageMargin.legacyApiValue), pageMargin);
        }
    }

    PageMargin(short s) {
        this.legacyApiValue = s;
    }

    public static PageMargin getByShortValue(short s) {
        return PAGE_MARGIN_BY_LEGACY_API_VALUE.get(Short.valueOf(s));
    }

    public short getLegacyApiValue() {
        return this.legacyApiValue;
    }
}
