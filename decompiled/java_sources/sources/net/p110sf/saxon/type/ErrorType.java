package net.p110sf.saxon.type;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class ErrorType extends NodeTest implements AtomicType, UnionType, PlainType {

    /* renamed from: i */
    public static final ErrorType f102789i = new ErrorType();

    public static ErrorType getInstance() {
        return f102789i;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean allowsDerivation(int i) {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void analyzeContentExpression(Expression expression, int i) throws XPathException {
        throw new XPathException("No expression can ever return a value of type xs:error");
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public AtomicSequence atomize(NodeInfo nodeInfo) {
        return StringValue.makeUntypedAtomic(nodeInfo.getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.type.UnionType
    public ValidationFailure checkAgainstFacets(AtomicValue atomicValue, ConversionRules conversionRules) {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void checkTypeDerivationIsOK(SchemaType schemaType, int i) throws SchemaException {
        if (schemaType == this || schemaType == AnySimpleType.getInstance()) {
            return;
        }
        throw new SchemaException("Type xs:error is not validly derived from " + schemaType.getDescription());
    }

    @Override // net.p110sf.saxon.type.UnionType
    public boolean containsListType() {
        return false;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        return Optional.of("Evaluation of the supplied expression will always fail");
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public SchemaType getBaseType() {
        return AnySimpleType.getInstance();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getBlock() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public SchemaType getBuiltInBaseType() {
        return this;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return -1000.0d;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getDerivationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDescription() {
        return "xs:error";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDisplayName() {
        return "xs:error";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getEQName() {
        return "Q{http://www.w3.org/2001/XMLSchema}error";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFinalProhibitions() {
        return 15;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public int getFingerprint() {
        return 575;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.ANY;
    }

    public SchemaType getKnownBaseType() {
        return getBaseType();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public StructuredQName getMatchingNodeName() {
        return StandardNames.getStructuredQName(575);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getName() {
        return "error";
    }

    @Override // net.p110sf.saxon.type.PlainType
    public List<? extends PlainType> getPlainMemberTypes() {
        return Collections.emptyList();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public AtomicType getPrimitiveItemType() {
        return this;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return 88;
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public int getRedefinitionLevel() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.UnionType
    public SequenceType getResultTypeOfCast() {
        return SequenceType.OPTIONAL_ITEM;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public StringConverter getStringConverter(ConversionRules conversionRules) {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public StructuredQName getStructuredQName() {
        return new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", "error");
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getSystemId() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getTargetNamespace() {
        return "http://www.w3.org/2001/XMLSchema";
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.PlainType
    public StructuredQName getTypeName() {
        return new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", "error");
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public AtomicSequence getTypedValue(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) throws ValidationException {
        throw new ValidationFailure("Cast to xs:error always fails").makeException();
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.VOID;
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public SchemaValidationStatus getValidationStatus() {
        return SchemaValidationStatus.VALIDATED;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public int getWhitespaceAction() {
        return 2;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public boolean isAbstract() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isAnonymousType() {
        return false;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public boolean isAtomicType() {
        return false;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return false;
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.SimpleType
    public boolean isBuiltInType() {
        return true;
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
        return false;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public boolean isPlainType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public boolean isPrimitiveType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSameType(SchemaType schemaType) {
        return schemaType instanceof ErrorType;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSimpleType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public boolean isUnionType() {
        return true;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        return false;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString postprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString preprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        return toString();
    }

    public String toString() {
        return "xs:error";
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public ValidationFailure validate(AtomicValue atomicValue, UnicodeString unicodeString, ConversionRules conversionRules) {
        return new ValidationFailure("No value is valid against type xs:error");
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public ValidationFailure validateContent(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) {
        return new ValidationFailure("No content is ever valid against the type xs:error");
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public AtomicType getAtomizedItemType() {
        return BuiltInAtomicType.UNTYPED_ATOMIC;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return false;
    }
}
