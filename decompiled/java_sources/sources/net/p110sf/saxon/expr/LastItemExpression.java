package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ReversibleIterator;

/* loaded from: classes11.dex */
public final class LastItemExpression extends SingleItemFilter {
    public LastItemExpression(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        LastItemExpression lastItemExpression = new LastItemExpression(getBaseExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, lastItemExpression);
        return lastItemExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getBaseExpression().iterate(xPathContext);
        if (iterate instanceof ReversibleIterator) {
            return ((ReversibleIterator) iterate).getReverseIterator().next();
        }
        Item item = null;
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                return item;
            }
            item = next;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "lastOf";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }
}
