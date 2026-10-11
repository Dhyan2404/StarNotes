package org.apache.xmlbeans.impl.schema;

import com.fasterxml.jackson.core.base.ParserBase;
import java.io.File;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.xml.namespace.QName;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.xmlbeans.Filer;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.SchemaAnnotation;
import org.apache.xmlbeans.SchemaAttributeGroup;
import org.apache.xmlbeans.SchemaComponent;
import org.apache.xmlbeans.SchemaGlobalAttribute;
import org.apache.xmlbeans.SchemaGlobalElement;
import org.apache.xmlbeans.SchemaIdentityConstraint;
import org.apache.xmlbeans.SchemaModelGroup;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeSystem;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.regex.ParseException;
import org.apache.xmlbeans.impl.regex.RegularExpression;
import org.apache.xmlbeans.impl.regex.SchemaRegularExpression;
import org.apache.xmlbeans.impl.values.XmlIntegerImpl;
import org.apache.xmlbeans.impl.values.XmlStringImpl;
import org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException;

/* loaded from: classes13.dex */
public class BuiltinSchemaTypeSystem extends SchemaTypeLoaderBase implements SchemaTypeSystem {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final XmlValueRef[] FACETS_BUILTIN_LIST;
    private static final XmlValueRef[] FACETS_BYTE;
    private static final XmlValueRef[] FACETS_INT;
    private static final XmlValueRef[] FACETS_INTEGER;
    static final XmlValueRef[] FACETS_LIST;
    private static final XmlValueRef[] FACETS_LONG;
    private static final XmlValueRef[] FACETS_NEGATIVE;
    private static final XmlValueRef[] FACETS_NONE;
    private static final XmlValueRef[] FACETS_NONNEGATIVE;
    private static final XmlValueRef[] FACETS_NONPOSITIVE;
    private static final XmlValueRef[] FACETS_POSITIVE;
    private static final XmlValueRef[] FACETS_SHORT;
    static final XmlValueRef[] FACETS_UNION;
    private static final XmlValueRef[] FACETS_UNSIGNED_BYTE;
    private static final XmlValueRef[] FACETS_UNSIGNED_INT;
    private static final XmlValueRef[] FACETS_UNSIGNED_LONG;
    private static final XmlValueRef[] FACETS_UNSIGNED_SHORT;
    private static final XmlValueRef[] FACETS_WS_COLLAPSE;
    private static final XmlValueRef[] FACETS_WS_PRESERVE;
    private static final XmlValueRef[] FACETS_WS_REPLACE;
    private static final boolean[] FIXED_FACETS_INTEGER;
    static final boolean[] FIXED_FACETS_LIST;
    private static final boolean[] FIXED_FACETS_NONE;
    static final boolean[] FIXED_FACETS_UNION;
    private static final boolean[] FIXED_FACETS_WS;
    public static final SchemaTypeImpl ST_ANY_SIMPLE;
    public static final SchemaTypeImpl ST_ANY_TYPE;
    public static final SchemaTypeImpl ST_ANY_URI;
    public static final SchemaTypeImpl ST_BASE_64_BINARY;
    public static final SchemaTypeImpl ST_BOOLEAN;
    public static final SchemaTypeImpl ST_BYTE;
    public static final SchemaTypeImpl ST_DATE;
    public static final SchemaTypeImpl ST_DATE_TIME;
    public static final SchemaTypeImpl ST_DECIMAL;
    public static final SchemaTypeImpl ST_DOUBLE;
    public static final SchemaTypeImpl ST_DURATION;
    public static final SchemaTypeImpl ST_ENTITIES;
    public static final SchemaTypeImpl ST_ENTITY;
    public static final SchemaTypeImpl ST_FLOAT;
    public static final SchemaTypeImpl ST_G_DAY;
    public static final SchemaTypeImpl ST_G_MONTH;
    public static final SchemaTypeImpl ST_G_MONTH_DAY;
    public static final SchemaTypeImpl ST_G_YEAR;
    public static final SchemaTypeImpl ST_G_YEAR_MONTH;
    public static final SchemaTypeImpl ST_HEX_BINARY;
    public static final SchemaTypeImpl ST_ID;
    public static final SchemaTypeImpl ST_IDREF;
    public static final SchemaTypeImpl ST_IDREFS;
    public static final SchemaTypeImpl ST_INT;
    public static final SchemaTypeImpl ST_INTEGER;
    public static final SchemaTypeImpl ST_LANGUAGE;
    public static final SchemaTypeImpl ST_LONG;
    public static final SchemaTypeImpl ST_NAME;
    public static final SchemaTypeImpl ST_NCNAME;
    public static final SchemaTypeImpl ST_NEGATIVE_INTEGER;
    public static final SchemaTypeImpl ST_NMTOKEN;
    public static final SchemaTypeImpl ST_NMTOKENS;
    public static final SchemaTypeImpl ST_NON_NEGATIVE_INTEGER;
    public static final SchemaTypeImpl ST_NON_POSITIVE_INTEGER;
    public static final SchemaTypeImpl ST_NORMALIZED_STRING;
    public static final SchemaTypeImpl ST_NOTATION;
    public static final SchemaTypeImpl ST_NO_TYPE;
    public static final SchemaTypeImpl ST_POSITIVE_INTEGER;
    public static final SchemaTypeImpl ST_QNAME;
    public static final SchemaTypeImpl ST_SHORT;
    public static final SchemaTypeImpl ST_STRING;
    public static final SchemaTypeImpl ST_TIME;
    public static final SchemaTypeImpl ST_TOKEN;
    public static final SchemaTypeImpl ST_UNSIGNED_BYTE;
    public static final SchemaTypeImpl ST_UNSIGNED_INT;
    public static final SchemaTypeImpl ST_UNSIGNED_LONG;
    public static final SchemaTypeImpl ST_UNSIGNED_SHORT;
    private static final XmlValueRef XMLSTR_COLLAPSE;
    private static final XmlValueRef XMLSTR_PRESERVE;
    private static final XmlValueRef XMLSTR_REPLACE;
    private static BuiltinSchemaTypeSystem _global;
    private SchemaContainer _container;
    private static final SchemaType[] EMPTY_SCHEMATYPE_ARRAY = new SchemaType[0];
    private static final SchemaType.Ref[] EMPTY_SCHEMATYPEREF_ARRAY = new SchemaType.Ref[0];
    private static final SchemaGlobalElement[] EMPTY_SCHEMAELEMENT_ARRAY = new SchemaGlobalElement[0];
    private static final SchemaGlobalAttribute[] EMPTY_SCHEMAATTRIBUTE_ARRAY = new SchemaGlobalAttribute[0];
    private static final SchemaModelGroup[] EMPTY_SCHEMAMODELGROUP_ARRAY = new SchemaModelGroup[0];
    private static final SchemaAttributeGroup[] EMPTY_SCHEMAATTRIBUTEGROUP_ARRAY = new SchemaAttributeGroup[0];
    private static final SchemaAnnotation[] EMPTY_SCHEMAANNOTATION_ARRAY = new SchemaAnnotation[0];
    private Map<QName, SchemaType> _typeMap = new HashMap();
    private SchemaTypeImpl[] _typeArray = new SchemaTypeImpl[47];
    private Map<String, SchemaType> _handlesToObjects = new HashMap();
    private Map<SchemaType, String> _objectsToHandles = new HashMap();
    private Map<String, SchemaType> _typesByClassname = new HashMap();

