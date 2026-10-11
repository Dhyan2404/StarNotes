package net.p110sf.saxon.expr;

import com.onyx.android.sdk.base.data.Operators;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Collection;
import net.p110sf.saxon.expr.instruct.Choose;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class AndExpression extends BooleanExpression {
    public AndExpression(Expression expression, Expression expression2) {
        super(expression, 10, expression2);
    }

    public static Expression distribute(Collection<Expression> collection) {
        Expression expression = null;
        if (collection != null) {
            boolean z = true;
            for (Expression expression2 : collection) {
                if (z) {
                    z = false;
                    expression = expression2;
                } else {
                    expression = new AndExpression(expression, expression2);
                }
            }
        }
        return expression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        AndExpression andExpression = new AndExpression(getLhsExpression().copy(rebindingMap), getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, andExpression);
        return andExpression;
    }

    @Override // net.p110sf.saxon.expr.BooleanExpression, net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return getLhsExpression().effectiveBooleanValue(xPathContext) && getRhsExpression().effectiveBooleanValue(xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public double getCost() {
        return getLhsExpression().getCost() + (getRhsExpression().getCost() / 2.0d);
    }

    @Override // net.p110sf.saxon.expr.BooleanExpression, net.p110sf.saxon.expr.Negatable
    public Expression negate() {
        return new OrExpression(SystemFunction.makeCall(Keywords.FUNC_NOT_STRING, getRetainedStaticContext(), getLhsExpression()), SystemFunction.makeCall(Keywords.FUNC_NOT_STRING, getRetainedStaticContext(), getRhsExpression()));
    }

    @Override // net.p110sf.saxon.expr.BooleanExpression, net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        if (!(getRhsExpression() instanceof UserFunctionCall) || !typeHierarchy.isSubType(getRhsExpression().getItemType(), BuiltInAtomicType.BOOLEAN) || ExpressionTool.isLoopingSubexpression(this, null)) {
            return this;
        }
        Expression makeConditional = Choose.makeConditional(getLhsExpression(), getRhsExpression(), Literal.makeLiteral(BooleanValue.FALSE, this));
        ExpressionTool.copyLocationInfo(this, makeConditional);
        return makeConditional;
    }

    @Override // net.p110sf.saxon.expr.BooleanExpression
    public Expression preEvaluate() {
        return (Literal.isConstantBoolean(getLhsExpression(), false) || Literal.isConstantBoolean(getRhsExpression(), false)) ? Literal.makeLiteral(BooleanValue.FALSE, this) : Literal.hasEffectiveBooleanValue(getLhsExpression(), true) ? forceToBoolean(getRhsExpression()) : Literal.hasEffectiveBooleanValue(getRhsExpression(), true) ? forceToBoolean(getLhsExpression()) : this;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        return Operators.AND;
    }
}
