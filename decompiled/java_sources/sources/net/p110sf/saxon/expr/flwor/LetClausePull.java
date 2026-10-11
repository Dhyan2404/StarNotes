package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class LetClausePull extends TuplePull {

    /* renamed from: a */
    public TuplePull f99525a;

    /* renamed from: b */
    public LetClause f99526b;

    public LetClausePull(TuplePull tuplePull, LetClause letClause) {
        this.f99525a = tuplePull;
        this.f99526b = letClause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.f99525a.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        if (!this.f99525a.nextTuple(xPathContext)) {
            return false;
        }
        xPathContext.setLocalVariable(this.f99526b.getRangeVariable().getLocalSlotNumber(), this.f99526b.getEvaluator().evaluate(this.f99526b.getSequence(), xPathContext));
        return true;
    }
}
