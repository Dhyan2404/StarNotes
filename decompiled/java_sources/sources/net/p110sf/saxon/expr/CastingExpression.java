package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class CastingExpression extends UnaryExpression {
    protected Converter converter;

    /* renamed from: o */
    public AtomicType f99204o;

    /* renamed from: p */
    public final AtomicType f99205p;

    /* renamed from: q */
    public boolean f99206q;

    /* renamed from: r */
    public boolean f99207r;

    public CastingExpression(Expression expression, AtomicType atomicType, boolean z) {
        super(expression);
        this.f99207r = false;
        this.f99206q = z;
        this.f99204o = atomicType;
        this.f99205p = atomicType.getPrimitiveItemType();
    }

    public boolean allowsEmpty() {
        return this.f99206q;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608;
    }

    public void export(ExpressionPresenter expressionPresenter, String str) throws XPathException {
        expressionPresenter.startElement(str, this);
        SequenceType makeSequenceType = SequenceType.makeSequenceType(getTargetType(), allowsEmpty() ? 24576 : 16384);
        StringBuilder sb = new StringBuilder();
        sb.append("a");
        sb.append(allowsEmpty() ? "e" : "");
        expressionPresenter.emitAttribute("flags", sb.toString());
        expressionPresenter.emitAttribute("as", makeSequenceType.toAlphaCode());
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Converter getConverter() {
        return this.converter;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return getTargetType().isNamespaceSensitive() ? 2048 : 0;
    }

    public NamespaceResolver getNamespaceResolver() {
        return getRetainedStaticContext();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.SINGLE_ATOMIC;
    }

    public AtomicType getTargetPrimitiveType() {
        return this.f99205p;
    }

    public AtomicType getTargetType() {
        return this.f99204o;
    }

    public boolean isOperandIsStringLiteral() {
        return this.f99207r;
    }

    public void setAllowEmpty(boolean z) {
        this.f99206q = z;
    }

    public void setOperandIsStringLiteral(boolean z) {
        this.f99207r = z;
    }

    public void setTargetType(AtomicType atomicType) {
        this.f99204o = atomicType;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        String whyDisallowedType;
        if (!(this.f99204o instanceof BuiltInAtomicType) || (whyDisallowedType = XPathParser.whyDisallowedType(getPackageData(), (BuiltInAtomicType) this.f99204o)) == null) {
            setBaseExpression(getBaseExpression().simplify());
            return this;
        }
        XPathException xPathException = new XPathException(whyDisallowedType, "XPST0080", getLocation());
        xPathException.setIsStaticError(true);
        throw xPathException;
    }
}
