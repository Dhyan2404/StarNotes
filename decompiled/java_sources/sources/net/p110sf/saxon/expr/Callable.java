package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface Callable {
    Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException;
}
