package org.apache.xerces.impl.p115dv.p116xs;

import com.sunia.HTREnginev2.C14394sb;
import com.sunia.HTREnginev2.q5l;
import java.math.BigInteger;
import java.util.AbstractList;
import java.util.Locale;
import java.util.Vector;
import org.apache.xerces.impl.p115dv.DatatypeException;
import org.apache.xerces.impl.p115dv.InvalidDatatypeFacetException;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.XSFacets;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p115dv.p116xs.ListDV;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.util.ObjectListImpl;
import org.apache.xerces.impl.p117xs.util.ShortListImpl;
import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSFacet;
import org.apache.xerces.p118xs.XSMultiValueFacet;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.p118xs.datatypes.ObjectList;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.TypeInfo;

/* loaded from: classes13.dex */
public class XSSimpleTypeDecl implements XSSimpleType, TypeInfo {
    public static final short ANYATOMICTYPE_DT = 49;
    public static final short DAYTIMEDURATION_DT = 47;
    protected static final short DV_ANYATOMICTYPE = 29;
    protected static final short DV_ANYSIMPLETYPE = 0;
    protected static final short DV_ANYURI = 17;
    protected static final short DV_BASE64BINARY = 16;
    protected static final short DV_BOOLEAN = 2;
    protected static final short DV_DATE = 9;
    protected static final short DV_DATETIME = 7;
    protected static final short DV_DAYTIMEDURATION = 28;
    protected static final short DV_DECIMAL = 3;
    protected static final short DV_DOUBLE = 5;
    protected static final short DV_DURATION = 6;
    protected static final short DV_ENTITY = 23;
    protected static final short DV_FLOAT = 4;
    protected static final short DV_GDAY = 13;
    protected static final short DV_GMONTH = 14;
    protected static final short DV_GMONTHDAY = 12;
    protected static final short DV_GYEAR = 11;
    protected static final short DV_GYEARMONTH = 10;
    protected static final short DV_HEXBINARY = 15;
    protected static final short DV_ID = 21;
    protected static final short DV_IDREF = 22;
    protected static final short DV_INTEGER = 24;
    protected static final short DV_LIST = 25;
    protected static final short DV_NOTATION = 20;
    protected static final short DV_PRECISIONDECIMAL = 19;
    protected static final short DV_QNAME = 18;
    protected static final short DV_STRING = 1;
    protected static final short DV_TIME = 8;
    protected static final short DV_UNION = 26;
    protected static final short DV_YEARMONTHDURATION = 27;

    /* renamed from: I0 */
    public static final short f112349I0 = 0;

    /* renamed from: J0 */
    public static final short f112350J0 = 1;

    /* renamed from: K0 */
    public static final short f112351K0 = 2;

    /* renamed from: M0 */
    public static final short f112353M0 = 0;

    /* renamed from: N0 */
    public static final short f112354N0 = 1;

    /* renamed from: O0 */
    public static final short f112355O0 = 2;

    /* renamed from: P0 */
    public static final short f112356P0 = 3;
    public static final short PRECISIONDECIMAL_DT = 48;

    /* renamed from: S0 */
    public static final String f112359S0 = "http://www.w3.org/2001/XMLSchema";

    /* renamed from: T0 */
    public static final String f112360T0 = "anyType";

    /* renamed from: U0 */
    public static final int f112361U0 = 0;

    /* renamed from: V0 */
    public static final int f112362V0 = 1;

    /* renamed from: W0 */
    public static final int f112363W0 = 2;

    /* renamed from: X0 */
    public static final int f112364X0 = 4;

    /* renamed from: Y0 */
    public static final int f112365Y0 = 8;
    public static final short YEARMONTHDURATION_DT = 46;

    /* renamed from: a1 */
    public static final XSSimpleTypeDecl f112367a1;

    /* renamed from: b1 */
    public static final XSSimpleTypeDecl f112368b1;

    /* renamed from: c1 */
    public static final ValidationContext f112369c1;

    /* renamed from: A0 */
    public short f112370A0;

    /* renamed from: B0 */
    public short f112371B0;

    /* renamed from: C0 */
    public boolean f112372C0;

    /* renamed from: D0 */
    public boolean f112373D0;

    /* renamed from: E0 */
    public boolean f112374E0;

    /* renamed from: F0 */
    public XSNamespaceItem f112375F0;

    /* renamed from: G0 */
    public boolean f112376G0;

    /* renamed from: J */
    public int f112377J;

    /* renamed from: O */
    public ShortList f112378O;

    /* renamed from: Q */
    public ObjectList f112379Q;

    /* renamed from: Z */
    public StringList f112380Z;

    /* renamed from: e */
    public TypeValidator[] f112381e;
    public XSObjectList enumerationAnnotations;

    /* renamed from: f */
    public boolean f112382f;
    public XSAnnotation fractionDigitsAnnotation;

    /* renamed from: g */
    public XSSimpleTypeDecl f112383g;

    /* renamed from: h */
    public XSSimpleTypeDecl[] f112384h;

    /* renamed from: i */
    public short f112385i;

    /* renamed from: j */
    public String f112386j;

    /* renamed from: k */
    public String f112387k;

    /* renamed from: k0 */
    public StringList f112388k0;

    /* renamed from: l */
    public short f112389l;
    public XSAnnotation lengthAnnotation;

    /* renamed from: m */
    public XSSimpleTypeDecl f112390m;
    public XSAnnotation maxExclusiveAnnotation;
    public XSAnnotation maxInclusiveAnnotation;
    public XSAnnotation maxLengthAnnotation;
    public XSAnnotation minExclusiveAnnotation;
    public XSAnnotation minInclusiveAnnotation;
    public XSAnnotation minLengthAnnotation;

    /* renamed from: n */
    public short f112391n;

    /* renamed from: o */
    public short f112392o;

    /* renamed from: p */
    public short f112393p;
    public XSObjectListImpl patternAnnotations;

    /* renamed from: q */
    public short f112394q;

    /* renamed from: q0 */
    public ObjectList f112395q0;

    /* renamed from: r */
    public short f112396r;

    /* renamed from: s */
    public int f112397s;

    /* renamed from: t */
    public int f112398t;

    /* renamed from: t0 */
    public Object f112399t0;
    public XSAnnotation totalDigitsAnnotation;

    /* renamed from: u */
    public int f112400u;

    /* renamed from: u0 */
    public Object f112401u0;

    /* renamed from: v */
    public int f112402v;

    /* renamed from: v0 */
    public Object f112403v0;

    /* renamed from: w */
    public int f112404w;

    /* renamed from: w0 */
    public Object f112405w0;
    public XSAnnotation whiteSpaceAnnotation;

    /* renamed from: x */
    public Vector f112406x;

    /* renamed from: x0 */
    public XSObjectListImpl f112407x0;

    /* renamed from: y */
    public Vector f112408y;

    /* renamed from: y0 */
    public XSObjectListImpl f112409y0;

    /* renamed from: z */
    public ValidatedInfo[] f112410z;

    /* renamed from: z0 */
    public XSObjectList f112411z0;

    /* renamed from: H0 */
    public static final TypeValidator[] f112348H0 = {new AnySimpleDV(), new StringDV(), new BooleanDV(), new DecimalDV(), new FloatDV(), new DoubleDV(), new DurationDV(), new DateTimeDV(), new TimeDV(), new DateDV(), new YearMonthDV(), new YearDV(), new MonthDayDV(), new DayDV(), new MonthDV(), new HexBinaryDV(), new Base64BinaryDV(), new AnyURIDV(), new QNameDV(), new q5l(), new QNameDV(), new IDDV(), new IDREFDV(), new EntityDV(), new IntegerDV(), new ListDV(), new UnionDV(), new C20029g(), new C20023a(), new C14394sb()};

