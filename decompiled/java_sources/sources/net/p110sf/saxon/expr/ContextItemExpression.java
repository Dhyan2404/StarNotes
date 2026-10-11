package net.p110sf.saxon.expr;

import com.sunia.HTREnginev2.gon;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.PathMap;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.AnchorPattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ContextItemExpression extends Expression {

    /* renamed from: n */
    public ContextItemStaticInfo f99218n = ContextItemStaticInfo.DEFAULT;

    /* renamed from: o */
    public String f99219o = "XPDY0002";

    /* renamed from: p */
    public boolean f99220p = false;

    @Override // net.p110sf.saxon.expr.Expression
    public PathMap.PathMapNodeSet addToPathMap(PathMap pathMap, PathMap.PathMapNodeSet pathMapNodeSet) {
        return pathMapNodeSet == null ? new PathMap.PathMapNodeSet(pathMap.makeNewRoot(this)) : pathMapNodeSet;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return 1765187962;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608 | 65536;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        ContextItemExpression contextItemExpression = new ContextItemExpression();
        contextItemExpression.f99218n = this.f99218n;
        contextItemExpression.setErrorCodeForUndefinedContext(this.f99219o, false);
        ExpressionTool.copyLocationInfo(this, contextItemExpression);
        return contextItemExpression;
    }

    /* renamed from: d */
    public final void m62561d(XPathContext xPathContext) throws XPathException {
        if (this.f99220p) {
            typeError("The context item is absent", getErrorCodeForUndefinedContext(), xPathContext);
        } else {
            dynamicError("The context item is absent", getErrorCodeForUndefinedContext(), xPathContext);
        }
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return obj instanceof ContextItemExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            m62561d(xPathContext);
        }
        return contextItem;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement(gon.f71308x0, this);
        ItemType itemType = getItemType();
        if (itemType != AnyItemType.getInstance()) {
            expressionPresenter.emitAttribute("type", SequenceType.makeSequenceType(itemType, 16384).toAlphaCode());
        }
        if (this.f99218n.isPossiblyAbsent()) {
            expressionPresenter.emitAttribute("flags", "a");
        }
        expressionPresenter.endElement();
    }

    public String getErrorCodeForUndefinedContext() {
        return this.f99219o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return gon.f71308x0;
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
        return this.f99218n.getItemType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getNetCost() {
        return 0;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return uType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "ContextItemExpr";
    }

    public boolean isContextPossiblyUndefined() {
        return this.f99218n.isPossiblyAbsent();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isSubtreeExpression() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        Item contextItem = xPathContext.getContextItem();
        if (contextItem == null) {
            m62561d(xPathContext);
        }
        return SingletonIterator.makeIterator(contextItem);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if (contextItemStaticInfo != null) {
            return this;
        }
        XPathException xPathException = new XPathException("The context item is undefined at this point");
        xPathException.setErrorCode(getErrorCodeForUndefinedContext());
        xPathException.setIsTypeError(this.f99220p);
        xPathException.setLocation(getLocation());
        throw xPathException;
    }

    public void setErrorCodeForUndefinedContext(String str, boolean z) {
        this.f99219o = str;
        this.f99220p = z;
    }

    public void setStaticInfo(ContextItemStaticInfo contextItemStaticInfo) {
        this.f99218n = contextItemStaticInfo;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Pattern toPattern(Configuration configuration) throws XPathException {
        return AnchorPattern.getInstance();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return ".";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return ".";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        if (contextItemStaticInfo.getItemType() != ErrorType.getInstance()) {
            this.f99218n = contextItemStaticInfo;
            return this;
        }
        expressionVisitor.issueWarning("Evaluation will always fail: there is no context item", getLocation());
        ErrorExpression errorExpression = new ErrorExpression("There is no context item", getErrorCodeForUndefinedContext(), this.f99220p);
        errorExpression.setOriginalExpression(this);
        ExpressionTool.copyLocationInfo(this, errorExpression);
        return errorExpression;
    }
}
