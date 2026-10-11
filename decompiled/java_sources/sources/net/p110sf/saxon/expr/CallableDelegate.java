package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CallableDelegate implements Callable {

    /* renamed from: e */
    public final Lambda f99196e;

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface Lambda {
        Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException;
    }

    public CallableDelegate(Lambda lambda) {
        this.f99196e = lambda;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return this.f99196e.call(xPathContext, sequenceArr);
    }
}