    /* renamed from: L0 */
    public static final short[] f112352L0 = {0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 0, 1, 1, 0};

    /* renamed from: Q0 */
    public static final String[] f112357Q0 = {"NONE", "NMTOKEN", "Name", "NCName"};

    /* renamed from: R0 */
    public static final String[] f112358R0 = {"preserve", "replace", "collapse"};

    /* renamed from: Z0 */
    public static final ValidationContext f112366Z0 = new C20025c();

    /* renamed from: org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl$a */
    /* loaded from: classes13.dex */
    public static abstract class AbstractC20019a extends AbstractList implements ObjectList {
        public AbstractC20019a() {
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i) {
            if (i >= 0 && i < getLength()) {
                return item(i);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Index: ");
            stringBuffer.append(i);
            throw new IndexOutOfBoundsException(stringBuffer.toString());
        }

        @Override // org.apache.xerces.p118xs.datatypes.ObjectList
        public abstract int getLength();

        @Override // org.apache.xerces.p118xs.datatypes.ObjectList
        public abstract Object item(int i);

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return getLength();
        }

        public /* synthetic */ AbstractC20019a(C20025c c20025c) {
            this();
        }
    }

    /* renamed from: org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl$b */
    /* loaded from: classes13.dex */
    public static final class C20020b implements ValidationContext {

        /* renamed from: a */
        public final ValidationContext f112412a;

        /* renamed from: b */
        public NamespaceContext f112413b;

        public C20020b(ValidationContext validationContext) {
            this.f112412a = validationContext;
        }

