package org.apache.poi.ss.usermodel;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes13.dex */
public class ConditionType {

    /* renamed from: id */
    public final byte f111557id;
    public final String type;
    private static Map<Integer, ConditionType> lookup = new HashMap();
    public static final ConditionType CELL_VALUE_IS = new ConditionType(1, "cellIs");
    public static final ConditionType FORMULA = new ConditionType(2, "expression");
    public static final ConditionType COLOR_SCALE = new ConditionType(3, "colorScale");
    public static final ConditionType DATA_BAR = new ConditionType(4, "dataBar");
    public static final ConditionType FILTER = new ConditionType(5, null);
    public static final ConditionType ICON_SET = new ConditionType(6, "iconSet");

    private ConditionType(int i, String str) {
        this.f111557id = (byte) i;
        this.type = str;
        lookup.put(Integer.valueOf(i), this);
    }

    public static ConditionType forId(byte b) {
        return forId((int) b);
    }

    public String toString() {
        return ((int) this.f111557id) + " - " + this.type;
    }

    public static ConditionType forId(int i) {
        return lookup.get(Integer.valueOf(i));
    }
}
