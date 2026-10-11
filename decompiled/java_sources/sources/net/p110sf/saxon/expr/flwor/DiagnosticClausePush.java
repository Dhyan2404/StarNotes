package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.Trace;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class DiagnosticClausePush extends TuplePush {

    /* renamed from: b */
    public TuplePush f99495b;

    /* renamed from: c */
    public DiagnosticClause f99496c;

    /* renamed from: d */
    public int f99497d;

    public DiagnosticClausePush(Outputter outputter, TuplePush tuplePush, DiagnosticClause diagnosticClause) {
        super(outputter);
        this.f99497d = 1;
        this.f99495b = tuplePush;
        this.f99496c = diagnosticClause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        this.f99495b.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = this.f99496c.getEvaluator().evaluate(this.f99496c.getSequence(), xPathContext).iterate();
        Logger traceFunctionDestination = xPathContext.getController().getTraceFunctionDestination();
        int i = 1;
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                this.f99495b.processTuple(xPathContext);
                this.f99497d++;
                return;
            }
            Trace.traceItem(next, "FLWOR-> " + this.f99497d + "/" + i, traceFunctionDestination);
            i++;
        }
    }
}
