package net.p110sf.saxon.pattern;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.AxisExpression;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.FirstItemExpression;
import net.p110sf.saxon.expr.LastItemExpression;
import net.p110sf.saxon.expr.SlashExpression;
import net.p110sf.saxon.expr.SubscriptExpression;
import net.p110sf.saxon.expr.TailExpression;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class PatternMaker {
    public static Pattern fromExpression(Expression expression, Configuration configuration, boolean z) throws XPathException {
        Pattern pattern = expression.toPattern(configuration);
        ExpressionTool.copyLocationInfo(expression, pattern);
        return pattern;
    }

    public static int getAxisForPathStep(Expression expression) throws XPathException {
        if (expression instanceof AxisExpression) {
            return AxisInfo.inverseAxis[((AxisExpression) expression).getAxis()];
        }
        if (expression instanceof FilterExpression) {
            return getAxisForPathStep(((FilterExpression) expression).getSelectExpression());
        }
        if (expression instanceof FirstItemExpression) {
            return getAxisForPathStep(((FirstItemExpression) expression).getBaseExpression());
        }
        if (expression instanceof LastItemExpression) {
            return getAxisForPathStep(((LastItemExpression) expression).getBaseExpression());
        }
        if (expression instanceof TailExpression) {
            return getAxisForPathStep(((TailExpression) expression).getBaseExpression());
        }
        if (expression instanceof SubscriptExpression) {
            return getAxisForPathStep(((SubscriptExpression) expression).getBaseExpression());
        }
        if (expression instanceof SlashExpression) {
            return getAxisForPathStep(((SlashExpression) expression).getFirstStep());
        }
        if (expression instanceof ContextItemExpression) {
            return 12;
        }
        throw new XPathException("The path in a pattern must contain simple steps");
    }
}
