package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyElementImpl;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class AttributeGetter extends Expression {
    public static final int CHECK_CONTEXT_ITEM_IS_NODE = 2;

    /* renamed from: p */
    public static final /* synthetic */ boolean f99174p = false;

    /* renamed from: n */
    public final FingerprintedQName f99175n;

    /* renamed from: o */
    public int f99176o = 2;

    public AttributeGetter(FingerprintedQName fingerprintedQName) {
        this.f99175n = fingerprintedQName;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        if (pathMapNodeSet == null) {
            pathMapNodeSet = new PathMap.PathMapNodeSet(pathMap.makeNewRoot(new ContextItemExpression()));
        }
        return pathMapNodeSet.createArc(2, new NameTest(2, this.f99175n, getConfiguration().getNamePool()));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 24576;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99175n.hashCode() ^ 83571;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof AttributeGetter) && ((AttributeGetter) obj).f99175n.equals(this.f99175n);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        String attributeValue;
        Item contextItem = xPathContext.getContextItem();
        if (contextItem instanceof TinyElementImpl) {
            String attributeValue2 = ((TinyElementImpl) contextItem).getAttributeValue(this.f99175n.getFingerprint());
            if (attributeValue2 == null) {
                return null;
            }
            return StringValue.makeUntypedAtomic(StringView.tidy(attributeValue2));
        }
        if (contextItem == null) {
            dynamicError("The context item for @" + this.f99175n.getDisplayName() + " is absent", "XPDY0002", xPathContext);
        }
        if (!(contextItem instanceof NodeInfo)) {
            typeError("The context item for @" + this.f99175n.getDisplayName() + " is not a node", "XPDY0002", xPathContext);
        }
        NodeInfo nodeInfo = (NodeInfo) contextItem;
        if (nodeInfo.getNodeKind() != 1 || (attributeValue = nodeInfo.getAttributeValue(this.f99175n.getURI(), this.f99175n.getLocalPart())) == null) {
            return null;
        }
        return StringValue.makeUntypedAtomic(StringView.tidy(attributeValue));
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement("attVal", this);
        expressionPresenter.emitAttribute("name", this.f99175n.getStructuredQName());
        expressionPresenter.emitAttribute("chk", "" + this.f99176o);
        expressionPresenter.endElement();
    }

    public FingerprintedQName getAttributeName() {
        return this.f99175n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "attGetter";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.UNTYPED_ATOMIC;
    }

    public int getRequiredChecks() {
        return this.f99176o;
    }

    public void setRequiredChecks(int i) {
        this.f99176o = i;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return "@" + this.f99175n.getDisplayName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return "data(@" + this.f99175n.getDisplayName() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public AttributeGetter copy(RebindingMap rebindingMap) {
        AttributeGetter attributeGetter = new AttributeGetter(this.f99175n);
        attributeGetter.setRequiredChecks(this.f99176o);
        return attributeGetter;
    }
}
