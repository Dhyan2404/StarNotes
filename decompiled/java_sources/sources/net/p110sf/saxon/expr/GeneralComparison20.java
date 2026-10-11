package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.Token;

/* loaded from: classes11.dex */
public class GeneralComparison20 extends GeneralComparison {
    public GeneralComparison20(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        GeneralComparison20 generalComparison20 = new GeneralComparison20(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, generalComparison20);
        generalComparison20.setRetainedStaticContext(getRetainedStaticContext());
        generalComparison20.comparer = this.comparer;
        generalComparison20.singletonOperator = this.singletonOperator;
        generalComparison20.runtimeCheckNeeded = this.runtimeCheckNeeded;
        generalComparison20.comparisonCardinality = this.comparisonCardinality;
        return generalComparison20;
    }

    @Override // net.p110sf.saxon.expr.GeneralComparison
    public GeneralComparison getInverseComparison() {
        GeneralComparison20 generalComparison20 = new GeneralComparison20(getRhsExpression(), Token.inverse(this.operator), getLhsExpression());
        generalComparison20.setRetainedStaticContext(getRetainedStaticContext());
        return generalComparison20;
    }
}
