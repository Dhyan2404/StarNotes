package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class DoubleSortComparer implements AtomicComparer {

    /* renamed from: a */
    public static final DoubleSortComparer f100033a = new DoubleSortComparer();

    public static DoubleSortComparer getInstance() {
        return f100033a;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) {
        if (atomicValue == null) {
            return atomicValue2 == null ? 0 : -1;
        }
        if (atomicValue2 == null) {
            return 1;
        }
        NumericValue numericValue = (NumericValue) atomicValue;
        NumericValue numericValue2 = (NumericValue) atomicValue2;
        if (numericValue.isNaN()) {
            return numericValue2.isNaN() ? 0 : -1;
        }
        if (numericValue2.isNaN()) {
            return 1;
        }
        return numericValue.compareTo((XPathComparable) numericValue2);
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
        return "DblSC";
    }
}
