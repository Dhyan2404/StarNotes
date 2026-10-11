package net.p110sf.saxon.expr;

import androidx.room.FtsOptions;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.MultipleNodeKindTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.NodeTestPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public final class AxisExpression extends Expression {

    /* renamed from: n */
    public int f99180n;

    /* renamed from: o */
    public NodeTest f99181o;

    /* renamed from: p */
    public ItemType f99182p = null;

    /* renamed from: q */
    public ContextItemStaticInfo f99183q = ContextItemStaticInfo.DEFAULT;

    /* renamed from: r */
    public boolean f99184r = false;

    /* renamed from: s */
    public boolean f99185s = false;

    public AxisExpression(int i, NodeTest nodeTest) {
        this.f99180n = i;
        this.f99181o = nodeTest;
    }

    /* renamed from: e */
    public static String m62543e(StructuredQName structuredQName, StaticContext staticContext) {
        String uri = structuredQName.getURI();
        if (uri.equals("")) {
            return structuredQName.getLocalPart();
        }
        NamespaceResolver namespaceResolver = staticContext.getNamespaceResolver();
        Iterator<String> iteratePrefixes = namespaceResolver.iteratePrefixes();
        while (iteratePrefixes.hasNext()) {
            String next = iteratePrefixes.next();
            if (uri.equals(namespaceResolver.getURIForPrefix(next, true))) {
                if (!next.isEmpty()) {
                    return next + ":" + structuredQName.getLocalPart();
                }
                return "Q{" + uri + "}" + structuredQName.getLocalPart();
            }
        }
        return "Q{" + uri + "}" + structuredQName.getLocalPart();
    }

    /* renamed from: g */
    public static String m62544g(SchemaType schemaType) {
        String description = schemaType.getDescription();
        if (description.startsWith("of element")) {
            return "a valid element named" + description.substring(10);
        }
        if (description.startsWith("of attribute")) {
            return "a valid attribute named" + description.substring(12);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("a node with ");
        sb.append(schemaType.isSimpleType() ? FtsOptions.TOKENIZER_SIMPLE : "complex");
        sb.append(" type ");
        sb.append(description);
        return sb.toString();
    }

    /* renamed from: h */
    public static boolean m62545h(NodeTest nodeTest) {
        if (nodeTest == null) {
            return false;
        }
        UType uType = nodeTest.getUType();
        if (uType.overlaps(UType.ELEMENT)) {
            return false;
        }
        UType uType2 = UType.DOCUMENT;
        if (uType.overlaps(uType2)) {
            return uType.equals(uType2);
        }
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        if (pathMapNodeSet == null) {
            pathMapNodeSet = new PathMap.PathMapNodeSet(pathMap.makeNewRoot(new ContextItemExpression()));
        }
        int i = this.f99180n;
        NodeTest nodeTest = this.f99181o;
        if (nodeTest == null) {
            nodeTest = AnyNodeTest.getInstance();
        }
        return pathMapNodeSet.createArc(i, nodeTest);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final int computeCardinality() {
        NodeTest anyNodeTest;
        NodeTest nodeTest = this.f99181o;
        ItemType itemType = this.f99183q.getItemType();
        if (!(itemType instanceof NodeTest)) {
            if (itemType instanceof AnyItemType) {
                anyNodeTest = AnyNodeTest.getInstance();
            }
        }
        anyNodeTest = (NodeTest) itemType;
        int i = this.f99180n;
        if (i == 2 && (nodeTest instanceof NameTest)) {
            SchemaType contentType = anyNodeTest.getContentType();
            if (!(contentType instanceof ComplexType)) {
                return contentType instanceof SimpleType ? 8192 : 24576;
            }
            try {
                return ((ComplexType) contentType).getAttributeUseCardinality(nodeTest.getMatchingNodeName());
            } catch (SchemaException unused) {
                return 24576;
            }
        }
        if (i != 4 || !(nodeTest instanceof NameTest) || nodeTest.getPrimitiveType() != 1) {
            return this.f99180n == 12 ? 24576 : 57344;
        }
        SchemaType contentType2 = anyNodeTest.getContentType();
        if (!(contentType2 instanceof ComplexType)) {
            return 8192;
        }
        try {
            return ((ComplexType) contentType2).getDescendantElementCardinality(nodeTest.getFingerprint());
        } catch (SchemaException unused2) {
            return 57344;
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        int i = (this.f99180n + 9375162) << 20;
        NodeTest nodeTest = this.f99181o;
        return nodeTest != null ? (i ^ (nodeTest.getPrimitiveType() << 16)) ^ this.f99181o.getFingerprint() : i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        boolean[] zArr = AxisInfo.isForwards;
        int i = this.f99180n;
        int i2 = (zArr[i] ? 131072 : 262144) | 25231360 | ((AxisInfo.isPeerAxis[i] || m62545h(this.f99181o)) ? 524288 : 0);
        boolean[] zArr2 = AxisInfo.isSubtreeAxis;
        int i3 = this.f99180n;
        return i2 | (zArr2[i3] ? 1048576 : 0) | ((i3 == 2 || i3 == 8) ? 2097152 : 0);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        AxisExpression axisExpression = new AxisExpression(this.f99180n, this.f99181o);
        axisExpression.f99182p = this.f99182p;
        axisExpression.f99183q = this.f99183q;
        axisExpression.f99184r = this.f99184r;
        axisExpression.f99185s = this.f99185s;
        ExpressionTool.copyLocationInfo(this, axisExpression);
        return axisExpression;
    }

    /* JADX WARN: Code restructure failed: missing block: B:205:0x0495, code lost:
    
        if (r7 == 5) goto L202;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.p110sf.saxon.expr.Expression m62546d(net.p110sf.saxon.expr.parser.ExpressionVisitor r20, net.p110sf.saxon.expr.parser.ContextItemStaticInfo r21, boolean r22) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 2079
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.expr.AxisExpression.m62546d(net.sf.saxon.expr.parser.ExpressionVisitor, net.sf.saxon.expr.parser.ContextItemStaticInfo, boolean):net.sf.saxon.expr.Expression");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof AxisExpression) {
            AxisExpression axisExpression = (AxisExpression) obj;
            if (this.f99180n == axisExpression.f99180n && Objects.equals(this.f99181o, axisExpression.f99181o)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("axis", this);
        expressionPresenter.emitAttribute("name", AxisInfo.axisName[this.f99180n]);
        ItemType itemType = this.f99181o;
        if (itemType == null) {
            itemType = AnyNodeTest.getInstance();
        }
        expressionPresenter.emitAttribute("nodeTest", AlphaCode.fromItemType(itemType));
        expressionPresenter.endElement();
    }

    public int getAxis() {
        return this.f99180n;
    }

    public ContextItemStaticInfo getContextItemStaticInfo() {
        return this.f99183q;
    }

    public ItemType getContextItemType() {
        return this.f99183q.getItemType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public double getCost() {
        int i = this.f99180n;
        if (i == 0 || i == 1) {
            return 5.0d;
        }
        if (i == 2) {
            return 1.0d;
        }
        if (i == 3 || i == 7) {
            return 5.0d;
        }
        if (i == 9) {
            return 1.0d;
        }
        if (i != 11) {
            return i != 12 ? 20.0d : 1.0d;
        }
        return 5.0d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "axisStep";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final ItemType getItemType() {
        ItemType itemType = this.f99182p;
        if (itemType != null) {
            return itemType;
        }
        short s = AxisInfo.principalNodeType[this.f99180n];
        if (s == 2 || s == 13) {
            return NodeKindTest.makeNodeKindTest(s);
        }
        NodeTest nodeTest = this.f99181o;
        return nodeTest == null ? AnyNodeTest.getInstance() : nodeTest;
    }

    public NodeTest getNodeTest() {
        return this.f99181o;
    }

    public Set<Expression> getPreconditions() {
        HashSet hashSet = new HashSet(1);
        Expression copy = copy(new RebindingMap());
        copy.setRetainedStaticContext(getRetainedStaticContext());
        hashSet.add(copy);
        return hashSet;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        UType targetUType = AxisInfo.getTargetUType(uType, this.f99180n);
        NodeTest nodeTest = this.f99181o;
        return nodeTest == null ? targetUType : targetUType.intersection(nodeTest.getUType());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "AxisExpression";
    }

    /* renamed from: i */
    public final NodeTest m62547i(IntHashSet intHashSet, NamePool namePool) {
        IntIterator it2 = intHashSet.iterator();
        NodeTest nodeTest = null;
        while (it2.hasNext()) {
            NameTest nameTest = new NameTest(1, it2.next(), namePool);
            nodeTest = nodeTest == null ? nameTest : new CombinedNodeTest(nodeTest, 1, nameTest);
        }
        return nodeTest;
    }

    public boolean isContextPossiblyUndefined() {
        return this.f99183q.isPossiblyAbsent();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isSubtreeExpression() {
        return AxisInfo.isSubtreeAxis[this.f99180n];
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem != null) {
            try {
                NodeTest nodeTest = this.f99181o;
                if (nodeTest == null) {
                    return ((NodeInfo) contextItem).iterateAxis(this.f99180n);
                }
                return ((NodeInfo) contextItem).iterateAxis(this.f99180n, nodeTest);
            } catch (ClassCastException unused) {
                XPathException xPathException = new XPathException("The context item for axis step " + this + " is not a node");
                xPathException.setErrorCode("XPTY0020");
                xPathException.setXPathContext(xPathContext);
                xPathException.setLocation(getLocation());
                xPathException.setIsTypeError(true);
                throw xPathException;
            } catch (UnsupportedOperationException e) {
                if (!(e.getCause() instanceof XPathException)) {
                    dynamicError(e.getMessage(), "XPST0010", xPathContext);
                    return null;
                }
                XPathException xPathException2 = (XPathException) e.getCause();
                xPathException2.maybeSetLocation(getLocation());
                xPathException2.maybeSetContext(xPathContext);
                throw xPathException2;
            }
        }
        XPathException xPathException3 = new XPathException("The context item for axis step " + this + " is absent");
        xPathException3.setErrorCode("XPDY0002");
        xPathException3.setXPathContext(xPathContext);
        xPathException3.setLocation(getLocation());
        xPathException3.setIsTypeError(true);
        throw xPathException3;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) {
        this.f99185s = true;
        this.f99183q = contextItemStaticInfo;
        return this;
    }

    public void setAxis(int i) {
        this.f99180n = i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        int i;
        Expression simplify = super.simplify();
        if (simplify != this) {
            return simplify;
        }
        NodeTest nodeTest = this.f99181o;
        if ((nodeTest == null || nodeTest == AnyNodeTest.getInstance()) && ((i = this.f99180n) == 9 || i == 0)) {
            this.f99181o = MultipleNodeKindTest.PARENT_NODE;
        }
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        NodeTestPattern nodeTestPattern;
        int i;
        NodeTest nodeTest = getNodeTest();
        if (nodeTest == null) {
            nodeTest = AnyNodeTest.getInstance();
        }
        if ((nodeTest instanceof AnyNodeTest) && ((i = this.f99180n) == 3 || i == 4 || i == 12)) {
            nodeTest = MultipleNodeKindTest.CHILD_NODE;
        }
        int primitiveType = nodeTest.getPrimitiveType();
        int i2 = this.f99180n;
        if (i2 == 12) {
            nodeTestPattern = new NodeTestPattern(nodeTest);
        } else if (i2 == 2) {
            nodeTestPattern = primitiveType == 0 ? new NodeTestPattern(NodeKindTest.ATTRIBUTE) : !AxisInfo.containsNodeKind(i2, primitiveType) ? new NodeTestPattern(ErrorType.getInstance()) : new NodeTestPattern(nodeTest);
        } else if (i2 == 3 || i2 == 4 || i2 == 5) {
            nodeTestPattern = (primitiveType == 0 || AxisInfo.containsNodeKind(i2, primitiveType)) ? new NodeTestPattern(nodeTest) : new NodeTestPattern(ErrorType.getInstance());
        } else {
            if (i2 != 8) {
                throw new XPathException("Only downwards axes are allowed in a pattern", "XTSE0340");
            }
            nodeTestPattern = primitiveType == 0 ? new NodeTestPattern(NodeKindTest.NAMESPACE) : !AxisInfo.containsNodeKind(i2, primitiveType) ? new NodeTestPattern(ErrorType.getInstance()) : new NodeTestPattern(nodeTest);
        }
        ExpressionTool.copyLocationInfo(this, nodeTestPattern);
        return nodeTestPattern;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        StringBuilder sb = new StringBuilder(16);
        int i = this.f99180n;
        if (i != 3) {
            if (i == 2) {
                sb.append("@");
            } else {
                sb.append(AxisInfo.axisName[i]);
                sb.append("::");
            }
        }
        NodeTest nodeTest = this.f99181o;
        if (nodeTest == null) {
            sb.append("node()");
        } else if (!(nodeTest instanceof NameTest)) {
            sb.append(nodeTest.toString());
        } else if (((NameTest) nodeTest).getNodeKind() != AxisInfo.principalNodeType[this.f99180n]) {
            sb.append(this.f99181o.toString());
        } else {
            sb.append(this.f99181o.getMatchingNodeName().getDisplayName());
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        StringBuilder sb = new StringBuilder(16);
        sb.append(AxisInfo.axisName[this.f99180n]);
        sb.append("::");
        NodeTest nodeTest = this.f99181o;
        sb.append(nodeTest == null ? "node()" : nodeTest.toString());
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        ItemType itemType = contextItemStaticInfo.getItemType();
        boolean z = this.f99185s || (this.f99184r && this.f99183q.getItemType().equals(itemType));
        this.f99184r = true;
        if (itemType == ErrorType.getInstance()) {
            XPathException xPathException = new XPathException("Axis step " + this + " cannot be used here: the context item is absent");
            xPathException.setErrorCode("XPDY0002");
            xPathException.setLocation(getLocation());
            throw xPathException;
        }
        this.f99183q = contextItemStaticInfo;
        Configuration configuration = expressionVisitor.getConfiguration();
        if (itemType.getGenre() != Genre.NODE) {
            Affinity relationship = configuration.getTypeHierarchy().relationship(itemType, AnyNodeTest.getInstance());
            if (relationship == Affinity.DISJOINT) {
                XPathException xPathException2 = new XPathException("Axis step " + this + " cannot be used here: the context item is not a node");
                xPathException2.setIsTypeError(true);
                xPathException2.setErrorCode("XPTY0020");
                xPathException2.setLocation(getLocation());
                throw xPathException2;
            }
            if (relationship == Affinity.OVERLAPS || relationship == Affinity.SUBSUMES) {
                Expression m62546d = m62546d(expressionVisitor, contextItemStaticInfo, !z);
                if (Literal.isEmptySequence(m62546d)) {
                    return m62546d;
                }
                ContextItemExpression contextItemExpression = new ContextItemExpression();
                ExpressionTool.copyLocationInfo(this, contextItemExpression);
                RoleDiagnostic roleDiagnostic = new RoleDiagnostic(14, "", this.f99180n);
                roleDiagnostic.setErrorCode("XPTY0020");
                ItemChecker itemChecker = new ItemChecker(contextItemExpression, AnyNodeTest.getInstance(), roleDiagnostic);
                ExpressionTool.copyLocationInfo(this, itemChecker);
                SimpleStepExpression simpleStepExpression = new SimpleStepExpression(itemChecker, m62546d);
                ExpressionTool.copyLocationInfo(this, simpleStepExpression);
                return simpleStepExpression;
            }
        }
        return expressionVisitor.getStaticContext().getOptimizerOptions().isSet(8192) ? m62546d(expressionVisitor, contextItemStaticInfo, !z) : this;
    }

    public AxisIterator iterate(NodeInfo nodeInfo) {
        NodeTest nodeTest = this.f99181o;
        if (nodeTest == null) {
            return nodeInfo.iterateAxis(this.f99180n);
        }
        return nodeInfo.iterateAxis(this.f99180n, nodeTest);
    }
}
