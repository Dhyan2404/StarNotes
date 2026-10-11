package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaNamespaceSupport;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSGrammarBucket;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XInt;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XIntPool;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import java.lang.reflect.Array;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
public class XSAttributeChecker {
    public static final int ATTIDX_ABSTRACT = 0;
    public static final int ATTIDX_AFORMDEFAULT;
    public static final int ATTIDX_BASE;
    public static final int ATTIDX_BLOCK;
    public static final int ATTIDX_BLOCKDEFAULT;
    private static int ATTIDX_COUNT = 0;
    public static final int ATTIDX_DEFAULT;
    public static final int ATTIDX_EFORMDEFAULT;
    public static final int ATTIDX_ENUMNSDECLS;
    public static final int ATTIDX_FINAL;
    public static final int ATTIDX_FINALDEFAULT;
    public static final int ATTIDX_FIXED;
    public static final int ATTIDX_FORM;
    public static final int ATTIDX_FROMDEFAULT;
    public static final int ATTIDX_ID;
    public static final int ATTIDX_ISRETURNED;
    public static final int ATTIDX_ITEMTYPE;
    public static final int ATTIDX_MAXOCCURS;
    public static final int ATTIDX_MEMBERTYPES;
    public static final int ATTIDX_MINOCCURS;
    public static final int ATTIDX_MIXED;
    public static final int ATTIDX_NAME;
    public static final int ATTIDX_NAMESPACE;
    public static final int ATTIDX_NAMESPACE_LIST;
    public static final int ATTIDX_NILLABLE;
    public static final int ATTIDX_NONSCHEMA;
    public static final int ATTIDX_PROCESSCONTENTS;
    public static final int ATTIDX_PUBLIC;
    public static final int ATTIDX_REF;
    public static final int ATTIDX_REFER;
    public static final int ATTIDX_SCHEMALOCATION;
    public static final int ATTIDX_SOURCE;
    public static final int ATTIDX_SUBSGROUP;
    public static final int ATTIDX_SYSTEM;
    public static final int ATTIDX_TARGETNAMESPACE;
    public static final int ATTIDX_TYPE;
    public static final int ATTIDX_USE;
    public static final int ATTIDX_VALUE;
    public static final int ATTIDX_VERSION;
    public static final int ATTIDX_XML_LANG;
    public static final int ATTIDX_XPATH;
    private static final String ATTRIBUTE_N = "attribute_n";
    private static final String ATTRIBUTE_R = "attribute_r";
    protected static final int DT_ANYURI = 0;
    protected static final int DT_BLOCK = -1;
    protected static final int DT_BLOCK1 = -2;
    protected static final int DT_BOOLEAN = -15;
    protected static final int DT_COUNT = 9;
    protected static final int DT_FINAL = -3;
    protected static final int DT_FINAL1 = -4;
    protected static final int DT_FINAL2 = -5;
    protected static final int DT_FORM = -6;
    protected static final int DT_ID = 1;
    protected static final int DT_LANGUAGE = 8;
    protected static final int DT_MAXOCCURS = -7;
    protected static final int DT_MAXOCCURS1 = -8;
    protected static final int DT_MEMBERTYPES = -9;
    protected static final int DT_MINOCCURS1 = -10;
    protected static final int DT_NAMESPACE = -11;
    protected static final int DT_NCNAME = 5;
    protected static final int DT_NONNEGINT = -16;
    protected static final int DT_POSINT = -17;
    protected static final int DT_PROCESSCONTENTS = -12;
    protected static final int DT_QNAME = 2;
    protected static final int DT_STRING = 3;
    protected static final int DT_TOKEN = 4;
    protected static final int DT_USE = -13;
    protected static final int DT_WHITESPACE = -14;
    protected static final int DT_XPATH = 6;
    protected static final int DT_XPATH1 = 7;
    private static final String ELEMENT_N = "element_n";
    private static final String ELEMENT_R = "element_r";
    static final int INC_POOL_SIZE = 10;
    static final int INIT_POOL_SIZE = 10;
    private static final XInt INT_ANY_ANY;
    private static final XInt INT_ANY_LAX;
    private static final XInt INT_ANY_LIST;
    private static final XInt INT_ANY_NOT;
    private static final XInt INT_ANY_SKIP;
    private static final XInt INT_ANY_STRICT;
    private static final XInt INT_EMPTY_SET;
    private static final XInt INT_QUALIFIED;
    private static final XInt INT_UNBOUNDED;
    private static final XInt INT_UNQUALIFIED;
    private static final XInt INT_USE_OPTIONAL;
    private static final XInt INT_USE_PROHIBITED;
    private static final XInt INT_USE_REQUIRED;
    private static final XInt INT_WS_COLLAPSE;
    private static final XInt INT_WS_PRESERVE;
    private static final XInt INT_WS_REPLACE;
    private static final Hashtable fEleAttrsMapG;
    private static final Hashtable fEleAttrsMapL;
    private static final XSSimpleType[] fExtraDVs;
    private static boolean[] fSeenTemp;
    private static Object[] fTempArray;
    private static final XIntPool fXIntPool;
    Object[][] fArrayPool;
    int fPoolPos;
    protected XSDHandler fSchemaHandler;
    protected boolean[] fSeen;
    protected SymbolTable fSymbolTable = null;
    protected Hashtable fNonSchemaAttrs = new Hashtable();
    protected Vector fNamespaceList = new Vector();

