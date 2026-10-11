package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.CalendarValue;

/* loaded from: classes11.dex */
public class CalendarValueComparer implements AtomicComparer {

    /* renamed from: a */
    public final transient XPathContext f100009a;

    public CalendarValueComparer(XPathContext xPathContext) {
        this.f100009a = xPathContext;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        if (atomicValue == null) {
            return atomicValue2 == null ? 0 : -1;
        }
        if (atomicValue2 == null) {
            return 1;
        }
        return ((CalendarValue) atomicValue).compareTo((CalendarValue) atomicValue2, this.f100009a.getImplicitTimezone());
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException {
        return compareAtomicValues(atomicValue, atomicValue2) == 0;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        return new CalendarValueComparer(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "CalVC";
    }
}
