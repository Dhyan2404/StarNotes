package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CountClause extends Clause {

    /* renamed from: d */
    public LocalVariableBinding f99483d;

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("count");
        expressionPresenter.emitAttribute("var", getRangeVariable().getVariableQName());
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.COUNT;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new CountClausePull(tuplePull, this);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new CountClausePush(outputter, tuplePush, this);
    }

    public LocalVariableBinding getRangeVariable() {
        return this.f99483d;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public LocalVariableBinding[] getRangeVariables() {
        return new LocalVariableBinding[]{this.f99483d};
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
    }

    public void setRangeVariable(LocalVariableBinding localVariableBinding) {
        this.f99483d = localVariableBinding;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("count $");
        sb.append(this.f99483d.getVariableQName().getDisplayName());
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public CountClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        CountClause countClause = new CountClause();
        countClause.f99483d = this.f99483d.copy();
        countClause.setPackageData(getPackageData());
        countClause.setLocation(getLocation());
        return countClause;
    }
}
