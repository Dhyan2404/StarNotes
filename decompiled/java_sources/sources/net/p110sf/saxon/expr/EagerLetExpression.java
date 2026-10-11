package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class EagerLetExpression extends LetExpression {
    @Override // net.p110sf.saxon.expr.LetExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize == this) {
            setEvaluator(ExpressionTool.eagerEvaluator(getSequence()));
        }
        return optimize;
    }
}
