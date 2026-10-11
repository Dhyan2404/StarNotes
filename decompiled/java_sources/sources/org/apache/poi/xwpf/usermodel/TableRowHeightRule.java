package org.apache.poi.xwpf.usermodel;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes13.dex */
public enum TableRowHeightRule {
    AUTO(1),
    EXACT(2),
    AT_LEAST(3);

    private static Map<Integer, TableRowHeightRule> imap = new HashMap();
    private final int value;

    static {
        for (TableRowHeightRule tableRowHeightRule : values()) {
            imap.put(Integer.valueOf(tableRowHeightRule.getValue()), tableRowHeightRule);
        }
    }

    TableRowHeightRule(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }

    public static TableRowHeightRule valueOf(int i) {
        TableRowHeightRule tableRowHeightRule = imap.get(Integer.valueOf(i));
        if (tableRowHeightRule != null) {
            return tableRowHeightRule;
        }
        throw new IllegalArgumentException("Unknown table row height rule: " + i);
    }
}
