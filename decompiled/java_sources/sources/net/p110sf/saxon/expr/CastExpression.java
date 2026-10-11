package net.p110sf.saxon.expr;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.functions.String_1;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class CastExpression extends CastingExpression implements Callable {
    public CastExpression(Expression expression, AtomicType atomicType, boolean z) {
        super(expression, atomicType, z);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.itemOrEmpty(m62557d((AtomicValue) sequenceArr[0].head(), xPathContext));
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return (allowsEmpty() && Cardinality.allowsZero(getBaseExpression().getCardinality())) ? 24576 : 16384;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return getTargetType().hashCode() ^ super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.CastingExpression, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int computeSpecialProperties = super.computeSpecialProperties();
        return getTargetType() == BuiltInAtomicType.UNTYPED_ATOMIC ? computeSpecialProperties & (-67108865) : computeSpecialProperties;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        CastExpression castExpression = new CastExpression(getBaseExpression().copy(rebindingMap), getTargetType(), allowsEmpty());
        ExpressionTool.copyLocationInfo(this, castExpression);
        castExpression.converter = this.converter;
        castExpression.setRetainedStaticContext(getRetainedStaticContext());
        castExpression.setOperandIsStringLiteral(isOperandIsStringLiteral());
        return castExpression;
    }

    /* renamed from: d */
    public final AtomicValue m62557d(AtomicValue atomicValue, XPathContext xPathContext) throws XPathException {
        if (atomicValue == null) {
            if (allowsEmpty()) {
                return null;
            }
            XPathException xPathException = new XPathException("Cast does not allow an empty sequence");
            xPathException.setXPathContext(xPathContext);
            xPathException.setLocation(getLocation());
            xPathException.setErrorCode("XPTY0004");
            throw xPathException;
        }
        Converter converter = this.converter;
        if (converter == null) {
            converter = xPathContext.getConfiguration().getConversionRules().getConverter(atomicValue.getPrimitiveType(), getTargetType());
            if (converter == null) {
                XPathException xPathException2 = new XPathException("Casting from " + atomicValue.getPrimitiveType() + " to " + getTargetType() + " is not permitted");
                xPathException2.setXPathContext(xPathContext);
                xPathException2.setLocation(getLocation());
                xPathException2.setErrorCode("XPTY0004");
                throw xPathException2;
            }
            if (getTargetType().isNamespaceSensitive()) {
                converter = converter.setNamespaceResolver(getRetainedStaticContext());
            }
        }
        ConversionResult convert = converter.convert(atomicValue);
        if (!(convert instanceof ValidationFailure)) {
            return (AtomicValue) convert;
        }
        ValidationException makeException = ((ValidationFailure) convert).makeException();
        makeException.maybeSetErrorCode("FORG0001");
        makeException.maybeSetLocation(getLocation());
        throw makeException;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof CastExpression) {
            CastExpression castExpression = (CastExpression) obj;
            if (getBaseExpression().isEqual(castExpression.getBaseExpression()) && getTargetType() == castExpression.getTargetType() && allowsEmpty() == castExpression.allowsEmpty()) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        export(expressionPresenter, "cast");
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "cast";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public IntegerValue[] getIntegerBounds() {
        if (this.converter == Converter.BooleanToInteger.INSTANCE) {
            return new IntegerValue[]{Int64Value.ZERO, Int64Value.PLUS_ONE};
        }
        return null;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return getTargetType();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public UType getStaticUType(UType uType) {
        return getTargetType().getUType();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        Expression baseExpression = getBaseExpression();
        AtomicType targetType = getTargetType();
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
        if (targetType == builtInAtomicType) {
            if (baseExpression.isCallOn(String_1.class)) {
                Expression arg = ((SystemFunctionCall) baseExpression).getArg(0);
                if ((arg.getItemType() instanceof AtomicType) && arg.getCardinality() == 16384) {
                    return new CastExpression(arg, builtInAtomicType, allowsEmpty());
                }
            } else if (baseExpression instanceof CastExpression) {
                CastExpression castExpression = (CastExpression) baseExpression;
                if (castExpression.getTargetType() == builtInAtomicType) {
                    return baseExpression;
                }
                if (castExpression.getTargetType() == BuiltInAtomicType.STRING) {
                    castExpression.setTargetType(builtInAtomicType);
                    return baseExpression;
                }
            } else if (baseExpression instanceof AtomicSequenceConverter) {
                if (baseExpression.getItemType() == builtInAtomicType) {
                    return baseExpression;
                }
                if (baseExpression.getItemType() == BuiltInAtomicType.STRING) {
                    return new AtomicSequenceConverter(((AtomicSequenceConverter) baseExpression).getBaseExpression(), builtInAtomicType).typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo);
                }
            }
        }
        if (baseExpression.isCallOn(String_1.class)) {
            Expression arg2 = ((SystemFunctionCall) baseExpression).getArg(0);
            ItemType itemType = arg2.getItemType();
            if ((itemType instanceof AtomicType) && arg2.getCardinality() == 16384 && typeHierarchy.isSubType(itemType, getTargetType())) {
                return arg2;
            }
        }
        if (baseExpression instanceof CastExpression) {
            CastExpression castExpression2 = (CastExpression) baseExpression;
            AtomicType targetType2 = castExpression2.getTargetType();
            if (typeHierarchy.isSubType(targetType2, BuiltInAtomicType.STRING) || typeHierarchy.isSubType(targetType2, builtInAtomicType)) {
                Expression baseExpression2 = castExpression2.getBaseExpression();
                ItemType itemType2 = baseExpression2.getItemType();
                if ((itemType2 instanceof AtomicType) && baseExpression2.getCardinality() == 16384 && typeHierarchy.isSubType(itemType2, getTargetType())) {
                    return baseExpression2;
                }
            }
        }
        if (baseExpression instanceof AtomicSequenceConverter) {
            ItemType itemType3 = baseExpression.getItemType();
            if (typeHierarchy.isSubType(itemType3, BuiltInAtomicType.STRING) || typeHierarchy.isSubType(itemType3, builtInAtomicType)) {
                Expression baseExpression3 = ((AtomicSequenceConverter) baseExpression).getBaseExpression();
                ItemType itemType4 = baseExpression3.getItemType();
                if ((itemType4 instanceof AtomicType) && baseExpression3.getCardinality() == 16384 && typeHierarchy.isSubType(itemType4, getTargetType())) {
                    return baseExpression3;
                }
            }
        }
        if (!Cardinality.allowsZero(baseExpression.getCardinality())) {
            setAllowEmpty(false);
            resetLocalStaticProperties();
        }
        return baseExpression instanceof Literal ? preEvaluate() : this;
    }

    public Expression preEvaluate() throws XPathException {
        Converter converter;
        GroundedValue groundedValue = ((Literal) getBaseExpression()).getGroundedValue();
        if (!(groundedValue instanceof AtomicValue) || (converter = this.converter) == null) {
            if (groundedValue.getLength() != 0) {
                return this;
            }
            if (allowsEmpty()) {
                return getBaseExpression();
            }
            XPathException xPathException = new XPathException("Cast can never succeed: the operand must not be an empty sequence", "XPTY0004", getLocation());
            xPathException.setIsTypeError(true);
            throw xPathException;
        }
        ConversionResult convert = converter.convert((AtomicValue) groundedValue);
        if (!(convert instanceof ValidationFailure)) {
            return Literal.makeLiteral((AtomicValue) convert, this);
        }
        ValidationFailure validationFailure = (ValidationFailure) convert;
        String errorCode = validationFailure.getErrorCode();
        if (errorCode == null) {
            errorCode = "FORG0001";
        }
        throw new XPathException(validationFailure.getMessage(), errorCode, getLocation());
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getTargetType().getDisplayName() + MotionUtils.f31761c + getBaseExpression().toShortString() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toString() {
        return getTargetType().getEQName() + MotionUtils.f31761c + getBaseExpression().toString() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        getOperand().typeCheck(expressionVisitor, contextItemStaticInfo);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
        SequenceType makeSequenceType = SequenceType.makeSequenceType(builtInAtomicType, getCardinality());
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        Expression staticTypeCheck = configuration.getTypeChecker(false).staticTypeCheck(getBaseExpression(), makeSequenceType, new RoleDiagnostic(2, "cast as", 0), expressionVisitor);
        setBaseExpression(staticTypeCheck);
        ItemType itemType = staticTypeCheck.getItemType();
        if (itemType instanceof ErrorType) {
            if (allowsEmpty()) {
                return Literal.makeEmptySequence();
            }
            XPathException xPathException = new XPathException("Cast does not allow an empty sequence as input");
            xPathException.setErrorCode("XPTY0004");
            xPathException.setLocation(getLocation());
            xPathException.setIsTypeError(true);
            throw xPathException;
        }
        PlainType plainType = (PlainType) itemType;
        Affinity relationship = typeHierarchy.relationship(plainType, getTargetType());
        if (relationship == Affinity.SAME_TYPE) {
            return staticTypeCheck;
        }
        if (relationship == Affinity.SUBSUMED_BY) {
            this.converter = new Converter.UpCastingConverter(getTargetType());
        } else {
            ConversionRules conversionRules = expressionVisitor.getConfiguration().getConversionRules();
            if (plainType.isAtomicType() && plainType != builtInAtomicType) {
                Converter converter = conversionRules.getConverter((AtomicType) plainType, getTargetType());
                this.converter = converter;
                if (converter == null) {
                    XPathException xPathException2 = new XPathException("Casting from " + plainType + " to " + getTargetType() + " can never succeed");
                    xPathException2.setErrorCode("XPTY0004");
                    xPathException2.setLocation(getLocation());
                    xPathException2.setIsTypeError(true);
                    throw xPathException2;
                }
                if (getTargetType().isNamespaceSensitive()) {
                    this.converter = this.converter.setNamespaceResolver(getRetainedStaticContext());
                }
            }
        }
        return staticTypeCheck instanceof Literal ? preEvaluate() : this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public AtomicValue evaluateItem(XPathContext xPathContext) throws XPathException {
        try {
            return m62557d((AtomicValue) getBaseExpression().evaluateItem(xPathContext), xPathContext);
        } catch (ClassCastException e) {
            e.printStackTrace();
            throw e;
        }
    }
}
