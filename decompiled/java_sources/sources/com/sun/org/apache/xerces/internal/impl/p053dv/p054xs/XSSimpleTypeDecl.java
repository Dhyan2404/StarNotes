package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.DatatypeException;
import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeFacetException;
import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSFacets;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.ListDV;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.ShortListImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.StringListImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSObjectListImpl;
import com.sun.org.apache.xerces.internal.p056xs.ShortList;
import com.sun.org.apache.xerces.internal.p056xs.StringList;
import com.sun.org.apache.xerces.internal.p056xs.XSAnnotation;
import com.sun.org.apache.xerces.internal.p056xs.XSFacet;
import com.sun.org.apache.xerces.internal.p056xs.XSMultiValueFacet;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import java.util.Vector;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.TypeInfo;

/* loaded from: classes10.dex */
public class XSSimpleTypeDecl implements XSSimpleType, TypeInfo {
    public static final short ANYATOMICTYPE_DT = 49;
    static final String ANY_TYPE = "anyType";
    public static final short DAYTIMEDURATION_DT = 47;
    static final int DERIVATION_ANY = 0;
    static final int DERIVATION_EXTENSION = 2;
    static final int DERIVATION_LIST = 8;
    static final int DERIVATION_RESTRICTION = 1;
    static final int DERIVATION_UNION = 4;
    static final short DV_ANYATOMICTYPE = 29;
    static final short DV_ANYSIMPLETYPE = 0;
    static final short DV_ANYURI = 17;
    static final short DV_BASE64BINARY = 16;
    static final short DV_BOOLEAN = 2;
    static final short DV_DATE = 9;
    static final short DV_DATETIME = 7;
    static final short DV_DAYTIMEDURATION = 28;
    static final short DV_DECIMAL = 3;
    static final short DV_DOUBLE = 5;
    static final short DV_DURATION = 6;
    static final short DV_ENTITY = 23;
    static final short DV_FLOAT = 4;
    static final short DV_GDAY = 13;
    static final short DV_GMONTH = 14;
    static final short DV_GMONTHDAY = 12;
    static final short DV_GYEAR = 11;
    static final short DV_GYEARMONTH = 10;
    static final short DV_HEXBINARY = 15;
    static final short DV_ID = 21;
    static final short DV_IDREF = 22;
    static final short DV_INTEGER = 24;
    static final short DV_LIST = 25;
    static final short DV_NOTATION = 20;
    static final short DV_PRECISIONDECIMAL = 19;
    static final short DV_QNAME = 18;
    static final short DV_STRING = 1;
    static final short DV_TIME = 8;
    static final short DV_UNION = 26;
    static final short DV_YEARMONTHDURATION = 27;
    static final short NORMALIZE_FULL = 2;
    static final short NORMALIZE_NONE = 0;
    static final short NORMALIZE_TRIM = 1;
    public static final short PRECISIONDECIMAL_DT = 48;
    static final short SPECIAL_PATTERN_NAME = 2;
    static final short SPECIAL_PATTERN_NCNAME = 3;
    static final short SPECIAL_PATTERN_NMTOKEN = 1;
    static final short SPECIAL_PATTERN_NONE = 0;
    static final String URI_SCHEMAFORSCHEMA = "http://www.w3.org/2001/XMLSchema";
    public static final short YEARMONTHDURATION_DT = 46;
    static final XSSimpleTypeDecl fAnyAtomicType;
    static final XSSimpleTypeDecl fAnySimpleType;
    static final ValidationContext fDummyContext;
    public XSObjectList enumerationAnnotations;
    private ObjectList fActualEnumeration;
    private XSObjectList fAnnotations;
    private boolean fAnonymous;
    private XSSimpleTypeDecl fBase;
    private boolean fBounded;
    private short fBuiltInKind;
    private Vector fEnumeration;
    private ShortList[] fEnumerationItemType;
    private ObjectList fEnumerationItemTypeList;
    private short[] fEnumerationType;
    private ShortList fEnumerationTypeList;
    private XSObjectListImpl fFacets;
    private short fFacetsDefined;
    private short fFinalSet;
    private boolean fFinite;
    private short fFixedFacet;
    private int fFractionDigits;
    private boolean fIsImmutable;
    private XSSimpleTypeDecl fItemType;
    private int fLength;
    private StringList fLexicalEnumeration;
    private StringList fLexicalPattern;
    private Object fMaxExclusive;
    private Object fMaxInclusive;
    private int fMaxLength;
    private XSSimpleTypeDecl[] fMemberTypes;
    private Object fMinExclusive;
    private Object fMinInclusive;
    private int fMinLength;
    private XSObjectListImpl fMultiValueFacets;
    private boolean fNumeric;
    private short fOrdered;
    private Vector fPattern;
    private Vector fPatternStr;
    private short fPatternType;
    private String fTargetNamespace;
    private int fTotalDigits;
    private String fTypeName;
    private short fValidationDV;
    private short fVariety;
    private short fWhiteSpace;
    public XSAnnotation fractionDigitsAnnotation;
    public XSAnnotation lengthAnnotation;
    public XSAnnotation maxExclusiveAnnotation;
    public XSAnnotation maxInclusiveAnnotation;
    public XSAnnotation maxLengthAnnotation;
    public XSAnnotation minExclusiveAnnotation;
    public XSAnnotation minInclusiveAnnotation;
    public XSAnnotation minLengthAnnotation;
    public XSObjectListImpl patternAnnotations;
    public XSAnnotation totalDigitsAnnotation;
    public XSAnnotation whiteSpaceAnnotation;
    static final TypeValidator[] fDVs = {new AnySimpleDV(), new StringDV(), new BooleanDV(), new DecimalDV(), new FloatDV(), new DoubleDV(), new DurationDV(), new DateTimeDV(), new TimeDV(), new DateDV(), new YearMonthDV(), new YearDV(), new MonthDayDV(), new DayDV(), new MonthDV(), new HexBinaryDV(), new Base64BinaryDV(), new AnyURIDV(), new QNameDV(), new PrecisionDecimalDV(), new QNameDV(), new IDDV(), new IDREFDV(), new EntityDV(), new IntegerDV(), new ListDV(), new UnionDV(), new YearMonthDurationDV(), new DayTimeDurationDV(), new AnyAtomicDV()};
    static final short[] fDVNormalizeType = {0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 0, 1, 1, 0};
    static final String[] SPECIAL_PATTERN_STRING = {"NONE", "NMTOKEN", "Name", "NCName"};
    static final String[] WS_FACET_STRING = {"preserve", "replace", "collapse"};
    static final ValidationContext fEmptyContext = new ValidationContext() { // from class: com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl.1
        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public void addId(String str) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public void addIdRef(String str) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public String getSymbol(String str) {
            return str.intern();
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public String getURI(String str) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean isEntityDeclared(String str) {
            return false;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean isEntityUnparsed(String str) {
            return false;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean isIdDeclared(String str) {
            return false;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean needExtraChecking() {
            return false;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean needFacetChecking() {
            return true;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean needToNormalize() {
            return true;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean useNamespaces() {
            return true;
        }
    };

    /* loaded from: classes10.dex */
    public class ValidationContextImpl implements ValidationContext {
        ValidationContext fExternal;
        NamespaceContext fNSContext;

        public ValidationContextImpl(ValidationContext validationContext) {
            this.fExternal = validationContext;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public void addId(String str) {
            this.fExternal.addId(str);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public void addIdRef(String str) {
            this.fExternal.addIdRef(str);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public String getSymbol(String str) {
            return this.fExternal.getSymbol(str);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public String getURI(String str) {
            NamespaceContext namespaceContext = this.fNSContext;
            return namespaceContext == null ? this.fExternal.getURI(str) : namespaceContext.getURI(str);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean isEntityDeclared(String str) {
            return this.fExternal.isEntityDeclared(str);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean isEntityUnparsed(String str) {
            return this.fExternal.isEntityUnparsed(str);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean isIdDeclared(String str) {
            return this.fExternal.isIdDeclared(str);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean needExtraChecking() {
            return this.fExternal.needExtraChecking();
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean needFacetChecking() {
            return this.fExternal.needFacetChecking();
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean needToNormalize() {
            return this.fExternal.needToNormalize();
        }

        public void setNSContext(NamespaceContext namespaceContext) {
            this.fNSContext = namespaceContext;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
        public boolean useNamespaces() {
            return true;
        }
    }

    /* loaded from: classes10.dex */
    public static final class XSFacetImpl implements XSFacet {
        final XSAnnotation annotation;
        final boolean fixed;
        final short kind;
        final String value;

        public XSFacetImpl(short s, String str, boolean z, XSAnnotation xSAnnotation) {
            this.kind = s;
            this.value = str;
            this.fixed = z;
            this.annotation = xSAnnotation;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSFacet
        public XSAnnotation getAnnotation() {
            return this.annotation;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSFacet
        public short getFacetKind() {
            return this.kind;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSFacet
        public boolean getFixed() {
            return this.fixed;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSFacet
        public String getLexicalFacetValue() {
            return this.value;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
        public String getName() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
        public String getNamespace() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
        public XSNamespaceItem getNamespaceItem() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
        public short getType() {
            return (short) 13;
        }
    }

    /* loaded from: classes10.dex */
    public static final class XSMVFacetImpl implements XSMultiValueFacet {
        XSObjectList annotations;
        final short kind;
        StringList values;

        public XSMVFacetImpl(short s, StringList stringList, XSObjectList xSObjectList) {
            this.kind = s;
            this.values = stringList;
            this.annotations = xSObjectList;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSMultiValueFacet
        public XSObjectList getAnnotations() {
            return this.annotations;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSMultiValueFacet
        public short getFacetKind() {
            return this.kind;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSMultiValueFacet
        public StringList getLexicalFacetValues() {
            return this.values;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
        public String getName() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
        public String getNamespace() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
        public XSNamespaceItem getNamespaceItem() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
        public short getType() {
            return (short) 14;
        }
    }

    static {
        XSSimpleTypeDecl xSSimpleTypeDecl = new XSSimpleTypeDecl(null, "anySimpleType", (short) 0, (short) 0, false, true, false, true, (short) 1);
        fAnySimpleType = xSSimpleTypeDecl;
        fAnyAtomicType = new XSSimpleTypeDecl(xSSimpleTypeDecl, "anyAtomicType", (short) 29, (short) 0, false, true, false, true, (short) 49);
        fDummyContext = new ValidationContext() { // from class: com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl.4
            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public void addId(String str) {
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public void addIdRef(String str) {
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public String getSymbol(String str) {
                return str.intern();
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public String getURI(String str) {
                return null;
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public boolean isEntityDeclared(String str) {
                return false;
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public boolean isEntityUnparsed(String str) {
                return false;
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public boolean isIdDeclared(String str) {
                return false;
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public boolean needExtraChecking() {
                return false;
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public boolean needFacetChecking() {
                return true;
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public boolean needToNormalize() {
                return false;
            }

            @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
            public boolean useNamespaces() {
                return true;
            }
        };
    }

    public XSSimpleTypeDecl() {
        this.fIsImmutable = false;
        this.fFinalSet = (short) 0;
        this.fVariety = (short) -1;
        this.fValidationDV = (short) -1;
        this.fFacetsDefined = (short) 0;
        this.fFixedFacet = (short) 0;
        this.fWhiteSpace = (short) 0;
        this.fLength = -1;
        this.fMinLength = -1;
        this.fMaxLength = -1;
        this.fTotalDigits = -1;
        this.fFractionDigits = -1;
        this.fAnnotations = null;
        this.fPatternType = (short) 0;
        this.fAnonymous = false;
    }

    private void caclFundamentalFacets() {
        setOrdered();
        setNumeric();
        setBounded();
        setCardinality();
    }

    private void checkExtraRules(ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        Object obj = validatedInfo.actualValue;
        short s = this.fVariety;
        if (s == 1) {
            fDVs[this.fValidationDV].checkExtraRules(obj, validationContext);
            return;
        }
        if (s != 2) {
            ((XSSimpleTypeDecl) validatedInfo.memberType).checkExtraRules(validationContext, validatedInfo);
            return;
        }
        ListDV.ListData listData = (ListDV.ListData) obj;
        int length = listData.getLength();
        if (this.fItemType.fVariety == 3) {
            XSSimpleTypeDecl[] xSSimpleTypeDeclArr = (XSSimpleTypeDecl[]) validatedInfo.memberTypes;
            XSSimpleType xSSimpleType = validatedInfo.memberType;
            for (int i = length - 1; i >= 0; i--) {
                validatedInfo.actualValue = listData.item(i);
                validatedInfo.memberType = xSSimpleTypeDeclArr[i];
                this.fItemType.checkExtraRules(validationContext, validatedInfo);
            }
            validatedInfo.memberType = xSSimpleType;
        } else {
            for (int i2 = length - 1; i2 >= 0; i2--) {
                validatedInfo.actualValue = listData.item(i2);
                this.fItemType.checkExtraRules(validationContext, validatedInfo);
            }
        }
        validatedInfo.actualValue = listData;
    }

    private void checkFacets(ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        int compare;
        int compare2;
        int totalDigits;
        int fractionDigits;
        Object obj = validatedInfo.actualValue;
        String str = validatedInfo.normalizedValue;
        short s = validatedInfo.actualValueType;
        ShortList shortList = validatedInfo.itemValueTypes;
        short s2 = this.fValidationDV;
        if (s2 != 18 && s2 != 20) {
            int dataLength = fDVs[s2].getDataLength(obj);
            short s3 = this.fFacetsDefined;
            if ((s3 & 4) != 0 && dataLength > this.fMaxLength) {
                throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MAX_LENGTH_VALID, new Object[]{str, Integer.toString(dataLength), Integer.toString(this.fMaxLength), this.fTypeName});
            }
            if ((s3 & 2) != 0 && dataLength < this.fMinLength) {
                throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MIN_LENGTH_VALID, new Object[]{str, Integer.toString(dataLength), Integer.toString(this.fMinLength), this.fTypeName});
            }
            if ((s3 & 1) != 0 && dataLength != this.fLength) {
                throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_LENGTH_VALID, new Object[]{str, Integer.toString(dataLength), Integer.toString(this.fLength), this.fTypeName});
            }
        }
        if ((this.fFacetsDefined & 2048) != 0) {
            int size = this.fEnumeration.size();
            short convertToPrimitiveKind = convertToPrimitiveKind(s);
            boolean z = false;
            for (int i = 0; i < size; i++) {
                short convertToPrimitiveKind2 = convertToPrimitiveKind(this.fEnumerationType[i]);
                if ((convertToPrimitiveKind == convertToPrimitiveKind2 || ((convertToPrimitiveKind == 1 && convertToPrimitiveKind2 == 2) || (convertToPrimitiveKind == 2 && convertToPrimitiveKind2 == 1))) && this.fEnumeration.elementAt(i).equals(obj)) {
                    if (convertToPrimitiveKind == 44 || convertToPrimitiveKind == 43) {
                        ShortList shortList2 = this.fEnumerationItemType[i];
                        int length = shortList != null ? shortList.getLength() : 0;
                        if (length == (shortList2 != null ? shortList2.getLength() : 0)) {
                            int i2 = 0;
                            while (i2 < length) {
                                short convertToPrimitiveKind3 = convertToPrimitiveKind(shortList.item(i2));
                                short convertToPrimitiveKind4 = convertToPrimitiveKind(shortList2.item(i2));
                                if (convertToPrimitiveKind3 != convertToPrimitiveKind4 && ((convertToPrimitiveKind3 != 1 || convertToPrimitiveKind4 != 2) && (convertToPrimitiveKind3 != 2 || convertToPrimitiveKind4 != 1))) {
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                            if (i2 == length) {
                            }
                        } else {
                            continue;
                        }
                    }
                    z = true;
                    break;
                }
            }
            if (!z) {
                throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_ENUM_VALID, new Object[]{str, this.fEnumeration.toString()});
            }
        }
        if ((this.fFacetsDefined & 1024) != 0 && (fractionDigits = fDVs[this.fValidationDV].getFractionDigits(obj)) > this.fFractionDigits) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_FRACTION_DIGITS_VALID, new Object[]{str, Integer.toString(fractionDigits), Integer.toString(this.fFractionDigits)});
        }
        if ((this.fFacetsDefined & 512) != 0 && (totalDigits = fDVs[this.fValidationDV].getTotalDigits(obj)) > this.fTotalDigits) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_TOTAL_DIGITS_VALID, new Object[]{str, Integer.toString(totalDigits), Integer.toString(this.fTotalDigits)});
        }
        if ((this.fFacetsDefined & 32) != 0 && (compare2 = fDVs[this.fValidationDV].compare(obj, this.fMaxInclusive)) != -1 && compare2 != 0) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MAX_INCLUSIVE_VALID, new Object[]{str, this.fMaxInclusive, this.fTypeName});
        }
        if ((this.fFacetsDefined & 64) != 0 && fDVs[this.fValidationDV].compare(obj, this.fMaxExclusive) != -1) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MAX_EXCLUSIVE_VALID, new Object[]{str, this.fMaxExclusive, this.fTypeName});
        }
        if ((this.fFacetsDefined & 256) != 0 && (compare = fDVs[this.fValidationDV].compare(obj, this.fMinInclusive)) != 1 && compare != 0) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MIN_INCLUSIVE_VALID, new Object[]{str, this.fMinInclusive, this.fTypeName});
        }
        if ((this.fFacetsDefined & 128) != 0 && fDVs[this.fValidationDV].compare(obj, this.fMinExclusive) != 1) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MIN_EXCLUSIVE_VALID, new Object[]{str, this.fMinExclusive, this.fTypeName});
        }
    }

    private short convertToPrimitiveKind(short s) {
        if (s <= 20) {
            return s;
        }
        if (s <= 29) {
            return (short) 2;
        }
        if (s <= 42) {
            return (short) 4;
        }
        return s;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object getActualValue(java.lang.Object r17, com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext r18, com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo r19, boolean r20) throws com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.XSSimpleTypeDecl.getActualValue(java.lang.Object, com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo, boolean):java.lang.Object");
    }

    private short getPrimitiveDV(short s) {
        if (s == 21 || s == 22 || s == 23) {
            return (short) 1;
        }
        if (s == 24) {
            return (short) 3;
        }
        return s;
    }

    private boolean isDerivedByAny(String str, String str2, XSTypeDefinition xSTypeDefinition) {
        XSTypeDefinition baseType;
        XSTypeDefinition xSTypeDefinition2 = null;
        while (xSTypeDefinition != null && xSTypeDefinition != xSTypeDefinition2) {
            if (str2.equals(xSTypeDefinition.getName()) && ((str == null && xSTypeDefinition.getNamespace() == null) || (str != null && str.equals(xSTypeDefinition.getNamespace())))) {
                return true;
            }
            if (isDerivedByRestriction(str, str2, xSTypeDefinition) || isDerivedByList(str, str2, xSTypeDefinition) || isDerivedByUnion(str, str2, xSTypeDefinition)) {
                return true;
            }
            XSSimpleTypeDecl xSSimpleTypeDecl = (XSSimpleTypeDecl) xSTypeDefinition;
            if (xSSimpleTypeDecl.getVariety() == 0 || xSSimpleTypeDecl.getVariety() == 1) {
                baseType = xSTypeDefinition.getBaseType();
            } else {
                if (xSSimpleTypeDecl.getVariety() == 3) {
                    if (xSSimpleTypeDecl.getMemberTypes().getLength() > 0) {
                        return isDerivedByAny(str, str2, (XSTypeDefinition) xSSimpleTypeDecl.getMemberTypes().item(0));
                    }
                } else if (xSSimpleTypeDecl.getVariety() == 2) {
                    baseType = xSSimpleTypeDecl.getItemType();
                }
                xSTypeDefinition2 = xSTypeDefinition;
            }
            XSTypeDefinition xSTypeDefinition3 = baseType;
            xSTypeDefinition2 = xSTypeDefinition;
            xSTypeDefinition = xSTypeDefinition3;
        }
        return false;
    }

    private boolean isDerivedByList(String str, String str2, XSTypeDefinition xSTypeDefinition) {
        XSSimpleTypeDefinition itemType;
        if (xSTypeDefinition == null) {
            return false;
        }
        XSSimpleTypeDefinition xSSimpleTypeDefinition = (XSSimpleTypeDefinition) xSTypeDefinition;
        return xSSimpleTypeDefinition.getVariety() == 2 && (itemType = xSSimpleTypeDefinition.getItemType()) != null && isDerivedByRestriction(str, str2, itemType);
    }

    private boolean isDerivedByRestriction(String str, String str2, XSTypeDefinition xSTypeDefinition) {
        XSTypeDefinition xSTypeDefinition2 = null;
        while (xSTypeDefinition != null && xSTypeDefinition != xSTypeDefinition2) {
            if (str2.equals(xSTypeDefinition.getName())) {
                if (str != null && str.equals(xSTypeDefinition.getNamespace())) {
                    return true;
                }
                if (xSTypeDefinition.getNamespace() == null && str == null) {
                    return true;
                }
            }
            XSTypeDefinition xSTypeDefinition3 = xSTypeDefinition;
            xSTypeDefinition = xSTypeDefinition.getBaseType();
            xSTypeDefinition2 = xSTypeDefinition3;
        }
        return false;
    }

    private boolean isDerivedByUnion(String str, String str2, XSTypeDefinition xSTypeDefinition) {
        if (xSTypeDefinition != null) {
            XSSimpleTypeDefinition xSSimpleTypeDefinition = (XSSimpleTypeDefinition) xSTypeDefinition;
            if (xSSimpleTypeDefinition.getVariety() == 3) {
                XSObjectList memberTypes = xSSimpleTypeDefinition.getMemberTypes();
                for (int i = 0; i < memberTypes.getLength(); i++) {
                    if (memberTypes.item(i) != null && isDerivedByRestriction(str, str2, (XSSimpleTypeDefinition) memberTypes.item(i))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static String normalize(String str, short s) {
        int i;
        int i2;
        char charAt;
        int length = str == null ? 0 : str.length();
        if (length == 0 || s == 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (s == 1) {
            for (int i3 = 0; i3 < length; i3++) {
                char charAt2 = str.charAt(i3);
                if (charAt2 != '\t' && charAt2 != '\n' && charAt2 != '\r') {
                    stringBuffer.append(charAt2);
                } else {
                    stringBuffer.append(' ');
                }
            }
        } else {
            int i4 = 0;
            boolean z = true;
            while (i4 < length) {
                char charAt3 = str.charAt(i4);
                if (charAt3 == '\t' || charAt3 == '\n' || charAt3 == '\r' || charAt3 == ' ') {
                    while (true) {
                        i = length - 1;
                        if (i4 >= i || !((charAt = str.charAt((i2 = i4 + 1))) == '\t' || charAt == '\n' || charAt == '\r' || charAt == ' ')) {
                            break;
                        }
                        i4 = i2;
                    }
                    if (i4 < i && !z) {
                        stringBuffer.append(' ');
                    }
                } else {
                    stringBuffer.append(charAt3);
                    z = false;
                }
                i4++;
            }
        }
        return stringBuffer.toString();
    }

    private void setBounded() {
        short s = this.fVariety;
        if (s == 1) {
            short s2 = this.fFacetsDefined;
            if (((s2 & 256) == 0 && (s2 & 128) == 0) || ((s2 & 32) == 0 && (s2 & 64) == 0)) {
                this.fBounded = false;
                return;
            } else {
                this.fBounded = true;
                return;
            }
        }
        if (s == 2) {
            short s3 = this.fFacetsDefined;
            if ((s3 & 1) == 0 && ((s3 & 2) == 0 || (s3 & 4) == 0)) {
                this.fBounded = false;
                return;
            } else {
                this.fBounded = true;
                return;
            }
        }
        if (s == 3) {
            XSSimpleTypeDecl[] xSSimpleTypeDeclArr = this.fMemberTypes;
            short primitiveDV = xSSimpleTypeDeclArr.length > 0 ? getPrimitiveDV(xSSimpleTypeDeclArr[0].fValidationDV) : (short) 0;
            for (int i = 0; i < xSSimpleTypeDeclArr.length; i++) {
                if (!xSSimpleTypeDeclArr[i].getBounded() || primitiveDV != getPrimitiveDV(xSSimpleTypeDeclArr[i].fValidationDV)) {
                    this.fBounded = false;
                    return;
                }
            }
            this.fBounded = true;
        }
    }

    private void setCardinality() {
        short s = this.fVariety;
        if (s != 1) {
            if (s == 2) {
                short s2 = this.fFacetsDefined;
                if ((s2 & 1) == 0 && ((s2 & 2) == 0 || (s2 & 4) == 0)) {
                    this.fFinite = false;
                    return;
                } else {
                    this.fFinite = true;
                    return;
                }
            }
            if (s == 3) {
                for (XSSimpleTypeDecl xSSimpleTypeDecl : this.fMemberTypes) {
                    if (!xSSimpleTypeDecl.getFinite()) {
                        this.fFinite = false;
                        return;
                    }
                }
                this.fFinite = true;
                return;
            }
            return;
        }
        if (this.fBase.fFinite) {
            this.fFinite = true;
            return;
        }
        short s3 = this.fFacetsDefined;
        if ((s3 & 1) != 0 || (s3 & 4) != 0 || (s3 & 512) != 0) {
            this.fFinite = true;
            return;
        }
        if (((s3 & 256) == 0 && (s3 & 128) == 0) || ((s3 & 32) == 0 && (s3 & 64) == 0)) {
            this.fFinite = false;
        } else if ((s3 & 1024) != 0 || specialCardinalityCheck()) {
            this.fFinite = true;
        } else {
            this.fFinite = false;
        }
    }

    private void setNumeric() {
        short s = this.fVariety;
        if (s == 1) {
            this.fNumeric = this.fBase.fNumeric;
            return;
        }
        if (s == 2) {
            this.fNumeric = false;
            return;
        }
        if (s == 3) {
            for (XSSimpleTypeDecl xSSimpleTypeDecl : this.fMemberTypes) {
                if (!xSSimpleTypeDecl.getNumeric()) {
                    this.fNumeric = false;
                    return;
                }
            }
            this.fNumeric = true;
        }
    }

    private void setOrdered() {
        XSSimpleTypeDecl[] xSSimpleTypeDeclArr;
        short s = this.fVariety;
        if (s == 1) {
            this.fOrdered = this.fBase.fOrdered;
            return;
        }
        if (s == 2) {
            this.fOrdered = (short) 0;
            return;
        }
        if (s == 3) {
            XSSimpleTypeDecl[] xSSimpleTypeDeclArr2 = this.fMemberTypes;
            if (xSSimpleTypeDeclArr2.length == 0) {
                this.fOrdered = (short) 1;
                return;
            }
            short primitiveDV = getPrimitiveDV(xSSimpleTypeDeclArr2[0].fValidationDV);
            boolean z = primitiveDV != 0;
            boolean z2 = this.fMemberTypes[0].fOrdered == 0;
            int i = 1;
            while (true) {
                xSSimpleTypeDeclArr = this.fMemberTypes;
                if (i >= xSSimpleTypeDeclArr.length || !(z || z2)) {
                    break;
                }
                if (z) {
                    z = primitiveDV == getPrimitiveDV(xSSimpleTypeDeclArr[i].fValidationDV);
                }
                if (z2) {
                    z2 = this.fMemberTypes[i].fOrdered == 0;
                }
                i++;
            }
            if (z) {
                this.fOrdered = xSSimpleTypeDeclArr[0].fOrdered;
            } else if (z2) {
                this.fOrdered = (short) 0;
            } else {
                this.fOrdered = (short) 1;
            }
        }
    }

    private boolean specialCardinalityCheck() {
        short s = this.fBase.fValidationDV;
        return s == 9 || s == 10 || s == 11 || s == 12 || s == 13 || s == 14;
    }

    private String whiteSpaceValue(short s) {
        return WS_FACET_STRING[s];
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType
    public void applyFacets(XSFacets xSFacets, short s, short s2, ValidationContext validationContext) throws InvalidDatatypeFacetException {
        applyFacets(xSFacets, s, s2, (short) 0, validationContext);
    }

    public void applyFacets1(XSFacets xSFacets, short s, short s2) {
        try {
            applyFacets(xSFacets, s, s2, (short) 0, fDummyContext);
            this.fIsImmutable = true;
        } catch (InvalidDatatypeFacetException unused) {
            throw new RuntimeException("internal error");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, com.sun.org.apache.xerces.internal.xs.XSObject] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.sun.org.apache.xerces.internal.xs.XSTypeDefinition] */
    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public boolean derivedFrom(String str, String str2, short s) {
        if (str2 == null) {
            return false;
        }
        if ("http://www.w3.org/2001/XMLSchema".equals(str) && "anyType".equals(str2)) {
            return true;
        }
        while (true) {
            if ((!str2.equals(this.getName()) || ((str != null || this.getNamespace() != null) && (str == null || !str.equals(this.getNamespace())))) && this != fAnySimpleType) {
                this = this.getBaseType();
            }
        }
        return this != fAnySimpleType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.sun.org.apache.xerces.internal.xs.XSTypeDefinition] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public boolean derivedFromType(XSTypeDefinition xSTypeDefinition, short s) {
        if (xSTypeDefinition == null) {
            return false;
        }
        ?? r2 = this;
        if (xSTypeDefinition.getBaseType() == xSTypeDefinition) {
            return true;
        }
        while (r2 != xSTypeDefinition && r2 != fAnySimpleType) {
            r2 = r2.getBaseType();
        }
        return r2 == xSTypeDefinition;
    }

    public ObjectList getActualEnumeration() {
        if (this.fActualEnumeration == null) {
            this.fActualEnumeration = new ObjectList() { // from class: com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl.2
                @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
                public boolean contains(Object obj) {
                    return XSSimpleTypeDecl.this.fEnumeration != null && XSSimpleTypeDecl.this.fEnumeration.contains(obj);
                }

                @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
                public int getLength() {
                    if (XSSimpleTypeDecl.this.fEnumeration != null) {
                        return XSSimpleTypeDecl.this.fEnumeration.size();
                    }
                    return 0;
                }

                @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
                public Object item(int i) {
                    if (i < 0 || i >= getLength()) {
                        return null;
                    }
                    return XSSimpleTypeDecl.this.fEnumeration.elementAt(i);
                }
            };
        }
        return this.fActualEnumeration;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.fAnnotations;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public boolean getAnonymous() {
        return this.fAnonymous || this.fTypeName == null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public XSTypeDefinition getBaseType() {
        return this.fBase;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public boolean getBounded() {
        return this.fBounded;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public short getBuiltInKind() {
        return this.fBuiltInKind;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public short getDefinedFacets() {
        int i;
        if (this.fPatternType != 0) {
            i = this.fFacetsDefined | 8;
        } else {
            if (this.fValidationDV != 24) {
                return this.fFacetsDefined;
            }
            i = this.fFacetsDefined | 8 | 1024;
        }
        return (short) i;
    }

    public ObjectList getEnumerationItemTypeList() {
        if (this.fEnumerationItemTypeList == null) {
            if (this.fEnumerationItemType == null) {
                return null;
            }
            this.fEnumerationItemTypeList = new ObjectList() { // from class: com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl.3
                @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
                public boolean contains(Object obj) {
                    if (XSSimpleTypeDecl.this.fEnumerationItemType != null && (obj instanceof ShortList)) {
                        for (int i = 0; i < XSSimpleTypeDecl.this.fEnumerationItemType.length; i++) {
                            if (XSSimpleTypeDecl.this.fEnumerationItemType[i] == obj) {
                                return true;
                            }
                        }
                    }
                    return false;
                }

                @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
                public int getLength() {
                    if (XSSimpleTypeDecl.this.fEnumerationItemType != null) {
                        return XSSimpleTypeDecl.this.fEnumerationItemType.length;
                    }
                    return 0;
                }

                @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.ObjectList
                public Object item(int i) {
                    if (i < 0 || i >= getLength()) {
                        return null;
                    }
                    return XSSimpleTypeDecl.this.fEnumerationItemType[i];
                }
            };
        }
        return this.fEnumerationItemTypeList;
    }

    public ShortList getEnumerationTypeList() {
        if (this.fEnumerationTypeList == null) {
            short[] sArr = this.fEnumerationType;
            if (sArr == null) {
                return null;
            }
            this.fEnumerationTypeList = new ShortListImpl(sArr, sArr.length);
        }
        return this.fEnumerationTypeList;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public XSObjectList getFacets() {
        short s;
        int i;
        if (this.fFacets == null && ((s = this.fFacetsDefined) != 0 || this.fValidationDV == 24)) {
            XSFacetImpl[] xSFacetImplArr = new XSFacetImpl[10];
            if ((s & 16) != 0) {
                xSFacetImplArr[0] = new XSFacetImpl((short) 16, WS_FACET_STRING[this.fWhiteSpace], (this.fFixedFacet & 16) != 0, this.whiteSpaceAnnotation);
                i = 1;
            } else {
                i = 0;
            }
            int i2 = this.fLength;
            if (i2 != -1) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 1, Integer.toString(i2), (this.fFixedFacet & 1) != 0, this.lengthAnnotation);
                i++;
            }
            int i3 = this.fMinLength;
            if (i3 != -1) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 2, Integer.toString(i3), (this.fFixedFacet & 2) != 0, this.minLengthAnnotation);
                i++;
            }
            int i4 = this.fMaxLength;
            if (i4 != -1) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 4, Integer.toString(i4), (this.fFixedFacet & 4) != 0, this.maxLengthAnnotation);
                i++;
            }
            int i5 = this.fTotalDigits;
            if (i5 != -1) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 512, Integer.toString(i5), (this.fFixedFacet & 512) != 0, this.totalDigitsAnnotation);
                i++;
            }
            if (this.fValidationDV == 24) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 1024, "0", true, null);
                i++;
            }
            int i6 = this.fFractionDigits;
            if (i6 != -1) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 1024, Integer.toString(i6), (this.fFixedFacet & 1024) != 0, this.fractionDigitsAnnotation);
                i++;
            }
            Object obj = this.fMaxInclusive;
            if (obj != null) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 32, obj.toString(), (this.fFixedFacet & 32) != 0, this.maxInclusiveAnnotation);
                i++;
            }
            Object obj2 = this.fMaxExclusive;
            if (obj2 != null) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 64, obj2.toString(), (this.fFixedFacet & 64) != 0, this.maxExclusiveAnnotation);
                i++;
            }
            Object obj3 = this.fMinExclusive;
            if (obj3 != null) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 128, obj3.toString(), (this.fFixedFacet & 128) != 0, this.minExclusiveAnnotation);
                i++;
            }
            Object obj4 = this.fMinInclusive;
            if (obj4 != null) {
                xSFacetImplArr[i] = new XSFacetImpl((short) 256, obj4.toString(), (this.fFixedFacet & 256) != 0, this.minInclusiveAnnotation);
                i++;
            }
            this.fFacets = new XSObjectListImpl(xSFacetImplArr, i);
        }
        XSObjectListImpl xSObjectListImpl = this.fFacets;
        return xSObjectListImpl != null ? xSObjectListImpl : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public short getFinal() {
        return this.fFinalSet;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public boolean getFinite() {
        return this.fFinite;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public short getFixedFacets() {
        return this.fValidationDV == 24 ? (short) (this.fFixedFacet | 1024) : this.fFixedFacet;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public XSSimpleTypeDefinition getItemType() {
        if (this.fVariety == 2) {
            return this.fItemType;
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public StringList getLexicalEnumeration() {
        if (this.fLexicalEnumeration == null) {
            Vector vector = this.fEnumeration;
            if (vector == null) {
                return StringListImpl.EMPTY_LIST;
            }
            int size = vector.size();
            String[] strArr = new String[size];
            for (int i = 0; i < size; i++) {
                strArr[i] = this.fEnumeration.elementAt(i).toString();
            }
            this.fLexicalEnumeration = new StringListImpl(strArr, size);
        }
        return this.fLexicalEnumeration;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public String getLexicalFacetValue(short s) {
        int i;
        if (s == 1) {
            int i2 = this.fLength;
            if (i2 == -1) {
                return null;
            }
            return Integer.toString(i2);
        }
        if (s == 2) {
            int i3 = this.fMinLength;
            if (i3 == -1) {
                return null;
            }
            return Integer.toString(i3);
        }
        if (s == 4) {
            int i4 = this.fMaxLength;
            if (i4 == -1) {
                return null;
            }
            return Integer.toString(i4);
        }
        if (s == 16) {
            return WS_FACET_STRING[this.fWhiteSpace];
        }
        if (s == 32) {
            Object obj = this.fMaxInclusive;
            if (obj == null) {
                return null;
            }
            return obj.toString();
        }
        if (s == 64) {
            Object obj2 = this.fMaxExclusive;
            if (obj2 == null) {
                return null;
            }
            return obj2.toString();
        }
        if (s == 128) {
            Object obj3 = this.fMinExclusive;
            if (obj3 == null) {
                return null;
            }
            return obj3.toString();
        }
        if (s == 256) {
            Object obj4 = this.fMinInclusive;
            if (obj4 == null) {
                return null;
            }
            return obj4.toString();
        }
        if (s != 512) {
            if (s == 1024 && (i = this.fFractionDigits) != -1) {
                return Integer.toString(i);
            }
            return null;
        }
        if (this.fValidationDV == 24) {
            return "0";
        }
        int i5 = this.fTotalDigits;
        if (i5 == -1) {
            return null;
        }
        return Integer.toString(i5);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public StringList getLexicalPattern() {
        String[] strArr;
        if (this.fPatternType == 0 && this.fValidationDV != 24 && this.fPatternStr == null) {
            return StringListImpl.EMPTY_LIST;
        }
        if (this.fLexicalPattern == null) {
            Vector vector = this.fPatternStr;
            int size = vector == null ? 0 : vector.size();
            short s = this.fPatternType;
            if (s == 1) {
                strArr = new String[size + 1];
                strArr[size] = "\\c+";
            } else if (s == 2) {
                strArr = new String[size + 1];
                strArr[size] = "\\i\\c*";
            } else if (s == 3) {
                strArr = new String[size + 2];
                strArr[size] = "\\i\\c*";
                strArr[size + 1] = "[\\i-[:]][\\c-[:]]*";
            } else if (this.fValidationDV == 24) {
                strArr = new String[size + 1];
                strArr[size] = "[\\-+]?[0-9]+";
            } else {
                strArr = new String[size];
            }
            for (int i = 0; i < size; i++) {
                strArr[i] = (String) this.fPatternStr.elementAt(i);
            }
            this.fLexicalPattern = new StringListImpl(strArr, strArr.length);
        }
        return this.fLexicalPattern;
    }

    public Object getMaxExclusiveValue() {
        return this.fMaxExclusive;
    }

    public Object getMaxInclusiveValue() {
        return this.fMaxInclusive;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public XSObjectList getMemberTypes() {
        if (this.fVariety != 3) {
            return null;
        }
        XSSimpleTypeDecl[] xSSimpleTypeDeclArr = this.fMemberTypes;
        return new XSObjectListImpl(xSSimpleTypeDeclArr, xSSimpleTypeDeclArr.length);
    }

    public Object getMinExclusiveValue() {
        return this.fMinExclusive;
    }

    public Object getMinInclusiveValue() {
        return this.fMinInclusive;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public XSObjectList getMultiValueFacets() {
        if (this.fMultiValueFacets == null) {
            short s = this.fFacetsDefined;
            if ((s & 2048) != 0 || (s & 8) != 0 || this.fPatternType != 0 || this.fValidationDV == 24) {
                XSMVFacetImpl[] xSMVFacetImplArr = new XSMVFacetImpl[2];
                int i = 0;
                if ((s & 8) != 0 || this.fPatternType != 0 || this.fValidationDV == 24) {
                    xSMVFacetImplArr[0] = new XSMVFacetImpl((short) 8, getLexicalPattern(), this.patternAnnotations);
                    i = 1;
                }
                if (this.fEnumeration != null) {
                    xSMVFacetImplArr[i] = new XSMVFacetImpl((short) 2048, getLexicalEnumeration(), this.enumerationAnnotations);
                    i++;
                }
                this.fMultiValueFacets = new XSObjectListImpl(xSMVFacetImplArr, i);
            }
        }
        XSObjectListImpl xSObjectListImpl = this.fMultiValueFacets;
        return xSObjectListImpl != null ? xSObjectListImpl : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getName() {
        if (getAnonymous()) {
            return null;
        }
        return this.fTypeName;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getNamespace() {
        return this.fTargetNamespace;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public boolean getNumeric() {
        return this.fNumeric;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public short getOrdered() {
        return this.fOrdered;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType
    public short getPrimitiveKind() {
        short s;
        if (this.fVariety != 1 || (s = this.fValidationDV) == 0) {
            return (short) 0;
        }
        if (s == 21 || s == 22 || s == 23) {
            return (short) 1;
        }
        if (s == 24) {
            return (short) 3;
        }
        return s;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public XSSimpleTypeDefinition getPrimitiveType() {
        if (this.fVariety != 1 || this.fValidationDV == 0) {
            return null;
        }
        while (true) {
            XSSimpleTypeDecl xSSimpleTypeDecl = this.fBase;
            if (xSSimpleTypeDecl == fAnySimpleType) {
                return this;
            }
            this = xSSimpleTypeDecl;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public short getType() {
        return (short) 3;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public short getTypeCategory() {
        return (short) 16;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeName() {
        return this.fTypeName;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        return getNamespace();
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public short getVariety() {
        if (this.fValidationDV == 0) {
            return (short) 0;
        }
        return this.fVariety;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType
    public short getWhitespace() throws DatatypeException {
        if (this.fVariety != 3) {
            return this.fWhiteSpace;
        }
        throw new DatatypeException("dt-whitespace", new Object[]{this.fTypeName});
    }

    public boolean isDOMDerivedFrom(String str, String str2, int i) {
        if (str2 == null) {
            return false;
        }
        if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(str) && "anyType".equals(str2) && ((i & 1) != 0 || i == 0)) {
            return true;
        }
        int i2 = i & 1;
        if (i2 != 0 && isDerivedByRestriction(str, str2, this)) {
            return true;
        }
        int i3 = i & 8;
        if (i3 != 0 && isDerivedByList(str, str2, this)) {
            return true;
        }
        int i4 = i & 4;
        if (i4 != 0 && isDerivedByUnion(str, str2, this)) {
            return true;
        }
        int i5 = i & 2;
        if (!(i5 != 0 && i2 == 0 && i3 == 0 && i4 == 0) && i5 == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return isDerivedByAny(str, str2, this);
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public boolean isDefinedFacet(short s) {
        if ((this.fFacetsDefined & s) != 0) {
            return true;
        }
        if (this.fPatternType != 0) {
            return s == 8;
        }
        if (this.fValidationDV == 24) {
            return s == 8 || s == 1024;
        }
        return false;
    }

    @Override // org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        return isDOMDerivedFrom(str, str2, i);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType
    public boolean isEqual(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition
    public boolean isFinal(short s) {
        return (this.fFinalSet & s) != 0;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition
    public boolean isFixedFacet(short s) {
        if ((this.fFixedFacet & s) != 0) {
            return true;
        }
        return this.fValidationDV == 24 && s == 1024;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType
    public boolean isIDType() {
        short s = this.fVariety;
        if (s == 1) {
            return this.fValidationDV == 21;
        }
        if (s == 2) {
            return this.fItemType.isIDType();
        }
        if (s == 3) {
            int i = 0;
            while (true) {
                XSSimpleTypeDecl[] xSSimpleTypeDeclArr = this.fMemberTypes;
                if (i >= xSSimpleTypeDeclArr.length) {
                    break;
                }
                if (xSSimpleTypeDeclArr[i].isIDType()) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    public boolean isIdentical(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        return fDVs[this.fValidationDV].isIdentical(obj, obj2);
    }

    public void reportError(String str, Object[] objArr) throws InvalidDatatypeFacetException {
        throw new InvalidDatatypeFacetException(str, objArr);
    }

    public void reset() {
        if (this.fIsImmutable) {
            return;
        }
        this.fItemType = null;
        this.fMemberTypes = null;
        this.fTypeName = null;
        this.fTargetNamespace = null;
        this.fFinalSet = (short) 0;
        this.fBase = null;
        this.fVariety = (short) -1;
        this.fValidationDV = (short) -1;
        this.fFacetsDefined = (short) 0;
        this.fFixedFacet = (short) 0;
        this.fWhiteSpace = (short) 0;
        this.fLength = -1;
        this.fMinLength = -1;
        this.fMaxLength = -1;
        this.fTotalDigits = -1;
        this.fFractionDigits = -1;
        this.fPattern = null;
        this.fPatternStr = null;
        this.fEnumeration = null;
        this.fEnumerationType = null;
        this.fEnumerationItemType = null;
        this.fLexicalPattern = null;
        this.fLexicalEnumeration = null;
        this.fMaxInclusive = null;
        this.fMaxExclusive = null;
        this.fMinExclusive = null;
        this.fMinInclusive = null;
        this.lengthAnnotation = null;
        this.minLengthAnnotation = null;
        this.maxLengthAnnotation = null;
        this.whiteSpaceAnnotation = null;
        this.totalDigitsAnnotation = null;
        this.fractionDigitsAnnotation = null;
        this.patternAnnotations = null;
        this.enumerationAnnotations = null;
        this.maxInclusiveAnnotation = null;
        this.maxExclusiveAnnotation = null;
        this.minInclusiveAnnotation = null;
        this.minExclusiveAnnotation = null;
        this.fPatternType = (short) 0;
        this.fAnnotations = null;
        this.fFacets = null;
    }

    public void setAnonymous(boolean z) {
        this.fAnonymous = z;
    }

    public XSSimpleTypeDecl setListValues(String str, String str2, short s, XSSimpleTypeDecl xSSimpleTypeDecl, XSObjectList xSObjectList) {
        if (this.fIsImmutable) {
            return null;
        }
        this.fBase = fAnySimpleType;
        this.fTypeName = str;
        this.fTargetNamespace = str2;
        this.fFinalSet = s;
        this.fAnnotations = xSObjectList;
        this.fVariety = (short) 2;
        this.fItemType = xSSimpleTypeDecl;
        this.fValidationDV = (short) 25;
        this.fFacetsDefined = (short) 16;
        this.fFixedFacet = (short) 16;
        this.fWhiteSpace = (short) 2;
        caclFundamentalFacets();
        this.fBuiltInKind = (short) 44;
        return this;
    }

    public XSSimpleTypeDecl setRestrictionValues(XSSimpleTypeDecl xSSimpleTypeDecl, String str, String str2, short s, XSObjectList xSObjectList) {
        if (this.fIsImmutable) {
            return null;
        }
        this.fBase = xSSimpleTypeDecl;
        this.fTypeName = str;
        this.fTargetNamespace = str2;
        this.fFinalSet = s;
        this.fAnnotations = xSObjectList;
        short s2 = xSSimpleTypeDecl.fVariety;
        this.fVariety = s2;
        this.fValidationDV = xSSimpleTypeDecl.fValidationDV;
        if (s2 == 2) {
            this.fItemType = xSSimpleTypeDecl.fItemType;
        } else if (s2 == 3) {
            this.fMemberTypes = xSSimpleTypeDecl.fMemberTypes;
        }
        this.fLength = xSSimpleTypeDecl.fLength;
        this.fMinLength = xSSimpleTypeDecl.fMinLength;
        this.fMaxLength = xSSimpleTypeDecl.fMaxLength;
        this.fPattern = xSSimpleTypeDecl.fPattern;
        this.fPatternStr = xSSimpleTypeDecl.fPatternStr;
        this.fEnumeration = xSSimpleTypeDecl.fEnumeration;
        this.fEnumerationType = xSSimpleTypeDecl.fEnumerationType;
        this.fEnumerationItemType = xSSimpleTypeDecl.fEnumerationItemType;
        this.fWhiteSpace = xSSimpleTypeDecl.fWhiteSpace;
        this.fMaxExclusive = xSSimpleTypeDecl.fMaxExclusive;
        this.fMaxInclusive = xSSimpleTypeDecl.fMaxInclusive;
        this.fMinExclusive = xSSimpleTypeDecl.fMinExclusive;
        this.fMinInclusive = xSSimpleTypeDecl.fMinInclusive;
        this.fTotalDigits = xSSimpleTypeDecl.fTotalDigits;
        this.fFractionDigits = xSSimpleTypeDecl.fFractionDigits;
        this.fPatternType = xSSimpleTypeDecl.fPatternType;
        this.fFixedFacet = xSSimpleTypeDecl.fFixedFacet;
        this.fFacetsDefined = xSSimpleTypeDecl.fFacetsDefined;
        caclFundamentalFacets();
        this.fBuiltInKind = xSSimpleTypeDecl.fBuiltInKind;
        return this;
    }

    public XSSimpleTypeDecl setUnionValues(String str, String str2, short s, XSSimpleTypeDecl[] xSSimpleTypeDeclArr, XSObjectList xSObjectList) {
        if (this.fIsImmutable) {
            return null;
        }
        this.fBase = fAnySimpleType;
        this.fTypeName = str;
        this.fTargetNamespace = str2;
        this.fFinalSet = s;
        this.fAnnotations = xSObjectList;
        this.fVariety = (short) 3;
        this.fMemberTypes = xSSimpleTypeDeclArr;
        this.fValidationDV = (short) 26;
        this.fFacetsDefined = (short) 16;
        this.fWhiteSpace = (short) 2;
        caclFundamentalFacets();
        this.fBuiltInKind = (short) 45;
        return this;
    }

    public String toString() {
        return this.fTargetNamespace + "," + this.fTypeName;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType
    public Object validate(String str, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        if (validationContext == null) {
            validationContext = fEmptyContext;
        }
        if (validatedInfo == null) {
            validatedInfo = new ValidatedInfo();
        } else {
            validatedInfo.memberType = null;
        }
        Object actualValue = getActualValue(str, validationContext, validatedInfo, validationContext == null || validationContext.needToNormalize());
        validate(validationContext, validatedInfo);
        return actualValue;
    }

    public ValidatedInfo validateWithInfo(String str, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        if (validationContext == null) {
            validationContext = fEmptyContext;
        }
        if (validatedInfo == null) {
            validatedInfo = new ValidatedInfo();
        } else {
            validatedInfo.memberType = null;
        }
        getActualValue(str, validationContext, validatedInfo, validationContext == null || validationContext.needToNormalize());
        validate(validationContext, validatedInfo);
        return validatedInfo;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x030c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyFacets(com.sun.org.apache.xerces.internal.impl.p053dv.XSFacets r19, short r20, short r21, short r22, com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext r23) throws com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeFacetException {
        /*
            Method dump skipped, instructions count: 2877
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.XSSimpleTypeDecl.applyFacets(com.sun.org.apache.xerces.internal.impl.dv.XSFacets, short, short, short, com.sun.org.apache.xerces.internal.impl.dv.ValidationContext):void");
    }

    public void applyFacets1(XSFacets xSFacets, short s, short s2, short s3) {
        try {
            applyFacets(xSFacets, s, s2, s3, fDummyContext);
            this.fIsImmutable = true;
        } catch (InvalidDatatypeFacetException unused) {
            throw new RuntimeException("internal error");
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType
    public Object validate(Object obj, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        if (validationContext == null) {
            validationContext = fEmptyContext;
        }
        if (validatedInfo == null) {
            validatedInfo = new ValidatedInfo();
        } else {
            validatedInfo.memberType = null;
        }
        Object actualValue = getActualValue(obj, validationContext, validatedInfo, validationContext == null || validationContext.needToNormalize());
        validate(validationContext, validatedInfo);
        return actualValue;
    }

    public String normalize(Object obj, short s) {
        int i;
        int i2;
        char charAt;
        if (obj == null) {
            return null;
        }
        if ((this.fFacetsDefined & 8) == 0) {
            short s2 = fDVNormalizeType[this.fValidationDV];
            if (s2 == 0) {
                return obj.toString();
            }
            if (s2 == 1) {
                return obj.toString().trim();
            }
        }
        if (!(obj instanceof StringBuffer)) {
            return normalize(obj.toString(), s);
        }
        StringBuffer stringBuffer = (StringBuffer) obj;
        int length = stringBuffer.length();
        if (length == 0) {
            return "";
        }
        if (s == 0) {
            return stringBuffer.toString();
        }
        if (s == 1) {
            for (int i3 = 0; i3 < length; i3++) {
                char charAt2 = stringBuffer.charAt(i3);
                if (charAt2 == '\t' || charAt2 == '\n' || charAt2 == '\r') {
                    stringBuffer.setCharAt(i3, ' ');
                }
            }
        } else {
            boolean z = true;
            int i4 = 0;
            int i5 = 0;
            while (i4 < length) {
                char charAt3 = stringBuffer.charAt(i4);
                if (charAt3 == '\t' || charAt3 == '\n' || charAt3 == '\r' || charAt3 == ' ') {
                    while (true) {
                        i = length - 1;
                        if (i4 >= i || !((charAt = stringBuffer.charAt((i2 = i4 + 1))) == '\t' || charAt == '\n' || charAt == '\r' || charAt == ' ')) {
                            break;
                        }
                        i4 = i2;
                    }
                    if (i4 < i && !z) {
                        stringBuffer.setCharAt(i5, ' ');
                        i5++;
                    }
                } else {
                    stringBuffer.setCharAt(i5, charAt3);
                    i5++;
                    z = false;
                }
                i4++;
            }
            stringBuffer.setLength(i5);
        }
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType
    public void validate(ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        short s;
        if (validationContext == null) {
            validationContext = fEmptyContext;
        }
        if (validationContext.needFacetChecking() && (s = this.fFacetsDefined) != 0 && s != 16) {
            checkFacets(validatedInfo);
        }
        if (validationContext.needExtraChecking()) {
            checkExtraRules(validationContext, validatedInfo);
        }
    }

    public XSSimpleTypeDecl(XSSimpleTypeDecl xSSimpleTypeDecl, String str, short s, short s2, boolean z, boolean z2, boolean z3, boolean z4, short s3) {
        this.fFinalSet = (short) 0;
        this.fFixedFacet = (short) 0;
        this.fWhiteSpace = (short) 0;
        this.fLength = -1;
        this.fMinLength = -1;
        this.fMaxLength = -1;
        this.fTotalDigits = -1;
        this.fFractionDigits = -1;
        this.fAnnotations = null;
        this.fPatternType = (short) 0;
        this.fAnonymous = false;
        this.fIsImmutable = z4;
        this.fBase = xSSimpleTypeDecl;
        this.fTypeName = str;
        this.fTargetNamespace = "http://www.w3.org/2001/XMLSchema";
        this.fVariety = (short) 1;
        this.fValidationDV = s;
        this.fFacetsDefined = (short) 16;
        if (s == 1) {
            this.fWhiteSpace = (short) 0;
        } else {
            this.fWhiteSpace = (short) 2;
            this.fFixedFacet = (short) 16;
        }
        this.fOrdered = s2;
        this.fBounded = z;
        this.fFinite = z2;
        this.fNumeric = z3;
        this.fAnnotations = null;
        this.fBuiltInKind = s3;
    }

    public XSSimpleTypeDecl(XSSimpleTypeDecl xSSimpleTypeDecl, String str, String str2, short s, boolean z, XSObjectList xSObjectList, short s2) {
        this(xSSimpleTypeDecl, str, str2, s, z, xSObjectList);
        this.fBuiltInKind = s2;
    }

    public XSSimpleTypeDecl(XSSimpleTypeDecl xSSimpleTypeDecl, String str, String str2, short s, boolean z, XSObjectList xSObjectList) {
        this.fIsImmutable = false;
        this.fVariety = (short) -1;
        this.fValidationDV = (short) -1;
        this.fFacetsDefined = (short) 0;
        this.fFixedFacet = (short) 0;
        this.fWhiteSpace = (short) 0;
        this.fLength = -1;
        this.fMinLength = -1;
        this.fMaxLength = -1;
        this.fTotalDigits = -1;
        this.fFractionDigits = -1;
        this.fPatternType = (short) 0;
        this.fAnonymous = false;
        this.fBase = xSSimpleTypeDecl;
        this.fTypeName = str;
        this.fTargetNamespace = str2;
        this.fFinalSet = s;
        this.fAnnotations = xSObjectList;
        short s2 = xSSimpleTypeDecl.fVariety;
        this.fVariety = s2;
        this.fValidationDV = xSSimpleTypeDecl.fValidationDV;
        if (s2 == 2) {
            this.fItemType = xSSimpleTypeDecl.fItemType;
        } else if (s2 == 3) {
            this.fMemberTypes = xSSimpleTypeDecl.fMemberTypes;
        }
        this.fLength = xSSimpleTypeDecl.fLength;
        this.fMinLength = xSSimpleTypeDecl.fMinLength;
        this.fMaxLength = xSSimpleTypeDecl.fMaxLength;
        this.fPattern = xSSimpleTypeDecl.fPattern;
        this.fPatternStr = xSSimpleTypeDecl.fPatternStr;
        this.fEnumeration = xSSimpleTypeDecl.fEnumeration;
        this.fEnumerationType = xSSimpleTypeDecl.fEnumerationType;
        this.fEnumerationItemType = xSSimpleTypeDecl.fEnumerationItemType;
        this.fWhiteSpace = xSSimpleTypeDecl.fWhiteSpace;
        this.fMaxExclusive = xSSimpleTypeDecl.fMaxExclusive;
        this.fMaxInclusive = xSSimpleTypeDecl.fMaxInclusive;
        this.fMinExclusive = xSSimpleTypeDecl.fMinExclusive;
        this.fMinInclusive = xSSimpleTypeDecl.fMinInclusive;
        this.fTotalDigits = xSSimpleTypeDecl.fTotalDigits;
        this.fFractionDigits = xSSimpleTypeDecl.fFractionDigits;
        this.fPatternType = xSSimpleTypeDecl.fPatternType;
        this.fFixedFacet = xSSimpleTypeDecl.fFixedFacet;
        this.fFacetsDefined = xSSimpleTypeDecl.fFacetsDefined;
        caclFundamentalFacets();
        this.fIsImmutable = z;
        this.fBuiltInKind = xSSimpleTypeDecl.fBuiltInKind;
    }

    public XSSimpleTypeDecl(String str, String str2, short s, XSSimpleTypeDecl xSSimpleTypeDecl, boolean z, XSObjectList xSObjectList) {
        this.fIsImmutable = false;
        this.fLength = -1;
        this.fMinLength = -1;
        this.fMaxLength = -1;
        this.fTotalDigits = -1;
        this.fFractionDigits = -1;
        this.fPatternType = (short) 0;
        this.fAnonymous = false;
        this.fBase = fAnySimpleType;
        this.fTypeName = str;
        this.fTargetNamespace = str2;
        this.fFinalSet = s;
        this.fAnnotations = xSObjectList;
        this.fVariety = (short) 2;
        this.fItemType = xSSimpleTypeDecl;
        this.fValidationDV = (short) 25;
        this.fFacetsDefined = (short) 16;
        this.fFixedFacet = (short) 16;
        this.fWhiteSpace = (short) 2;
        caclFundamentalFacets();
        this.fIsImmutable = z;
        this.fBuiltInKind = (short) 44;
    }

    public XSSimpleTypeDecl(String str, String str2, short s, XSSimpleTypeDecl[] xSSimpleTypeDeclArr, XSObjectList xSObjectList) {
        this.fIsImmutable = false;
        this.fFixedFacet = (short) 0;
        this.fLength = -1;
        this.fMinLength = -1;
        this.fMaxLength = -1;
        this.fTotalDigits = -1;
        this.fFractionDigits = -1;
        this.fPatternType = (short) 0;
        this.fAnonymous = false;
        this.fBase = fAnySimpleType;
        this.fTypeName = str;
        this.fTargetNamespace = str2;
        this.fFinalSet = s;
        this.fAnnotations = xSObjectList;
        this.fVariety = (short) 3;
        this.fMemberTypes = xSSimpleTypeDeclArr;
        this.fValidationDV = (short) 26;
        this.fFacetsDefined = (short) 16;
        this.fWhiteSpace = (short) 2;
        caclFundamentalFacets();
        this.fIsImmutable = false;
        this.fBuiltInKind = (short) 45;
    }
}
