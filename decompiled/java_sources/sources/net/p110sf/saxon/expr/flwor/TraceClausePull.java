package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class TraceClausePull extends TuplePull {

    /* renamed from: a */
    public final TuplePull f99557a;

    /* renamed from: b */
    public final Clause f99558b;

    /* renamed from: c */
    public final TraceClause f99559c;

    public TraceClausePull(TuplePull tuplePull, TraceClause traceClause, Clause clause) {
        this.f99557a = tuplePull;
        this.f99559c = traceClause;
        this.f99558b = clause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public void close() {
        this.f99557a.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        if (!controller.isTracing()) {
            return this.f99557a.nextTuple(xPathContext);
        }
        ClauseInfo clauseInfo = new ClauseInfo(this.f99558b);
        clauseInfo.setNamespaceResolver(this.f99559c.getNamespaceResolver());
        controller.getTraceListener().enter(clauseInfo, this.f99558b.getTraceInfo(), xPathContext);
        boolean nextTuple = this.f99557a.nextTuple(xPathContext);
        controller.getTraceListener().leave(clauseInfo);
        return nextTuple;
    }
}
