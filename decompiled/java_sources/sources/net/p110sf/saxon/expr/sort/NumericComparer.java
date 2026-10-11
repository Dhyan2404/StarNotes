package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.type.StringToDouble;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class NumericComparer implements AtomicComparer {

    /* renamed from: a */
    public static final NumericComparer f100103a = new NumericComparer();
    protected StringToDouble converter = StringToDouble.getInstance();

    public static NumericComparer getInstance() {
        return f100103a;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) {
        double stringToNumber;
        double d = Double.NaN;
        if (atomicValue instanceof NumericValue) {
            stringToNumber = ((NumericValue) atomicValue).getDoubleValue();
        } else {
            if (atomicValue != null) {
                try {
                    stringToNumber = this.converter.stringToNumber(atomicValue.getUnicodeStringValue());
                } catch (NumberFormatException unused) {
                }
            }
            stringToNumber = Double.NaN;
        }
        if (atomicValue2 instanceof NumericValue) {
            d = ((NumericValue) atomicValue2).getDoubleValue();
        } else if (atomicValue2 != null) {
            try {
                d = this.converter.stringToNumber(atomicValue2.getUnicodeStringValue());
            } catch (NumberFormatException unused2) {
            }
        }
        if (Double.isNaN(stringToNumber)) {
            return Double.isNaN(d) ? 0 : -1;
        }
        if (Double.isNaN(d)) {
            return 1;
        }
        if (stringToNumber < d) {
            return -1;
        }
        return stringToNumber > d ? 1 : 0;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) {
        return compareAtomicValues(atomicValue, atomicValue2) == 0;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        return this;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "NC";
    }
}
