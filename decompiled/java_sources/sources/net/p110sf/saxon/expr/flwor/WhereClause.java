package net.p110sf.saxon.expr.flwor;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.Clause;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class WhereClause extends Clause {

    /* renamed from: d */
    public final Operand f99565d;

    public WhereClause(FLWORExpression fLWORExpression, Expression expression) {
        this.f99565d = new Operand(fLWORExpression, expression, OperandRole.INSPECT);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        getPredicate().addToPathMap(pathMap, pathMapNodeSet);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void explain(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("where");
        getPredicate().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void gatherVariableReferences(ExpressionVisitor expressionVisitor, Binding binding, List<VariableReference> list) {
        ExpressionTool.gatherVariableReferences(getPredicate(), binding, list);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Clause.ClauseName getClauseKey() {
        return Clause.ClauseName.WHERE;
    }

    public Expression getPredicate() {
        return this.f99565d.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePull getPullStream(TuplePull tuplePull, XPathContext xPathContext) {
        return new WhereClausePull(tuplePull, getPredicate());
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public TuplePush getPushStream(TuplePush tuplePush, Outputter outputter, XPathContext xPathContext) {
        return new WhereClausePush(outputter, tuplePush, getPredicate());
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public Map<String, Object> getTraceInfo() {
        HashMap hashMap = new HashMap(1);
        hashMap.put(Constants.ATTRNAME_CONDITION, getPredicate().toShortString());
        return hashMap;
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void processOperands(OperandProcessor operandProcessor) throws XPathException {
        operandProcessor.processOperand(this.f99565d);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void refineVariableType(ExpressionVisitor expressionVisitor, List<VariableReference> list, Expression expression) {
        ItemType itemType = getPredicate().getItemType();
        Iterator<VariableReference> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().refineVariableType(itemType, getPredicate().getCardinality(), getPredicate() instanceof Literal ? ((Literal) getPredicate()).getGroundedValue() : null, getPredicate().getSpecialProperties());
            ExpressionTool.resetStaticProperties(expression);
        }
    }

    public void setPredicate(Expression expression) {
        this.f99565d.setChildExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void setRepeated(boolean z) {
        super.setRepeated(z);
        if (z) {
            this.f99565d.setOperandRole(OperandRole.REPEAT_INSPECT);
        }
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public String toShortString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("where ");
        sb.append(getPredicate().toShortString());
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("where ");
        sb.append(getPredicate().toString());
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public void typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        super.typeCheck(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.flwor.Clause
    public WhereClause copy(FLWORExpression fLWORExpression, RebindingMap rebindingMap) {
        WhereClause whereClause = new WhereClause(fLWORExpression, getPredicate().copy(rebindingMap));
        whereClause.setLocation(getLocation());
        whereClause.setPackageData(getPackageData());
        return whereClause;
    }
}
