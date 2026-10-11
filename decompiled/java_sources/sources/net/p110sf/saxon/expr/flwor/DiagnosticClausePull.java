package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.Trace;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class DiagnosticClausePull extends TuplePull {

    /* renamed from: a */
    public TuplePull f99492a;

    /* renamed from: b */
    public DiagnosticClause f99493b;

    /* renamed from: c */
    public int f99494c = 1;

    public DiagnosticClausePull(TuplePull tuplePull, DiagnosticClause diagnosticClause) {
        this.f99492a = tuplePull;
        this.f99493b = diagnosticClause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.f99492a.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        if (!this.f99492a.nextTuple(xPathContext)) {
            return false;
        }
        SequenceIterator iterate = this.f99493b.getEvaluator().evaluate(this.f99493b.getSequence(), xPathContext).iterate();
        Logger traceFunctionDestination = xPathContext.getController().getTraceFunctionDestination();
        int i = 1;
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                this.f99494c++;
                return true;
            }
            Trace.traceItem(next, "FLWOR<- " + this.f99494c + "/" + i, traceFunctionDestination);
            i++;
        }
    }
}
