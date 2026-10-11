package org.apache.poi.ss.usermodel;

import com.sun.org.apache.xalan.internal.templates.Constants;

/* loaded from: classes13.dex */
public interface ConditionalFormattingThreshold {

    /* loaded from: classes13.dex */
    public enum RangeType {
        NUMBER(1, "num"),
        MIN(2, "min"),
        MAX(3, "max"),
        PERCENT(4, Constants.ATTRNAME_PERCENT),
        PERCENTILE(5, "percentile"),
        UNALLOCATED(6, null),
        FORMULA(7, "formula");


        /* renamed from: id */
        public final int f111558id;
        public final String name;

        RangeType(int i, String str) {
            this.f111558id = i;
            this.name = str;
        }

        public static RangeType byId(int i) {
            if (i <= 0 || i > values().length) {
                return null;
            }
            return values()[i - 1];
        }

        public static RangeType byName(String str) {
            for (RangeType rangeType : values()) {
                String str2 = rangeType.name;
                if (str2 == null && str == null) {
                    return rangeType;
                }
                if (str2 != null && str2.equals(str)) {
                    return rangeType;
                }
            }
            return null;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f111558id + " - " + this.name;
        }
    }

    String getFormula();

    RangeType getRangeType();

    Double getValue();

    void setFormula(String str);

    void setRangeType(RangeType rangeType);

    void setValue(Double d);
}
