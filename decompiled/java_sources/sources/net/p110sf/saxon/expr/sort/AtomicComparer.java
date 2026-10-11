package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public interface AtomicComparer {
    int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException;

    boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) throws NoDynamicContextException;

    StringCollator getCollator();

    AtomicComparer provideContext(XPathContext xPathContext);

    String save();
}
