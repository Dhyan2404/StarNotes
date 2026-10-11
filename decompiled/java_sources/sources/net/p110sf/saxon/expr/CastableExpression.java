package net.p110sf.saxon.expr;

import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class CastableExpression extends CastingExpression {
    public CastableExpression(Expression expression, AtomicType atomicType, boolean z) {
        super(expression, atomicType, z);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 16384;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return super.computeHashCode() ^ 21845;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        CastableExpression castableExpression = new CastableExpression(getBaseExpression().copy(rebindingMap), getTargetType(), allowsEmpty());
        ExpressionTool.copyLocationInfo(this, castableExpression);
        castableExpression.setRetainedStaticContext(getRetainedStaticContext());
        castableExpression.converter = this.converter;
        return castableExpression;
    }

    /* renamed from: d */
    public final boolean m62558d(AtomicValue atomicValue, AtomicType atomicType, XPathContext xPathContext) {
        Converter converter = this.converter;
        if (converter == null) {
            converter = xPathContext.getConfiguration().getConversionRules().getConverter(atomicValue.getPrimitiveType(), atomicType);
            if (converter == null) {
                return false;
            }
            if (converter.isAlwaysSuccessful()) {
                return true;
            }
            if (getTargetType().isNamespaceSensitive()) {
                converter = converter.setNamespaceResolver(getRetainedStaticContext());
            }
        }
        return !(converter.convert(atomicValue) instanceof ValidationFailure);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean effectiveBooleanValue(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getBaseExpression().iterate(xPathContext);
        int i = 0;
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                return i != 0 || allowsEmpty();
            }
            if (next instanceof NodeInfo) {
                AtomicSequence atomize = next.atomize();
                int length = SequenceTool.getLength(atomize);
                i += length;
                if (i > 1) {
                    return false;
                }
                if (length != 0 && !m62558d(atomize.head(), getTargetType(), xPathContext)) {
                    return false;
                }
            } else {
                if (!(next instanceof AtomicValue)) {
                    if (next instanceof ArrayItem) {
                        return false;
                    }
                    throw new XPathException("Input to cast cannot be atomized", "XPTY0004");
                }
                AtomicValue atomicValue = (AtomicValue) next;
                i++;
                if (i > 1 || !m62558d(atomicValue, getTargetType(), xPathContext)) {
                    return false;
                }
            }
        }
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof CastableExpression) {
            CastableExpression castableExpression = (CastableExpression) obj;
            if (getBaseExpression().isEqual(castableExpression.getBaseExpression()) && getTargetType() == castableExpression.getTargetType() && allowsEmpty() == castableExpression.allowsEmpty()) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        export(expressionPresenter, "castable");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "castable";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return BuiltInAtomicType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return UType.BOOLEAN;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        optimizeChildren(expressionVisitor, contextItemStaticInfo);
        return getBaseExpression() instanceof Literal ? preEvaluate() : this;
    }

    public final Expression preEvaluate() {
        Converter converter;
        GroundedValue groundedValue = ((Literal) getBaseExpression()).getGroundedValue();
        if ((groundedValue instanceof AtomicValue) && (converter = this.converter) != null) {
            return Literal.makeLiteral(BooleanValue.get(!(converter.convert((AtomicValue) groundedValue) instanceof ValidationFailure)), this);
        }
        int length = groundedValue.getLength();
        return length == 0 ? Literal.makeLiteral(BooleanValue.get(allowsEmpty()), this) : length > 1 ? Literal.makeLiteral(BooleanValue.FALSE, this) : this;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return getBaseExpression().toString() + " castable as " + getTargetType().getEQName();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        Expression staticTypeCheck = expressionVisitor.getConfiguration().getTypeChecker(false).staticTypeCheck(getBaseExpression(), SequenceType.ATOMIC_SEQUENCE, new RoleDiagnostic(2, "castable as", 0), expressionVisitor);
        setBaseExpression(staticTypeCheck);
        return staticTypeCheck instanceof Literal ? preEvaluate() : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public BooleanValue evaluateItem(XPathContext xPathContext) throws XPathException {
        return BooleanValue.get(effectiveBooleanValue(xPathContext));
    }
}
