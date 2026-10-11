package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class RootExpression extends Expression {

    /* renamed from: n */
    public boolean f99365n = true;

    /* renamed from: o */
    public boolean f99366o = false;

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        if (pathMapNodeSet == null) {
            ContextItemExpression contextItemExpression = new ContextItemExpression();
            ExpressionTool.copyLocationInfo(this, contextItemExpression);
            pathMapNodeSet = new PathMap.PathMapNodeSet(pathMap.makeNewRoot(contextItemExpression));
        }
        return pathMapNodeSet.createArc(1, NodeKindTest.DOCUMENT);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return -1655731910;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return 25362432;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        RootExpression rootExpression = new RootExpression();
        ExpressionTool.copyLocationInfo(this, rootExpression);
        return rootExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        return getNode(xPathContext) != null;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return obj instanceof RootExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("root", this);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "root";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 16;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.DOCUMENT;
    }

    public NodeInfo getNode(XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            dynamicError("Finding root of tree: the context item is absent", "XPDY0002", xPathContext);
        }
        if (!(contextItem instanceof NodeInfo)) {
            typeError("Finding root of tree: the context item is not a node", "XPTY0020", xPathContext);
            return null;
        }
        NodeInfo root = ((NodeInfo) contextItem).getRoot();
        if (root.getNodeKind() != 9) {
            dynamicError("The root of the tree containing the context item is not a document node", "XPDY0050", xPathContext);
        }
        return root;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.DOCUMENT;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "RootExpression";
    }

    public boolean isContextPossiblyUndefined() {
        return this.f99365n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        return SingletonIterator.makeIterator(getNode(xPathContext));
    }

    public String noContextMessage() {
        return "Leading '/' selects nothing";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return typeCheck(expressionVisitor, contextItemStaticInfo);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        return new NodeTestPattern(NodeKindTest.DOCUMENT);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return "(/)";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        if (contextItemStaticInfo == null || contextItemStaticInfo.getItemType() == null || contextItemStaticInfo.getItemType().equals(ErrorType.getInstance())) {
            XPathException xPathException = new XPathException(noContextMessage() + ": the context item is absent");
            xPathException.setErrorCode("XPDY0002");
            xPathException.setIsTypeError(true);
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        if (!this.f99366o && contextItemStaticInfo.isParentless() && typeHierarchy.relationship(contextItemStaticInfo.getItemType(), NodeKindTest.DOCUMENT) == Affinity.DISJOINT) {
            expressionVisitor.issueWarning(noContextMessage() + ": the context item is parentless and is not a document node", getLocation());
            this.f99366o = true;
        }
        this.f99365n = contextItemStaticInfo.isPossiblyAbsent();
        if (typeHierarchy.isSubType(contextItemStaticInfo.getItemType(), NodeKindTest.DOCUMENT)) {
            ContextItemExpression contextItemExpression = new ContextItemExpression();
            ExpressionTool.copyLocationInfo(this, contextItemExpression);
            contextItemExpression.setStaticInfo(contextItemStaticInfo);
            return contextItemExpression;
        }
        if (typeHierarchy.relationship(contextItemStaticInfo.getItemType(), AnyNodeTest.getInstance()) != Affinity.DISJOINT) {
            return this;
        }
        XPathException xPathException2 = new XPathException(noContextMessage() + ": the context item is not a node");
        xPathException2.setErrorCode("XPTY0020");
        xPathException2.setIsTypeError(true);
        xPathException2.setLocation(getLocation());
        throw xPathException2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public NodeInfo evaluateItem(XPathContext xPathContext) throws XPathException {
        return getNode(xPathContext);
    }
}
