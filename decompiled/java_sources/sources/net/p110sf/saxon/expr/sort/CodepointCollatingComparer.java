package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class CodepointCollatingComparer implements AtomicComparer {

    /* renamed from: a */
    public static final CodepointCollator f100013a = CodepointCollator.getInstance();

    /* renamed from: b */
    public static final CodepointCollatingComparer f100014b = new CodepointCollatingComparer();

    public static CodepointCollatingComparer getInstance() {
        return f100014b;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) {
        if (atomicValue == null) {
            return atomicValue2 == null ? 0 : -1;
        }
        if (atomicValue2 == null) {
            return 1;
        }
        return f100013a.compareStrings(((StringValue) atomicValue).getUnicodeStringValue(), ((StringValue) atomicValue2).getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) {
        return ((StringValue) atomicValue).equals((StringValue) atomicValue2);
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return f100013a;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        return this;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "CCC";
    }
}
