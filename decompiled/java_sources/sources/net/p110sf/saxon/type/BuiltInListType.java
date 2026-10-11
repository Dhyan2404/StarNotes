package net.p110sf.saxon.type;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.MappingIterator;
import net.p110sf.saxon.expr.SequenceMapper;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInListType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class BuiltInListType implements ListType {

    /* renamed from: e */
    public final int f102777e;

    /* renamed from: f */
    public BuiltInAtomicType f102778f;
    public static BuiltInListType ENTITIES = m64622c("http://www.w3.org/2001/XMLSchema", "ENTITIES");
    public static BuiltInListType IDREFS = m64622c("http://www.w3.org/2001/XMLSchema", "IDREFS");
    public static BuiltInListType NMTOKENS = m64622c("http://www.w3.org/2001/XMLSchema", "NMTOKENS");
    public static BuiltInListType ANY_URIS = m64622c("http://www.w3.org/2001/XMLSchema-instance", "anonymous_schemaLocationType");

    public BuiltInListType(int i) {
        this.f102777e = i;
        if (i == 557) {
            this.f102778f = BuiltInAtomicType.NMTOKEN;
            return;
        }
        if (i == 562) {
            this.f102778f = BuiltInAtomicType.IDREF;
        } else if (i == 564) {
            this.f102778f = BuiltInAtomicType.ENTITY;
        } else {
            if (i != 645) {
                return;
            }
            this.f102778f = BuiltInAtomicType.ANY_URI;
        }
    }

    /* renamed from: b */
    public static /* synthetic */ SequenceIterator m64621b(AtomicType atomicType, NamespaceResolver namespaceResolver, ConversionRules conversionRules, Item item) throws XPathException {
        return atomicType.getTypedValue(item.getUnicodeStringValue(), namespaceResolver, conversionRules).iterate();
    }

    /* renamed from: c */
    public static BuiltInListType m64622c(String str, String str2) {
        BuiltInListType builtInListType = new BuiltInListType(StandardNames.getFingerprint(str, str2));
        BuiltInType.register(builtInListType.getFingerprint(), builtInListType);
        return builtInListType;
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
        try {
            return getTypedValue(nodeInfo.getUnicodeStringValue(), nodeInfo.getAllNamespaces(), nodeInfo.getConfiguration().getConversionRules());
        } catch (ValidationException e) {
            throw new XPathException("Internal error: value doesn't match its type annotation. " + e.getMessage());
        }
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void checkTypeDerivationIsOK(SchemaType schemaType, int i) {
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

    @Override // net.p110sf.saxon.type.SchemaType
    public int getDerivationMethod() {
        return 8;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDescription() {
        return getDisplayName();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDisplayName() {
        return StandardNames.getDisplayName(this.f102777e);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getEQName() {
        return "Q{http://www.w3.org/2001/XMLSchema}" + getName();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFinalProhibitions() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public int getFingerprint() {
        return this.f102777e;
    }

    @Override // net.p110sf.saxon.type.ListType
    public SimpleType getItemType() {
        return this.f102778f;
    }

    public SchemaType getKnownBaseType() throws IllegalStateException {
        return AnySimpleType.getInstance();
    }

    public String getLocalName() {
        return StandardNames.getLocalName(this.f102777e);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getName() {
        return StandardNames.getLocalName(this.f102777e);
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public int getRedefinitionLevel() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public StructuredQName getStructuredQName() {
        return new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", getLocalName());
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
    public AtomicSequence getTypedValue(UnicodeString unicodeString, final NamespaceResolver namespaceResolver, final ConversionRules conversionRules) throws ValidationException {
        Whitespace.Tokenizer tokenizer = new Whitespace.Tokenizer(unicodeString);
        final AtomicType atomicType = (AtomicType) getItemType();
        try {
            return new AtomicArray(MappingIterator.map(tokenizer, new SequenceMapper.Lambda() { // from class: com.sunia.HTREnginev2.mv
                @Override // net.sf.saxon.expr.SequenceMapper.Lambda
                public final SequenceIterator map(Item item) {
                    SequenceIterator m64621b;
                    m64621b = BuiltInListType.m64621b(AtomicType.this, namespaceResolver, conversionRules, item);
                    return m64621b;
                }
            }));
        } catch (XPathException e) {
            throw new ValidationException(e);
        }
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
        return this.f102777e == 562;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isIdType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public boolean isListType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.HyperType
    public boolean isNamespaceSensitive() {
        return false;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSameType(SchemaType schemaType) {
        return schemaType.getFingerprint() == getFingerprint();
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
    public UnicodeString postprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString preprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public ValidationFailure validateContent(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) {
        SimpleType itemType = getItemType();
        Whitespace.Tokenizer tokenizer = new Whitespace.Tokenizer(unicodeString);
        boolean z = false;
        while (true) {
            StringValue next = tokenizer.next();
            if (next == null) {
                if (z) {
                    return null;
                }
                return new ValidationFailure("The built-in list type " + StandardNames.getDisplayName(this.f102777e) + " does not allow a zero-length list");
            }
            ValidationFailure validateContent = itemType.validateContent(next.getUnicodeStringValue(), namespaceResolver, conversionRules);
            if (validateContent != null) {
                return validateContent;
            }
            z = true;
        }
    }
}
