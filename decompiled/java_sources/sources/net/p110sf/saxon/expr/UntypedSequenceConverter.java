package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public final class UntypedSequenceConverter extends AtomicSequenceConverter {

    /* loaded from: classes11.dex */
    public static class UntypedConverter extends Converter {

        /* renamed from: b */
        public Converter f99402b;

        public UntypedConverter(ConversionRules conversionRules, Converter converter) {
            super(conversionRules);
            this.f99402b = converter;
        }

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            return atomicValue.isUntypedAtomic() ? this.f99402b.convert(atomicValue) : atomicValue;
        }
    }

    /* renamed from: net.sf.saxon.expr.UntypedSequenceConverter$a */
    /* loaded from: classes11.dex */
    public static class C18310a extends Converter {

        /* renamed from: b */
        public final /* synthetic */ PlainType f99403b;

        /* renamed from: c */
        public final /* synthetic */ Expression f99404c;

        public C18310a(PlainType plainType, Expression expression) {
            this.f99403b = plainType;
            this.f99404c = expression;
        }

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            ValidationFailure validationFailure = new ValidationFailure("Implicit conversion of untypedAtomic value to " + this.f99403b.toString() + " is not allowed");
            validationFailure.setErrorCode("XPTY0117");
            validationFailure.setLocator(this.f99404c.getLocation());
            return validationFailure;
        }
    }

    public UntypedSequenceConverter(Expression expression, PlainType plainType) {
        super(expression, plainType);
    }

    public static UntypedSequenceConverter makeUntypedSequenceConverter(Configuration configuration, Expression expression, PlainType plainType) throws XPathException {
        Converter stringToUnionConverter;
        UntypedSequenceConverter untypedSequenceConverter = new UntypedSequenceConverter(expression, plainType);
        ConversionRules conversionRules = configuration.getConversionRules();
        if (plainType.isNamespaceSensitive()) {
            throw new XPathException("Cannot convert untyped atomic values to a namespace-sensitive type", "XPTY0117");
        }
        if (plainType.isAtomicType()) {
            stringToUnionConverter = conversionRules.getConverter(BuiltInAtomicType.UNTYPED_ATOMIC, (AtomicType) plainType);
        } else if (plainType == NumericType.getInstance()) {
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
            BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.DOUBLE;
            stringToUnionConverter = conversionRules.getConverter(builtInAtomicType, builtInAtomicType2);
            untypedSequenceConverter.requiredItemType = builtInAtomicType2;
        } else {
            stringToUnionConverter = new StringConverter.StringToUnionConverter(plainType, conversionRules);
        }
        untypedSequenceConverter.setConverter(new UntypedConverter(conversionRules, stringToUnionConverter));
        return untypedSequenceConverter;
    }

    public static UntypedSequenceConverter makeUntypedSequenceRejector(Configuration configuration, Expression expression, PlainType plainType) {
        UntypedSequenceConverter untypedSequenceConverter = new UntypedSequenceConverter(expression, plainType);
        untypedSequenceConverter.setConverter(new UntypedConverter(configuration.getConversionRules(), new C18310a(plainType, expression)));
        return untypedSequenceConverter;
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        return super.computeSpecialProperties() | 8388608 | 67108864;
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        UntypedSequenceConverter untypedSequenceConverter = new UntypedSequenceConverter(getBaseExpression().copy(rebindingMap), getRequiredItemType());
        ExpressionTool.copyLocationInfo(this, untypedSequenceConverter);
        untypedSequenceConverter.setConverter(this.converter);
        untypedSequenceConverter.setRoleDiagnostic(getRoleDiagnostic());
        return untypedSequenceConverter;
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.UnaryExpression
    public String displayOperator(Configuration configuration) {
        return "convertUntyped";
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof UntypedSequenceConverter) && getBaseExpression().isEqual(((UntypedSequenceConverter) obj).getBaseExpression());
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("cvUntyped", this);
        expressionPresenter.emitAttribute("to", AlphaCode.fromItemType(getRequiredItemType()));
        if (getRoleDiagnostic() != null) {
            expressionPresenter.emitAttribute("diag", getRoleDiagnostic().save());
        }
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "convertUntyped";
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        if (getBaseExpression().getItemType() == BuiltInAtomicType.UNTYPED_ATOMIC) {
            return getRequiredItemType();
        }
        return Type.getCommonSuperType(getRequiredItemType(), getBaseExpression().getItemType(), getConfiguration().getTypeHierarchy());
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public String toShortString() {
        return getBaseExpression().toShortString();
    }

    @Override // net.p110sf.saxon.expr.AtomicSequenceConverter, net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression typeCheck = super.typeCheck(expressionVisitor, contextItemStaticInfo);
        if (typeCheck != this) {
            return typeCheck;
        }
        TypeHierarchy typeHierarchy = expressionVisitor.getConfiguration().getTypeHierarchy();
        Expression baseExpression = getBaseExpression();
        return (typeHierarchy.relationship(baseExpression.getItemType(), BuiltInAtomicType.UNTYPED_ATOMIC) == Affinity.DISJOINT || baseExpression.hasSpecialProperty(67108864)) ? getBaseExpression() : this;
    }
}
