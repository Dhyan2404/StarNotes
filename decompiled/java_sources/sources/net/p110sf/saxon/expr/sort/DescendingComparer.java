package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class DescendingComparer implements AtomicComparer {

    /* renamed from: a */
    public final AtomicComparer f100028a;

    public DescendingComparer(AtomicComparer atomicComparer) {
        this.f100028a = atomicComparer;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        return 0 - this.f100028a.compareAtomicValues(atomicValue, atomicValue2);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        return this.f100028a.comparesEqual(atomicValue, atomicValue2);
    }

    public AtomicComparer getBaseComparer() {
        return this.f100028a;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return this.f100028a.getCollator();
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        AtomicComparer provideContext = this.f100028a.provideContext(xPathContext);
        return provideContext != this.f100028a ? new DescendingComparer(provideContext) : this;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "DESC|" + this.f100028a.save();
    }
}
