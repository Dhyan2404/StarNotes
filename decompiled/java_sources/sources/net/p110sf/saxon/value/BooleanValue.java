package net.p110sf.saxon.value;

import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public final class BooleanValue extends AtomicValue implements XPathComparable, AtomicMatchKey, ContextFreeAtomicValue {

    /* renamed from: e */
    public final boolean f102848e;
    public static final BooleanValue TRUE = new BooleanValue(true);
    public static final BooleanValue FALSE = new BooleanValue(false);

    public BooleanValue(boolean z) {
        this.f102848e = z;
        this.typeLabel = BuiltInAtomicType.BOOLEAN;
    }

    public static ConversionResult fromString(UnicodeString unicodeString) {
        long trimmedStart = Whitespace.trimmedStart(unicodeString);
        long trimmedEnd = Whitespace.trimmedEnd(unicodeString);
        if (trimmedStart >= 0) {
            long j = trimmedEnd - trimmedStart;
            if (j == 1) {
                int codePointAt = unicodeString.codePointAt(trimmedStart);
                if (codePointAt == 48) {
                    return FALSE;
                }
                if (codePointAt == 49) {
                    return TRUE;
                }
            } else if (j == 4) {
                long j2 = trimmedStart + 1;
                if (unicodeString.codePointAt(trimmedStart) == 116) {
                    long j3 = j2 + 1;
                    if (unicodeString.codePointAt(j2) == 114) {
                        long j4 = 1 + j3;
                        if (unicodeString.codePointAt(j3) == 117 && unicodeString.codePointAt(j4) == 101) {
                            return TRUE;
                        }
                    }
                }
            } else if (j == 5) {
                long j5 = trimmedStart + 1;
                if (unicodeString.codePointAt(trimmedStart) == 102) {
                    long j6 = j5 + 1;
                    if (unicodeString.codePointAt(j5) == 97) {
                        long j7 = j6 + 1;
                        if (unicodeString.codePointAt(j6) == 108) {
                            long j8 = 1 + j7;
                            if (unicodeString.codePointAt(j7) == 115 && unicodeString.codePointAt(j8) == 101) {
                                return FALSE;
                            }
                        }
                    }
                }
            }
        }
        ValidationFailure validationFailure = new ValidationFailure("The string " + Err.wrap(unicodeString, 4) + " cannot be cast to a boolean");
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    public static BooleanValue get(boolean z) {
        return z ? TRUE : FALSE;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        BooleanValue booleanValue = new BooleanValue(this.f102848e);
        booleanValue.typeLabel = atomicType;
        return booleanValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return this.f102848e;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        return (obj instanceof BooleanValue) && this.f102848e == ((BooleanValue) obj).f102848e;
    }

    public boolean getBooleanValue() {
        return this.f102848e;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        return this.f102848e ? StringConstants.TRUE : StringConstants.FALSE;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.value.ContextFreeAtomicValue
    public XPathComparable getXPathComparable() {
        return this;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) {
        return this;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return !this.f102848e ? 1 : 0;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public String show() {
        return getUnicodeStringValue() + "()";
    }

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof BooleanValue) {
            boolean z = this.f102848e;
            if (z == ((BooleanValue) xPathComparable).f102848e) {
                return 0;
            }
            return z ? 1 : -1;
        }
        throw new ClassCastException("Cannot compare xs:boolean to " + xPathComparable);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) {
        return this;
    }

    public BooleanValue(boolean z, AtomicType atomicType) {
        this.f102848e = z;
        this.typeLabel = atomicType;
    }
}
