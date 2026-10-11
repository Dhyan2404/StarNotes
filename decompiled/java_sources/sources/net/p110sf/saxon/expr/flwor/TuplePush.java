package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class TuplePush {

    /* renamed from: a */
    public final Outputter f99564a;

    public TuplePush(Outputter outputter) {
        this.f99564a = outputter;
    }

    public void close() throws XPathException {
    }

    public Outputter getOutputter() {
        return this.f99564a;
    }

    public abstract void processTuple(XPathContext xPathContext) throws XPathException;
}