        /* renamed from: a */
        public void m69977a(NamespaceContext namespaceContext) {
            this.f112413b = namespaceContext;
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public void addId(String str) {
            this.f112412a.addId(str);
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public void addIdRef(String str) {
            this.f112412a.addIdRef(str);
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public Locale getLocale() {
            return this.f112412a.getLocale();
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public String getSymbol(String str) {
            return this.f112412a.getSymbol(str);
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public String getURI(String str) {
            NamespaceContext namespaceContext = this.f112413b;
            return namespaceContext == null ? this.f112412a.getURI(str) : namespaceContext.getURI(str);
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public boolean isEntityDeclared(String str) {
            return this.f112412a.isEntityDeclared(str);
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public boolean isEntityUnparsed(String str) {
            return this.f112412a.isEntityUnparsed(str);
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public boolean isIdDeclared(String str) {
            return this.f112412a.isIdDeclared(str);
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public boolean needExtraChecking() {
            return this.f112412a.needExtraChecking();
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public boolean needFacetChecking() {
            return this.f112412a.needFacetChecking();
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public boolean needToNormalize() {
            return this.f112412a.needToNormalize();
        }

        @Override // org.apache.xerces.impl.p115dv.ValidationContext
        public boolean useNamespaces() {
            return true;
        }
    }

    /* renamed from: org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl$c */
    /* loaded from: classes13.dex */
    public static final class C20021c implements XSFacet {

        /* renamed from: e */
        public final short f112414e;

        /* renamed from: f */
        public final String f112415f;

        /* renamed from: g */
        public final int f112416g;

        /* renamed from: h */
        public Object f112417h;

        /* renamed from: i */
        public final boolean f112418i;

        /* renamed from: j */
        public final XSObjectList f112419j;

        public C20021c(short s, String str, int i, Object obj, boolean z, XSAnnotation xSAnnotation) {
            this.f112414e = s;
            this.f112415f = str;
            this.f112416g = i;
            this.f112417h = obj;
            this.f112418i = z;
            if (xSAnnotation == null) {
                this.f112419j = XSObjectListImpl.EMPTY_LIST;
                return;
            }
            XSObjectListImpl xSObjectListImpl = new XSObjectListImpl();
            this.f112419j = xSObjectListImpl;
            xSObjectListImpl.addXSObject(xSAnnotation);
        }

        @Override // org.apache.xerces.p118xs.XSFacet
        public Object getActualFacetValue() {
            if (this.f112417h == null) {
                this.f112417h = this.f112414e == 16 ? this.f112415f : BigInteger.valueOf(this.f112416g);
            }
            return this.f112417h;
        }

        @Override // org.apache.xerces.p118xs.XSFacet
        public XSAnnotation getAnnotation() {
            return (XSAnnotation) this.f112419j.item(0);
        }

        @Override // org.apache.xerces.p118xs.XSFacet
        public XSObjectList getAnnotations() {
            return this.f112419j;
        }

        @Override // org.apache.xerces.p118xs.XSFacet
        public short getFacetKind() {
            return this.f112414e;
        }

        @Override // org.apache.xerces.p118xs.XSFacet
        public boolean getFixed() {
            return this.f112418i;
        }

        @Override // org.apache.xerces.p118xs.XSFacet
        public int getIntFacetValue() {
            return this.f112416g;
        }

        @Override // org.apache.xerces.p118xs.XSFacet
        public String getLexicalFacetValue() {
            return this.f112415f;
        }

        @Override // org.apache.xerces.p118xs.XSObject
        public String getName() {
            return null;
        }

        @Override // org.apache.xerces.p118xs.XSObject
        public String getNamespace() {
            return null;
        }

        @Override // org.apache.xerces.p118xs.XSObject
        public XSNamespaceItem getNamespaceItem() {
            return null;
        }

        @Override // org.apache.xerces.p118xs.XSObject
        public short getType() {
            return (short) 13;
        }
    }

    /* renamed from: org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl$d */
    /* loaded from: classes13.dex */
    public static final class C20022d implements XSMultiValueFacet {

        /* renamed from: e */
        public final short f112420e;

        /* renamed from: f */
        public final XSObjectList f112421f;

        /* renamed from: g */
        public final StringList f112422g;

        /* renamed from: h */
        public final ObjectList f112423h;

        public C20022d(short s, StringList stringList, ObjectList objectList, XSObjectList xSObjectList) {
            this.f112420e = s;
            this.f112422g = stringList;
            this.f112423h = objectList;
            this.f112421f = xSObjectList == null ? XSObjectListImpl.EMPTY_LIST : xSObjectList;
        }

        @Override // org.apache.xerces.p118xs.XSMultiValueFacet
        public XSObjectList getAnnotations() {
            return this.f112421f;
        }

        @Override // org.apache.xerces.p118xs.XSMultiValueFacet
        public ObjectList getEnumerationValues() {
            return this.f112423h;
        }

        @Override // org.apache.xerces.p118xs.XSMultiValueFacet
        public short getFacetKind() {
            return this.f112420e;
        }

        @Override // org.apache.xerces.p118xs.XSMultiValueFacet
        public StringList getLexicalFacetValues() {
            return this.f112422g;
        }

        @Override // org.apache.xerces.p118xs.XSObject
        public String getName() {
            return null;
        }

        @Override // org.apache.xerces.p118xs.XSObject
        public String getNamespace() {
            return null;
        }

        @Override // org.apache.xerces.p118xs.XSObject
        public XSNamespaceItem getNamespaceItem() {
            return null;
        }

        @Override // org.apache.xerces.p118xs.XSObject
        public short getType() {
            return (short) 14;
        }
    }

    static {
        XSSimpleTypeDecl xSSimpleTypeDecl = new XSSimpleTypeDecl(null, "anySimpleType", (short) 0, (short) 0, false, true, false, true, (short) 1);
        f112367a1 = xSSimpleTypeDecl;
        f112368b1 = new XSSimpleTypeDecl(xSSimpleTypeDecl, "anyAtomicType", (short) 29, (short) 0, false, true, false, true, (short) 49);
        f112369c1 = new C20026d();
    }

    public XSSimpleTypeDecl() {
        this.f112381e = f112348H0;
        this.f112382f = false;
        this.f112389l = (short) 0;
        this.f112391n = (short) -1;
        this.f112392o = (short) -1;
        this.f112393p = (short) 0;
        this.f112394q = (short) 0;
        this.f112396r = (short) 0;
        this.f112397s = -1;
        this.f112398t = -1;
        this.f112400u = -1;
        this.f112402v = -1;
        this.f112404w = -1;
        this.f112411z0 = null;
        this.f112370A0 = (short) 0;
        this.f112375F0 = null;
        this.f112376G0 = false;
    }

    public static TypeValidator[] getGDVs() {
        return (TypeValidator[]) f112348H0.clone();
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public void applyFacets(XSFacets xSFacets, short s, short s2, ValidationContext validationContext) throws InvalidDatatypeFacetException {
        if (validationContext == null) {
            validationContext = f112366Z0;
        }
        m69957d(xSFacets, s, s2, (short) 0, validationContext);
    }

    /* renamed from: c */
    public final void m69956c(StringBuffer stringBuffer) {
        stringBuffer.append('[');
        for (int i = 0; i < this.f112377J; i++) {
            if (i != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.f112410z[i].actualValue);
        }
        stringBuffer.append(']');
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m69957d(org.apache.xerces.impl.p115dv.XSFacets r21, short r22, short r23, short r24, org.apache.xerces.impl.p115dv.ValidationContext r25) throws org.apache.xerces.impl.p115dv.InvalidDatatypeFacetException {
        /*
            Method dump skipped, instructions count: 2925
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.m69957d(org.apache.xerces.impl.dv.XSFacets, short, short, short, org.apache.xerces.impl.dv.ValidationContext):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl] */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.xerces.xs.XSTypeDefinition, org.apache.xerces.xs.XSObject] */
    /* JADX WARN: Type inference failed for: r2v2, types: [org.apache.xerces.xs.XSTypeDefinition] */
    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean derivedFrom(String str, String str2, short s) {
        if (str2 == null) {
            return false;
        }
        if ("http://www.w3.org/2001/XMLSchema".equals(str) && "anyType".equals(str2)) {
            return true;
        }
        while (true) {
            if ((!str2.equals(this.getName()) || ((str != null || this.getNamespace() != null) && (str == null || !str.equals(this.getNamespace())))) && this != f112367a1) {
                this = this.getBaseType();
            }
        }
        return this != f112367a1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.xerces.xs.XSTypeDefinition] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean derivedFromType(XSTypeDefinition xSTypeDefinition, short s) {
        if (xSTypeDefinition == null) {
            return false;
        }
        while (xSTypeDefinition instanceof XSSimpleTypeDelegate) {
            xSTypeDefinition = ((XSSimpleTypeDelegate) xSTypeDefinition).type;
        }
        ?? r2 = this;
        if (xSTypeDefinition.getBaseType() == xSTypeDefinition) {
            return true;
        }
        while (r2 != xSTypeDefinition && r2 != f112367a1) {
            r2 = r2.getBaseType();
        }
        return r2 == xSTypeDefinition;
    }

    /* renamed from: e */
    public void m69958e(XSFacets xSFacets, short s, short s2) {
        try {
            m69957d(xSFacets, s, s2, (short) 0, f112369c1);
            this.f112382f = true;
        } catch (InvalidDatatypeFacetException unused) {
            throw new RuntimeException("internal error");
        }
    }

    /* renamed from: f */
    public void m69959f(XSFacets xSFacets, short s, short s2, short s3) {
        try {
            m69957d(xSFacets, s, s2, s3, f112369c1);
            this.f112382f = true;
        } catch (InvalidDatatypeFacetException unused) {
            throw new RuntimeException("internal error");
        }
    }

    /* renamed from: g */
    public final void m69960g() {
        m69974u();
        m69973t();
        m69971r();
        m69972s();
    }

    public ValidatedInfo getActualEnumValue(String str, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        return this.f112390m.validateWithInfo(str, validationContext, validatedInfo);
    }

    public ObjectList getActualEnumeration() {
        if (this.f112395q0 == null) {
            this.f112395q0 = new C20027e(this);
        }
        return this.f112395q0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.f112411z0;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean getAnonymous() {
        return this.f112376G0 || this.f112386j == null;
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public XSTypeDefinition getBaseType() {
        return this.f112390m;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean getBounded() {
        return this.f112373D0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getBuiltInKind() {
        return this.f112385i;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getDefinedFacets() {
        int i;
        short s = this.f112392o;
        if (s == 0 || s == 29) {
            return (short) 0;
        }
        if (this.f112370A0 != 0) {
            i = this.f112393p | 8;
        } else {
            short s2 = this.f112393p;
            if (s != 24) {
                return s2;
            }
            i = s2 | 8 | 1024;
        }
        return (short) i;
    }

    public ObjectList getEnumerationItemTypeList() {
        if (this.f112379Q == null) {
            if (this.f112410z == null) {
                return null;
            }
            this.f112379Q = new C20028f(this);
        }
        return this.f112379Q;
    }

    public ShortList getEnumerationTypeList() {
        if (this.f112378O == null) {
            if (this.f112410z == null) {
                return ShortListImpl.EMPTY_LIST;
            }
            short[] sArr = new short[this.f112377J];
            for (int i = 0; i < this.f112377J; i++) {
                sArr[i] = this.f112410z[i].actualValueType;
            }
            this.f112378O = new ShortListImpl(sArr, this.f112377J);
        }
        return this.f112378O;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObject getFacet(int i) {
        int i2 = 0;
        if (i == 2048 || i == 8) {
            XSObjectList multiValueFacets = getMultiValueFacets();
            while (i2 < multiValueFacets.getLength()) {
                XSMultiValueFacet xSMultiValueFacet = (XSMultiValueFacet) multiValueFacets.item(i2);
                if (xSMultiValueFacet.getFacetKind() == i) {
                    return xSMultiValueFacet;
                }
                i2++;
            }
            return null;
        }
        XSObjectList facets = getFacets();
        while (i2 < facets.getLength()) {
            XSFacet xSFacet = (XSFacet) facets.item(i2);
            if (xSFacet.getFacetKind() == i) {
                return xSFacet;
            }
            i2++;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x018e  */
    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.p118xs.XSObjectList getFacets() {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.getFacets():org.apache.xerces.xs.XSObjectList");
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public short getFinal() {
        return this.f112389l;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean getFinite() {
        return this.f112372C0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getFixedFacets() {
        short s = this.f112392o;
        short s2 = this.f112394q;
        return s == 24 ? (short) (s2 | 1024) : s2;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSSimpleTypeDefinition getItemType() {
        if (this.f112391n == 2) {
            return this.f112383g;
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public StringList getLexicalEnumeration() {
        if (this.f112388k0 == null) {
            if (this.f112410z == null) {
                return StringListImpl.EMPTY_LIST;
            }
            int i = this.f112377J;
            String[] strArr = new String[i];
            for (int i2 = 0; i2 < i; i2++) {
                strArr[i2] = this.f112410z[i2].normalizedValue;
            }
            this.f112388k0 = new StringListImpl(strArr, i);
        }
        return this.f112388k0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public String getLexicalFacetValue(short s) {
        if (s == 1) {
            int i = this.f112397s;
            if (i == -1) {
                return null;
            }
            return Integer.toString(i);
        }
        if (s == 2) {
            int i2 = this.f112398t;
            if (i2 == -1) {
                return null;
            }
            return Integer.toString(i2);
        }
        if (s == 4) {
            int i3 = this.f112400u;
            if (i3 == -1) {
                return null;
            }
            return Integer.toString(i3);
        }
        if (s == 16) {
            short s2 = this.f112392o;
            if (s2 == 0 || s2 == 29) {
                return null;
            }
            return f112358R0[this.f112396r];
        }
        if (s == 32) {
            Object obj = this.f112399t0;
            if (obj == null) {
                return null;
            }
            return obj.toString();
        }
        if (s == 64) {
            Object obj2 = this.f112401u0;
            if (obj2 == null) {
                return null;
            }
            return obj2.toString();
        }
        if (s == 128) {
            Object obj3 = this.f112403v0;
            if (obj3 == null) {
                return null;
            }
            return obj3.toString();
        }
        if (s == 256) {
            Object obj4 = this.f112405w0;
            if (obj4 == null) {
                return null;
            }
            return obj4.toString();
        }
        if (s == 512) {
            int i4 = this.f112402v;
            if (i4 == -1) {
                return null;
            }
            return Integer.toString(i4);
        }
        if (s != 1024) {
            return null;
        }
        if (this.f112392o == 24) {
            return "0";
        }
        int i5 = this.f112404w;
        if (i5 == -1) {
            return null;
        }
        return Integer.toString(i5);
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public StringList getLexicalPattern() {
        String[] strArr;
        if (this.f112370A0 == 0 && this.f112392o != 24 && this.f112408y == null) {
            return StringListImpl.EMPTY_LIST;
        }
        if (this.f112380Z == null) {
            Vector vector = this.f112408y;
            int size = vector == null ? 0 : vector.size();
            short s = this.f112370A0;
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
            } else if (this.f112392o == 24) {
                strArr = new String[size + 1];
                strArr[size] = "[\\-+]?[0-9]+";
            } else {
                strArr = new String[size];
            }
            for (int i = 0; i < size; i++) {
                strArr[i] = (String) this.f112408y.elementAt(i);
            }
            this.f112380Z = new StringListImpl(strArr, strArr.length);
        }
        return this.f112380Z;
    }

    public Object getMaxExclusiveValue() {
        return this.f112401u0;
    }

    public Object getMaxInclusiveValue() {
        return this.f112399t0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObjectList getMemberTypes() {
        if (this.f112391n != 3) {
            return XSObjectListImpl.EMPTY_LIST;
        }
        XSSimpleTypeDecl[] xSSimpleTypeDeclArr = this.f112384h;
        return new XSObjectListImpl(xSSimpleTypeDeclArr, xSSimpleTypeDeclArr.length);
    }

    public Object getMinExclusiveValue() {
        return this.f112403v0;
    }

    public Object getMinInclusiveValue() {
        return this.f112405w0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSObjectList getMultiValueFacets() {
        if (this.f112409y0 == null) {
            short s = this.f112393p;
            if ((s & 2048) != 0 || (s & 8) != 0 || this.f112370A0 != 0 || this.f112392o == 24) {
                C20022d[] c20022dArr = new C20022d[2];
                int i = 0;
                if ((s & 8) != 0 || this.f112370A0 != 0 || this.f112392o == 24) {
                    c20022dArr[0] = new C20022d((short) 8, getLexicalPattern(), null, this.patternAnnotations);
                    i = 1;
                }
                if (this.f112410z != null) {
                    c20022dArr[i] = new C20022d((short) 2048, getLexicalEnumeration(), new ObjectListImpl(this.f112410z, this.f112377J), this.enumerationAnnotations);
                    i++;
                }
                this.f112409y0 = new XSObjectListImpl(c20022dArr, i);
            }
        }
        XSObjectListImpl xSObjectListImpl = this.f112409y0;
        return xSObjectListImpl != null ? xSObjectListImpl : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        if (getAnonymous()) {
            return null;
        }
        return this.f112386j;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return this.f112387k;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return this.f112375F0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean getNumeric() {
        return this.f112374E0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getOrdered() {
        return this.f112371B0;
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public short getPrimitiveKind() {
        short s;
        if (this.f112391n != 1 || (s = this.f112392o) == 0) {
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

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public XSSimpleTypeDefinition getPrimitiveType() {
        if (this.f112391n != 1 || this.f112392o == 0) {
            return null;
        }
        while (true) {
            XSSimpleTypeDecl xSSimpleTypeDecl = this.f112390m;
            if (xSSimpleTypeDecl == f112367a1) {
                return this;
            }
            this = xSSimpleTypeDecl;
        }
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 3;
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public short getTypeCategory() {
        return (short) 16;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeName() {
        return this.f112386j;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        return getNamespace();
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public short getVariety() {
        if (this.f112392o == 0) {
            return (short) 0;
        }
        return this.f112391n;
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public short getWhitespace() throws DatatypeException {
        if (this.f112391n != 3) {
            return this.f112396r;
        }
        throw new DatatypeException("dt-whitespace", new Object[]{this.f112386j});
    }

    /* renamed from: h */
    public final void m69961h(ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        Object obj = validatedInfo.actualValue;
        short s = this.f112391n;
        if (s == 1) {
            this.f112381e[this.f112392o].checkExtraRules(obj, validationContext);
            return;
        }
        if (s != 2) {
            ((XSSimpleTypeDecl) validatedInfo.memberType).m69961h(validationContext, validatedInfo);
            return;
        }
        ListDV.C20017a c20017a = (ListDV.C20017a) obj;
        XSSimpleType xSSimpleType = validatedInfo.memberType;
        int length = c20017a.getLength();
        try {
            if (this.f112383g.f112391n == 3) {
                XSSimpleTypeDecl[] xSSimpleTypeDeclArr = (XSSimpleTypeDecl[]) validatedInfo.memberTypes;
                for (int i = length - 1; i >= 0; i--) {
                    validatedInfo.actualValue = c20017a.item(i);
                    validatedInfo.memberType = xSSimpleTypeDeclArr[i];
                    this.f112383g.m69961h(validationContext, validatedInfo);
                }
            } else {
                for (int i2 = length - 1; i2 >= 0; i2--) {
                    validatedInfo.actualValue = c20017a.item(i2);
                    this.f112383g.m69961h(validationContext, validatedInfo);
                }
            }
        } finally {
            validatedInfo.actualValue = c20017a;
            validatedInfo.memberType = xSSimpleType;
        }
    }

    /* renamed from: i */
    public final void m69962i(ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        int compare;
        int compare2;
        int totalDigits;
        int fractionDigits;
        Object obj = validatedInfo.actualValue;
        String str = validatedInfo.normalizedValue;
        short s = validatedInfo.actualValueType;
        ShortList shortList = validatedInfo.itemValueTypes;
        short s2 = this.f112392o;
        if (s2 != 18 && s2 != 20) {
            int dataLength = this.f112381e[s2].getDataLength(obj);
            short s3 = this.f112393p;
            if ((s3 & 4) != 0 && dataLength > this.f112400u) {
                throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MAX_LENGTH_VALID, new Object[]{str, Integer.toString(dataLength), Integer.toString(this.f112400u), this.f112386j});
            }
            if ((s3 & 2) != 0 && dataLength < this.f112398t) {
                throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MIN_LENGTH_VALID, new Object[]{str, Integer.toString(dataLength), Integer.toString(this.f112398t), this.f112386j});
            }
            if ((s3 & 1) != 0 && dataLength != this.f112397s) {
                throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_LENGTH_VALID, new Object[]{str, Integer.toString(dataLength), Integer.toString(this.f112397s), this.f112386j});
            }
        }
        if ((this.f112393p & 2048) != 0) {
            int i = this.f112377J;
            short m69963j = m69963j(s);
            boolean z = false;
            for (int i2 = 0; i2 < i; i2++) {
                short m69963j2 = m69963j(this.f112410z[i2].actualValueType);
                if ((m69963j == m69963j2 || ((m69963j == 1 && m69963j2 == 2) || (m69963j == 2 && m69963j2 == 1))) && this.f112410z[i2].actualValue.equals(obj)) {
                    if (m69963j == 44 || m69963j == 43) {
                        ShortList shortList2 = this.f112410z[i2].itemValueTypes;
                        int length = shortList != null ? shortList.getLength() : 0;
                        if (length == (shortList2 != null ? shortList2.getLength() : 0)) {
                            int i3 = 0;
                            while (i3 < length) {
                                short m69963j3 = m69963j(shortList.item(i3));
                                short m69963j4 = m69963j(shortList2.item(i3));
                                if (m69963j3 != m69963j4 && ((m69963j3 != 1 || m69963j4 != 2) && (m69963j3 != 2 || m69963j4 != 1))) {
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                            if (i3 == length) {
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
                StringBuffer stringBuffer = new StringBuffer();
                m69956c(stringBuffer);
                throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_ENUM_VALID, new Object[]{str, stringBuffer.toString()});
            }
        }
        if ((this.f112393p & 1024) != 0 && (fractionDigits = this.f112381e[this.f112392o].getFractionDigits(obj)) > this.f112404w) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_FRACTION_DIGITS_VALID, new Object[]{str, Integer.toString(fractionDigits), Integer.toString(this.f112404w)});
        }
        if ((this.f112393p & 512) != 0 && (totalDigits = this.f112381e[this.f112392o].getTotalDigits(obj)) > this.f112402v) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_TOTAL_DIGITS_VALID, new Object[]{str, Integer.toString(totalDigits), Integer.toString(this.f112402v)});
        }
        if ((this.f112393p & 32) != 0 && (compare2 = this.f112381e[this.f112392o].compare(obj, this.f112399t0)) != -1 && compare2 != 0) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MAX_INCLUSIVE_VALID, new Object[]{str, this.f112399t0, this.f112386j});
        }
        if ((this.f112393p & 64) != 0 && this.f112381e[this.f112392o].compare(obj, this.f112401u0) != -1) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MAX_EXCLUSIVE_VALID, new Object[]{str, this.f112401u0, this.f112386j});
        }
        if ((this.f112393p & 256) != 0 && (compare = this.f112381e[this.f112392o].compare(obj, this.f112405w0)) != 1 && compare != 0) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MIN_INCLUSIVE_VALID, new Object[]{str, this.f112405w0, this.f112386j});
        }
        if ((this.f112393p & 128) != 0 && this.f112381e[this.f112392o].compare(obj, this.f112403v0) != 1) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.DATATYPE_MIN_EXCLUSIVE_VALID, new Object[]{str, this.f112403v0, this.f112386j});
        }
    }

    public boolean isDOMDerivedFrom(String str, String str2, int i) {
        if (str2 == null) {
            return false;
        }
        if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(str) && "anyType".equals(str2) && ((i & 1) != 0 || i == 0)) {
            return true;
        }
        int i2 = i & 1;
        if (i2 != 0 && m69968o(str, str2, this)) {
            return true;
        }
        int i3 = i & 8;
        if (i3 != 0 && m69967n(str, str2, this)) {
            return true;
        }
        int i4 = i & 4;
        if (i4 != 0 && m69969p(str, str2, this)) {
            return true;
        }
        int i5 = i & 2;
        if (!(i5 != 0 && i2 == 0 && i3 == 0 && i4 == 0) && i5 == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return m69966m(str, str2, this);
        }
        return false;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean isDefinedFacet(short s) {
        short s2 = this.f112392o;
        if (s2 == 0 || s2 == 29) {
            return false;
        }
        if ((this.f112393p & s) != 0) {
            return true;
        }
        if (this.f112370A0 != 0) {
            return s == 8;
        }
        if (s2 == 24) {
            return s == 8 || s == 1024;
        }
        return false;
    }

    @Override // org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        return isDOMDerivedFrom(str, str2, i);
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public boolean isEqual(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    @Override // org.apache.xerces.p118xs.XSTypeDefinition
    public boolean isFinal(short s) {
        return (this.f112389l & s) != 0;
    }

    @Override // org.apache.xerces.p118xs.XSSimpleTypeDefinition
    public boolean isFixedFacet(short s) {
        if ((this.f112394q & s) != 0) {
            return true;
        }
        return this.f112392o == 24 && s == 1024;
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public boolean isIDType() {
        short s = this.f112391n;
        if (s == 1) {
            return this.f112392o == 21;
        }
        if (s == 2) {
            return this.f112383g.isIDType();
        }
        if (s == 3) {
            int i = 0;
            while (true) {
                XSSimpleTypeDecl[] xSSimpleTypeDeclArr = this.f112384h;
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
        return this.f112381e[this.f112392o].isIdentical(obj, obj2);
    }

    /* renamed from: j */
    public final short m69963j(short s) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m69964k(java.lang.Object r12, org.apache.xerces.impl.p115dv.ValidationContext r13, org.apache.xerces.impl.p115dv.ValidatedInfo r14, boolean r15) throws org.apache.xerces.impl.p115dv.InvalidDatatypeValueException {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.m69964k(java.lang.Object, org.apache.xerces.impl.dv.ValidationContext, org.apache.xerces.impl.dv.ValidatedInfo, boolean):java.lang.Object");
    }

    /* renamed from: l */
    public final short m69965l(short s) {
        if (s == 21 || s == 22 || s == 23) {
            return (short) 1;
        }
        if (s == 24) {
            return (short) 3;
        }
        return s;
    }

    /* renamed from: m */
    public final boolean m69966m(String str, String str2, XSTypeDefinition xSTypeDefinition) {
        XSTypeDefinition baseType;
        XSTypeDefinition xSTypeDefinition2 = null;
        while (xSTypeDefinition != null && xSTypeDefinition != xSTypeDefinition2) {
            if (str2.equals(xSTypeDefinition.getName()) && ((str == null && xSTypeDefinition.getNamespace() == null) || (str != null && str.equals(xSTypeDefinition.getNamespace())))) {
                return true;
            }
            if (m69968o(str, str2, xSTypeDefinition) || m69967n(str, str2, xSTypeDefinition) || m69969p(str, str2, xSTypeDefinition)) {
                return true;
            }
            XSSimpleTypeDecl xSSimpleTypeDecl = (XSSimpleTypeDecl) xSTypeDefinition;
            if (xSSimpleTypeDecl.getVariety() == 0 || xSSimpleTypeDecl.getVariety() == 1) {
                baseType = xSTypeDefinition.getBaseType();
            } else {
                if (xSSimpleTypeDecl.getVariety() == 3) {
                    if (xSSimpleTypeDecl.getMemberTypes().getLength() > 0) {
                        return m69966m(str, str2, (XSTypeDefinition) xSSimpleTypeDecl.getMemberTypes().item(0));
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

    /* renamed from: n */
    public final boolean m69967n(String str, String str2, XSTypeDefinition xSTypeDefinition) {
        XSSimpleTypeDefinition itemType;
        if (xSTypeDefinition == null) {
            return false;
        }
        XSSimpleTypeDefinition xSSimpleTypeDefinition = (XSSimpleTypeDefinition) xSTypeDefinition;
        return xSSimpleTypeDefinition.getVariety() == 2 && (itemType = xSSimpleTypeDefinition.getItemType()) != null && m69968o(str, str2, itemType);
    }

    public String normalize(Object obj, short s) {
        int i;
        int i2;
        char charAt;
        if (obj == null) {
            return null;
        }
        if ((this.f112393p & 8) == 0) {
            short s2 = f112352L0[this.f112392o];
            if (s2 == 0) {
                return obj.toString();
            }
            if (s2 == 1) {
                return XMLChar.trim(obj.toString());
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
                        if (i4 < i && ((charAt = stringBuffer.charAt((i2 = i4 + 1))) == '\t' || charAt == '\n' || charAt == '\r' || charAt == ' ')) {
                            i4 = i2;
                        }
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

    /* renamed from: o */
    public final boolean m69968o(String str, String str2, XSTypeDefinition xSTypeDefinition) {
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

    /* renamed from: p */
    public final boolean m69969p(String str, String str2, XSTypeDefinition xSTypeDefinition) {
        if (xSTypeDefinition != null) {
            XSSimpleTypeDefinition xSSimpleTypeDefinition = (XSSimpleTypeDefinition) xSTypeDefinition;
            if (xSSimpleTypeDefinition.getVariety() == 3) {
                XSObjectList memberTypes = xSSimpleTypeDefinition.getMemberTypes();
                for (int i = 0; i < memberTypes.getLength(); i++) {
                    if (memberTypes.item(i) != null && m69968o(str, str2, (XSSimpleTypeDefinition) memberTypes.item(i))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: q */
    public void m69970q(String str, Object[] objArr) throws InvalidDatatypeFacetException {
        throw new InvalidDatatypeFacetException(str, objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0016, code lost:
    
        if ((r0 & 64) == 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002b, code lost:
    
        if ((r0 & 4) == 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if ((r0 & 128) == 0) goto L13;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m69971r() {
        /*
            r6 = this;
            short r0 = r6.f112391n
            r1 = 0
            r2 = 1
            if (r0 != r2) goto L1c
            short r0 = r6.f112393p
            r3 = r0 & 256(0x100, float:3.59E-43)
            if (r3 != 0) goto L10
            r3 = r0 & 128(0x80, float:1.794E-43)
            if (r3 == 0) goto L19
        L10:
            r3 = r0 & 32
            if (r3 != 0) goto L2d
            r0 = r0 & 64
            if (r0 == 0) goto L19
            goto L2d
        L19:
            r6.f112373D0 = r1
            goto L5f
        L1c:
            r3 = 2
            if (r0 != r3) goto L30
            short r0 = r6.f112393p
            r3 = r0 & 1
            if (r3 != 0) goto L2d
            r3 = r0 & 2
            if (r3 == 0) goto L19
            r0 = r0 & 4
            if (r0 == 0) goto L19
        L2d:
            r6.f112373D0 = r2
            goto L5f
        L30:
            r3 = 3
            if (r0 != r3) goto L5f
            org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl[] r0 = r6.f112384h
            int r3 = r0.length
            if (r3 <= 0) goto L41
            r3 = r0[r1]
            short r3 = r3.f112392o
            short r3 = r6.m69965l(r3)
            goto L42
        L41:
            r3 = r1
        L42:
            r4 = r1
        L43:
            int r5 = r0.length
            if (r4 < r5) goto L47
            goto L2d
        L47:
            r5 = r0[r4]
            boolean r5 = r5.getBounded()
            if (r5 == 0) goto L5d
            r5 = r0[r4]
            short r5 = r5.f112392o
            short r5 = r6.m69965l(r5)
            if (r3 == r5) goto L5a
            goto L5d
        L5a:
            int r4 = r4 + 1
            goto L43
        L5d:
            r6.f112373D0 = r1
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.m69971r():void");
    }

    public void reset() {
        if (this.f112382f) {
            return;
        }
        this.f112383g = null;
        this.f112384h = null;
        this.f112386j = null;
        this.f112387k = null;
        this.f112389l = (short) 0;
        this.f112390m = null;
        this.f112391n = (short) -1;
        this.f112392o = (short) -1;
        this.f112393p = (short) 0;
        this.f112394q = (short) 0;
        this.f112396r = (short) 0;
        this.f112397s = -1;
        this.f112398t = -1;
        this.f112400u = -1;
        this.f112402v = -1;
        this.f112404w = -1;
        this.f112406x = null;
        this.f112408y = null;
        this.f112410z = null;
        this.f112380Z = null;
        this.f112388k0 = null;
        this.f112395q0 = null;
        this.f112378O = null;
        this.f112379Q = null;
        this.f112399t0 = null;
        this.f112401u0 = null;
        this.f112403v0 = null;
        this.f112405w0 = null;
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
        this.f112370A0 = (short) 0;
        this.f112411z0 = null;
        this.f112407x0 = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
    
        if ((r0 & 128) == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002c, code lost:
    
        if ((r0 & 64) == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0036, code lost:
    
        if (m69975v() == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0048, code lost:
    
        if ((r0 & 4) == 0) goto L36;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m69972s() {
        /*
            r5 = this;
            short r0 = r5.f112391n
            r1 = 0
            r2 = 1
            if (r0 != r2) goto L39
            org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl r0 = r5.f112390m
            boolean r0 = r0.f112372C0
            if (r0 == 0) goto Lf
        Lc:
            r5.f112372C0 = r2
            goto L66
        Lf:
            short r0 = r5.f112393p
            r3 = r0 & 1
            if (r3 != 0) goto Lc
            r3 = r0 & 4
            if (r3 != 0) goto Lc
            r3 = r0 & 512(0x200, float:7.175E-43)
            if (r3 == 0) goto L1e
            goto Lc
        L1e:
            r3 = r0 & 256(0x100, float:3.59E-43)
            if (r3 != 0) goto L26
            r3 = r0 & 128(0x80, float:1.794E-43)
            if (r3 == 0) goto L4b
        L26:
            r3 = r0 & 32
            if (r3 != 0) goto L2e
            r3 = r0 & 64
            if (r3 == 0) goto L4b
        L2e:
            r0 = r0 & 1024(0x400, float:1.435E-42)
            if (r0 != 0) goto Lc
            boolean r0 = r5.m69975v()
            if (r0 == 0) goto L4b
            goto Lc
        L39:
            r3 = 2
            if (r0 != r3) goto L4e
            short r0 = r5.f112393p
            r3 = r0 & 1
            if (r3 != 0) goto Lc
            r3 = r0 & 2
            if (r3 == 0) goto L4b
            r0 = r0 & 4
            if (r0 == 0) goto L4b
            goto Lc
        L4b:
            r5.f112372C0 = r1
            goto L66
        L4e:
            r3 = 3
            if (r0 != r3) goto L66
            org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl[] r0 = r5.f112384h
            r3 = r1
        L54:
            int r4 = r0.length
            if (r3 < r4) goto L58
            goto Lc
        L58:
            r4 = r0[r3]
            boolean r4 = r4.getFinite()
            if (r4 != 0) goto L63
            r5.f112372C0 = r1
            return
        L63:
            int r3 = r3 + 1
            goto L54
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl.m69972s():void");
    }

    public void setAnonymous(boolean z) {
        this.f112376G0 = z;
    }

    public void setDVs(TypeValidator[] typeValidatorArr) {
        this.f112381e = typeValidatorArr;
    }

    public XSSimpleTypeDecl setListValues(String str, String str2, short s, XSSimpleTypeDecl xSSimpleTypeDecl, XSObjectList xSObjectList) {
        if (this.f112382f) {
            return null;
        }
        this.f112390m = f112367a1;
        this.f112376G0 = false;
        this.f112386j = str;
        this.f112387k = str2;
        this.f112389l = s;
        this.f112411z0 = xSObjectList;
        this.f112391n = (short) 2;
        this.f112383g = xSSimpleTypeDecl;
        this.f112392o = (short) 25;
        this.f112393p = (short) 16;
        this.f112394q = (short) 16;
        this.f112396r = (short) 2;
        m69960g();
        this.f112385i = (short) 44;
        return this;
    }

    public void setNamespaceItem(XSNamespaceItem xSNamespaceItem) {
        this.f112375F0 = xSNamespaceItem;
    }

    public XSSimpleTypeDecl setRestrictionValues(XSSimpleTypeDecl xSSimpleTypeDecl, String str, String str2, short s, XSObjectList xSObjectList) {
        if (this.f112382f) {
            return null;
        }
        this.f112390m = xSSimpleTypeDecl;
        this.f112376G0 = false;
        this.f112386j = str;
        this.f112387k = str2;
        this.f112389l = s;
        this.f112411z0 = xSObjectList;
        short s2 = xSSimpleTypeDecl.f112391n;
        this.f112391n = s2;
        this.f112392o = xSSimpleTypeDecl.f112392o;
        if (s2 == 2) {
            this.f112383g = xSSimpleTypeDecl.f112383g;
        } else if (s2 == 3) {
            this.f112384h = xSSimpleTypeDecl.f112384h;
        }
        this.f112397s = xSSimpleTypeDecl.f112397s;
        this.f112398t = xSSimpleTypeDecl.f112398t;
        this.f112400u = xSSimpleTypeDecl.f112400u;
        this.f112406x = xSSimpleTypeDecl.f112406x;
        this.f112408y = xSSimpleTypeDecl.f112408y;
        this.f112410z = xSSimpleTypeDecl.f112410z;
        this.f112377J = xSSimpleTypeDecl.f112377J;
        this.f112396r = xSSimpleTypeDecl.f112396r;
        this.f112401u0 = xSSimpleTypeDecl.f112401u0;
        this.f112399t0 = xSSimpleTypeDecl.f112399t0;
        this.f112403v0 = xSSimpleTypeDecl.f112403v0;
        this.f112405w0 = xSSimpleTypeDecl.f112405w0;
        this.f112402v = xSSimpleTypeDecl.f112402v;
        this.f112404w = xSSimpleTypeDecl.f112404w;
        this.f112370A0 = xSSimpleTypeDecl.f112370A0;
        this.f112394q = xSSimpleTypeDecl.f112394q;
        this.f112393p = xSSimpleTypeDecl.f112393p;
        m69960g();
        this.f112385i = xSSimpleTypeDecl.f112385i;
        return this;
    }

    public XSSimpleTypeDecl setUnionValues(String str, String str2, short s, XSSimpleTypeDecl[] xSSimpleTypeDeclArr, XSObjectList xSObjectList) {
        if (this.f112382f) {
            return null;
        }
        this.f112390m = f112367a1;
        this.f112376G0 = false;
        this.f112386j = str;
        this.f112387k = str2;
        this.f112389l = s;
        this.f112411z0 = xSObjectList;
        this.f112391n = (short) 3;
        this.f112384h = xSSimpleTypeDeclArr;
        this.f112392o = (short) 26;
        this.f112393p = (short) 16;
        this.f112396r = (short) 2;
        m69960g();
        this.f112385i = (short) 45;
        return this;
    }

    /* renamed from: t */
    public final void m69973t() {
        short s = this.f112391n;
        if (s == 1) {
            this.f112374E0 = this.f112390m.f112374E0;
            return;
        }
        if (s == 2) {
            this.f112374E0 = false;
            return;
        }
        if (s == 3) {
            for (XSSimpleTypeDecl xSSimpleTypeDecl : this.f112384h) {
                if (!xSSimpleTypeDecl.getNumeric()) {
                    this.f112374E0 = false;
                    return;
                }
            }
            this.f112374E0 = true;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f112387k);
        stringBuffer.append(",");
        stringBuffer.append(this.f112386j);
        return stringBuffer.toString();
    }

    /* renamed from: u */
    public final void m69974u() {
        XSSimpleTypeDecl[] xSSimpleTypeDeclArr;
        XSSimpleTypeDecl xSSimpleTypeDecl;
        short s = this.f112391n;
        if (s != 1) {
            if (s != 2) {
                if (s != 3) {
                    return;
                }
                XSSimpleTypeDecl[] xSSimpleTypeDeclArr2 = this.f112384h;
                if (xSSimpleTypeDeclArr2.length == 0) {
                    this.f112371B0 = (short) 1;
                    return;
                }
                short m69965l = m69965l(xSSimpleTypeDeclArr2[0].f112392o);
                boolean z = m69965l != 0;
                boolean z2 = this.f112384h[0].f112371B0 == 0;
                int i = 1;
                while (true) {
                    xSSimpleTypeDeclArr = this.f112384h;
                    if (i >= xSSimpleTypeDeclArr.length || !(z || z2)) {
                        break;
                    }
                    if (z) {
                        z = m69965l == m69965l(xSSimpleTypeDeclArr[i].f112392o);
                    }
                    if (z2) {
                        z2 = this.f112384h[i].f112371B0 == 0;
                    }
                    i++;
                }
                if (z) {
                    xSSimpleTypeDecl = xSSimpleTypeDeclArr[0];
                } else if (!z2) {
                    this.f112371B0 = (short) 1;
                    return;
                }
            }
            this.f112371B0 = (short) 0;
            return;
        }
        xSSimpleTypeDecl = this.f112390m;
        this.f112371B0 = xSSimpleTypeDecl.f112371B0;
    }

    /* renamed from: v */
    public final boolean m69975v() {
        short s = this.f112390m.f112392o;
        return s == 9 || s == 10 || s == 11 || s == 12 || s == 13 || s == 14;
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public Object validate(Object obj, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        if (validationContext == null) {
            validationContext = f112366Z0;
        }
        if (validatedInfo == null) {
            validatedInfo = new ValidatedInfo();
        } else {
            validatedInfo.memberType = null;
        }
        Object m69964k = m69964k(obj, validationContext, validatedInfo, validationContext == null || validationContext.needToNormalize());
        validate(validationContext, validatedInfo);
        return m69964k;
    }

    public ValidatedInfo validateWithInfo(String str, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        if (validationContext == null) {
            validationContext = f112366Z0;
        }
        if (validatedInfo == null) {
            validatedInfo = new ValidatedInfo();
        } else {
            validatedInfo.memberType = null;
        }
        m69964k(str, validationContext, validatedInfo, validationContext == null || validationContext.needToNormalize());
        validate(validationContext, validatedInfo);
        return validatedInfo;
    }

    /* renamed from: w */
    public final String m69976w(short s) {
        return f112358R0[s];
    }

    public XSSimpleTypeDecl(String str, String str2, short s, XSSimpleTypeDecl xSSimpleTypeDecl, boolean z, XSObjectList xSObjectList) {
        this.f112381e = f112348H0;
        this.f112382f = false;
        this.f112397s = -1;
        this.f112398t = -1;
        this.f112400u = -1;
        this.f112402v = -1;
        this.f112404w = -1;
        this.f112370A0 = (short) 0;
        this.f112375F0 = null;
        this.f112376G0 = false;
        this.f112390m = f112367a1;
        this.f112386j = str;
        this.f112387k = str2;
        this.f112389l = s;
        this.f112411z0 = xSObjectList;
        this.f112391n = (short) 2;
        this.f112383g = xSSimpleTypeDecl;
        this.f112392o = (short) 25;
        this.f112393p = (short) 16;
        this.f112394q = (short) 16;
        this.f112396r = (short) 2;
        m69960g();
        this.f112382f = z;
        this.f112385i = (short) 44;
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

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public Object validate(String str, ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        if (validationContext == null) {
            validationContext = f112366Z0;
        }
        if (validatedInfo == null) {
            validatedInfo = new ValidatedInfo();
        } else {
            validatedInfo.memberType = null;
        }
        Object m69964k = m69964k(str, validationContext, validatedInfo, validationContext == null || validationContext.needToNormalize());
        validate(validationContext, validatedInfo);
        return m69964k;
    }

    public XSSimpleTypeDecl(String str, String str2, short s, XSSimpleTypeDecl[] xSSimpleTypeDeclArr, XSObjectList xSObjectList) {
        this.f112381e = f112348H0;
        this.f112382f = false;
        this.f112394q = (short) 0;
        this.f112397s = -1;
        this.f112398t = -1;
        this.f112400u = -1;
        this.f112402v = -1;
        this.f112404w = -1;
        this.f112370A0 = (short) 0;
        this.f112375F0 = null;
        this.f112376G0 = false;
        this.f112390m = f112367a1;
        this.f112386j = str;
        this.f112387k = str2;
        this.f112389l = s;
        this.f112411z0 = xSObjectList;
        this.f112391n = (short) 3;
        this.f112384h = xSSimpleTypeDeclArr;
        this.f112392o = (short) 26;
        this.f112393p = (short) 16;
        this.f112396r = (short) 2;
        m69960g();
        this.f112382f = false;
        this.f112385i = (short) 45;
    }

    @Override // org.apache.xerces.impl.p115dv.XSSimpleType
    public void validate(ValidationContext validationContext, ValidatedInfo validatedInfo) throws InvalidDatatypeValueException {
        short s;
        if (validationContext == null) {
            validationContext = f112366Z0;
        }
        if (validationContext.needFacetChecking() && (s = this.f112393p) != 0 && s != 16) {
            m69962i(validatedInfo);
        }
        if (validationContext.needExtraChecking()) {
            m69961h(validationContext, validatedInfo);
        }
    }

    public XSSimpleTypeDecl(XSSimpleTypeDecl xSSimpleTypeDecl, String str, String str2, short s, boolean z, XSObjectList xSObjectList) {
        this.f112381e = f112348H0;
        this.f112382f = false;
        this.f112391n = (short) -1;
        this.f112392o = (short) -1;
        this.f112393p = (short) 0;
        this.f112394q = (short) 0;
        this.f112396r = (short) 0;
        this.f112397s = -1;
        this.f112398t = -1;
        this.f112400u = -1;
        this.f112402v = -1;
        this.f112404w = -1;
        this.f112370A0 = (short) 0;
        this.f112375F0 = null;
        this.f112376G0 = false;
        this.f112390m = xSSimpleTypeDecl;
        this.f112386j = str;
        this.f112387k = str2;
        this.f112389l = s;
        this.f112411z0 = xSObjectList;
        short s2 = xSSimpleTypeDecl.f112391n;
        this.f112391n = s2;
        this.f112392o = xSSimpleTypeDecl.f112392o;
        if (s2 == 2) {
            this.f112383g = xSSimpleTypeDecl.f112383g;
        } else if (s2 == 3) {
            this.f112384h = xSSimpleTypeDecl.f112384h;
        }
        this.f112397s = xSSimpleTypeDecl.f112397s;
        this.f112398t = xSSimpleTypeDecl.f112398t;
        this.f112400u = xSSimpleTypeDecl.f112400u;
        this.f112406x = xSSimpleTypeDecl.f112406x;
        this.f112408y = xSSimpleTypeDecl.f112408y;
        this.f112410z = xSSimpleTypeDecl.f112410z;
        this.f112377J = xSSimpleTypeDecl.f112377J;
        this.f112396r = xSSimpleTypeDecl.f112396r;
        this.f112401u0 = xSSimpleTypeDecl.f112401u0;
        this.f112399t0 = xSSimpleTypeDecl.f112399t0;
        this.f112403v0 = xSSimpleTypeDecl.f112403v0;
        this.f112405w0 = xSSimpleTypeDecl.f112405w0;
        this.f112402v = xSSimpleTypeDecl.f112402v;
        this.f112404w = xSSimpleTypeDecl.f112404w;
        this.f112370A0 = xSSimpleTypeDecl.f112370A0;
        this.f112394q = xSSimpleTypeDecl.f112394q;
        this.f112393p = xSSimpleTypeDecl.f112393p;
        this.lengthAnnotation = xSSimpleTypeDecl.lengthAnnotation;
        this.minLengthAnnotation = xSSimpleTypeDecl.minLengthAnnotation;
        this.maxLengthAnnotation = xSSimpleTypeDecl.maxLengthAnnotation;
        this.patternAnnotations = xSSimpleTypeDecl.patternAnnotations;
        this.enumerationAnnotations = xSSimpleTypeDecl.enumerationAnnotations;
        this.whiteSpaceAnnotation = xSSimpleTypeDecl.whiteSpaceAnnotation;
        this.maxExclusiveAnnotation = xSSimpleTypeDecl.maxExclusiveAnnotation;
        this.maxInclusiveAnnotation = xSSimpleTypeDecl.maxInclusiveAnnotation;
        this.minExclusiveAnnotation = xSSimpleTypeDecl.minExclusiveAnnotation;
        this.minInclusiveAnnotation = xSSimpleTypeDecl.minInclusiveAnnotation;
        this.totalDigitsAnnotation = xSSimpleTypeDecl.totalDigitsAnnotation;
        this.fractionDigitsAnnotation = xSSimpleTypeDecl.fractionDigitsAnnotation;
        m69960g();
        this.f112382f = z;
        this.f112385i = xSSimpleTypeDecl.f112385i;
    }

    public XSSimpleTypeDecl(XSSimpleTypeDecl xSSimpleTypeDecl, String str, String str2, short s, boolean z, XSObjectList xSObjectList, short s2) {
        this(xSSimpleTypeDecl, str, str2, s, z, xSObjectList);
        this.f112385i = s2;
    }

    public XSSimpleTypeDecl(XSSimpleTypeDecl xSSimpleTypeDecl, String str, short s, short s2, boolean z, boolean z2, boolean z3, boolean z4, short s3) {
        this.f112381e = f112348H0;
        this.f112389l = (short) 0;
        this.f112394q = (short) 0;
        this.f112396r = (short) 0;
        this.f112397s = -1;
        this.f112398t = -1;
        this.f112400u = -1;
        this.f112402v = -1;
        this.f112404w = -1;
        this.f112411z0 = null;
        this.f112370A0 = (short) 0;
        this.f112375F0 = null;
        this.f112376G0 = false;
        this.f112382f = z4;
        this.f112390m = xSSimpleTypeDecl;
        this.f112386j = str;
        this.f112387k = "http://www.w3.org/2001/XMLSchema";
        this.f112391n = (short) 1;
        this.f112392o = s;
        this.f112393p = (short) 16;
        if (s == 0 || s == 29 || s == 1) {
            this.f112396r = (short) 0;
        } else {
            this.f112396r = (short) 2;
            this.f112394q = (short) 16;
        }
        this.f112371B0 = s2;
        this.f112373D0 = z;
        this.f112372C0 = z2;
        this.f112374E0 = z3;
        this.f112411z0 = null;
        this.f112385i = s3;
    }
}
