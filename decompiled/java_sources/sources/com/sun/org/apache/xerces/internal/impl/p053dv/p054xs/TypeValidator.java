package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;

/* loaded from: classes10.dex */
public abstract class TypeValidator {
    public static final short EQUAL = 0;
    public static final short GREATER_THAN = 1;
    public static final short INDETERMINATE = 2;
    public static final short LESS_THAN = -1;

    public static final int getDigit(char c) {
        if (isDigit(c)) {
            return c - '0';
        }
        return -1;
    }

    public static final boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    public void checkExtraRules(Object obj, ValidationContext validationContext) throws InvalidDatatypeValueException {
    }

    public int compare(Object obj, Object obj2) {
        return -1;
    }

    public abstract Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException;

    public abstract short getAllowedFacets();

    public int getDataLength(Object obj) {
        if (obj instanceof String) {
            return ((String) obj).length();
        }
        return -1;
    }

    public int getFractionDigits(Object obj) {
        return -1;
    }

    public int getTotalDigits(Object obj) {
        return -1;
    }

    public boolean isIdentical(Object obj, Object obj2) {
        return obj.equals(obj2);
    }
}
