package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class TextComparer implements AtomicComparer {

    /* renamed from: a */
    public final AtomicComparer f100119a;

    public TextComparer(AtomicComparer atomicComparer) {
        this.f100119a = atomicComparer;
    }

    /* renamed from: a */
    public final StringValue m62935a(AtomicValue atomicValue) {
        return new StringValue(atomicValue == null ? EmptyUnicodeString.getInstance() : atomicValue.getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) throws ClassCastException, NoDynamicContextException {
        return this.f100119a.compareAtomicValues(m62935a(atomicValue), m62935a(atomicValue2));
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        return compareAtomicValues(atomicValue, atomicValue2) == 0;
    }

    public AtomicComparer getBaseComparer() {
        return this.f100119a;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return this.f100119a.getCollator();
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        AtomicComparer provideContext = this.f100119a.provideContext(xPathContext);
        return provideContext != this.f100119a ? new TextComparer(provideContext) : this;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "TEXT|" + this.f100119a.save();
    }
}
