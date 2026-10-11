package net.p110sf.saxon.type;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.StringConverter;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.DecimalValue;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.NotationValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class BuiltInAtomicType implements AtomicType, ItemTypeWithSequenceTypeCache {
    public static final BuiltInAtomicType ANY_ATOMIC;
    public static final BuiltInAtomicType ANY_URI;
    public static final BuiltInAtomicType BASE64_BINARY;
    public static final BuiltInAtomicType BOOLEAN;
    public static final BuiltInAtomicType BYTE;
    public static final BuiltInAtomicType DATE;
    public static final BuiltInAtomicType DATE_TIME;
    public static final BuiltInAtomicType DATE_TIME_STAMP;
    public static final BuiltInAtomicType DAY_TIME_DURATION;
    public static final BuiltInAtomicType DECIMAL;
    public static final BuiltInAtomicType DOUBLE;
    public static final BuiltInAtomicType DURATION;
    public static final BuiltInAtomicType ENTITY;
    public static final BuiltInAtomicType FLOAT;
    public static final BuiltInAtomicType G_DAY;
    public static final BuiltInAtomicType G_MONTH;
    public static final BuiltInAtomicType G_MONTH_DAY;
    public static final BuiltInAtomicType G_YEAR;
    public static final BuiltInAtomicType G_YEAR_MONTH;
    public static final BuiltInAtomicType HEX_BINARY;

    /* renamed from: ID */
    public static final BuiltInAtomicType f102764ID;
    public static final BuiltInAtomicType IDREF;
    public static final BuiltInAtomicType INT;
    public static final BuiltInAtomicType INTEGER;
    public static final BuiltInAtomicType LANGUAGE;
    public static final BuiltInAtomicType LONG;
    public static final BuiltInAtomicType NAME;
    public static final BuiltInAtomicType NCNAME;
    public static final BuiltInAtomicType NEGATIVE_INTEGER;
    public static final BuiltInAtomicType NMTOKEN;
    public static final BuiltInAtomicType NON_NEGATIVE_INTEGER;
    public static final BuiltInAtomicType NON_POSITIVE_INTEGER;
    public static final BuiltInAtomicType NORMALIZED_STRING;
    public static final BuiltInAtomicType NOTATION;
    public static final BuiltInAtomicType POSITIVE_INTEGER;
    public static final BuiltInAtomicType QNAME;
    public static final BuiltInAtomicType SHORT;
    public static final BuiltInAtomicType STRING;
    public static final BuiltInAtomicType TIME;
    public static final BuiltInAtomicType TOKEN;
    public static final BuiltInAtomicType UNSIGNED_BYTE;
    public static final BuiltInAtomicType UNSIGNED_INT;
    public static final BuiltInAtomicType UNSIGNED_LONG;
    public static final BuiltInAtomicType UNSIGNED_SHORT;
    public static final BuiltInAtomicType UNTYPED_ATOMIC;
    public static final BuiltInAtomicType YEAR_MONTH_DURATION;

    /* renamed from: o */
    public static final Map<String, BuiltInAtomicType> f102765o = new HashMap(60);

    /* renamed from: p */
    public static final /* synthetic */ boolean f102766p = false;

    /* renamed from: e */
    public final int f102767e;

    /* renamed from: f */
    public int f102768f;

    /* renamed from: g */
    public int f102769g;

    /* renamed from: h */
    public UType f102770h;

    /* renamed from: i */
    public String f102771i;

    /* renamed from: j */
    public boolean f102772j = false;

    /* renamed from: k */
    public SequenceType f102773k;

    /* renamed from: l */
    public SequenceType f102774l;

    /* renamed from: m */
    public SequenceType f102775m;

    /* renamed from: n */
    public SequenceType f102776n;
    public StringConverter stringConverter;

    static {
        BuiltInAtomicType m64619a = m64619a(632, AnySimpleType.getInstance(), "A", true);
        ANY_ATOMIC = m64619a;
        BuiltInAtomicType m64619a2 = m64619a(513, m64619a, "AS", true);
        STRING = m64619a2;
        BuiltInAtomicType m64619a3 = m64619a(514, m64619a, "AB", true);
        BOOLEAN = m64619a3;
        BuiltInAtomicType m64619a4 = m64619a(518, m64619a, "AR", false);
        DURATION = m64619a4;
        BuiltInAtomicType m64619a5 = m64619a(519, m64619a, "AM", true);
        DATE_TIME = m64619a5;
        DATE = m64619a(521, m64619a, "AA", true);
        BuiltInAtomicType m64619a6 = m64619a(520, m64619a, "AT", true);
        TIME = m64619a6;
        G_YEAR_MONTH = m64619a(522, m64619a, "AH", false);
        BuiltInAtomicType m64619a7 = m64619a(StandardNames.XS_G_MONTH, m64619a, "AI", false);
        G_MONTH = m64619a7;
        BuiltInAtomicType m64619a8 = m64619a(524, m64619a, "AJ", false);
        G_MONTH_DAY = m64619a8;
        G_YEAR = m64619a(StandardNames.XS_G_YEAR, m64619a, "AG", false);
        BuiltInAtomicType m64619a9 = m64619a(StandardNames.XS_G_DAY, m64619a, "AK", false);
        G_DAY = m64619a9;
        BuiltInAtomicType m64619a10 = m64619a(527, m64619a, "AX", true);
        HEX_BINARY = m64619a10;
        BuiltInAtomicType m64619a11 = m64619a(StandardNames.XS_BASE64_BINARY, m64619a, "A2", true);
        BASE64_BINARY = m64619a11;
        ANY_URI = m64619a(529, m64619a, "AU", true);
        QNAME = m64619a(530, m64619a, "AQ", false);
        NOTATION = m64619a(531, m64619a, "AN", false);
        BuiltInAtomicType m64619a12 = m64619a(StandardNames.XS_UNTYPED_ATOMIC, m64619a, "AZ", true);
        UNTYPED_ATOMIC = m64619a12;
        BuiltInAtomicType m64619a13 = m64619a(515, m64619a, "AD", true);
        DECIMAL = m64619a13;
        FLOAT = m64619a(516, m64619a, "AF", true);
        DOUBLE = m64619a(517, m64619a, "AO", true);
        BuiltInAtomicType m64619a14 = m64619a(StandardNames.XS_INTEGER, m64619a13, "ADI", true);
        INTEGER = m64619a14;
        BuiltInAtomicType m64619a15 = m64619a(534, m64619a14, "ADIN", true);
        NON_POSITIVE_INTEGER = m64619a15;
        BuiltInAtomicType m64619a16 = m64619a(StandardNames.XS_NEGATIVE_INTEGER, m64619a15, "ADINN", true);
        NEGATIVE_INTEGER = m64619a16;
        BuiltInAtomicType m64619a17 = m64619a(StandardNames.XS_LONG, m64619a14, "ADIL", true);
        LONG = m64619a17;
        BuiltInAtomicType m64619a18 = m64619a(537, m64619a17, "ADILI", true);
        INT = m64619a18;
        BuiltInAtomicType m64619a19 = m64619a(538, m64619a18, "ADILIS", true);
        SHORT = m64619a19;
        BuiltInAtomicType m64619a20 = m64619a(539, m64619a19, "ADILISB", true);
        BYTE = m64619a20;
        BuiltInAtomicType m64619a21 = m64619a(StandardNames.XS_NON_NEGATIVE_INTEGER, m64619a14, "ADIP", true);
        NON_NEGATIVE_INTEGER = m64619a21;
        BuiltInAtomicType m64619a22 = m64619a(StandardNames.XS_POSITIVE_INTEGER, m64619a21, "ADIPP", true);
        POSITIVE_INTEGER = m64619a22;
        BuiltInAtomicType m64619a23 = m64619a(542, m64619a21, "ADIPL", true);
        UNSIGNED_LONG = m64619a23;
        BuiltInAtomicType m64619a24 = m64619a(StandardNames.XS_UNSIGNED_INT, m64619a23, "ADIPLI", true);
        UNSIGNED_INT = m64619a24;
        BuiltInAtomicType m64619a25 = m64619a(StandardNames.XS_UNSIGNED_SHORT, m64619a24, "ADIPLIS", true);
        UNSIGNED_SHORT = m64619a25;
        BuiltInAtomicType m64619a26 = m64619a(StandardNames.XS_UNSIGNED_BYTE, m64619a25, "ADIPLISB", true);
        UNSIGNED_BYTE = m64619a26;
        BuiltInAtomicType m64619a27 = m64619a(StandardNames.XS_YEAR_MONTH_DURATION, m64619a4, "ARY", true);
        YEAR_MONTH_DURATION = m64619a27;
        BuiltInAtomicType m64619a28 = m64619a(634, m64619a4, "ARD", true);
        DAY_TIME_DURATION = m64619a28;
        BuiltInAtomicType m64619a29 = m64619a(StandardNames.XS_NORMALIZED_STRING, m64619a2, "ASN", true);
        NORMALIZED_STRING = m64619a29;
        BuiltInAtomicType m64619a30 = m64619a(554, m64619a29, "ASNT", true);
        TOKEN = m64619a30;
        BuiltInAtomicType m64619a31 = m64619a(StandardNames.XS_LANGUAGE, m64619a30, "ASNTL", true);
        LANGUAGE = m64619a31;
        BuiltInAtomicType m64619a32 = m64619a(StandardNames.XS_NAME, m64619a30, "ASNTN", true);
        NAME = m64619a32;
        BuiltInAtomicType m64619a33 = m64619a(StandardNames.XS_NMTOKEN, m64619a30, "ASNTK", true);
        NMTOKEN = m64619a33;
        BuiltInAtomicType m64619a34 = m64619a(559, m64619a32, "ASNTNC", true);
        NCNAME = m64619a34;
        BuiltInAtomicType m64619a35 = m64619a(StandardNames.XS_ID, m64619a34, "ASNTNCI", true);
        f102764ID = m64619a35;
        BuiltInAtomicType m64619a36 = m64619a(StandardNames.XS_IDREF, m64619a34, "ASNTNCR", true);
        IDREF = m64619a36;
        BuiltInAtomicType m64619a37 = m64619a(StandardNames.XS_ENTITY, m64619a34, "ASNTNCE", true);
        ENTITY = m64619a37;
        DATE_TIME_STAMP = m64619a(StandardNames.XS_DATE_TIME_STAMP, m64619a5, "AMP", true);
        StringConverter.StringToString stringToString = StringConverter.StringToString.INSTANCE;
        m64619a.stringConverter = stringToString;
        m64619a2.stringConverter = stringToString;
        m64619a31.stringConverter = StringConverter.StringToLanguage.INSTANCE;
        m64619a29.stringConverter = StringConverter.StringToNormalizedString.INSTANCE;
        m64619a30.stringConverter = StringConverter.StringToToken.INSTANCE;
        m64619a34.stringConverter = StringConverter.StringToNCName.TO_NCNAME;
        m64619a32.stringConverter = StringConverter.StringToName.INSTANCE;
        m64619a33.stringConverter = StringConverter.StringToNMTOKEN.INSTANCE;
        m64619a35.stringConverter = StringConverter.StringToNCName.TO_ID;
        m64619a36.stringConverter = StringConverter.StringToNCName.TO_IDREF;
        m64619a37.stringConverter = StringConverter.StringToNCName.TO_ENTITY;
        m64619a13.stringConverter = StringConverter.StringToDecimal.INSTANCE;
        m64619a14.stringConverter = StringConverter.StringToInteger.INSTANCE;
        m64619a4.stringConverter = StringConverter.StringToDuration.INSTANCE;
        m64619a7.stringConverter = StringConverter.StringToGMonth.INSTANCE;
        m64619a8.stringConverter = StringConverter.StringToGMonthDay.INSTANCE;
        m64619a9.stringConverter = StringConverter.StringToGDay.INSTANCE;
        m64619a28.stringConverter = StringConverter.StringToDayTimeDuration.INSTANCE;
        m64619a27.stringConverter = StringConverter.StringToYearMonthDuration.INSTANCE;
        m64619a6.stringConverter = StringConverter.StringToTime.INSTANCE;
        m64619a3.stringConverter = StringConverter.StringToBoolean.INSTANCE;
        m64619a10.stringConverter = StringConverter.StringToHexBinary.INSTANCE;
        m64619a11.stringConverter = StringConverter.StringToBase64Binary.INSTANCE;
        m64619a12.stringConverter = StringConverter.StringToUntypedAtomic.INSTANCE;
        m64619a15.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a15);
        m64619a16.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a16);
        m64619a17.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a17);
        m64619a18.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a18);
        m64619a19.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a19);
        m64619a20.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a20);
        m64619a21.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a21);
        m64619a22.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a22);
        m64619a23.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a23);
        m64619a24.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a24);
        m64619a25.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a25);
        m64619a26.stringConverter = new StringConverter.StringToIntegerSubtype(m64619a26);
    }

    public BuiltInAtomicType(int i) {
        this.f102767e = i;
    }

    /* renamed from: a */
    public static BuiltInAtomicType m64619a(int i, SimpleType simpleType, String str, boolean z) {
        BuiltInAtomicType builtInAtomicType = new BuiltInAtomicType(i);
        builtInAtomicType.setBaseTypeFingerprint(simpleType.getFingerprint());
        if (builtInAtomicType.isPrimitiveType()) {
            builtInAtomicType.f102769g = i;
        } else {
            builtInAtomicType.f102769g = ((AtomicType) simpleType).getPrimitiveType();
        }
        builtInAtomicType.f102770h = UType.fromTypeCode(builtInAtomicType.f102769g);
        builtInAtomicType.f102772j = z;
        builtInAtomicType.f102771i = str;
        BuiltInType.register(i, builtInAtomicType);
        f102765o.put(str, builtInAtomicType);
        return builtInAtomicType;
    }

    public static BuiltInAtomicType fromAlphaCode(String str) {
        return f102765o.get(str);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public final boolean allowsDerivation(int i) {
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void analyzeContentExpression(Expression expression, int i) throws XPathException {
        analyzeContentExpression(this, expression, i);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public AtomicSequence atomize(NodeInfo nodeInfo) throws XPathException {
        UnicodeString unicodeStringValue = nodeInfo.getUnicodeStringValue();
        if (unicodeStringValue.isEmpty() && nodeInfo.isNilled()) {
            return AtomicArray.EMPTY_ATOMIC_ARRAY;
        }
        int i = this.f102767e;
        if (i == 513) {
            return new StringValue(unicodeStringValue.tidy());
        }
        if (i == 631) {
            return StringValue.makeUntypedAtomic(unicodeStringValue);
        }
        StringConverter stringConverter = this.stringConverter;
        if (stringConverter == null) {
            stringConverter = getStringConverter(nodeInfo.getConfiguration().getConversionRules());
            if (isNamespaceSensitive()) {
                if (nodeInfo.getNodeKind() != 1) {
                    nodeInfo = nodeInfo.getParent();
                }
                stringConverter = (StringConverter) stringConverter.setNamespaceResolver(nodeInfo.getAllNamespaces());
            }
        }
        return stringConverter.convertString(unicodeStringValue).asAtomic();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public void checkTypeDerivationIsOK(SchemaType schemaType, int i) throws SchemaException {
        if (schemaType == AnySimpleType.getInstance() || isSameType(schemaType)) {
            return;
        }
        SchemaType baseType = getBaseType();
        if (baseType == null) {
            throw new SchemaException("The type " + getDescription() + " is not validly derived from the type " + schemaType.getDescription());
        }
        try {
            baseType.checkTypeDerivationIsOK(schemaType, i);
        } catch (SchemaException unused) {
            throw new SchemaException("The type " + getDescription() + " is not validly derived from the type " + schemaType.getDescription());
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof BuiltInAtomicType) && getFingerprint() == ((BuiltInAtomicType) obj).getFingerprint();
    }

    @Override // net.p110sf.saxon.type.ItemType
    public AtomicType getAtomizedItemType() {
        return this;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public final SchemaType getBaseType() {
        int i = this.f102768f;
        if (i == -1) {
            return null;
        }
        return BuiltInType.getSchemaType(i);
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return this.f102771i;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public final int getBlock() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public SchemaType getBuiltInBaseType() {
        while (this != null && this.getFingerprint() > 1023) {
            this = (BuiltInAtomicType) this.getBaseType();
        }
        return this;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public final int getDerivationMethod() {
        return 1;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDescription() {
        return getDisplayName();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getDisplayName() {
        return StandardNames.getDisplayName(this.f102767e);
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
    public final int getFingerprint() {
        return this.f102767e;
    }

    public SchemaType getKnownBaseType() {
        return getBaseType();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public String getName() {
        return StandardNames.getLocalName(this.f102767e);
    }

    @Override // net.p110sf.saxon.type.PlainType
    public List<? extends PlainType> getPlainMemberTypes() {
        return Collections.singletonList(this);
    }

    @Override // net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return this.f102769g;
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public int getRedefinitionLevel() {
        return 0;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public StringConverter getStringConverter(ConversionRules conversionRules) {
        StringConverter stringConverter = this.stringConverter;
        if (stringConverter != null) {
            return stringConverter;
        }
        int i = this.f102767e;
        if (i == 516) {
            return new StringConverter.StringToFloat(conversionRules);
        }
        if (i != 517) {
            if (i == 519) {
                return new StringConverter.StringToDateTime(conversionRules);
            }
            if (i == 565) {
                return new StringConverter.StringToDateTimeStamp(conversionRules);
            }
            if (i != 635) {
                switch (i) {
                    case 521:
                        return new StringConverter.StringToDate(conversionRules);
                    case 522:
                        return new StringConverter.StringToGYearMonth(conversionRules);
                    case StandardNames.XS_G_YEAR /* 523 */:
                        return new StringConverter.StringToGYear(conversionRules);
                    default:
                        switch (i) {
                            case 529:
                                return new StringConverter.StringToAnyURI(conversionRules);
                            case 530:
                                return new StringConverter.StringToQName(conversionRules);
                            case 531:
                                return new StringConverter.StringToNotation(conversionRules);
                            default:
                                throw new AssertionError("No string converter available for " + this);
                        }
                }
            }
        }
        return conversionRules.getStringToDoubleConverter();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public final StructuredQName getStructuredQName() {
        return new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", StandardNames.getLocalName(this.f102767e));
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
        return new StructuredQName(StandardNames.getPrefix(this.f102767e), StandardNames.getURI(this.f102767e), StandardNames.getLocalName(this.f102767e));
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public AtomicSequence getTypedValue(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) throws ValidationException {
        int i = this.f102767e;
        if (i == 513) {
            return new StringValue(unicodeString.tidy());
        }
        if (i == 631) {
            return StringValue.makeUntypedAtomic(unicodeString);
        }
        StringConverter stringConverter = getStringConverter(conversionRules);
        if (isNamespaceSensitive()) {
            stringConverter = (StringConverter) stringConverter.setNamespaceResolver(namespaceResolver);
        }
        return stringConverter.convertString(unicodeString).asAtomic();
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return this.f102770h;
    }

    @Override // net.p110sf.saxon.type.SchemaComponent
    public final SchemaValidationStatus getValidationStatus() {
        return SchemaValidationStatus.VALIDATED;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public int getWhitespaceAction() {
        int fingerprint = getFingerprint();
        if (fingerprint != 513) {
            return fingerprint != 553 ? 2 : 1;
        }
        return 0;
    }

    public int hashCode() {
        return getFingerprint();
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public boolean isAbstract() {
        int i = this.f102767e;
        return i == 531 || i == 573 || i == 632 || i == 635;
    }

    public boolean isAllowedInXSD10() {
        return getFingerprint() != 565;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public final boolean isAnonymousType() {
        return false;
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
        return true;
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public final boolean isComplexType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.SchemaType
    public boolean isIdRefType() {
        return this.f102767e == 561;
    }

    @Override // net.p110sf.saxon.type.AtomicType, net.p110sf.saxon.type.SchemaType
    public boolean isIdType() {
        return this.f102767e == 560;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public boolean isListType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.HyperType
    public boolean isNamespaceSensitive() {
        int fingerprint = getFingerprint();
        while (fingerprint > 1023) {
            this = (BuiltInAtomicType) this.getBaseType();
            fingerprint = this.getFingerprint();
        }
        return fingerprint == 530 || fingerprint == 531;
    }

    public boolean isNumericType() {
        BuiltInAtomicType primitiveItemType = getPrimitiveItemType();
        return primitiveItemType == NumericType.getInstance() || primitiveItemType == DECIMAL || primitiveItemType == DOUBLE || primitiveItemType == FLOAT || primitiveItemType == INTEGER;
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public boolean isOrdered(boolean z) {
        return this.f102772j || (z && (this == DURATION || this == ANY_ATOMIC));
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isPlainType() {
        return true;
    }

    public boolean isPrimitiveNumeric() {
        int fingerprint = getFingerprint();
        if (fingerprint == 533) {
            return true;
        }
        switch (fingerprint) {
            case 515:
            case 516:
            case 517:
                return true;
            default:
                return false;
        }
    }

    @Override // net.p110sf.saxon.type.AtomicType
    public final boolean isPrimitiveType() {
        return Type.isPrimitiveAtomicType(this.f102767e);
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public boolean isSameType(SchemaType schemaType) {
        return schemaType.getFingerprint() == getFingerprint();
    }

    @Override // net.p110sf.saxon.type.SchemaType
    public final boolean isSimpleType() {
        return true;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public boolean isUnionType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.PlainType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return (item instanceof AtomicValue) && Type.isSubType(((AtomicValue) item).getItemType(), this);
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType one() {
        if (this.f102773k == null) {
            this.f102773k = new SequenceType(this, 16384);
        }
        return this.f102773k;
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType oneOrMore() {
        if (this.f102774l == null) {
            this.f102774l = new SequenceType(this, 49152);
        }
        return this.f102774l;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString postprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public UnicodeString preprocess(UnicodeString unicodeString) {
        return unicodeString;
    }

    public final void setBaseTypeFingerprint(int i) {
        this.f102768f = i;
    }

    public String toString() {
        return getDisplayName();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x000f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0012. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0015. Please report as an issue. */
    @Override // net.p110sf.saxon.type.AtomicType
    public ValidationFailure validate(AtomicValue atomicValue, UnicodeString unicodeString, ConversionRules conversionRules) {
        int i = this.f102767e;
        if (i != 563) {
            if (i == 565) {
                if (((CalendarValue) atomicValue).getTimezoneInMinutes() == Integer.MIN_VALUE) {
                    return new ValidationFailure("xs:dateTimeStamp value must have a timezone");
                }
                return null;
            }
            if (i != 631) {
                switch (i) {
                    default:
                        switch (i) {
                            case StandardNames.XS_INTEGER /* 533 */:
                                if (atomicValue.getItemType() != DECIMAL || ((DecimalValue) atomicValue).isWholeNumber()) {
                                    return null;
                                }
                                return new ValidationFailure("xs:decimal value " + atomicValue.toShortString() + " cannot be down-cast to xs:integer");
                            case 534:
                            case StandardNames.XS_NEGATIVE_INTEGER /* 535 */:
                            case StandardNames.XS_LONG /* 536 */:
                            case 537:
                            case 538:
                            case 539:
                            case StandardNames.XS_NON_NEGATIVE_INTEGER /* 540 */:
                            case StandardNames.XS_POSITIVE_INTEGER /* 541 */:
                            case 542:
                            case StandardNames.XS_UNSIGNED_INT /* 543 */:
                            case StandardNames.XS_UNSIGNED_SHORT /* 544 */:
                            case StandardNames.XS_UNSIGNED_BYTE /* 545 */:
                                return ((IntegerValue) atomicValue).validateAgainstSubType(this);
                            default:
                                switch (i) {
                                    default:
                                        switch (i) {
                                            case StandardNames.XS_NAME /* 558 */:
                                            case 559:
                                            case StandardNames.XS_ID /* 560 */:
                                            case StandardNames.XS_IDREF /* 561 */:
                                                break;
                                            default:
                                                switch (i) {
                                                    case StandardNames.XS_YEAR_MONTH_DURATION /* 633 */:
                                                    case 634:
                                                        return null;
                                                    case 635:
                                                        break;
                                                    default:
                                                        throw new IllegalArgumentException();
                                                }
                                        }
                                    case StandardNames.XS_NORMALIZED_STRING /* 553 */:
                                    case 554:
                                    case StandardNames.XS_LANGUAGE /* 555 */:
                                    case StandardNames.XS_NMTOKEN /* 556 */:
                                        return this.stringConverter.validate(atomicValue.getUnicodeStringValue());
                                }
                        }
                    case 513:
                    case 514:
                    case 515:
                    case 516:
                    case 517:
                    case 518:
                    case 519:
                    case 520:
                    case 521:
                    case 522:
                    case StandardNames.XS_G_YEAR /* 523 */:
                    case 524:
                    case StandardNames.XS_G_DAY /* 525 */:
                    case StandardNames.XS_G_MONTH /* 526 */:
                    case 527:
                    case StandardNames.XS_BASE64_BINARY /* 528 */:
                    case 529:
                    case 530:
                    case 531:
                        return null;
                }
            }
            return null;
        }
        return this.stringConverter.validate(atomicValue.getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.type.SimpleType
    public ValidationFailure validateContent(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) {
        int fingerprint = getFingerprint();
        if (fingerprint == 513 || fingerprint == 573 || fingerprint == 631 || fingerprint == 632) {
            return null;
        }
        StringConverter stringConverter = this.stringConverter;
        if (stringConverter == null) {
            stringConverter = getStringConverter(conversionRules);
            if (isNamespaceSensitive()) {
                if (namespaceResolver == null) {
                    throw new UnsupportedOperationException("Cannot validate a QName without a namespace resolver");
                }
                ConversionResult convertString = ((StringConverter) stringConverter.setNamespaceResolver(namespaceResolver)).convertString(unicodeString);
                if (convertString instanceof ValidationFailure) {
                    return (ValidationFailure) convertString;
                }
                if (this.f102767e == 531) {
                    NotationValue notationValue = (NotationValue) convertString;
                    if (!conversionRules.isDeclaredNotation(notationValue.getNamespaceURI(), notationValue.getLocalName())) {
                        return new ValidationFailure("Notation {" + notationValue.getNamespaceURI() + "}" + notationValue.getLocalName() + " is not declared in the schema");
                    }
                }
                return null;
            }
        }
        return stringConverter.validate(unicodeString);
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType zeroOrMore() {
        if (this.f102776n == null) {
            this.f102776n = new SequenceType(this, 57344);
        }
        return this.f102776n;
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType zeroOrOne() {
        if (this.f102775m == null) {
            this.f102775m = new SequenceType(this, 24576);
        }
        return this.f102775m;
    }

    public static void analyzeContentExpression(SimpleType simpleType, Expression expression, int i) throws XPathException {
        if (i == 1) {
            expression.checkPermittedContents(simpleType, true);
        } else if (i == 2) {
            if ((expression instanceof ValueOf) || (expression instanceof Literal)) {
                expression.checkPermittedContents(simpleType, true);
            }
        }
    }

    @Override // net.p110sf.saxon.type.PlainType, net.p110sf.saxon.type.ItemType
    public BuiltInAtomicType getPrimitiveItemType() {
        if (isPrimitiveType()) {
            return this;
        }
        ItemType itemType = (ItemType) getBaseType();
        return itemType.isPlainType() ? (BuiltInAtomicType) itemType.getPrimitiveItemType() : this;
    }
}
