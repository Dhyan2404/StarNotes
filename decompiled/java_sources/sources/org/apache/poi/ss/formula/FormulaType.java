package org.apache.poi.ss.formula;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public enum FormulaType {
    CELL(true),
    SHARED(true),
    ARRAY(false),
    CONDFORMAT(true),
    NAMEDRANGE(false),
    DATAVALIDATION_LIST(false);

    private final boolean isSingleValue;

    FormulaType(boolean z) {
        this.isSingleValue = z;
    }

    public static FormulaType forInt(int i) {
        if (i >= 0 && i < values().length) {
            return values()[i];
        }
        throw new IllegalArgumentException("Invalid FormulaType code: " + i);
    }

    public boolean isSingleValue() {
        return this.isSingleValue;
    }
}
