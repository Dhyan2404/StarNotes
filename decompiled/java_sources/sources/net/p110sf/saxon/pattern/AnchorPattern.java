package net.p110sf.saxon.pattern;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class AnchorPattern extends Pattern {

    /* renamed from: q */
    public static final AnchorPattern f100879q = new AnchorPattern();

    public static AnchorPattern getInstance() {
        return f100879q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.anchor");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return AnyNodeTest.getInstance();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return UType.PARENT_NODE_KINDS;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        throw new AssertionError();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        return nodeInfo2 == null || nodeInfo == nodeInfo2;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return ".";
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }
}
