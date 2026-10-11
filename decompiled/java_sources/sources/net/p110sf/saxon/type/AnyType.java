package net.p110sf.saxon.type;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public enum AnyType implements ComplexType {
    INSTANCE;

    public static final StructuredQName QNAME = new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", "anyType");

    public static AnyType getInstance() {
        return INSTANCE;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean allowsAttributes() {
        return true;
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
        if (!(schemaType instanceof AnyType)) {
            throw new SchemaException("Cannot derive xs:anyType from another type");
        }
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean containsElementWildcard() {
        return true;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public void gatherAllPermittedChildren(IntHashSet intHashSet, boolean z) {
        intHashSet.add(-1);
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public void gatherAllPermittedDescendants(IntHashSet intHashSet) {
        intHashSet.add(-1);
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public int getAttributeUseCardinality(StructuredQName structuredQName) {
        return 24576;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public SimpleType getAttributeUseType(StructuredQName structuredQName) {
        return AnySimpleType.getInstance();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public SchemaType getBaseType() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getBlock() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getDerivationMethod() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public int getDescendantElementCardinality(int i) {
        return 57344;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public SchemaType getDescendantElementType(int i) {
        return this;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDescription() {
        return "xs:anyType";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDisplayName() {
        return "xs:anyType";
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getEQName() {
        return "Q{http://www.w3.org/2001/XMLSchema}anyType";
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public int getElementParticleCardinality(int i, boolean z) {
        return 57344;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public SchemaType getElementParticleType(int i, boolean z) {
        return this;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFinalProhibitions() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFingerprint() {
        return 572;
    }

    public SchemaType getKnownBaseType() throws IllegalStateException {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getName() {
        return "anyType";
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public int getRedefinitionLevel() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public SimpleType getSimpleContentType() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public StructuredQName getStructuredQName() {
        return QNAME;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getSystemId() {
        return null;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getTargetNamespace() {
        return "http://www.w3.org/2001/XMLSchema";
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public SchemaValidationStatus getValidationStatus() {
        return SchemaValidationStatus.VALIDATED;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public ComplexVariety getVariety() {
        return ComplexVariety.MIXED;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean hasAssertions() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean isAbstract() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean isAllContent() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isAnonymousType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isAtomicType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean isComplexContent() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isComplexType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean isEmptiable() {
        return true;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean isEmptyContent() {
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

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean isMixedContent() {
        return true;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean isRestricted() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSameType(SchemaType schemaType) {
        return schemaType instanceof AnyType;
    }

    @Override // net.p110sf.saxon.type.ComplexType
    public boolean isSimpleContent() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSimpleType() {
        return false;
    }
}
