package net.p110sf.saxon.expr;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public final class IsLastExpression extends Expression {

    /* renamed from: n */
    public final boolean f99272n;

    public IsLastExpression(boolean z) {
        this.f99272n = z;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99272n ? 594252192 : 963351200;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        IsLastExpression isLastExpression = new IsLastExpression(this.f99272n);
        ExpressionTool.copyLocationInfo(this, isLastExpression);
        return isLastExpression;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof IsLastExpression) && ((IsLastExpression) obj).f99272n == this.f99272n;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("isLast", this);
        expressionPresenter.emitAttribute(Constants.ATTRNAME_TEST, this.f99272n ? "1" : "0");
        expressionPresenter.endElement();
    }

    public boolean getCondition() {
        return this.f99272n;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "isLast";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 12;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "IsLastExpr";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) {
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String toString() {
        return this.f99272n ? "position() eq last()" : "position() ne last()";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) {
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(this.f99272n == xPathContext.isAtLast());
    }
}
