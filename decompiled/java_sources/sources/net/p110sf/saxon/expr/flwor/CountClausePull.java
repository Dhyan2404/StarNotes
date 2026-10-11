package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;

/* loaded from: classes11.dex */
public class CountClausePull extends TuplePull {

    /* renamed from: a */
    public TuplePull f99484a;

    /* renamed from: b */
    public int f99485b;

    /* renamed from: c */
    public int f99486c = 0;

    public CountClausePull(TuplePull tuplePull, CountClause countClause) {
        this.f99484a = tuplePull;
        this.f99485b = countClause.getRangeVariable().getLocalSlotNumber();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        if (!this.f99484a.nextTuple(xPathContext)) {
            this.f99486c = 0;
            xPathContext.setLocalVariable(this.f99485b, Int64Value.ZERO);
            return false;
        }
        int i = this.f99485b;
        int i2 = this.f99486c + 1;
        this.f99486c = i2;
        xPathContext.setLocalVariable(i, new Int64Value(i2));
        return true;
    }
}
