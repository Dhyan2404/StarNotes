package net.p110sf.saxon.expr;

import com.onyx.android.sdk.base.data.Operators;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class OrExpression extends BooleanExpression {
    public OrExpression(Expression expression, Expression expression2) {
        super(expression, 9, expression2);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        OrExpression orExpression = new OrExpression(getLhsExpression().copy(rebindingMap), getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, orExpression);
        return orExpression;
    }

    @Override // net.p110sf.saxon.expr.BooleanExpression, net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return getLhsExpression().effectiveBooleanValue(xPathContext) || getRhsExpression().effectiveBooleanValue(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public double getCost() {
        return getLhsExpression().getCost() + (getRhsExpression().getCost() / 2.0d);
    }

    @Override // net.p110sf.saxon.expr.BooleanExpression, net.p110sf.saxon.expr.Negatable
    public Expression negate() {
        AndExpression andExpression = new AndExpression(SystemFunction.makeCall(Keywords.FUNC_NOT_STRING, getRetainedStaticContext(), getLhsExpression()), SystemFunction.makeCall(Keywords.FUNC_NOT_STRING, getRetainedStaticContext(), getRhsExpression()));
        ExpressionTool.copyLocationInfo(this, andExpression);
        return andExpression;
    }

    @Override // net.p110sf.saxon.expr.BooleanExpression, net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression tryGeneralComparison;
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        return optimize != this ? optimize : ((getParentExpression() instanceof OrExpression) || (tryGeneralComparison = expressionVisitor.obtainOptimizer().tryGeneralComparison(expressionVisitor, contextItemStaticInfo, this)) == null || tryGeneralComparison == this) ? this : tryGeneralComparison;
    }

    @Override // net.p110sf.saxon.expr.BooleanExpression
    public Expression preEvaluate() {
        return (Literal.hasEffectiveBooleanValue(getLhsExpression(), true) || Literal.hasEffectiveBooleanValue(getRhsExpression(), true)) ? Literal.makeLiteral(BooleanValue.TRUE, this) : Literal.hasEffectiveBooleanValue(getLhsExpression(), false) ? forceToBoolean(getRhsExpression()) : Literal.hasEffectiveBooleanValue(getRhsExpression(), false) ? forceToBoolean(getLhsExpression()) : this;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        return Operators.OR;
    }
}