    static {
        int i = 0 + 1;
        int i2 = i + 1;
        ATTIDX_AFORMDEFAULT = i;
        int i3 = i2 + 1;
        ATTIDX_BASE = i2;
        int i4 = i3 + 1;
        ATTIDX_BLOCK = i3;
        int i5 = i4 + 1;
        ATTIDX_BLOCKDEFAULT = i4;
        int i6 = i5 + 1;
        ATTIDX_DEFAULT = i5;
        int i7 = i6 + 1;
        ATTIDX_EFORMDEFAULT = i6;
        int i8 = i7 + 1;
        ATTIDX_FINAL = i7;
        int i9 = i8 + 1;
        ATTIDX_FINALDEFAULT = i8;
        int i10 = i9 + 1;
        ATTIDX_FIXED = i9;
        int i11 = i10 + 1;
        ATTIDX_FORM = i10;
        int i12 = i11 + 1;
        ATTIDX_ID = i11;
        int i13 = i12 + 1;
        ATTIDX_ITEMTYPE = i12;
        int i14 = i13 + 1;
        ATTIDX_MAXOCCURS = i13;
        int i15 = i14 + 1;
        ATTIDX_MEMBERTYPES = i14;
        int i16 = i15 + 1;
        ATTIDX_MINOCCURS = i15;
        int i17 = i16 + 1;
        ATTIDX_MIXED = i16;
        int i18 = i17 + 1;
        ATTIDX_NAME = i17;
        int i19 = i18 + 1;
        ATTIDX_NAMESPACE = i18;
        int i20 = i19 + 1;
        ATTIDX_NAMESPACE_LIST = i19;
        int i21 = i20 + 1;
        ATTIDX_NILLABLE = i20;
        int i22 = i21 + 1;
        ATTIDX_NONSCHEMA = i21;
        int i23 = i22 + 1;
        ATTIDX_PROCESSCONTENTS = i22;
        int i24 = i23 + 1;
        ATTIDX_PUBLIC = i23;
        int i25 = i24 + 1;
        ATTIDX_REF = i24;
        int i26 = i25 + 1;
        ATTIDX_REFER = i25;
        int i27 = i26 + 1;
        ATTIDX_SCHEMALOCATION = i26;
        int i28 = i27 + 1;
        ATTIDX_SOURCE = i27;
        int i29 = i28 + 1;
        ATTIDX_SUBSGROUP = i28;
        int i30 = i29 + 1;
        ATTIDX_SYSTEM = i29;
        int i31 = i30 + 1;
        ATTIDX_TARGETNAMESPACE = i30;
        int i32 = i31 + 1;
        ATTIDX_TYPE = i31;
        int i33 = i32 + 1;
        ATTIDX_USE = i32;
        int i34 = i33 + 1;
        ATTIDX_VALUE = i33;
        int i35 = i34 + 1;
        ATTIDX_ENUMNSDECLS = i34;
        int i36 = i35 + 1;
        ATTIDX_VERSION = i35;
        int i37 = i36 + 1;
        ATTIDX_XML_LANG = i36;
        int i38 = i37 + 1;
        ATTIDX_XPATH = i37;
        int i39 = i38 + 1;
        ATTIDX_FROMDEFAULT = i38;
        ATTIDX_COUNT = i39 + 1;
        ATTIDX_ISRETURNED = i39;
        XIntPool xIntPool = new XIntPool();
        fXIntPool = xIntPool;
        INT_QUALIFIED = xIntPool.getXInt(1);
        XInt xInt = xIntPool.getXInt(0);
        INT_UNQUALIFIED = xInt;
        XInt xInt2 = xIntPool.getXInt(0);
        INT_EMPTY_SET = xInt2;
        XInt xInt3 = xIntPool.getXInt(1);
        INT_ANY_STRICT = xInt3;
        INT_ANY_LAX = xIntPool.getXInt(3);
        INT_ANY_SKIP = xIntPool.getXInt(2);
        XInt xInt4 = xIntPool.getXInt(1);
        INT_ANY_ANY = xInt4;
        INT_ANY_LIST = xIntPool.getXInt(3);
        INT_ANY_NOT = xIntPool.getXInt(2);
        XInt xInt5 = xIntPool.getXInt(0);
        INT_USE_OPTIONAL = xInt5;
        INT_USE_REQUIRED = xIntPool.getXInt(1);
        INT_USE_PROHIBITED = xIntPool.getXInt(2);
        INT_WS_PRESERVE = xIntPool.getXInt(0);
        INT_WS_REPLACE = xIntPool.getXInt(1);
        INT_WS_COLLAPSE = xIntPool.getXInt(2);
        INT_UNBOUNDED = xIntPool.getXInt(-1);
        Hashtable hashtable = new Hashtable(29);
        fEleAttrsMapG = hashtable;
        Hashtable hashtable2 = new Hashtable(79);
        fEleAttrsMapL = hashtable2;
        XSSimpleType[] xSSimpleTypeArr = new XSSimpleType[9];
        fExtraDVs = xSSimpleTypeArr;
        SchemaGrammar.BuiltinSchemaGrammar builtinSchemaGrammar = SchemaGrammar.SG_SchemaNS;
        xSSimpleTypeArr[0] = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("anyURI");
        xSSimpleTypeArr[1] = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("ID");
        xSSimpleTypeArr[2] = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("QName");
        xSSimpleTypeArr[3] = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("string");
        xSSimpleTypeArr[4] = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("token");
        xSSimpleTypeArr[5] = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("NCName");
        XSSimpleType xSSimpleType = xSSimpleTypeArr[3];
        xSSimpleTypeArr[6] = xSSimpleType;
        xSSimpleTypeArr[6] = xSSimpleType;
        xSSimpleTypeArr[8] = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("language");
        String str = SchemaSymbols.ATT_ABSTRACT;
        Boolean bool = Boolean.FALSE;
        String str2 = SchemaSymbols.ATT_ATTRIBUTEFORMDEFAULT;
        String str3 = SchemaSymbols.ATT_BASE;
        String str4 = SchemaSymbols.ATT_BLOCK;
        String str5 = SchemaSymbols.ATT_BLOCKDEFAULT;
        String str6 = SchemaSymbols.ATT_DEFAULT;
        String str7 = SchemaSymbols.ATT_ELEMENTFORMDEFAULT;
        String str8 = SchemaSymbols.ATT_FINAL;
        String str9 = SchemaSymbols.ATT_FINALDEFAULT;
        String str10 = SchemaSymbols.ATT_FIXED;
        String str11 = SchemaSymbols.ATT_FORM;
        String str12 = SchemaSymbols.ATT_ID;
        String str13 = SchemaSymbols.ATT_ITEMTYPE;
        String str14 = SchemaSymbols.ATT_MAXOCCURS;
        String str15 = SchemaSymbols.ATT_MEMBERTYPES;
        String str16 = SchemaSymbols.ATT_MINOCCURS;
        String str17 = SchemaSymbols.ATT_MIXED;
        String str18 = SchemaSymbols.ATT_NAME;
        String str19 = SchemaSymbols.ATT_NAMESPACE;
        String str20 = SchemaSymbols.ATT_NILLABLE;
        String str21 = SchemaSymbols.ATT_PROCESSCONTENTS;
        String str22 = SchemaSymbols.ATT_PUBLIC;
        String str23 = SchemaSymbols.ATT_REF;
        String str24 = SchemaSymbols.ATT_REFER;
        String str25 = SchemaSymbols.ATT_SCHEMALOCATION;
        String str26 = SchemaSymbols.ATT_SOURCE;
        String str27 = SchemaSymbols.ATT_SUBSTITUTIONGROUP;
        String str28 = SchemaSymbols.ATT_SYSTEM;
        String str29 = SchemaSymbols.ATT_TARGETNAMESPACE;
        String str30 = SchemaSymbols.ATT_TYPE;
        String str31 = SchemaSymbols.ATT_USE;
        String str32 = SchemaSymbols.ATT_VALUE;
        String str33 = SchemaSymbols.ATT_VERSION;
        String str34 = SchemaSymbols.ATT_XML_LANG;
        String str35 = SchemaSymbols.ATT_XPATH;
        OneAttr[] oneAttrArr = {new OneAttr(str, -15, 0, bool), new OneAttr(str2, -6, i, xInt), new OneAttr(str3, 2, i2, null), new OneAttr(str3, 2, i2, null), new OneAttr(str4, -1, i3, null), new OneAttr(str4, -2, i3, null), new OneAttr(str5, -1, i4, xInt2), new OneAttr(str6, 3, i5, null), new OneAttr(str7, -6, i6, xInt), new OneAttr(str8, -3, i7, null), new OneAttr(str8, -4, i7, null), new OneAttr(str9, -5, i8, xInt2), new OneAttr(str10, 3, i9, null), new OneAttr(str10, -15, i9, bool), new OneAttr(str11, -6, i10, null), new OneAttr(str12, 1, i11, null), new OneAttr(str13, 2, i12, null), new OneAttr(str14, -7, i13, xIntPool.getXInt(1)), new OneAttr(str14, -8, i13, xIntPool.getXInt(1)), new OneAttr(str15, -9, i14, null), new OneAttr(str16, -16, i15, xIntPool.getXInt(1)), new OneAttr(str16, -10, i15, xIntPool.getXInt(1)), new OneAttr(str17, -15, i16, bool), new OneAttr(str17, -15, i16, null), new OneAttr(str18, 5, i17, null), new OneAttr(str19, -11, i18, xInt4), new OneAttr(str19, 0, i18, null), new OneAttr(str20, -15, i20, bool), new OneAttr(str21, -12, i22, xInt3), new OneAttr(str22, 4, i23, null), new OneAttr(str23, 2, i24, null), new OneAttr(str24, 2, i25, null), new OneAttr(str25, 0, i26, null), new OneAttr(str25, 0, i26, null), new OneAttr(str26, 0, i27, null), new OneAttr(str27, 2, i28, null), new OneAttr(str28, 0, i29, null), new OneAttr(str29, 0, i30, null), new OneAttr(str30, 2, i31, null), new OneAttr(str31, -13, i32, xInt5), new OneAttr(str32, -16, i33, null), new OneAttr(str32, -17, i33, null), new OneAttr(str32, 3, i33, null), new OneAttr(str32, -14, i33, null), new OneAttr(str33, 4, i35, null), new OneAttr(str34, 8, i36, null), new OneAttr(str35, 6, i37, null), new OneAttr(str35, 7, i37, null)};
        Container container = Container.getContainer(5);
        container.put(str6, oneAttrArr[7]);
        container.put(str10, oneAttrArr[12]);
        container.put(str12, oneAttrArr[15]);
        container.put(str18, oneAttrArr[24]);
        container.put(str30, oneAttrArr[38]);
        hashtable.put(SchemaSymbols.ELT_ATTRIBUTE, new OneElement(container));
        Container container2 = Container.getContainer(7);
        container2.put(str6, oneAttrArr[7]);
        container2.put(str10, oneAttrArr[12]);
        container2.put(str11, oneAttrArr[14]);
        container2.put(str12, oneAttrArr[15]);
        container2.put(str18, oneAttrArr[24]);
        container2.put(str30, oneAttrArr[38]);
        container2.put(str31, oneAttrArr[39]);
        hashtable2.put("attribute_n", new OneElement(container2));
        Container container3 = Container.getContainer(5);
        container3.put(str6, oneAttrArr[7]);
        container3.put(str10, oneAttrArr[12]);
        container3.put(str12, oneAttrArr[15]);
        container3.put(str23, oneAttrArr[30]);
        container3.put(str31, oneAttrArr[39]);
        hashtable2.put("attribute_r", new OneElement(container3));
        Container container4 = Container.getContainer(10);
        container4.put(str, oneAttrArr[0]);
        container4.put(str4, oneAttrArr[4]);
        container4.put(str6, oneAttrArr[7]);
        container4.put(str8, oneAttrArr[9]);
        container4.put(str10, oneAttrArr[12]);
        container4.put(str12, oneAttrArr[15]);
        container4.put(str18, oneAttrArr[24]);
        container4.put(str20, oneAttrArr[27]);
        container4.put(str27, oneAttrArr[35]);
        container4.put(str30, oneAttrArr[38]);
        hashtable.put(SchemaSymbols.ELT_ELEMENT, new OneElement(container4));
        Container container5 = Container.getContainer(10);
        container5.put(str4, oneAttrArr[4]);
        container5.put(str6, oneAttrArr[7]);
        container5.put(str10, oneAttrArr[12]);
        container5.put(str11, oneAttrArr[14]);
        container5.put(str12, oneAttrArr[15]);
        container5.put(str14, oneAttrArr[17]);
        container5.put(str16, oneAttrArr[20]);
        container5.put(str18, oneAttrArr[24]);
        container5.put(str20, oneAttrArr[27]);
        container5.put(str30, oneAttrArr[38]);
        hashtable2.put("element_n", new OneElement(container5));
        Container container6 = Container.getContainer(4);
        container6.put(str12, oneAttrArr[15]);
        container6.put(str14, oneAttrArr[17]);
        container6.put(str16, oneAttrArr[20]);
        container6.put(str23, oneAttrArr[30]);
        hashtable2.put("element_r", new OneElement(container6));
        Container container7 = Container.getContainer(6);
        container7.put(str, oneAttrArr[0]);
        container7.put(str4, oneAttrArr[5]);
        container7.put(str8, oneAttrArr[9]);
        container7.put(str12, oneAttrArr[15]);
        container7.put(str17, oneAttrArr[22]);
        container7.put(str18, oneAttrArr[24]);
        OneElement oneElement = new OneElement(container7);
        String str36 = SchemaSymbols.ELT_COMPLEXTYPE;
        hashtable.put(str36, oneElement);
        Container container8 = Container.getContainer(4);
        container8.put(str12, oneAttrArr[15]);
        container8.put(str18, oneAttrArr[24]);
        container8.put(str22, oneAttrArr[29]);
        container8.put(str28, oneAttrArr[36]);
        hashtable.put(SchemaSymbols.ELT_NOTATION, new OneElement(container8));
        Container container9 = Container.getContainer(2);
        container9.put(str12, oneAttrArr[15]);
        container9.put(str17, oneAttrArr[22]);
        hashtable2.put(str36, new OneElement(container9));
        Container container10 = Container.getContainer(1);
        container10.put(str12, oneAttrArr[15]);
        hashtable2.put(SchemaSymbols.ELT_SIMPLECONTENT, new OneElement(container10));
        Container container11 = Container.getContainer(2);
        container11.put(str3, oneAttrArr[3]);
        container11.put(str12, oneAttrArr[15]);
        hashtable2.put(SchemaSymbols.ELT_RESTRICTION, new OneElement(container11));
        Container container12 = Container.getContainer(2);
        container12.put(str3, oneAttrArr[2]);
        container12.put(str12, oneAttrArr[15]);
        hashtable2.put(SchemaSymbols.ELT_EXTENSION, new OneElement(container12));
        Container container13 = Container.getContainer(2);
        container13.put(str12, oneAttrArr[15]);
        container13.put(str23, oneAttrArr[30]);
        OneElement oneElement2 = new OneElement(container13);
        String str37 = SchemaSymbols.ELT_ATTRIBUTEGROUP;
        hashtable2.put(str37, oneElement2);
        Container container14 = Container.getContainer(3);
        container14.put(str12, oneAttrArr[15]);
        container14.put(str19, oneAttrArr[25]);
        container14.put(str21, oneAttrArr[28]);
        hashtable2.put(SchemaSymbols.ELT_ANYATTRIBUTE, new OneElement(container14));
        Container container15 = Container.getContainer(2);
        container15.put(str12, oneAttrArr[15]);
        container15.put(str17, oneAttrArr[23]);
        hashtable2.put(SchemaSymbols.ELT_COMPLEXCONTENT, new OneElement(container15));
        Container container16 = Container.getContainer(2);
        container16.put(str12, oneAttrArr[15]);
        container16.put(str18, oneAttrArr[24]);
        hashtable.put(str37, new OneElement(container16));
        Container container17 = Container.getContainer(2);
        container17.put(str12, oneAttrArr[15]);
        container17.put(str18, oneAttrArr[24]);
        OneElement oneElement3 = new OneElement(container17);
        String str38 = SchemaSymbols.ELT_GROUP;
        hashtable.put(str38, oneElement3);
        Container container18 = Container.getContainer(4);
        container18.put(str12, oneAttrArr[15]);
        container18.put(str14, oneAttrArr[17]);
        container18.put(str16, oneAttrArr[20]);
        container18.put(str23, oneAttrArr[30]);
        hashtable2.put(str38, new OneElement(container18));
        Container container19 = Container.getContainer(3);
        container19.put(str12, oneAttrArr[15]);
        container19.put(str14, oneAttrArr[18]);
        container19.put(str16, oneAttrArr[21]);
        hashtable2.put(SchemaSymbols.ELT_ALL, new OneElement(container19));
        Container container20 = Container.getContainer(3);
        container20.put(str12, oneAttrArr[15]);
        container20.put(str14, oneAttrArr[17]);
        container20.put(str16, oneAttrArr[20]);
        OneElement oneElement4 = new OneElement(container20);
        hashtable2.put(SchemaSymbols.ELT_CHOICE, oneElement4);
        hashtable2.put(SchemaSymbols.ELT_SEQUENCE, oneElement4);
        Container container21 = Container.getContainer(5);
        container21.put(str12, oneAttrArr[15]);
        container21.put(str14, oneAttrArr[17]);
        container21.put(str16, oneAttrArr[20]);
        container21.put(str19, oneAttrArr[25]);
        container21.put(str21, oneAttrArr[28]);
        hashtable2.put(SchemaSymbols.ELT_ANY, new OneElement(container21));
        Container container22 = Container.getContainer(2);
        container22.put(str12, oneAttrArr[15]);
        container22.put(str18, oneAttrArr[24]);
        OneElement oneElement5 = new OneElement(container22);
        hashtable2.put(SchemaSymbols.ELT_UNIQUE, oneElement5);
        hashtable2.put(SchemaSymbols.ELT_KEY, oneElement5);
        Container container23 = Container.getContainer(3);
        container23.put(str12, oneAttrArr[15]);
        container23.put(str18, oneAttrArr[24]);
        container23.put(str24, oneAttrArr[31]);
        hashtable2.put(SchemaSymbols.ELT_KEYREF, new OneElement(container23));
        Container container24 = Container.getContainer(2);
        container24.put(str12, oneAttrArr[15]);
        container24.put(str35, oneAttrArr[46]);
        hashtable2.put(SchemaSymbols.ELT_SELECTOR, new OneElement(container24));
        Container container25 = Container.getContainer(2);
        container25.put(str12, oneAttrArr[15]);
        container25.put(str35, oneAttrArr[47]);
        hashtable2.put(SchemaSymbols.ELT_FIELD, new OneElement(container25));
        Container container26 = Container.getContainer(1);
        container26.put(str12, oneAttrArr[15]);
        OneElement oneElement6 = new OneElement(container26);
        String str39 = SchemaSymbols.ELT_ANNOTATION;
        hashtable.put(str39, oneElement6);
        hashtable2.put(str39, oneElement6);
        Container container27 = Container.getContainer(1);
        container27.put(str26, oneAttrArr[34]);
        OneElement oneElement7 = new OneElement(container27);
        String str40 = SchemaSymbols.ELT_APPINFO;
        hashtable.put(str40, oneElement7);
        hashtable2.put(str40, oneElement7);
        Container container28 = Container.getContainer(2);
        container28.put(str26, oneAttrArr[34]);
        container28.put(str34, oneAttrArr[45]);
        OneElement oneElement8 = new OneElement(container28);
        String str41 = SchemaSymbols.ELT_DOCUMENTATION;
        hashtable.put(str41, oneElement8);
        hashtable2.put(str41, oneElement8);
        Container container29 = Container.getContainer(3);
        container29.put(str8, oneAttrArr[10]);
        container29.put(str12, oneAttrArr[15]);
        container29.put(str18, oneAttrArr[24]);
        OneElement oneElement9 = new OneElement(container29);
        String str42 = SchemaSymbols.ELT_SIMPLETYPE;
        hashtable.put(str42, oneElement9);
        Container container30 = Container.getContainer(2);
        container30.put(str8, oneAttrArr[10]);
        container30.put(str12, oneAttrArr[15]);
        hashtable2.put(str42, new OneElement(container30));
        Container container31 = Container.getContainer(2);
        container31.put(str12, oneAttrArr[15]);
        container31.put(str13, oneAttrArr[16]);
        hashtable2.put(SchemaSymbols.ELT_LIST, new OneElement(container31));
        Container container32 = Container.getContainer(2);
        container32.put(str12, oneAttrArr[15]);
        container32.put(str15, oneAttrArr[19]);
        hashtable2.put(SchemaSymbols.ELT_UNION, new OneElement(container32));
        Container container33 = Container.getContainer(8);
        container33.put(str2, oneAttrArr[1]);
        container33.put(str5, oneAttrArr[6]);
        container33.put(str7, oneAttrArr[8]);
        container33.put(str9, oneAttrArr[11]);
        container33.put(str12, oneAttrArr[15]);
        container33.put(str29, oneAttrArr[37]);
        container33.put(str33, oneAttrArr[44]);
        container33.put(str34, oneAttrArr[45]);
        hashtable.put(SchemaSymbols.ELT_SCHEMA, new OneElement(container33));
        Container container34 = Container.getContainer(2);
        container34.put(str12, oneAttrArr[15]);
        container34.put(str25, oneAttrArr[32]);
        OneElement oneElement10 = new OneElement(container34);
        hashtable.put(SchemaSymbols.ELT_INCLUDE, oneElement10);
        hashtable.put(SchemaSymbols.ELT_REDEFINE, oneElement10);
        Container container35 = Container.getContainer(3);
        container35.put(str12, oneAttrArr[15]);
        container35.put(str19, oneAttrArr[26]);
        container35.put(str25, oneAttrArr[33]);
        hashtable.put(SchemaSymbols.ELT_IMPORT, new OneElement(container35));
        Container container36 = Container.getContainer(3);
        container36.put(str12, oneAttrArr[15]);
        container36.put(str32, oneAttrArr[40]);
        container36.put(str10, oneAttrArr[13]);
        OneElement oneElement11 = new OneElement(container36);
        hashtable2.put(SchemaSymbols.ELT_LENGTH, oneElement11);
        hashtable2.put(SchemaSymbols.ELT_MINLENGTH, oneElement11);
        hashtable2.put(SchemaSymbols.ELT_MAXLENGTH, oneElement11);
        hashtable2.put(SchemaSymbols.ELT_FRACTIONDIGITS, oneElement11);
        Container container37 = Container.getContainer(3);
        container37.put(str12, oneAttrArr[15]);
        container37.put(str32, oneAttrArr[41]);
        container37.put(str10, oneAttrArr[13]);
        hashtable2.put(SchemaSymbols.ELT_TOTALDIGITS, new OneElement(container37));
        Container container38 = Container.getContainer(2);
        container38.put(str12, oneAttrArr[15]);
        container38.put(str32, oneAttrArr[42]);
        hashtable2.put(SchemaSymbols.ELT_PATTERN, new OneElement(container38));
        Container container39 = Container.getContainer(2);
        container39.put(str12, oneAttrArr[15]);
        container39.put(str32, oneAttrArr[42]);
        hashtable2.put(SchemaSymbols.ELT_ENUMERATION, new OneElement(container39));
        Container container40 = Container.getContainer(3);
        container40.put(str12, oneAttrArr[15]);
        container40.put(str32, oneAttrArr[43]);
        container40.put(str10, oneAttrArr[13]);
        hashtable2.put(SchemaSymbols.ELT_WHITESPACE, new OneElement(container40));
        Container container41 = Container.getContainer(3);
        container41.put(str12, oneAttrArr[15]);
        container41.put(str32, oneAttrArr[42]);
        container41.put(str10, oneAttrArr[13]);
        OneElement oneElement12 = new OneElement(container41);
        hashtable2.put(SchemaSymbols.ELT_MAXINCLUSIVE, oneElement12);
        hashtable2.put(SchemaSymbols.ELT_MAXEXCLUSIVE, oneElement12);
        hashtable2.put(SchemaSymbols.ELT_MININCLUSIVE, oneElement12);
        hashtable2.put(SchemaSymbols.ELT_MINEXCLUSIVE, oneElement12);
        int i40 = ATTIDX_COUNT;
        fSeenTemp = new boolean[i40];
        fTempArray = new Object[i40];
    }

