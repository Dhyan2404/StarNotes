package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.ContextFreeAtomicValue;

/* loaded from: classes11.dex */
public class ContextFreeAtomicComparer implements AtomicComparer {

    /* renamed from: a */
    public static final ContextFreeAtomicComparer f100022a = new ContextFreeAtomicComparer();

    public static ContextFreeAtomicComparer getInstance() {
        return f100022a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) {
        if (atomicValue == 0) {
            return atomicValue2 == 0 ? 0 : -1;
        }
        if (atomicValue2 == 0) {
            return 1;
        }
        return ((ContextFreeAtomicValue) atomicValue).getXPathComparable().compareTo(((ContextFreeAtomicValue) atomicValue2).getXPathComparable());
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
        return "CAVC";
    }
}
