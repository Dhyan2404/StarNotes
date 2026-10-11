package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.om.AtomicSequence;

/* loaded from: classes11.dex */
public class SimpleTypeIdentityComparison extends SimpleTypeComparison {

    /* renamed from: b */
    public static final SimpleTypeIdentityComparison f100109b = new SimpleTypeIdentityComparison();

    public static SimpleTypeIdentityComparison getInstance() {
        return f100109b;
    }

    @Override // net.p110sf.saxon.expr.sort.SimpleTypeComparison, net.p110sf.saxon.expr.sort.EqualityMatcher
    public boolean equal(AtomicSequence atomicSequence, AtomicSequence atomicSequence2) {
        return super.equalOrIdentical(atomicSequence, atomicSequence2);
    }
}
