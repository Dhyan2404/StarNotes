package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class CollatingAtomicComparer implements AtomicComparer {

    /* renamed from: a */
    public final StringCollator f100016a;

    public CollatingAtomicComparer(StringCollator stringCollator) {
        if (stringCollator == null) {
            this.f100016a = CodepointCollator.getInstance();
        } else {
            this.f100016a = stringCollator;
        }
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) {
        if (atomicValue == null) {
            return atomicValue2 == null ? 0 : -1;
        }
        if (atomicValue2 == null) {
            return 1;
        }
        return this.f100016a.compareStrings(atomicValue.getUnicodeStringValue(), atomicValue2.getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) {
        return compareAtomicValues(atomicValue, atomicValue2) == 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof CollatingAtomicComparer) && this.f100016a.equals(((CollatingAtomicComparer) obj).f100016a);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return this.f100016a;
    }

    public int hashCode() {
        return this.f100016a.hashCode();
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        return this;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "CAC|" + getCollator().getCollationURI();
    }
}
