package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class EmptyTextNodeRemover extends UnaryExpression implements ItemMappingFunction {
    public EmptyTextNodeRemover(Expression expression) {
        super(expression);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality() | 8192;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        EmptyTextNodeRemover emptyTextNodeRemover = new EmptyTextNodeRemover(getBaseExpression().copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, emptyTextNodeRemover);
        return emptyTextNodeRemover;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "emptyTextNodeRemover";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 26;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getBaseExpression().getItemType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SAME_FOCUS_ACTION;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "EmptyTextNodeRemover";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return new ItemMappingIterator(getBaseExpression().iterate(xPathContext), this);
    }

    @Override // net.p110sf.saxon.expr.ItemMappingFunction
    public Item mapItem(Item item) throws XPathException {
        if ((item instanceof NodeInfo) && ((NodeInfo) item).getNodeKind() == 3 && item.getUnicodeStringValue().isEmpty()) {
            return null;
        }
        return item;
    }
}
