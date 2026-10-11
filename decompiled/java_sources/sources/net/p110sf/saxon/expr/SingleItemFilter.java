package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public abstract class SingleItemFilter extends UnaryExpression {
    public SingleItemFilter(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 24576;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().optimize(expressionVisitor, contextItemStaticInfo);
        Expression baseExpression = getBaseExpression();
        return !Cardinality.allowsMany(baseExpression.getCardinality()) ? baseExpression : super.optimize(expressionVisitor, contextItemStaticInfo);
    }
}
