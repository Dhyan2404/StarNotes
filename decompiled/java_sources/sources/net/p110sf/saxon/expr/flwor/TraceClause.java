package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class TraceClause extends Clause {

    /* renamed from: d */
    public final Clause f99555d;

    /* renamed from: e */
    public NamespaceResolver f99556e;

    public TraceClause(FLWORExpression fLWORExpression, Clause clause) {
        this.f99555d = clause;
        this.f99556e = fLWORExpression.getRetainedStaticContext();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(AbstractLogger.TRACE);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.TRACE;
    }

    public NamespaceResolver getNamespaceResolver() {
        return this.f99556e;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new TraceClausePull(tuplePull, this, this.f99555d);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new TraceClausePush(outputter, tuplePush, this, this.f99555d);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
    }

    public void setNamespaceResolver(NamespaceResolver namespaceResolver) {
        this.f99556e = namespaceResolver;
    }

    public String toString() {
        return AbstractLogger.TRACE;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TraceClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        return new TraceClause(fLWORExpression, this.f99555d);
    }
}
