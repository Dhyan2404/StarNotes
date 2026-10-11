package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class LetClausePush extends TuplePush {

    /* renamed from: b */
    public TuplePush f99527b;

    /* renamed from: c */
    public LetClause f99528c;

    public LetClausePush(Outputter outputter, TuplePush tuplePush, LetClause letClause) {
        super(outputter);
        this.f99527b = tuplePush;
        this.f99528c = letClause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        this.f99527b.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        xPathContext.setLocalVariable(this.f99528c.getRangeVariable().getLocalSlotNumber(), this.f99528c.getEvaluator().evaluate(this.f99528c.getSequence(), xPathContext));
        this.f99527b.processTuple(xPathContext);
    }
}