    static {
        BuiltinSchemaTypeSystem builtinSchemaTypeSystem = new BuiltinSchemaTypeSystem();
        _global = builtinSchemaTypeSystem;
        ST_ANY_TYPE = builtinSchemaTypeSystem.getBuiltinType(1);
        ST_ANY_SIMPLE = _global.getBuiltinType(2);
        ST_BOOLEAN = _global.getBuiltinType(3);
        ST_BASE_64_BINARY = _global.getBuiltinType(4);
        ST_HEX_BINARY = _global.getBuiltinType(5);
        ST_ANY_URI = _global.getBuiltinType(6);
        ST_QNAME = _global.getBuiltinType(7);
        ST_NOTATION = _global.getBuiltinType(8);
        ST_FLOAT = _global.getBuiltinType(9);
        ST_DOUBLE = _global.getBuiltinType(10);
        ST_DECIMAL = _global.getBuiltinType(11);
        ST_STRING = _global.getBuiltinType(12);
        ST_DURATION = _global.getBuiltinType(13);
        ST_DATE_TIME = _global.getBuiltinType(14);
        ST_TIME = _global.getBuiltinType(15);
        ST_DATE = _global.getBuiltinType(16);
        ST_G_YEAR_MONTH = _global.getBuiltinType(17);
        ST_G_YEAR = _global.getBuiltinType(18);
        ST_G_MONTH_DAY = _global.getBuiltinType(19);
        ST_G_DAY = _global.getBuiltinType(20);
        ST_G_MONTH = _global.getBuiltinType(21);
        ST_INTEGER = _global.getBuiltinType(22);
        ST_LONG = _global.getBuiltinType(23);
        ST_INT = _global.getBuiltinType(24);
        ST_SHORT = _global.getBuiltinType(25);
        ST_BYTE = _global.getBuiltinType(26);
        ST_NON_POSITIVE_INTEGER = _global.getBuiltinType(27);
        ST_NEGATIVE_INTEGER = _global.getBuiltinType(28);
        ST_NON_NEGATIVE_INTEGER = _global.getBuiltinType(29);
        ST_POSITIVE_INTEGER = _global.getBuiltinType(30);
        ST_UNSIGNED_LONG = _global.getBuiltinType(31);
        ST_UNSIGNED_INT = _global.getBuiltinType(32);
        ST_UNSIGNED_SHORT = _global.getBuiltinType(33);
        ST_UNSIGNED_BYTE = _global.getBuiltinType(34);
        ST_NORMALIZED_STRING = _global.getBuiltinType(35);
        ST_TOKEN = _global.getBuiltinType(36);
        ST_NAME = _global.getBuiltinType(37);
        ST_NCNAME = _global.getBuiltinType(38);
        ST_LANGUAGE = _global.getBuiltinType(39);
        ST_ID = _global.getBuiltinType(40);
        ST_IDREF = _global.getBuiltinType(41);
        ST_IDREFS = _global.getBuiltinType(42);
        ST_ENTITY = _global.getBuiltinType(43);
        ST_ENTITIES = _global.getBuiltinType(44);
        ST_NMTOKEN = _global.getBuiltinType(45);
        ST_NMTOKENS = _global.getBuiltinType(46);
        ST_NO_TYPE = _global.getBuiltinType(0);
        XMLSTR_PRESERVE = buildString("preserve");
        XMLSTR_REPLACE = buildString("preserve");
        XMLSTR_COLLAPSE = buildString("preserve");
        XmlValueRef[] xmlValueRefArr = {null, null, null, null, null, null, null, null, null, null, null, null};
        FACETS_NONE = xmlValueRefArr;
        boolean[] zArr = {false, false, false, false, false, false, false, false, false, false, false, false};
        FIXED_FACETS_NONE = zArr;
        XmlValueRef[] xmlValueRefArr2 = {null, null, null, null, null, null, null, null, null, build_wsstring(3), null, null};
        FACETS_WS_COLLAPSE = xmlValueRefArr2;
        FACETS_WS_REPLACE = new XmlValueRef[]{null, null, null, null, null, null, null, null, null, build_wsstring(2), null, null};
        FACETS_WS_PRESERVE = new XmlValueRef[]{null, null, null, null, null, null, null, null, null, build_wsstring(1), null, null};
        BigInteger bigInteger = BigInteger.ZERO;
        FACETS_INTEGER = new XmlValueRef[]{null, null, null, null, null, null, null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_LONG = new XmlValueRef[]{null, null, null, null, buildInteger(BigInteger.valueOf(Long.MIN_VALUE)), buildInteger(BigInteger.valueOf(Long.MAX_VALUE)), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_INT = new XmlValueRef[]{null, null, null, null, buildInteger(BigInteger.valueOf(ParserBase.f21225q)), buildInteger(BigInteger.valueOf(2147483647L)), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_SHORT = new XmlValueRef[]{null, null, null, null, buildInteger(BigInteger.valueOf(-32768L)), buildInteger(BigInteger.valueOf(32767L)), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_BYTE = new XmlValueRef[]{null, null, null, null, buildInteger(BigInteger.valueOf(-128L)), buildInteger(BigInteger.valueOf(127L)), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_NONNEGATIVE = new XmlValueRef[]{null, null, null, null, buildInteger(bigInteger), null, null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        BigInteger bigInteger2 = BigInteger.ONE;
        FACETS_POSITIVE = new XmlValueRef[]{null, null, null, null, buildInteger(bigInteger2), null, null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_NONPOSITIVE = new XmlValueRef[]{null, null, null, null, null, buildInteger(bigInteger), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_NEGATIVE = new XmlValueRef[]{null, null, null, null, null, buildInteger(bigInteger2.negate()), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_UNSIGNED_LONG = new XmlValueRef[]{null, null, null, null, buildInteger(bigInteger), buildInteger(new BigInteger("18446744073709551615")), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_UNSIGNED_INT = new XmlValueRef[]{null, null, null, null, buildInteger(bigInteger), buildInteger(BigInteger.valueOf(4294967295L)), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_UNSIGNED_SHORT = new XmlValueRef[]{null, null, null, null, buildInteger(bigInteger), buildInteger(BigInteger.valueOf(WebSocketProtocol.PAYLOAD_SHORT_MAX)), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_UNSIGNED_BYTE = new XmlValueRef[]{null, null, null, null, buildInteger(bigInteger), buildInteger(BigInteger.valueOf(255L)), null, null, buildNnInteger(bigInteger), build_wsstring(3), null, null};
        FACETS_BUILTIN_LIST = new XmlValueRef[]{null, buildNnInteger(bigInteger2), null, null, null, null, null, null, null, build_wsstring(3), null, null};
        boolean[] zArr2 = {false, false, false, false, false, false, false, false, false, true, false, false};
        FIXED_FACETS_WS = zArr2;
        FIXED_FACETS_INTEGER = new boolean[]{false, false, false, false, false, false, false, false, true, true, false, false};
        FACETS_UNION = xmlValueRefArr;
        FIXED_FACETS_UNION = zArr;
        FACETS_LIST = xmlValueRefArr2;
        FIXED_FACETS_LIST = zArr2;
        for (int i = 0; i <= 46; i++) {
            _global.fillInType(i);
        }
    }

    private BuiltinSchemaTypeSystem() {
        SchemaContainer schemaContainer = new SchemaContainer("http://www.w3.org/2001/XMLSchema");
        this._container = schemaContainer;
        schemaContainer.setTypeSystem(this);
        setupBuiltin(1, "anyType", "org.apache.xmlbeans.XmlObject");
        setupBuiltin(2, "anySimpleType", "org.apache.xmlbeans.XmlAnySimpleType");
        setupBuiltin(3, "boolean", "org.apache.xmlbeans.XmlBoolean");
        setupBuiltin(4, "base64Binary", "org.apache.xmlbeans.XmlBase64Binary");
        setupBuiltin(5, "hexBinary", "org.apache.xmlbeans.XmlHexBinary");
        setupBuiltin(6, "anyURI", "org.apache.xmlbeans.XmlAnyURI");
        setupBuiltin(7, "QName", "org.apache.xmlbeans.XmlQName");
        setupBuiltin(8, "NOTATION", "org.apache.xmlbeans.XmlNOTATION");
        setupBuiltin(9, "float", "org.apache.xmlbeans.XmlFloat");
        setupBuiltin(10, "double", "org.apache.xmlbeans.XmlDouble");
        setupBuiltin(11, "decimal", "org.apache.xmlbeans.XmlDecimal");
        setupBuiltin(12, "string", "org.apache.xmlbeans.XmlString");
        setupBuiltin(13, "duration", "org.apache.xmlbeans.XmlDuration");
        setupBuiltin(14, "dateTime", "org.apache.xmlbeans.XmlDateTime");
        setupBuiltin(15, "time", "org.apache.xmlbeans.XmlTime");
        setupBuiltin(16, "date", "org.apache.xmlbeans.XmlDate");
        setupBuiltin(17, "gYearMonth", "org.apache.xmlbeans.XmlGYearMonth");
        setupBuiltin(18, "gYear", "org.apache.xmlbeans.XmlGYear");
        setupBuiltin(19, "gMonthDay", "org.apache.xmlbeans.XmlGMonthDay");
        setupBuiltin(20, "gDay", "org.apache.xmlbeans.XmlGDay");
        setupBuiltin(21, "gMonth", "org.apache.xmlbeans.XmlGMonth");
        setupBuiltin(22, "integer", "org.apache.xmlbeans.XmlInteger");
        setupBuiltin(23, "long", "org.apache.xmlbeans.XmlLong");
        setupBuiltin(24, "int", "org.apache.xmlbeans.XmlInt");
        setupBuiltin(25, "short", "org.apache.xmlbeans.XmlShort");
        setupBuiltin(26, "byte", "org.apache.xmlbeans.XmlByte");
        setupBuiltin(27, "nonPositiveInteger", "org.apache.xmlbeans.XmlNonPositiveInteger");
        setupBuiltin(28, "negativeInteger", "org.apache.xmlbeans.XmlNegativeInteger");
        setupBuiltin(29, "nonNegativeInteger", "org.apache.xmlbeans.XmlNonNegativeInteger");
        setupBuiltin(30, "positiveInteger", "org.apache.xmlbeans.XmlPositiveInteger");
        setupBuiltin(31, "unsignedLong", "org.apache.xmlbeans.XmlUnsignedLong");
        setupBuiltin(32, "unsignedInt", "org.apache.xmlbeans.XmlUnsignedInt");
        setupBuiltin(33, "unsignedShort", "org.apache.xmlbeans.XmlUnsignedShort");
        setupBuiltin(34, "unsignedByte", "org.apache.xmlbeans.XmlUnsignedByte");
        setupBuiltin(35, "normalizedString", "org.apache.xmlbeans.XmlNormalizedString");
        setupBuiltin(36, "token", "org.apache.xmlbeans.XmlToken");
        setupBuiltin(37, "Name", "org.apache.xmlbeans.XmlName");
        setupBuiltin(38, "NCName", "org.apache.xmlbeans.XmlNCName");
        setupBuiltin(39, "language", "org.apache.xmlbeans.XmlLanguage");
        setupBuiltin(40, "ID", "org.apache.xmlbeans.XmlID");
        setupBuiltin(41, "IDREF", "org.apache.xmlbeans.XmlIDREF");
        setupBuiltin(42, "IDREFS", "org.apache.xmlbeans.XmlIDREFS");
        setupBuiltin(43, "ENTITY", "org.apache.xmlbeans.XmlENTITY");
        setupBuiltin(44, "ENTITIES", "org.apache.xmlbeans.XmlENTITIES");
        setupBuiltin(45, "NMTOKEN", "org.apache.xmlbeans.XmlNMTOKEN");
        setupBuiltin(46, "NMTOKENS", "org.apache.xmlbeans.XmlNMTOKENS");
        setupBuiltin(0, null, null);
        this._container.setImmutable();
    }

    private static XmlValueRef buildInteger(BigInteger bigInteger) {
        if (bigInteger == null) {
            return null;
        }
        try {
            XmlIntegerImpl xmlIntegerImpl = new XmlIntegerImpl();
            xmlIntegerImpl.setBigIntegerValue(bigInteger);
            xmlIntegerImpl.setImmutable();
            return new XmlValueRef(xmlIntegerImpl);
        } catch (XmlValueOutOfRangeException unused) {
            return null;
        }
    }

    private static XmlValueRef buildNnInteger(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0) {
            return null;
        }
        try {
            XmlIntegerImpl xmlIntegerImpl = new XmlIntegerImpl();
            xmlIntegerImpl.setBigIntegerValue(bigInteger);
            xmlIntegerImpl.setImmutable();
            return new XmlValueRef(xmlIntegerImpl);
        } catch (XmlValueOutOfRangeException unused) {
            return null;
        }
    }

    private static XmlValueRef buildString(String str) {
        if (str == null) {
            return null;
        }
        try {
            XmlStringImpl xmlStringImpl = new XmlStringImpl();
            xmlStringImpl.setStringValue(str);
            xmlStringImpl.setImmutable();
            return new XmlValueRef(xmlStringImpl);
        } catch (XmlValueOutOfRangeException unused) {
            return null;
        }
    }

    private static XmlValueRef build_wsstring(int i) {
        if (i == 1) {
            return XMLSTR_PRESERVE;
        }
        if (i == 2) {
            return XMLSTR_REPLACE;
        }
        if (i != 3) {
            return null;
        }
        return XMLSTR_COLLAPSE;
    }

    public static SchemaTypeSystem get() {
        return _global;
    }

    private SchemaTypeImpl getBuiltinType(int i) {
        return this._typeArray[i];
    }

    public static SchemaType getNoType() {
        return ST_NO_TYPE;
    }

    private void setupBuiltin(int i, String str, String str2) {
        SchemaTypeImpl schemaTypeImpl = new SchemaTypeImpl(this._container, true);
        this._container.addGlobalType(schemaTypeImpl.getRef());
        QName forLNS = str == null ? null : QNameHelper.forLNS(str, "http://www.w3.org/2001/XMLSchema");
        StringBuilder sb = new StringBuilder();
        sb.append("_BI_");
        if (str == null) {
            str = "NO_TYPE";
        }
        sb.append(str);
        String sb2 = sb.toString();
        schemaTypeImpl.setName(forLNS);
        schemaTypeImpl.setBuiltinTypeCode(i);
        if (str2 != null) {
            schemaTypeImpl.setFullJavaName(str2);
        }
        this._typeArray[i] = schemaTypeImpl;
        this._typeMap.put(forLNS, schemaTypeImpl);
        this._handlesToObjects.put(sb2, schemaTypeImpl);
        this._objectsToHandles.put(schemaTypeImpl, sb2);
        if (str2 != null) {
            this._typesByClassname.put(str2, schemaTypeImpl);
        }
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaAnnotation[] annotations() {
        return EMPTY_SCHEMAANNOTATION_ARRAY;
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaAttributeGroup[] attributeGroups() {
        return EMPTY_SCHEMAATTRIBUTEGROUP_ARRAY;
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaType[] attributeTypes() {
        return EMPTY_SCHEMATYPE_ARRAY;
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaType[] documentTypes() {
        return EMPTY_SCHEMATYPE_ARRAY;
    }

    public void fillInType(int i) {
        SchemaTypeImpl schemaTypeImpl;
        SchemaTypeImpl schemaTypeImpl2;
        int i2;
        XmlValueRef[] xmlValueRefArr;
        boolean[] zArr;
        XmlValueRef[] xmlValueRefArr2;
        boolean[] zArr2;
        int i3;
        boolean[] zArr3;
        XmlValueRef[] xmlValueRefArr3;
        boolean[] zArr4;
        int i4;
        boolean z;
        boolean z2;
        boolean z3;
        String str;
        boolean z4;
        RegularExpression regularExpression;
        SchemaTypeImpl builtinType = getBuiltinType(i);
        switch (i) {
            case 0:
                schemaTypeImpl = ST_ANY_TYPE;
                schemaTypeImpl2 = null;
                i2 = 0;
                break;
            case 1:
                schemaTypeImpl = null;
                schemaTypeImpl2 = null;
                i2 = 0;
                break;
            case 2:
            default:
                schemaTypeImpl = ST_ANY_TYPE;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                schemaTypeImpl = ST_ANY_SIMPLE;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 22:
                schemaTypeImpl = ST_DECIMAL;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 23:
                schemaTypeImpl = ST_INTEGER;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 24:
                schemaTypeImpl = ST_LONG;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 25:
                schemaTypeImpl = ST_INT;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 26:
                schemaTypeImpl = ST_SHORT;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 27:
                schemaTypeImpl = ST_INTEGER;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 28:
                schemaTypeImpl = ST_NON_POSITIVE_INTEGER;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 29:
                schemaTypeImpl = ST_INTEGER;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 30:
                schemaTypeImpl = ST_NON_NEGATIVE_INTEGER;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 31:
                schemaTypeImpl = ST_NON_NEGATIVE_INTEGER;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 32:
                schemaTypeImpl = ST_UNSIGNED_LONG;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 33:
                schemaTypeImpl = ST_UNSIGNED_INT;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 34:
                schemaTypeImpl = ST_UNSIGNED_SHORT;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 35:
                schemaTypeImpl = ST_STRING;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 36:
                schemaTypeImpl = ST_NORMALIZED_STRING;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 37:
                schemaTypeImpl = ST_TOKEN;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 38:
                schemaTypeImpl = ST_NAME;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 39:
            case 45:
                schemaTypeImpl = ST_TOKEN;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 40:
            case 41:
            case 43:
                schemaTypeImpl = ST_NCNAME;
                schemaTypeImpl2 = null;
                i2 = 1;
                break;
            case 42:
            case 44:
            case 46:
                schemaTypeImpl = ST_ANY_SIMPLE;
                schemaTypeImpl2 = i == 42 ? ST_IDREF : i == 44 ? ST_ENTITY : ST_NMTOKEN;
                i2 = 3;
                break;
        }
        builtinType.setDerivationType(1);
        builtinType.setSimpleTypeVariety(i2);
        if (i2 != 0) {
            builtinType.setSimpleType(true);
        }
        builtinType.setBaseTypeRef(schemaTypeImpl == null ? null : schemaTypeImpl.getRef());
        builtinType.setBaseDepth(schemaTypeImpl == null ? 0 : schemaTypeImpl.getBaseDepth() + 1);
        builtinType.setListItemTypeRef(schemaTypeImpl2 == null ? null : schemaTypeImpl2.getRef());
        if (i >= 2 && i <= 21) {
            builtinType.setPrimitiveTypeRef(builtinType.getRef());
        } else if (i2 == 1) {
            if (schemaTypeImpl == null) {
                throw new IllegalStateException("Base was null for " + i);
            }
            if (schemaTypeImpl.getPrimitiveType() == null) {
                throw new IllegalStateException("Base.gpt was null for " + i);
            }
            builtinType.setPrimitiveTypeRef(schemaTypeImpl.getPrimitiveType().getRef());
        }
        int i5 = 64;
        int i6 = 1000000;
        switch (i) {
            case 0:
            case 1:
            case 2:
            default:
                xmlValueRefArr = FACETS_NONE;
                zArr = FIXED_FACETS_NONE;
                zArr2 = zArr;
                i3 = 0;
                i6 = 0;
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                xmlValueRefArr2 = FACETS_WS_COLLAPSE;
                zArr2 = FIXED_FACETS_WS;
                i6 = 0;
                XmlValueRef[] xmlValueRefArr4 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr4;
                break;
            case 11:
                xmlValueRefArr2 = FACETS_WS_COLLAPSE;
                zArr2 = FIXED_FACETS_WS;
                i5 = SchemaType.SIZE_BIG_DECIMAL;
                i6 = i5;
                XmlValueRef[] xmlValueRefArr42 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr42;
                break;
            case 12:
                xmlValueRefArr = FACETS_WS_PRESERVE;
                zArr2 = FIXED_FACETS_NONE;
                i6 = 0;
                i3 = 1;
                break;
            case 22:
                xmlValueRefArr2 = FACETS_INTEGER;
                zArr2 = FIXED_FACETS_INTEGER;
                XmlValueRef[] xmlValueRefArr422 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr422;
                break;
            case 23:
                xmlValueRefArr2 = FACETS_LONG;
                zArr2 = FIXED_FACETS_INTEGER;
                i6 = i5;
                XmlValueRef[] xmlValueRefArr4222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr4222;
                break;
            case 24:
                xmlValueRefArr2 = FACETS_INT;
                zArr3 = FIXED_FACETS_INTEGER;
                i6 = 32;
                zArr2 = zArr3;
                XmlValueRef[] xmlValueRefArr42222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr42222;
                break;
            case 25:
                xmlValueRefArr3 = FACETS_SHORT;
                zArr4 = FIXED_FACETS_INTEGER;
                i6 = 16;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr3;
                zArr2 = zArr4;
                break;
            case 26:
                xmlValueRefArr2 = FACETS_BYTE;
                zArr2 = FIXED_FACETS_INTEGER;
                i5 = 8;
                i6 = i5;
                XmlValueRef[] xmlValueRefArr422222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr422222;
                break;
            case 27:
                xmlValueRefArr2 = FACETS_NONPOSITIVE;
                zArr2 = FIXED_FACETS_INTEGER;
                XmlValueRef[] xmlValueRefArr4222222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr4222222;
                break;
            case 28:
                xmlValueRefArr2 = FACETS_NEGATIVE;
                zArr2 = FIXED_FACETS_INTEGER;
                XmlValueRef[] xmlValueRefArr42222222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr42222222;
                break;
            case 29:
                xmlValueRefArr2 = FACETS_NONNEGATIVE;
                zArr2 = FIXED_FACETS_INTEGER;
                XmlValueRef[] xmlValueRefArr422222222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr422222222;
                break;
            case 30:
                xmlValueRefArr2 = FACETS_POSITIVE;
                zArr2 = FIXED_FACETS_INTEGER;
                XmlValueRef[] xmlValueRefArr4222222222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr4222222222;
                break;
            case 31:
                xmlValueRefArr2 = FACETS_UNSIGNED_LONG;
                zArr2 = FIXED_FACETS_INTEGER;
                XmlValueRef[] xmlValueRefArr42222222222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr42222222222;
                break;
            case 32:
                xmlValueRefArr2 = FACETS_UNSIGNED_INT;
                zArr2 = FIXED_FACETS_INTEGER;
                i6 = i5;
                XmlValueRef[] xmlValueRefArr422222222222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr422222222222;
                break;
            case 33:
                xmlValueRefArr2 = FACETS_UNSIGNED_SHORT;
                zArr3 = FIXED_FACETS_INTEGER;
                i6 = 32;
                zArr2 = zArr3;
                XmlValueRef[] xmlValueRefArr4222222222222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr4222222222222;
                break;
            case 34:
                xmlValueRefArr3 = FACETS_UNSIGNED_BYTE;
                zArr4 = FIXED_FACETS_INTEGER;
                i6 = 16;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr3;
                zArr2 = zArr4;
                break;
            case 35:
                xmlValueRefArr = FACETS_WS_REPLACE;
                zArr2 = FIXED_FACETS_NONE;
                i3 = 2;
                i6 = 0;
                break;
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 45:
                xmlValueRefArr2 = FACETS_WS_COLLAPSE;
                zArr2 = FIXED_FACETS_NONE;
                i6 = 0;
                XmlValueRef[] xmlValueRefArr42222222222222 = xmlValueRefArr2;
                i3 = 3;
                xmlValueRefArr = xmlValueRefArr42222222222222;
                break;
            case 44:
            case 46:
                xmlValueRefArr = FACETS_BUILTIN_LIST;
                zArr = FIXED_FACETS_NONE;
                zArr2 = zArr;
                i3 = 0;
                i6 = 0;
                break;
        }
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 12:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            default:
                i4 = 0;
                z = false;
                z2 = z;
                z3 = z2;
                break;
            case 3:
                i4 = 0;
                z = false;
                z2 = false;
                z3 = true;
                break;
            case 9:
            case 10:
            case 11:
            case 22:
                i4 = 2;
                z = false;
                z3 = false;
                z2 = true;
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                z = false;
                z2 = false;
                z3 = false;
                i4 = 1;
                break;
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
                i4 = 2;
                z = true;
                z2 = z;
                z3 = z2;
                break;
        }
        builtinType.setBasicFacets(xmlValueRefArr, zArr2);
        builtinType.setWhiteSpaceRule(i3);
        builtinType.setOrdered(i4);
        builtinType.setBounded(z);
        builtinType.setNumeric(z2);
        builtinType.setFinite(z3);
        builtinType.setDecimalSize(i6);
        builtinType.setAnonymousTypeRefs(EMPTY_SCHEMATYPEREF_ARRAY);
        switch (i) {
            case 37:
                str = "\\i\\c*";
                z4 = true;
                break;
            case 38:
                str = "[\\i-[:]][\\c-[:]]*";
                z4 = true;
                break;
            case 39:
                str = "[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*";
                z4 = true;
                break;
            case 40:
            case 41:
            case 43:
                str = null;
                z4 = true;
                break;
            case 42:
            case 44:
            default:
                str = null;
                z4 = false;
                break;
            case 45:
                str = "\\c+";
                z4 = true;
                break;
        }
        if (str != null) {
            try {
                regularExpression = SchemaRegularExpression.forPattern(str);
            } catch (ParseException unused) {
                regularExpression = null;
            }
            builtinType.setPatterns(new RegularExpression[]{regularExpression});
        }
        builtinType.setPatternFacet(z4);
        if (i == 1) {
            SchemaParticleImpl schemaParticleImpl = new SchemaParticleImpl();
            schemaParticleImpl.setParticleType(5);
            QNameSet qNameSet = QNameSet.ALL;
            schemaParticleImpl.setWildcardSet(qNameSet);
            schemaParticleImpl.setWildcardProcess(2);
            schemaParticleImpl.setMinOccurs(BigInteger.ZERO);
            schemaParticleImpl.setMaxOccurs(null);
            schemaParticleImpl.setTransitionRules(qNameSet, true);
            schemaParticleImpl.setTransitionNotes(qNameSet, true);
            SchemaAttributeModelImpl schemaAttributeModelImpl = new SchemaAttributeModelImpl();
            schemaAttributeModelImpl.setWildcardProcess(2);
            schemaAttributeModelImpl.setWildcardSet(qNameSet);
            builtinType.setComplexTypeVariety(4);
            Map<QName, SchemaProperty> map = Collections.EMPTY_MAP;
            builtinType.setContentModel(schemaParticleImpl, schemaAttributeModelImpl, map, map, false);
            builtinType.setAnonymousTypeRefs(EMPTY_SCHEMATYPEREF_ARRAY);
            builtinType.setWildcardSummary(qNameSet, true, qNameSet, true);
        } else if (i == 0) {
            SchemaAttributeModelImpl schemaAttributeModelImpl2 = new SchemaAttributeModelImpl();
            builtinType.setComplexTypeVariety(1);
            Map<QName, SchemaProperty> map2 = Collections.EMPTY_MAP;
            builtinType.setContentModel(null, schemaAttributeModelImpl2, map2, map2, false);
            builtinType.setAnonymousTypeRefs(EMPTY_SCHEMATYPEREF_ARRAY);
            QNameSet qNameSet2 = QNameSet.EMPTY;
            builtinType.setWildcardSummary(qNameSet2, false, qNameSet2, false);
        }
        builtinType.setOrderSensitive(false);
    }

    @Override // org.apache.xmlbeans.impl.schema.SchemaTypeLoaderBase, org.apache.xmlbeans.SchemaTypeLoader
    public SchemaGlobalAttribute findAttribute(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaAttributeGroup.Ref findAttributeGroupRef(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaGlobalAttribute.Ref findAttributeRef(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.impl.schema.SchemaTypeLoaderBase, org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType findAttributeType(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType.Ref findAttributeTypeRef(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.impl.schema.SchemaTypeLoaderBase, org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType findDocumentType(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType.Ref findDocumentTypeRef(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.impl.schema.SchemaTypeLoaderBase, org.apache.xmlbeans.SchemaTypeLoader
    public SchemaGlobalElement findElement(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaGlobalElement.Ref findElementRef(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaIdentityConstraint.Ref findIdentityConstraintRef(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaModelGroup.Ref findModelGroupRef(QName qName) {
        return null;
    }

    @Override // org.apache.xmlbeans.impl.schema.SchemaTypeLoaderBase, org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType findType(QName qName) {
        return this._typeMap.get(qName);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType.Ref findTypeRef(QName qName) {
        SchemaType findType = findType(qName);
        if (findType == null) {
            return null;
        }
        return findType.getRef();
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public ClassLoader getClassLoader() {
        return BuiltinSchemaTypeSystem.class.getClassLoader();
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public String getName() {
        return "schema.typesystem.builtin";
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public InputStream getSourceAsStream(String str) {
        return null;
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaGlobalAttribute[] globalAttributes() {
        return EMPTY_SCHEMAATTRIBUTE_ARRAY;
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaGlobalElement[] globalElements() {
        return EMPTY_SCHEMAELEMENT_ARRAY;
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaType[] globalTypes() {
        SchemaTypeImpl[] schemaTypeImplArr = this._typeArray;
        int length = schemaTypeImplArr.length - 1;
        SchemaType[] schemaTypeArr = new SchemaType[length];
        System.arraycopy(schemaTypeImplArr, 1, schemaTypeArr, 0, length);
        return schemaTypeArr;
    }

    public String handleForType(SchemaType schemaType) {
        return this._objectsToHandles.get(schemaType);
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public boolean isNamespaceDefined(String str) {
        return str.equals("http://www.w3.org/2001/XMLSchema");
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaModelGroup[] modelGroups() {
        return EMPTY_SCHEMAMODELGROUP_ARRAY;
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public void resolve() {
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaComponent resolveHandle(String str) {
        return this._handlesToObjects.get(str);
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public void save(Filer filer) {
        throw new UnsupportedOperationException("The builtin schema type system cannot be saved.");
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public void saveToDirectory(File file) {
        throw new UnsupportedOperationException("The builtin schema type system cannot be saved.");
    }

    @Override // org.apache.xmlbeans.SchemaTypeLoader
    public SchemaType typeForClassname(String str) {
        return this._typesByClassname.get(str);
    }

    @Override // org.apache.xmlbeans.SchemaTypeSystem
    public SchemaType typeForHandle(String str) {
        return this._handlesToObjects.get(str);
    }
}
