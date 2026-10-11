package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.GeneralNodePattern;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.pattern.SimplePositionalPattern;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public final class FirstItemExpression extends SingleItemFilter {
    public FirstItemExpression(Expression expression) {
        super(expression);
    }

    public static Expression makeFirstItemExpression(Expression expression) {
        return expression instanceof FirstItemExpression ? expression : new FirstItemExpression(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        FirstItemExpression firstItemExpression = new FirstItemExpression(getBaseExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, firstItemExpression);
        return firstItemExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getBaseExpression().iterate(xPathContext);
        Item next = iterate.next();
        iterate.close();
        return next;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "first";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "FirstItemExpression";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        Pattern pattern = getBaseExpression().toPattern(configuration);
        ItemType itemType = pattern.getItemType();
        if (!(itemType instanceof NodeTest)) {
            return pattern;
        }
        Expression baseExpression = getBaseExpression();
        return ((baseExpression instanceof AxisExpression) && ((AxisExpression) baseExpression).getAxis() == 3 && (pattern instanceof NodeTestPattern)) ? new SimplePositionalPattern((NodeTest) itemType, 1) : new GeneralNodePattern(this, (NodeTest) itemType);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBaseExpression().toShortString() + "[1]";
    }
}
