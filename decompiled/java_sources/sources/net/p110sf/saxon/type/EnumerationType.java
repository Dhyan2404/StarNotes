package net.p110sf.saxon.type;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class EnumerationType implements AtomicType {

    /* renamed from: e */
    public Set<String> f102788e;

    public EnumerationType(Set<String> set) {
        this.f102788e = set;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean allowsDerivation(int i) {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void analyzeContentExpression(Expression expression, int i) throws XPathException {
        BuiltInAtomicType.STRING.analyzeContentExpression(expression, i);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public AtomicSequence atomize(NodeInfo nodeInfo) throws XPathException {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void checkTypeDerivationIsOK(SchemaType schemaType, int i) throws SchemaException {
    }

    @Override // net.p110sf.saxon.type.ItemType
    public PlainType getAtomizedItemType() {
        return BuiltInAtomicType.STRING;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public SchemaType getBaseType() {
        return BuiltInAtomicType.STRING;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return "E";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getBlock() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public SchemaType getBuiltInBaseType() {
        return BuiltInAtomicType.STRING;
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return 0.0d;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getDerivationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDescription() {
        return toString();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDisplayName() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getEQName() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFinalProhibitions() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFingerprint() {
        return -1;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getName() {
        return null;
    }

    @Override // net.p110sf.saxon.type.PlainType
    public List<? extends PlainType> getPlainMemberTypes() {
        return Collections.singletonList(this);
    }

    @Override // net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return 513;
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public int getRedefinitionLevel() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public StringConverter getStringConverter(ConversionRules conversionRules) {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public StructuredQName getStructuredQName() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getSystemId() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getTargetNamespace() {
        return null;
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.PlainType
    public StructuredQName getTypeName() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public AtomicSequence getTypedValue(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) throws ValidationException {
        return new StringValue(unicodeString);
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.STRING;
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public SchemaValidationStatus getValidationStatus() {
        return SchemaValidationStatus.VALIDATED;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public int getWhitespaceAction() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public boolean isAbstract() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isAnonymousType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SimpleType, net.p110sf.saxon.type.SchemaType
    public boolean isAtomicType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return true;
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.SimpleType
    public boolean isBuiltInType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isComplexType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.SchemaType
    public boolean isIdRefType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.SchemaType
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

    @Override // net.p110sf.saxon.type.AtomicType
    public boolean isOrdered(boolean z) {
        return true;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isPlainType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public boolean isPrimitiveType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSameType(SchemaType schemaType) {
        return (schemaType instanceof EnumerationType) && this.f102788e.equals(((EnumerationType) schemaType).f102788e);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSimpleType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public boolean isUnionType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.PlainType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return (item instanceof AtomicValue) && ((AtomicValue) item).getPrimitiveType() == BuiltInAtomicType.STRING && this.f102788e.contains(item.getStringValue());
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString postprocess(UnicodeString unicodeString) throws ValidationException {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString preprocess(UnicodeString unicodeString) throws ValidationException {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public ValidationFailure validate(AtomicValue atomicValue, UnicodeString unicodeString, ConversionRules conversionRules) {
        if (atomicValue.getPrimitiveType() == BuiltInAtomicType.STRING && this.f102788e.contains(atomicValue.getStringValue())) {
            return null;
        }
        return new ValidationFailure("The string '" + atomicValue.getStringValue() + " is not valid for the enumeration type " + toString());
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public ValidationFailure validateContent(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) {
        return null;
    }

    @Override // net.p110sf.saxon.type.PlainType, net.p110sf.saxon.type.ItemType
    public AtomicType getPrimitiveItemType() {
        return BuiltInAtomicType.STRING;
    }
}
