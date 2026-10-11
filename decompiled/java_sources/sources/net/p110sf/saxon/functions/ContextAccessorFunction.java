package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class ContextAccessorFunction extends SystemFunction {
    public abstract Function bindContext(XPathContext xPathContext) throws XPathException;

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return bindContext(xPathContext).call(xPathContext, sequenceArr);
    }
}
