package net.p110sf.saxon.expr;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.PlainType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class AtomicSequenceConverter extends UnaryExpression {
    public static ToStringMappingFunction TO_STRING_MAPPER = new ToStringMappingFunction();
    protected Converter converter;

    /* renamed from: o */
    public RoleDiagnostic f99166o;
    protected PlainType requiredItemType;

    /* loaded from: classes11.dex */
    public static class AtomicSequenceMappingFunction implements ItemMappingFunction {

        /* renamed from: e */
        public Converter f99167e;

        /* renamed from: f */
        public String f99168f;

        public void setConverter(Converter converter) {
            this.f99167e = converter;
        }

        public void setErrorCode(String str) {
            this.f99168f = str;
        }

        @Override // net.p110sf.saxon.expr.ItemMappingFunction
        public AtomicValue mapItem(Item item) throws XPathException {
            ConversionResult convert = this.f99167e.convert((AtomicValue) item);
            String str = this.f99168f;
            if (str != null && (convert instanceof ValidationFailure)) {
                ((ValidationFailure) convert).setErrorCode(str);
            }
            return convert.asAtomic();
        }
    }

    /* loaded from: classes11.dex */
    public static class ToStringMappingFunction implements ItemMappingFunction {
        @Override // net.p110sf.saxon.expr.ItemMappingFunction
        public StringValue mapItem(Item item) {
            return new StringValue(item.getUnicodeStringValue());
        }
    }

    /* renamed from: net.sf.saxon.expr.AtomicSequenceConverter$a */
    /* loaded from: classes11.dex */
    public class C18287a extends Converter {
        public C18287a(ConversionRules conversionRules) {
            super(conversionRules);
        }

        @Override // net.p110sf.saxon.type.Converter
        public ConversionResult convert(AtomicValue atomicValue) {
            Converter converter = getConversionRules().getConverter(atomicValue.getPrimitiveType(), (AtomicType) AtomicSequenceConverter.this.requiredItemType);
            if (converter != null) {
                return converter.convert(atomicValue);
            }
            return new ValidationFailure("Cannot convert value from " + atomicValue.getPrimitiveType() + " to " + AtomicSequenceConverter.this.requiredItemType);
        }
    }

    public AtomicSequenceConverter(Expression expression, PlainType plainType) {
        super(expression);
        this.requiredItemType = plainType;
    }

    public static AtomicSequenceConverter makeDownCaster(Expression expression, AtomicType atomicType, Configuration configuration) {
        AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(expression, atomicType);
        atomicSequenceConverter.setConverter(new Converter.DownCastingConverter(atomicType, configuration.getConversionRules()));
        return atomicSequenceConverter;
    }

    public Converter allocateConverter(Configuration configuration, boolean z) {
        return allocateConverter(configuration, z, getBaseExpression().getItemType());
    }

    public void allocateConverterStatically(Configuration configuration, boolean z) {
        this.converter = allocateConverter(configuration, z, getBaseExpression().getItemType());
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return getBaseExpression().getCardinality();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.requiredItemType.hashCode() ^ super.computeHashCode();
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int computeSpecialProperties = super.computeSpecialProperties() | 8388608;
        return this.requiredItemType == BuiltInAtomicType.UNTYPED_ATOMIC ? (-67108865) & computeSpecialProperties : 67108864 | computeSpecialProperties;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(getBaseExpression().copy(rebindingMap), this.requiredItemType);
        ExpressionTool.copyLocationInfo(this, atomicSequenceConverter);
        atomicSequenceConverter.setConverter(this.converter);
        atomicSequenceConverter.setRoleDiagnostic(getRoleDiagnostic());
        return atomicSequenceConverter;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public String displayOperator(Configuration configuration) {
        return "convert";
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return super.equals(obj) && this.requiredItemType.equals(((AtomicSequenceConverter) obj).requiredItemType);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("convert", this);
        expressionPresenter.emitAttribute("from", AlphaCode.fromItemType(getBaseExpression().getItemType()));
        expressionPresenter.emitAttribute("to", AlphaCode.fromItemType(this.requiredItemType));
        Converter converter = this.converter;
        if ((converter instanceof Converter.PromoterToDouble) || (converter instanceof Converter.PromoterToFloat)) {
            expressionPresenter.emitAttribute("flags", "p");
        }
        if (getRoleDiagnostic() != null) {
            expressionPresenter.emitAttribute("diag", getRoleDiagnostic().save());
        }
        getBaseExpression().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Converter getConverter() {
        return this.converter;
    }

    public Converter getConverterDynamically(XPathContext xPathContext) {
        Converter converter = this.converter;
        return converter != null ? converter : allocateConverter(xPathContext.getConfiguration(), false);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "convert";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 2;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.requiredItemType;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression
    public OperandRole getOperandRole() {
        return OperandRole.ATOMIC_SEQUENCE;
    }

    public PlainType getRequiredItemType() {
        return this.requiredItemType;
    }

    public RoleDiagnostic getRoleDiagnostic() {
        return this.f99166o;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "AtomicSequenceConverter";
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        SequenceIterator iterate = getBaseExpression().iterate(xPathContext);
        Converter converterDynamically = getConverterDynamically(xPathContext);
        if (converterDynamically == Converter.ToStringConverter.INSTANCE) {
            return new ItemMappingIterator(iterate, TO_STRING_MAPPER, true);
        }
        AtomicSequenceMappingFunction atomicSequenceMappingFunction = new AtomicSequenceMappingFunction();
        atomicSequenceMappingFunction.setConverter(converterDynamically);
        RoleDiagnostic roleDiagnostic = this.f99166o;
        if (roleDiagnostic != null) {
            atomicSequenceMappingFunction.setErrorCode(roleDiagnostic.getErrorCode());
        }
        return new ItemMappingIterator(iterate, atomicSequenceMappingFunction, true);
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        Expression optimize = super.optimize(expressionVisitor, contextItemStaticInfo);
        if (optimize != this) {
            return optimize;
        }
        if (getBaseExpression() instanceof UntypedSequenceConverter) {
            ItemType itemType = ((UntypedSequenceConverter) getBaseExpression()).getItemType();
            PlainType plainType = this.requiredItemType;
            if (itemType == plainType) {
                return getBaseExpression();
            }
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.STRING;
            return (plainType == builtInAtomicType || plainType == BuiltInAtomicType.UNTYPED_ATOMIC) ? (itemType == builtInAtomicType || itemType == BuiltInAtomicType.UNTYPED_ATOMIC) ? new UntypedSequenceConverter(((UntypedSequenceConverter) getBaseExpression()).getBaseExpression(), this.requiredItemType).typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo) : this : this;
        }
        if (!(getBaseExpression() instanceof AtomicSequenceConverter)) {
            return this;
        }
        ItemType itemType2 = ((AtomicSequenceConverter) getBaseExpression()).getItemType();
        PlainType plainType2 = this.requiredItemType;
        if (itemType2 == plainType2) {
            return getBaseExpression();
        }
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.STRING;
        return (plainType2 == builtInAtomicType2 || plainType2 == BuiltInAtomicType.UNTYPED_ATOMIC) ? (itemType2 == builtInAtomicType2 || itemType2 == BuiltInAtomicType.UNTYPED_ATOMIC) ? new AtomicSequenceConverter(((AtomicSequenceConverter) getBaseExpression()).getBaseExpression(), this.requiredItemType).typeCheck(expressionVisitor, contextItemStaticInfo).optimize(expressionVisitor, contextItemStaticInfo) : this : this;
    }

    public void setConverter(Converter converter) {
        this.converter = converter;
    }

    public void setRoleDiagnostic(RoleDiagnostic roleDiagnostic) {
        if (roleDiagnostic == null || "XPTY0004".equals(roleDiagnostic.getErrorCode())) {
            return;
        }
        this.f99166o = roleDiagnostic;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression simplify() throws XPathException {
        Expression simplify = getBaseExpression().simplify();
        setBaseExpression(simplify);
        if (!(simplify instanceof Literal) || !(this.requiredItemType instanceof AtomicType)) {
            return this;
        }
        if (Literal.isEmptySequence(simplify)) {
            return simplify;
        }
        Configuration configuration = getConfiguration();
        if (this.converter == null) {
            allocateConverterStatically(configuration, true);
        }
        return this.converter != null ? Literal.makeLiteral(SequenceTool.toGroundedValue(iterate(new EarlyEvaluationContext(configuration))), simplify) : this;
    }

    @Override // net.p110sf.saxon.expr.UnaryExpression, net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        typeCheckChildren(expressionVisitor, contextItemStaticInfo);
        Configuration configuration = expressionVisitor.getConfiguration();
        TypeHierarchy typeHierarchy = configuration.getTypeHierarchy();
        Expression baseExpression = getBaseExpression();
        if (typeHierarchy.isSubType(baseExpression.getItemType(), this.requiredItemType)) {
            return baseExpression;
        }
        if (this.converter == null) {
            allocateConverterStatically(configuration, true);
        }
        return this;
    }

    public Converter allocateConverter(Configuration configuration, boolean z, ItemType itemType) {
        Converter stringToUnionConverter;
        ConversionRules conversionRules = configuration.getConversionRules();
        if (itemType instanceof ErrorType) {
            stringToUnionConverter = Converter.IdentityConverter.INSTANCE;
        } else {
            if (itemType instanceof AtomicType) {
                PlainType plainType = this.requiredItemType;
                if (plainType instanceof AtomicType) {
                    stringToUnionConverter = conversionRules.getConverter((AtomicType) itemType, (AtomicType) plainType);
                } else if (((SimpleType) plainType).isUnionType()) {
                    stringToUnionConverter = new StringConverter.StringToUnionConverter(this.requiredItemType, conversionRules);
                }
            }
            stringToUnionConverter = null;
        }
        return (stringToUnionConverter != null || z) ? stringToUnionConverter : new C18287a(conversionRules);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public AtomicValue evaluateItem(XPathContext xPathContext) throws XPathException {
        Converter converterDynamically = getConverterDynamically(xPathContext);
        AtomicValue atomicValue = (AtomicValue) getBaseExpression().evaluateItem(xPathContext);
        if (atomicValue == null) {
            return null;
        }
        ConversionResult convert = converterDynamically.convert(atomicValue);
        RoleDiagnostic roleDiagnostic = this.f99166o;
        if (roleDiagnostic != null && (convert instanceof ValidationFailure)) {
            ((ValidationFailure) convert).setErrorCode(roleDiagnostic.getErrorCode());
        }
        return convert.asAtomic();
    }
}
