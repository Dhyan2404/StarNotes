package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public interface SortKeyEvaluator {
    AtomicValue evaluateSortKey(int i, XPathContext xPathContext) throws XPathException;
}
