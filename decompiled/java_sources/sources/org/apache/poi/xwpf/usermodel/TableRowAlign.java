package org.apache.poi.xwpf.usermodel;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes13.dex */
public enum TableRowAlign {
    LEFT(5),
    CENTER(1),
    RIGHT(2);

    private static Map<Integer, TableRowAlign> imap = new HashMap();
    private final int value;

    static {
        for (TableRowAlign tableRowAlign : values()) {
            imap.put(Integer.valueOf(tableRowAlign.getValue()), tableRowAlign);
        }
    }

    TableRowAlign(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }

    public static TableRowAlign valueOf(int i) {
        TableRowAlign tableRowAlign = imap.get(Integer.valueOf(i));
        if (tableRowAlign != null) {
            return tableRowAlign;
        }
        throw new IllegalArgumentException("Unknown table row alignment: " + i);
    }
}
