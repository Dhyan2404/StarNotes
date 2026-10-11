package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;

/* loaded from: classes11.dex */
public class CountClausePush extends TuplePush {

    /* renamed from: b */
    public TuplePush f99487b;

    /* renamed from: c */
    public int f99488c;

    /* renamed from: d */
    public int f99489d;

    public CountClausePush(Outputter outputter, TuplePush tuplePush, CountClause countClause) {
        super(outputter);
        this.f99489d = 0;
        this.f99487b = tuplePush;
        this.f99488c = countClause.getRangeVariable().getLocalSlotNumber();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        this.f99487b.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        int i = this.f99488c;
        int i2 = this.f99489d + 1;
        this.f99489d = i2;
        xPathContext.setLocalVariable(i, new Int64Value(i2));
        this.f99487b.processTuple(xPathContext);
    }
}
