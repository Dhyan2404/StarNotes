package org.apache.xerces.impl.p115dv.p116xs;

import java.security.AccessController;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.util.XMLChar;

/* loaded from: classes13.dex */
public abstract class TypeValidator {
    public static final short EQUAL = 0;
    public static final short GREATER_THAN = 1;
    public static final short INDETERMINATE = 2;
    public static final short LESS_THAN = -1;

    /* renamed from: a */
    public static final boolean f112347a;

    static {
        f112347a = AccessController.doPrivileged(new C20024b()) == Boolean.TRUE;
    }

    public static final int getDigit(char c) {
        if (isDigit(c)) {
            return c - '0';
        }
        return -1;
    }

    public static final boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: a */
    public final int m69953a(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i < length - 1) {
            if (XMLChar.isHighSurrogate(str.charAt(i))) {
                i++;
                if (XMLChar.isLowSurrogate(str.charAt(i))) {
                    i2++;
                } else {
                    i--;
                }
            }
            i++;
        }
        return length - i2;
    }

    public void checkExtraRules(Object obj, ValidationContext validationContext) throws InvalidDatatypeValueException {
    }

    public int compare(Object obj, Object obj2) {
        return -1;
    }

    public abstract Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException;

    public abstract short getAllowedFacets();

    public int getDataLength(Object obj) {
        if (!(obj instanceof String)) {
            return -1;
        }
        String str = (String) obj;
        return !f112347a ? str.length() : m69953a(str);
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
