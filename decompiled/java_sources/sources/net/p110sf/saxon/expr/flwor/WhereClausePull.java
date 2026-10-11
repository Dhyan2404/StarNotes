package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class WhereClausePull extends TuplePull {

    /* renamed from: a */
    public TuplePull f99566a;

    /* renamed from: b */
    public Expression f99567b;

    public WhereClausePull(TuplePull tuplePull, Expression expression) {
        this.f99566a = tuplePull;
        this.f99567b = expression;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.f99566a.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        while (this.f99566a.nextTuple(xPathContext)) {
            if (this.f99567b.effectiveBooleanValue(xPathContext)) {
                return true;
            }
        }
        return false;
    }
}
