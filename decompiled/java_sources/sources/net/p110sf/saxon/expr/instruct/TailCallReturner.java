package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface TailCallReturner {
    TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException;
}
