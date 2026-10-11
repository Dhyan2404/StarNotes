package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class DecimalSortComparer implements AtomicComparer {

    /* renamed from: a */
    public static final DecimalSortComparer f100027a = new DecimalSortComparer();

    public static DecimalSortComparer getDecimalSortComparerInstance() {
        return f100027a;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) {
        if (atomicValue == null) {
            return atomicValue2 == null ? 0 : -1;
        }
        if (atomicValue2 == null) {
            return 1;
        }
        return ((NumericValue) atomicValue).compareTo((XPathComparable) atomicValue2);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) {
        return atomicValue.equals(atomicValue2);
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
        return "DecSC";
    }
}