    public XSAttributeChecker(XSDHandler xSDHandler) {
        this.fSchemaHandler = null;
        int i = ATTIDX_COUNT;
        this.fSeen = new boolean[i];
        this.fArrayPool = (Object[][]) Array.newInstance((Class<?>) Object.class, 10, i);
        this.fPoolPos = 0;
        this.fSchemaHandler = xSDHandler;
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
                if (charAt2 == '\t' || charAt2 == '\n' || charAt2 == '\r') {
                    stringBuffer.append(' ');
                } else {
                    stringBuffer.append(charAt2);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0269 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v48, types: [com.sun.org.apache.xerces.internal.impl.xs.util.XInt] */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.util.Vector] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object validate(java.lang.Object[] r17, java.lang.String r18, java.lang.String r19, int r20, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r21) throws com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException {
        /*
            Method dump skipped, instructions count: 1058
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSAttributeChecker.validate(java.lang.Object[], java.lang.String, java.lang.String, int, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo):java.lang.Object");
    }

    public Object[] checkAttributes(Element element, boolean z, XSDocumentInfo xSDocumentInfo) {
        return checkAttributes(element, z, xSDocumentInfo, false);
    }

    public void checkNonSchemaAttributes(XSGrammarBucket xSGrammarBucket) {
        XSAttributeDecl globalAttributeDecl;
        XSSimpleType xSSimpleType;
        Enumeration keys = this.fNonSchemaAttrs.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            String substring = str.substring(0, str.indexOf(44));
            String substring2 = str.substring(str.indexOf(44) + 1);
            SchemaGrammar grammar = xSGrammarBucket.getGrammar(substring);
            if (grammar != null && (globalAttributeDecl = grammar.getGlobalAttributeDecl(substring2)) != null && (xSSimpleType = (XSSimpleType) globalAttributeDecl.getTypeDefinition()) != null) {
                Vector vector = (Vector) this.fNonSchemaAttrs.get(str);
                String str2 = (String) vector.elementAt(0);
                int size = vector.size();
                for (int i = 1; i < size; i += 2) {
                    String str3 = (String) vector.elementAt(i);
                    try {
                        xSSimpleType.validate((String) vector.elementAt(i + 1), (ValidationContext) null, (ValidatedInfo) null);
                    } catch (InvalidDatatypeValueException e) {
                        reportSchemaError("s4s-att-invalid-value", new Object[]{str3, str2, e.getMessage()}, null);
                    }
                }
            }
        }
    }

    public Object[] getAvailableArray() {
        int length = this.fArrayPool.length;
        int i = this.fPoolPos;
        if (length == i) {
            this.fArrayPool = new Object[i + 10];
            while (true) {
                Object[][] objArr = this.fArrayPool;
                if (i >= objArr.length) {
                    break;
                }
                objArr[i] = new Object[ATTIDX_COUNT];
                i++;
            }
        }
        Object[][] objArr2 = this.fArrayPool;
        int i2 = this.fPoolPos;
        Object[] objArr3 = objArr2[i2];
        this.fPoolPos = i2 + 1;
        objArr2[i2] = null;
        System.arraycopy(fTempArray, 0, objArr3, 0, ATTIDX_COUNT - 1);
        objArr3[ATTIDX_ISRETURNED] = Boolean.FALSE;
        return objArr3;
    }

    public void reportSchemaError(String str, Object[] objArr, Element element) {
        this.fSchemaHandler.reportSchemaError(str, objArr, element);
    }

    public void reset(SymbolTable symbolTable) {
        this.fSymbolTable = symbolTable;
        this.fNonSchemaAttrs.clear();
    }

    public void resolveNamespace(Element element, Attr[] attrArr, SchemaNamespaceSupport schemaNamespaceSupport) {
        schemaNamespaceSupport.pushContext();
        for (Attr attr : attrArr) {
            String name = DOMUtil.getName(attr);
            String addSymbol = name.equals(XMLSymbols.PREFIX_XMLNS) ? XMLSymbols.EMPTY_STRING : name.startsWith("xmlns:") ? this.fSymbolTable.addSymbol(DOMUtil.getLocalName(attr)) : null;
            if (addSymbol != null) {
                String addSymbol2 = this.fSymbolTable.addSymbol(DOMUtil.getValue(attr));
                schemaNamespaceSupport.declarePrefix(addSymbol, addSymbol2.length() != 0 ? addSymbol2 : null);
            }
        }
    }

    public void returnAttrArray(Object[] objArr, XSDocumentInfo xSDocumentInfo) {
        if (xSDocumentInfo != null) {
            xSDocumentInfo.fNamespaceSupport.popContext();
        }
        if (this.fPoolPos == 0 || objArr == null || objArr.length != ATTIDX_COUNT) {
            return;
        }
        int i = ATTIDX_ISRETURNED;
        if (((Boolean) objArr[i]).booleanValue()) {
            return;
        }
        objArr[i] = Boolean.TRUE;
        Object obj = objArr[ATTIDX_NONSCHEMA];
        if (obj != null) {
            ((Vector) obj).clear();
        }
        Object[][] objArr2 = this.fArrayPool;
        int i2 = this.fPoolPos - 1;
        this.fPoolPos = i2;
        objArr2[i2] = objArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object[] checkAttributes(org.w3c.dom.Element r22, boolean r23, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSAttributeChecker.checkAttributes(org.w3c.dom.Element, boolean, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, boolean):java.lang.Object[]");
    }
}
