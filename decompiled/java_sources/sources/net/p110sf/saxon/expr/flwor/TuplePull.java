package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class TuplePull {
    public void close() {
    }

    public abstract boolean nextTuple(XPathContext xPathContext) throws XPathException;
}
