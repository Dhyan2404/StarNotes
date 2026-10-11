package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;

/* loaded from: classes11.dex */
public class SingletonIntersectExpression extends VennExpression {
    public SingletonIntersectExpression(Expression expression, int i, Expression expression2) {
        super(expression, i, expression2);
    }

    public static boolean containsNode(SequenceIterator sequenceIterator, NodeInfo nodeInfo) throws XPathException {
        NodeInfo nodeInfo2;
        do {
            nodeInfo2 = (NodeInfo) sequenceIterator.next();
            if (nodeInfo2 == null) {
                return false;
            }
        } while (!nodeInfo2.equals(nodeInfo));
        sequenceIterator.close();
        return true;
    }

    @Override // net.p110sf.saxon.expr.VennExpression, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        SingletonIntersectExpression singletonIntersectExpression = new SingletonIntersectExpression(getLhsExpression().copy(rebindingMap), this.operator, getRhsExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, singletonIntersectExpression);
        return singletonIntersectExpression;
    }

    @Override // net.p110sf.saxon.expr.BinaryExpression
    public String displayOperator() {
        return "among";
    }

    @Override // net.p110sf.saxon.expr.VennExpression, net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        NodeInfo nodeInfo = (NodeInfo) getLhsExpression().evaluateItem(xPathContext);
        return nodeInfo != null && containsNode(getRhsExpression().iterate(xPathContext), nodeInfo);
    }

    @Override // net.p110sf.saxon.expr.VennExpression, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "singleton-intersect";
    }

    @Override // net.p110sf.saxon.expr.VennExpression, net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        NodeInfo nodeInfo;
        NodeInfo nodeInfo2 = (NodeInfo) getLhsExpression().evaluateItem(xPathContext);
        if (nodeInfo2 == null) {
            return EmptyIterator.getInstance();
        }
        SequenceIterator iterate = getRhsExpression().iterate(xPathContext);
        do {
            nodeInfo = (NodeInfo) iterate.next();
            if (nodeInfo == null) {
                return EmptyIterator.getInstance();
            }
        } while (!nodeInfo.equals(nodeInfo2));
        iterate.close();
        return SingletonIterator.makeIterator(nodeInfo2);
    }

    @Override // net.p110sf.saxon.expr.VennExpression, net.p110sf.saxon.expr.BinaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    @Override // net.p110sf.saxon.expr.VennExpression, net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        return this;
    }

    @Override // net.p110sf.saxon.expr.VennExpression, net.p110sf.saxon.expr.BinaryExpression
    public String tag() {
        return "among";
    }
}
