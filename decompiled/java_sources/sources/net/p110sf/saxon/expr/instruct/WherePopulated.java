package net.p110sf.saxon.expr.instruct;

import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.WherePopulatedOutputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemMappingFunction;
import net.p110sf.saxon.expr.ItemMappingIterator;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.OperandUsage;
import net.p110sf.saxon.expr.UnaryExpression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.HexBinaryValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class WherePopulated extends UnaryExpression implements ItemMappingFunction {
    public WherePopulated(Expression expression) {
        super(expression);
    }

    public static boolean isDeemedEmpty(Item item) {
        if (item instanceof NodeInfo) {
            int nodeKind = ((NodeInfo) item).getNodeKind();
            return (nodeKind == 1 || nodeKind == 9) ? !r0.hasChildNodes() : item.getUnicodeStringValue().length() == 0;
        }
        if ((item instanceof StringValue) || (item instanceof HexBinaryValue) || (item instanceof Base64BinaryValue)) {
            return item.getUnicodeStringValue().length() == 0;
        }
        if (item instanceof MapItem) {
            return ((MapItem) item).isEmpty();
        }
        if (!(item instanceof ArrayItem)) {
            return false;
        }
        Iterator<GroundedValue> it2 = ((ArrayItem) item).members().iterator();
        while (it2.hasNext()) {
            Iterator<? extends Item> it3 = it2.next().asIterable().iterator();
            while (it3.hasNext()) {
                if (!isDeemedEmpty(it3.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return super.computeCardinality() | 8192;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        return new WherePopulated(getBaseExpression().copy(rebindingMap));
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("condCont", this);
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "wherePop";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 6;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return new OperandRole(0, OperandUsage.TRANSMISSION);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "WherePopulated";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return new ItemMappingIterator(getBaseExpression().iterate(xPathContext), this);
    }

    @Override // net.p110sf.saxon.expr.ItemMappingFunction
    public Item mapItem(Item item) throws XPathException {
        if (isDeemedEmpty(item)) {
            return null;
        }
        return item;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        getBaseExpression().process(new WherePopulatedOutputter(outputter), xPathContext);
    }
}
