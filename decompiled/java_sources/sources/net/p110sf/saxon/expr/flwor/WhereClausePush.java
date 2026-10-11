package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class WhereClausePush extends TuplePush {

    /* renamed from: b */
    public TuplePush f99568b;

    /* renamed from: c */
    public Expression f99569c;

    public WhereClausePush(Outputter outputter, TuplePush tuplePush, Expression expression) {
        super(outputter);
        this.f99568b = tuplePush;
        this.f99569c = expression;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        this.f99568b.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        if (this.f99569c.effectiveBooleanValue(xPathContext)) {
            this.f99568b.processTuple(xPathContext);
        }
    }
}
