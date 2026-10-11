package org.apache.poi.ss.format;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes13.dex */
public abstract class CellFormatCondition {

    /* renamed from: EQ */
    private static final int f111514EQ = 4;

    /* renamed from: GE */
    private static final int f111515GE = 3;

    /* renamed from: GT */
    private static final int f111516GT = 2;

    /* renamed from: LE */
    private static final int f111517LE = 1;

    /* renamed from: LT */
    private static final int f111518LT = 0;

    /* renamed from: NE */
    private static final int f111519NE = 5;
    private static final Map<String, Integer> TESTS;

    static {
        HashMap hashMap = new HashMap();
        TESTS = hashMap;
        hashMap.put("<", 0);
        hashMap.put("<=", 1);
        hashMap.put(">", 2);
        hashMap.put(">=", 3);
        hashMap.put("=", 4);
        hashMap.put("==", 4);
        hashMap.put("!=", 5);
        hashMap.put("<>", 5);
    }

    public static CellFormatCondition getInstance(String str, String str2) {
        Map<String, Integer> map = TESTS;
        if (!map.containsKey(str)) {
            throw new IllegalArgumentException("Unknown test: " + str);
        }
        int intValue = map.get(str).intValue();
        final double parseDouble = Double.parseDouble(str2);
        if (intValue == 0) {
            return new CellFormatCondition() { // from class: org.apache.poi.ss.format.CellFormatCondition.1
                @Override // org.apache.poi.ss.format.CellFormatCondition
                public boolean pass(double d) {
                    return d < parseDouble;
                }
            };
        }
        if (intValue == 1) {
            return new CellFormatCondition() { // from class: org.apache.poi.ss.format.CellFormatCondition.2
                @Override // org.apache.poi.ss.format.CellFormatCondition
                public boolean pass(double d) {
                    return d <= parseDouble;
                }
            };
        }
        if (intValue == 2) {
            return new CellFormatCondition() { // from class: org.apache.poi.ss.format.CellFormatCondition.3
                @Override // org.apache.poi.ss.format.CellFormatCondition
                public boolean pass(double d) {
                    return d > parseDouble;
                }
            };
        }
        if (intValue == 3) {
            return new CellFormatCondition() { // from class: org.apache.poi.ss.format.CellFormatCondition.4
                @Override // org.apache.poi.ss.format.CellFormatCondition
                public boolean pass(double d) {
                    return d >= parseDouble;
                }
            };
        }
        if (intValue == 4) {
            return new CellFormatCondition() { // from class: org.apache.poi.ss.format.CellFormatCondition.5
                @Override // org.apache.poi.ss.format.CellFormatCondition
                public boolean pass(double d) {
                    return d == parseDouble;
                }
            };
        }
        if (intValue == 5) {
            return new CellFormatCondition() { // from class: org.apache.poi.ss.format.CellFormatCondition.6
                @Override // org.apache.poi.ss.format.CellFormatCondition
                public boolean pass(double d) {
                    return d != parseDouble;
                }
            };
        }
        throw new IllegalArgumentException("Cannot create for test number " + intValue + "(\"" + str + "\")");
    }

    public abstract boolean pass(double d);
}
