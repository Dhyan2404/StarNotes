package net.p110sf.saxon.functions;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface PushableFunction {
    void process(Outputter outputter, XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException;
}
