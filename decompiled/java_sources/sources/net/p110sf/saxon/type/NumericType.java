package net.p110sf.saxon.type;

import java.util.Arrays;
import java.util.List;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class NumericType extends LocalUnionType implements SimpleType {

    /* renamed from: f */
    public static NumericType f102791f;

    public NumericType() {
        super((List<AtomicType>) Arrays.asList(BuiltInAtomicType.DOUBLE, BuiltInAtomicType.FLOAT, BuiltInAtomicType.DECIMAL));
    }

    public static NumericType getInstance() {
        NumericType numericType;
        synchronized (NumericType.class) {
            if (f102791f == null) {
                NumericType numericType2 = new NumericType();
                f102791f = numericType2;
                BuiltInType.register(635, numericType2);
            }
            numericType = f102791f;
        }
        return numericType;
    }

    public static boolean isNumericType(ItemType itemType) {
        return itemType.isPlainType() && UType.NUMERIC.subsumes(itemType.getUType());
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean allowsDerivation(int i) {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void analyzeContentExpression(Expression expression, int i) throws XPathException {
        BuiltInAtomicType.analyzeContentExpression(this, expression, i);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public AtomicSequence atomize(NodeInfo nodeInfo) throws XPathException {
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.UnionType
    public ValidationFailure checkAgainstFacets(AtomicValue atomicValue, ConversionRules conversionRules) {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void checkTypeDerivationIsOK(SchemaType schemaType, int i) throws SchemaException {
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.UnionType
    public boolean containsListType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public PlainType getAtomizedItemType() {
        return this;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public SchemaType getBaseType() {
        return AnySimpleType.getInstance();
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return "A";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getBlock() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public SchemaType getBuiltInBaseType() {
        return AnySimpleType.getInstance();
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return 0.125d;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getDerivationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.type.UnionType, net.p110sf.saxon.type.SchemaType
    public String getDescription() {
        return "xs:numeric";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDisplayName() {
        return "xs:numeric";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getEQName() {
        return "Q(http://www.w3.org/2001/XMLSchema}numeric";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFinalProhibitions() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFingerprint() {
        return 635;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.ATOMIC;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getName() {
        return "numeric";
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.PlainType
    public List<? extends PlainType> getPlainMemberTypes() {
        return getMemberTypes();
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return BuiltInAtomicType.ANY_ATOMIC.getFingerprint();
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public int getRedefinitionLevel() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.UnionType
    public SequenceType getResultTypeOfCast() {
        return SequenceType.ATOMIC_SEQUENCE;
    }

    @Override // net.p110sf.saxon.type.UnionType, net.p110sf.saxon.type.SchemaType
    public StructuredQName getStructuredQName() {
        return new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", "numeric");
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getSystemId() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getTargetNamespace() {
        return "http://www.w3.org/2001/XMLSchema";
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.PlainType
    public StructuredQName getTypeName() {
        return new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", "numeric");
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.NUMERIC;
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public SchemaValidationStatus getValidationStatus() {
        return SchemaValidationStatus.VALIDATED;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public int getWhitespaceAction() {
        return 2;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isAnonymousType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public boolean isAtomicType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return true;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.SimpleType
    public boolean isBuiltInType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isComplexType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.SchemaType
    public boolean isIdRefType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.SchemaType
    public boolean isIdType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.SimpleType
    public boolean isListType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.HyperType
    public boolean isNamespaceSensitive() {
        return false;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public boolean isPlainType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSameType(SchemaType schemaType) {
        return schemaType instanceof NumericType;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSimpleType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.SimpleType
    public boolean isUnionType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.PlainType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return item instanceof NumericValue;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString postprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString preprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.ItemType
    public String toExportString() {
        return toString();
    }

    @Override // net.p110sf.saxon.type.LocalUnionType
    public String toString() {
        return "xs:numeric";
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.SimpleType
    public ValidationFailure validateContent(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) {
        try {
            StringToDouble.getInstance().stringToNumber(unicodeString);
            return null;
        } catch (NumberFormatException e) {
            return new ValidationFailure(e.getMessage());
        }
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.PlainType, net.p110sf.saxon.type.ItemType
    public AtomicType getPrimitiveItemType() {
        return BuiltInAtomicType.ANY_ATOMIC;
    }

    @Override // net.p110sf.saxon.type.LocalUnionType, net.p110sf.saxon.type.UnionType
    public DoubleValue getTypedValue(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) throws ValidationException {
        try {
            return new DoubleValue(StringToDouble.getInstance().stringToNumber(unicodeString));
        } catch (NumberFormatException unused) {
            throw new ValidationFailure("Cannot convert string \"" + unicodeString + "\" to xs:numeric").makeException();
        }
    }
}
