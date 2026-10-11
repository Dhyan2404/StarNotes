package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class TraceClausePush extends TuplePush {

    /* renamed from: b */
    public final TuplePush f99560b;

    /* renamed from: c */
    public TraceClause f99561c;

    /* renamed from: d */
    public final Clause f99562d;

    public TraceClausePush(Outputter outputter, TuplePush tuplePush, TraceClause traceClause, Clause clause) {
        super(outputter);
        this.f99560b = tuplePush;
        this.f99561c = traceClause;
        this.f99562d = clause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        this.f99560b.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        Controller controller = xPathContext.getController();
        if (!controller.isTracing()) {
            this.f99560b.processTuple(xPathContext);
            return;
        }
        ClauseInfo clauseInfo = new ClauseInfo(this.f99562d);
        clauseInfo.setNamespaceResolver(this.f99561c.getNamespaceResolver());
        controller.getTraceListener().enter(clauseInfo, this.f99562d.getTraceInfo(), xPathContext);
        this.f99560b.processTuple(xPathContext);
        controller.getTraceListener().leave(clauseInfo);
    }
}
