package net.p110sf.saxon.type;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public enum AnySimpleType implements SimpleType {
    INSTANCE;

    public static final StructuredQName NAME = new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", "anySimpleType");

    public static AnySimpleType getInstance() {
        return INSTANCE;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean allowsDerivation(int i) {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void analyzeContentExpression(Expression expression, int i) {
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public AtomicSequence atomize(NodeInfo nodeInfo) {
        return StringValue.makeUntypedAtomic(nodeInfo.getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void checkTypeDerivationIsOK(SchemaType schemaType, int i) throws SchemaException {
        if (schemaType != this) {
            throw new SchemaException("Cannot derive xs:anySimpleType from another type");
        }
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public SchemaType getBaseType() {
        return AnyType.getInstance();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getBlock() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public SchemaType getBuiltInBaseType() {
        return this;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getDerivationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDescription() {
        return "xs:anySimpleType";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDisplayName() {
        return "xs:anySimpleType";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getEQName() {
        return "Q{http://www.w3.org/2001/XMLSchema}anySimpleType";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFinalProhibitions() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFingerprint() {
        return StandardNames.XS_ANY_SIMPLE_TYPE;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getName() {
        return "anySimpleType";
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public int getRedefinitionLevel() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public StructuredQName getStructuredQName() {
        return NAME;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getSystemId() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getTargetNamespace() {
        return "http://www.w3.org/2001/XMLSchema";
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public AtomicSequence getTypedValue(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) {
        return StringValue.makeUntypedAtomic(unicodeString);
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public SchemaValidationStatus getValidationStatus() {
        return SchemaValidationStatus.VALIDATED;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public int getWhitespaceAction() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isAnonymousType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SimpleType, net.p110sf.saxon.type.SchemaType
    public boolean isAtomicType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public boolean isBuiltInType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isComplexType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isIdRefType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isIdType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public boolean isListType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.HyperType
    public boolean isNamespaceSensitive() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSameType(SchemaType schemaType) {
        return schemaType == INSTANCE;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSimpleType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public boolean isUnionType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString postprocess(UnicodeString unicodeString) throws ValidationException {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString preprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public ValidationFailure validateContent(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) {
        return null;
    }
}
