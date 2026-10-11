package org.apache.xerces.impl.p117xs.traversers;

import com.sunia.HTREnginev2.hgk;
import com.sunia.HTREnginev2.mae;
import com.sunia.HTREnginev2.tmo;
import java.lang.reflect.Array;
import java.util.Hashtable;
import java.util.Map;
import java.util.Vector;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaNamespaceSupport;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSAttributeDecl;
import org.apache.xerces.impl.p117xs.XSGrammarBucket;
import org.apache.xerces.impl.p117xs.util.XInt;
import org.apache.xerces.impl.p117xs.util.XIntPool;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLSymbols;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public class XSAttributeChecker {

    /* renamed from: A */
    public static final XSSimpleType[] f113059A;
    public static final int ATTIDX_ABSTRACT = 0;
    public static final int ATTIDX_AFORMDEFAULT;
    public static final int ATTIDX_BASE;
    public static final int ATTIDX_BLOCK;
    public static final int ATTIDX_BLOCKDEFAULT;
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

    /* renamed from: B */
    public static boolean[] f113060B = null;

    /* renamed from: C */
    public static final int f113061C = 10;

    /* renamed from: D */
    public static final int f113062D = 10;
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

    /* renamed from: E */
    public static Object[] f113063E = null;

    /* renamed from: c */
    public static final String f113064c = "element_n";

    /* renamed from: d */
    public static final String f113065d = "element_r";

    /* renamed from: e */
    public static final String f113066e = "attribute_n";

    /* renamed from: f */
    public static final String f113067f = "attribute_r";

    /* renamed from: g */
    public static int f113068g;

    /* renamed from: h */
    public static final XIntPool f113069h;

    /* renamed from: i */
    public static final XInt f113070i;

    /* renamed from: j */
    public static final XInt f113071j;

    /* renamed from: k */
    public static final XInt f113072k;

    /* renamed from: l */
    public static final XInt f113073l;

    /* renamed from: m */
    public static final XInt f113074m;

    /* renamed from: n */
    public static final XInt f113075n;

    /* renamed from: o */
    public static final XInt f113076o;

    /* renamed from: p */
    public static final XInt f113077p;

    /* renamed from: q */
    public static final XInt f113078q;

    /* renamed from: r */
    public static final XInt f113079r;

    /* renamed from: s */
    public static final XInt f113080s;

    /* renamed from: t */
    public static final XInt f113081t;

    /* renamed from: u */
    public static final XInt f113082u;

    /* renamed from: v */
    public static final XInt f113083v;

    /* renamed from: w */
    public static final XInt f113084w;

    /* renamed from: x */
    public static final XInt f113085x;

    /* renamed from: y */
    public static final Hashtable f113086y;

    /* renamed from: z */
    public static final Hashtable f113087z;

    /* renamed from: a */
    public Object[][] f113088a;

    /* renamed from: b */
    public int f113089b;
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
        f113068g = i39 + 1;
        ATTIDX_ISRETURNED = i39;
        XIntPool xIntPool = new XIntPool();
        f113069h = xIntPool;
        f113070i = xIntPool.getXInt(1);
        XInt xInt = xIntPool.getXInt(0);
        f113071j = xInt;
        XInt xInt2 = xIntPool.getXInt(0);
        f113072k = xInt2;
        XInt xInt3 = xIntPool.getXInt(1);
        f113073l = xInt3;
        f113074m = xIntPool.getXInt(3);
        f113075n = xIntPool.getXInt(2);
        XInt xInt4 = xIntPool.getXInt(1);
        f113076o = xInt4;
        f113077p = xIntPool.getXInt(3);
        f113078q = xIntPool.getXInt(2);
        XInt xInt5 = xIntPool.getXInt(0);
        f113079r = xInt5;
        f113080s = xIntPool.getXInt(1);
        f113081t = xIntPool.getXInt(2);
        f113082u = xIntPool.getXInt(0);
        f113083v = xIntPool.getXInt(1);
        f113084w = xIntPool.getXInt(2);
        f113085x = xIntPool.getXInt(-1);
        Hashtable hashtable = new Hashtable(29);
        f113086y = hashtable;
        Hashtable hashtable2 = new Hashtable(79);
        f113087z = hashtable2;
        XSSimpleType[] xSSimpleTypeArr = new XSSimpleType[9];
        f113059A = xSSimpleTypeArr;
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
        hgk[] hgkVarArr = {new hgk(str, -15, 0, bool), new hgk(str2, -6, i, xInt), new hgk(str3, 2, i2, null), new hgk(str3, 2, i2, null), new hgk(str4, -1, i3, null), new hgk(str4, -2, i3, null), new hgk(str5, -1, i4, xInt2), new hgk(str6, 3, i5, null), new hgk(str7, -6, i6, xInt), new hgk(str8, -3, i7, null), new hgk(str8, -4, i7, null), new hgk(str9, -5, i8, xInt2), new hgk(str10, 3, i9, null), new hgk(str10, -15, i9, bool), new hgk(str11, -6, i10, null), new hgk(str12, 1, i11, null), new hgk(str13, 2, i12, null), new hgk(str14, -7, i13, xIntPool.getXInt(1)), new hgk(str14, -8, i13, xIntPool.getXInt(1)), new hgk(str15, -9, i14, null), new hgk(str16, -16, i15, xIntPool.getXInt(1)), new hgk(str16, -10, i15, xIntPool.getXInt(1)), new hgk(str17, -15, i16, bool), new hgk(str17, -15, i16, null), new hgk(str18, 5, i17, null), new hgk(str19, -11, i18, xInt4), new hgk(str19, 0, i18, null), new hgk(str20, -15, i20, bool), new hgk(str21, -12, i22, xInt3), new hgk(str22, 4, i23, null), new hgk(str23, 2, i24, null), new hgk(str24, 2, i25, null), new hgk(str25, 0, i26, null), new hgk(str25, 0, i26, null), new hgk(str26, 0, i27, null), new hgk(str27, 2, i28, null), new hgk(str28, 0, i29, null), new hgk(str29, 0, i30, null), new hgk(str30, 2, i31, null), new hgk(str31, -13, i32, xInt5), new hgk(str32, -16, i33, null), new hgk(str32, -17, i33, null), new hgk(str32, 3, i33, null), new hgk(str32, -14, i33, null), new hgk(str33, 4, i35, null), new hgk(str34, 8, i36, null), new hgk(str35, 6, i37, null), new hgk(str35, 7, i37, null)};
        mae m55585b = mae.m55585b(5);
        m55585b.mo53104c(str6, hgkVarArr[7]);
        m55585b.mo53104c(str10, hgkVarArr[12]);
        m55585b.mo53104c(str12, hgkVarArr[15]);
        m55585b.mo53104c(str18, hgkVarArr[24]);
        m55585b.mo53104c(str30, hgkVarArr[38]);
        hashtable.put(SchemaSymbols.ELT_ATTRIBUTE, m55585b);
        mae m55585b2 = mae.m55585b(7);
        m55585b2.mo53104c(str6, hgkVarArr[7]);
        m55585b2.mo53104c(str10, hgkVarArr[12]);
        m55585b2.mo53104c(str11, hgkVarArr[14]);
        m55585b2.mo53104c(str12, hgkVarArr[15]);
        m55585b2.mo53104c(str18, hgkVarArr[24]);
        m55585b2.mo53104c(str30, hgkVarArr[38]);
        m55585b2.mo53104c(str31, hgkVarArr[39]);
        hashtable2.put(f113066e, m55585b2);
        mae m55585b3 = mae.m55585b(5);
        m55585b3.mo53104c(str6, hgkVarArr[7]);
        m55585b3.mo53104c(str10, hgkVarArr[12]);
        m55585b3.mo53104c(str12, hgkVarArr[15]);
        m55585b3.mo53104c(str23, hgkVarArr[30]);
        m55585b3.mo53104c(str31, hgkVarArr[39]);
        hashtable2.put(f113067f, m55585b3);
        mae m55585b4 = mae.m55585b(10);
        m55585b4.mo53104c(str, hgkVarArr[0]);
        m55585b4.mo53104c(str4, hgkVarArr[4]);
        m55585b4.mo53104c(str6, hgkVarArr[7]);
        m55585b4.mo53104c(str8, hgkVarArr[9]);
        m55585b4.mo53104c(str10, hgkVarArr[12]);
        m55585b4.mo53104c(str12, hgkVarArr[15]);
        m55585b4.mo53104c(str18, hgkVarArr[24]);
        m55585b4.mo53104c(str20, hgkVarArr[27]);
        m55585b4.mo53104c(str27, hgkVarArr[35]);
        m55585b4.mo53104c(str30, hgkVarArr[38]);
        hashtable.put(SchemaSymbols.ELT_ELEMENT, m55585b4);
        mae m55585b5 = mae.m55585b(10);
        m55585b5.mo53104c(str4, hgkVarArr[4]);
        m55585b5.mo53104c(str6, hgkVarArr[7]);
        m55585b5.mo53104c(str10, hgkVarArr[12]);
        m55585b5.mo53104c(str11, hgkVarArr[14]);
        m55585b5.mo53104c(str12, hgkVarArr[15]);
        m55585b5.mo53104c(str14, hgkVarArr[17]);
        m55585b5.mo53104c(str16, hgkVarArr[20]);
        m55585b5.mo53104c(str18, hgkVarArr[24]);
        m55585b5.mo53104c(str20, hgkVarArr[27]);
        m55585b5.mo53104c(str30, hgkVarArr[38]);
        hashtable2.put(f113064c, m55585b5);
        mae m55585b6 = mae.m55585b(4);
        m55585b6.mo53104c(str12, hgkVarArr[15]);
        m55585b6.mo53104c(str14, hgkVarArr[17]);
        m55585b6.mo53104c(str16, hgkVarArr[20]);
        m55585b6.mo53104c(str23, hgkVarArr[30]);
        hashtable2.put(f113065d, m55585b6);
        mae m55585b7 = mae.m55585b(6);
        m55585b7.mo53104c(str, hgkVarArr[0]);
        m55585b7.mo53104c(str4, hgkVarArr[5]);
        m55585b7.mo53104c(str8, hgkVarArr[9]);
        m55585b7.mo53104c(str12, hgkVarArr[15]);
        m55585b7.mo53104c(str17, hgkVarArr[22]);
        m55585b7.mo53104c(str18, hgkVarArr[24]);
        String str36 = SchemaSymbols.ELT_COMPLEXTYPE;
        hashtable.put(str36, m55585b7);
        mae m55585b8 = mae.m55585b(4);
        m55585b8.mo53104c(str12, hgkVarArr[15]);
        m55585b8.mo53104c(str18, hgkVarArr[24]);
        m55585b8.mo53104c(str22, hgkVarArr[29]);
        m55585b8.mo53104c(str28, hgkVarArr[36]);
        hashtable.put(SchemaSymbols.ELT_NOTATION, m55585b8);
        mae m55585b9 = mae.m55585b(2);
        m55585b9.mo53104c(str12, hgkVarArr[15]);
        m55585b9.mo53104c(str17, hgkVarArr[22]);
        hashtable2.put(str36, m55585b9);
        mae m55585b10 = mae.m55585b(1);
        m55585b10.mo53104c(str12, hgkVarArr[15]);
        hashtable2.put(SchemaSymbols.ELT_SIMPLECONTENT, m55585b10);
        mae m55585b11 = mae.m55585b(2);
        m55585b11.mo53104c(str3, hgkVarArr[3]);
        m55585b11.mo53104c(str12, hgkVarArr[15]);
        hashtable2.put(SchemaSymbols.ELT_RESTRICTION, m55585b11);
        mae m55585b12 = mae.m55585b(2);
        m55585b12.mo53104c(str3, hgkVarArr[2]);
        m55585b12.mo53104c(str12, hgkVarArr[15]);
        hashtable2.put(SchemaSymbols.ELT_EXTENSION, m55585b12);
        mae m55585b13 = mae.m55585b(2);
        m55585b13.mo53104c(str12, hgkVarArr[15]);
        m55585b13.mo53104c(str23, hgkVarArr[30]);
        String str37 = SchemaSymbols.ELT_ATTRIBUTEGROUP;
        hashtable2.put(str37, m55585b13);
        mae m55585b14 = mae.m55585b(3);
        m55585b14.mo53104c(str12, hgkVarArr[15]);
        m55585b14.mo53104c(str19, hgkVarArr[25]);
        m55585b14.mo53104c(str21, hgkVarArr[28]);
        hashtable2.put(SchemaSymbols.ELT_ANYATTRIBUTE, m55585b14);
        mae m55585b15 = mae.m55585b(2);
        m55585b15.mo53104c(str12, hgkVarArr[15]);
        m55585b15.mo53104c(str17, hgkVarArr[23]);
        hashtable2.put(SchemaSymbols.ELT_COMPLEXCONTENT, m55585b15);
        mae m55585b16 = mae.m55585b(2);
        m55585b16.mo53104c(str12, hgkVarArr[15]);
        m55585b16.mo53104c(str18, hgkVarArr[24]);
        hashtable.put(str37, m55585b16);
        mae m55585b17 = mae.m55585b(2);
        m55585b17.mo53104c(str12, hgkVarArr[15]);
        m55585b17.mo53104c(str18, hgkVarArr[24]);
        String str38 = SchemaSymbols.ELT_GROUP;
        hashtable.put(str38, m55585b17);
        mae m55585b18 = mae.m55585b(4);
        m55585b18.mo53104c(str12, hgkVarArr[15]);
        m55585b18.mo53104c(str14, hgkVarArr[17]);
        m55585b18.mo53104c(str16, hgkVarArr[20]);
        m55585b18.mo53104c(str23, hgkVarArr[30]);
        hashtable2.put(str38, m55585b18);
        mae m55585b19 = mae.m55585b(3);
        m55585b19.mo53104c(str12, hgkVarArr[15]);
        m55585b19.mo53104c(str14, hgkVarArr[18]);
        m55585b19.mo53104c(str16, hgkVarArr[21]);
        hashtable2.put(SchemaSymbols.ELT_ALL, m55585b19);
        mae m55585b20 = mae.m55585b(3);
        m55585b20.mo53104c(str12, hgkVarArr[15]);
        m55585b20.mo53104c(str14, hgkVarArr[17]);
        m55585b20.mo53104c(str16, hgkVarArr[20]);
        hashtable2.put(SchemaSymbols.ELT_CHOICE, m55585b20);
        hashtable2.put(SchemaSymbols.ELT_SEQUENCE, m55585b20);
        mae m55585b21 = mae.m55585b(5);
        m55585b21.mo53104c(str12, hgkVarArr[15]);
        m55585b21.mo53104c(str14, hgkVarArr[17]);
        m55585b21.mo53104c(str16, hgkVarArr[20]);
        m55585b21.mo53104c(str19, hgkVarArr[25]);
        m55585b21.mo53104c(str21, hgkVarArr[28]);
        hashtable2.put(SchemaSymbols.ELT_ANY, m55585b21);
        mae m55585b22 = mae.m55585b(2);
        m55585b22.mo53104c(str12, hgkVarArr[15]);
        m55585b22.mo53104c(str18, hgkVarArr[24]);
        hashtable2.put(SchemaSymbols.ELT_UNIQUE, m55585b22);
        hashtable2.put(SchemaSymbols.ELT_KEY, m55585b22);
        mae m55585b23 = mae.m55585b(3);
        m55585b23.mo53104c(str12, hgkVarArr[15]);
        m55585b23.mo53104c(str18, hgkVarArr[24]);
        m55585b23.mo53104c(str24, hgkVarArr[31]);
        hashtable2.put(SchemaSymbols.ELT_KEYREF, m55585b23);
        mae m55585b24 = mae.m55585b(2);
        m55585b24.mo53104c(str12, hgkVarArr[15]);
        m55585b24.mo53104c(str35, hgkVarArr[46]);
        hashtable2.put(SchemaSymbols.ELT_SELECTOR, m55585b24);
        mae m55585b25 = mae.m55585b(2);
        m55585b25.mo53104c(str12, hgkVarArr[15]);
        m55585b25.mo53104c(str35, hgkVarArr[47]);
        hashtable2.put(SchemaSymbols.ELT_FIELD, m55585b25);
        mae m55585b26 = mae.m55585b(1);
        m55585b26.mo53104c(str12, hgkVarArr[15]);
        String str39 = SchemaSymbols.ELT_ANNOTATION;
        hashtable.put(str39, m55585b26);
        hashtable2.put(str39, m55585b26);
        mae m55585b27 = mae.m55585b(1);
        m55585b27.mo53104c(str26, hgkVarArr[34]);
        String str40 = SchemaSymbols.ELT_APPINFO;
        hashtable.put(str40, m55585b27);
        hashtable2.put(str40, m55585b27);
        mae m55585b28 = mae.m55585b(2);
        m55585b28.mo53104c(str26, hgkVarArr[34]);
        m55585b28.mo53104c(str34, hgkVarArr[45]);
        String str41 = SchemaSymbols.ELT_DOCUMENTATION;
        hashtable.put(str41, m55585b28);
        hashtable2.put(str41, m55585b28);
        mae m55585b29 = mae.m55585b(3);
        m55585b29.mo53104c(str8, hgkVarArr[10]);
        m55585b29.mo53104c(str12, hgkVarArr[15]);
        m55585b29.mo53104c(str18, hgkVarArr[24]);
        String str42 = SchemaSymbols.ELT_SIMPLETYPE;
        hashtable.put(str42, m55585b29);
        mae m55585b30 = mae.m55585b(2);
        m55585b30.mo53104c(str8, hgkVarArr[10]);
        m55585b30.mo53104c(str12, hgkVarArr[15]);
        hashtable2.put(str42, m55585b30);
        mae m55585b31 = mae.m55585b(2);
        m55585b31.mo53104c(str12, hgkVarArr[15]);
        m55585b31.mo53104c(str13, hgkVarArr[16]);
        hashtable2.put(SchemaSymbols.ELT_LIST, m55585b31);
        mae m55585b32 = mae.m55585b(2);
        m55585b32.mo53104c(str12, hgkVarArr[15]);
        m55585b32.mo53104c(str15, hgkVarArr[19]);
        hashtable2.put(SchemaSymbols.ELT_UNION, m55585b32);
        mae m55585b33 = mae.m55585b(8);
        m55585b33.mo53104c(str2, hgkVarArr[1]);
        m55585b33.mo53104c(str5, hgkVarArr[6]);
        m55585b33.mo53104c(str7, hgkVarArr[8]);
        m55585b33.mo53104c(str9, hgkVarArr[11]);
        m55585b33.mo53104c(str12, hgkVarArr[15]);
        m55585b33.mo53104c(str29, hgkVarArr[37]);
        m55585b33.mo53104c(str33, hgkVarArr[44]);
        m55585b33.mo53104c(str34, hgkVarArr[45]);
        hashtable.put(SchemaSymbols.ELT_SCHEMA, m55585b33);
        mae m55585b34 = mae.m55585b(2);
        m55585b34.mo53104c(str12, hgkVarArr[15]);
        m55585b34.mo53104c(str25, hgkVarArr[32]);
        hashtable.put(SchemaSymbols.ELT_INCLUDE, m55585b34);
        hashtable.put(SchemaSymbols.ELT_REDEFINE, m55585b34);
        mae m55585b35 = mae.m55585b(3);
        m55585b35.mo53104c(str12, hgkVarArr[15]);
        m55585b35.mo53104c(str19, hgkVarArr[26]);
        m55585b35.mo53104c(str25, hgkVarArr[33]);
        hashtable.put(SchemaSymbols.ELT_IMPORT, m55585b35);
        mae m55585b36 = mae.m55585b(3);
        m55585b36.mo53104c(str12, hgkVarArr[15]);
        m55585b36.mo53104c(str32, hgkVarArr[40]);
        m55585b36.mo53104c(str10, hgkVarArr[13]);
        hashtable2.put(SchemaSymbols.ELT_LENGTH, m55585b36);
        hashtable2.put(SchemaSymbols.ELT_MINLENGTH, m55585b36);
        hashtable2.put(SchemaSymbols.ELT_MAXLENGTH, m55585b36);
        hashtable2.put(SchemaSymbols.ELT_FRACTIONDIGITS, m55585b36);
        mae m55585b37 = mae.m55585b(3);
        m55585b37.mo53104c(str12, hgkVarArr[15]);
        m55585b37.mo53104c(str32, hgkVarArr[41]);
        m55585b37.mo53104c(str10, hgkVarArr[13]);
        hashtable2.put(SchemaSymbols.ELT_TOTALDIGITS, m55585b37);
        mae m55585b38 = mae.m55585b(2);
        m55585b38.mo53104c(str12, hgkVarArr[15]);
        m55585b38.mo53104c(str32, hgkVarArr[42]);
        hashtable2.put(SchemaSymbols.ELT_PATTERN, m55585b38);
        mae m55585b39 = mae.m55585b(2);
        m55585b39.mo53104c(str12, hgkVarArr[15]);
        m55585b39.mo53104c(str32, hgkVarArr[42]);
        hashtable2.put(SchemaSymbols.ELT_ENUMERATION, m55585b39);
        mae m55585b40 = mae.m55585b(3);
        m55585b40.mo53104c(str12, hgkVarArr[15]);
        m55585b40.mo53104c(str32, hgkVarArr[43]);
        m55585b40.mo53104c(str10, hgkVarArr[13]);
        hashtable2.put(SchemaSymbols.ELT_WHITESPACE, m55585b40);
        mae m55585b41 = mae.m55585b(3);
        m55585b41.mo53104c(str12, hgkVarArr[15]);
        m55585b41.mo53104c(str32, hgkVarArr[42]);
        m55585b41.mo53104c(str10, hgkVarArr[13]);
        hashtable2.put(SchemaSymbols.ELT_MAXINCLUSIVE, m55585b41);
        hashtable2.put(SchemaSymbols.ELT_MAXEXCLUSIVE, m55585b41);
        hashtable2.put(SchemaSymbols.ELT_MININCLUSIVE, m55585b41);
        hashtable2.put(SchemaSymbols.ELT_MINEXCLUSIVE, m55585b41);
        int i40 = f113068g;
        f113060B = new boolean[i40];
        f113063E = new Object[i40];
    }

    public XSAttributeChecker(XSDHandler xSDHandler) {
        this.fSchemaHandler = null;
        int i = f113068g;
        this.fSeen = new boolean[i];
        this.f113088a = (Object[][]) Array.newInstance((Class<?>) Object.class, 10, i);
        this.f113089b = 0;
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
                        if (i4 < i && ((charAt = str.charAt((i2 = i4 + 1))) == '\t' || charAt == '\n' || charAt == '\r' || charAt == ' ')) {
                            i4 = i2;
                        }
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

    /* renamed from: a */
    public void m70323a(String str, Object[] objArr, Element element) {
        this.fSchemaHandler.m70349D0(str, objArr, element);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0029. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0285 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0239 A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m70324b(java.lang.Object[] r18, java.lang.String r19, java.lang.String r20, int r21, com.sunia.HTREnginev2.tmo r22) throws org.apache.xerces.impl.p115dv.InvalidDatatypeValueException {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker.m70324b(java.lang.Object[], java.lang.String, java.lang.String, int, com.sunia.HTREnginev2.tmo):java.lang.Object");
    }

    public Object[] checkAttributes(Element element, boolean z, tmo tmoVar) {
        return checkAttributes(element, z, tmoVar, false);
    }

    public void checkNonSchemaAttributes(XSGrammarBucket xSGrammarBucket) {
        XSAttributeDecl globalAttributeDecl;
        XSSimpleType xSSimpleType;
        for (Map.Entry entry : this.fNonSchemaAttrs.entrySet()) {
            String str = (String) entry.getKey();
            String substring = str.substring(0, str.indexOf(44));
            String substring2 = str.substring(str.indexOf(44) + 1);
            SchemaGrammar grammar = xSGrammarBucket.getGrammar(substring);
            if (grammar != null && (globalAttributeDecl = grammar.getGlobalAttributeDecl(substring2)) != null && (xSSimpleType = (XSSimpleType) globalAttributeDecl.getTypeDefinition()) != null) {
                Vector vector = (Vector) entry.getValue();
                String str2 = (String) vector.elementAt(0);
                int size = vector.size();
                for (int i = 1; i < size; i += 2) {
                    String str3 = (String) vector.elementAt(i);
                    try {
                        xSSimpleType.validate((String) vector.elementAt(i + 1), (ValidationContext) null, (ValidatedInfo) null);
                    } catch (InvalidDatatypeValueException e) {
                        m70323a("s4s-att-invalid-value", new Object[]{str3, str2, e.getMessage()}, null);
                    }
                }
            }
        }
    }

    public Object[] getAvailableArray() {
        int length = this.f113088a.length;
        int i = this.f113089b;
        if (length == i) {
            this.f113088a = new Object[i + 10];
            while (true) {
                Object[][] objArr = this.f113088a;
                if (i >= objArr.length) {
                    break;
                }
                objArr[i] = new Object[f113068g];
                i++;
            }
        }
        Object[][] objArr2 = this.f113088a;
        int i2 = this.f113089b;
        Object[] objArr3 = objArr2[i2];
        this.f113089b = i2 + 1;
        objArr2[i2] = null;
        System.arraycopy(f113063E, 0, objArr3, 0, f113068g - 1);
        objArr3[ATTIDX_ISRETURNED] = Boolean.FALSE;
        return objArr3;
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

    public void returnAttrArray(Object[] objArr, tmo tmoVar) {
        if (tmoVar != null) {
            tmoVar.f85501a.popContext();
        }
        if (this.f113089b == 0 || objArr == null || objArr.length != f113068g) {
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
        Object[][] objArr2 = this.f113088a;
        int i2 = this.f113089b - 1;
        this.f113089b = i2;
        objArr2[i2] = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x011a, code lost:
    
        if (org.apache.xerces.impl.p117xs.SchemaSymbols.ELT_DOCUMENTATION.equals(r12) != false) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object[] checkAttributes(org.w3c.dom.Element r21, boolean r22, com.sunia.HTREnginev2.tmo r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker.checkAttributes(org.w3c.dom.Element, boolean, com.sunia.HTREnginev2.tmo, boolean):java.lang.Object[]");
    }
}
