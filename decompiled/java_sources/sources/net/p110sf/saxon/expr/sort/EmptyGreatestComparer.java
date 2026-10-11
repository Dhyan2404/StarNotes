package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class EmptyGreatestComparer implements AtomicComparer {

    /* renamed from: a */
    public final AtomicComparer f100034a;

    public EmptyGreatestComparer(AtomicComparer atomicComparer) {
        this.f100034a = atomicComparer;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        if (atomicValue == null) {
            return atomicValue2 == null ? 0 : 1;
        }
        if (atomicValue2 == null) {
            return -1;
        }
        if (atomicValue.isNaN()) {
            return !atomicValue2.isNaN() ? 1 : 0;
        }
        if (atomicValue2.isNaN()) {
            return -1;
        }
        return this.f100034a.compareAtomicValues(atomicValue, atomicValue2);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        return (atomicValue == null && atomicValue2 == null) || this.f100034a.comparesEqual(atomicValue, atomicValue2);
    }

    public AtomicComparer getBaseComparer() {
        return this.f100034a;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return this.f100034a.getCollator();
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        AtomicComparer provideContext = this.f100034a.provideContext(xPathContext);
        return provideContext != this.f100034a ? new EmptyGreatestComparer(provideContext) : this;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "EG|" + this.f100034a.save();
    }
}
