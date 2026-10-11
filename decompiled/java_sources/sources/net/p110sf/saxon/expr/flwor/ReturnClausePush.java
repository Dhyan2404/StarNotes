package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ReturnClausePush extends TuplePush {

    /* renamed from: b */
    public final Expression f99553b;

    public ReturnClausePush(Outputter outputter, Expression expression) {
        super(outputter);
        this.f99553b = expression;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        this.f99553b.process(getOutputter(), xPathContext);
    }
}
