package org.apache.xerces.impl.p117xs.traversers;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sunia.HTREnginev2.mmo;
import com.sunia.HTREnginev2.tmo;
import java.util.Locale;
import java.util.Vector;
import org.apache.xerces.impl.p115dv.XSFacets;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;
import org.apache.xerces.impl.p115dv.util.Base64;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XSAnnotationImpl;
import org.apache.xerces.impl.p117xs.XSAttributeGroupDecl;
import org.apache.xerces.impl.p117xs.XSAttributeUseImpl;
import org.apache.xerces.impl.p117xs.XSComplexTypeDecl;
import org.apache.xerces.impl.p117xs.XSElementDecl;
import org.apache.xerces.impl.p117xs.XSParticleDecl;
import org.apache.xerces.impl.p117xs.XSWildcardDecl;
import org.apache.xerces.impl.validation.ValidationState;
import org.apache.xerces.p118xs.XSAttributeUse;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.util.SymbolTable;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Element;

/* renamed from: org.apache.xerces.impl.xs.traversers.a */
/* loaded from: classes13.dex */
public abstract class AbstractC20056a {

    /* renamed from: h */
    public static final String f113209h = "(no name)";

    /* renamed from: i */
    public static final int f113210i = 0;

    /* renamed from: j */
    public static final int f113211j = 1;

    /* renamed from: k */
    public static final int f113212k = 2;

    /* renamed from: l */
    public static final int f113213l = 4;

    /* renamed from: m */
    public static final int f113214m = 8;

    /* renamed from: n */
    public static final XSSimpleType f113215n = (XSSimpleType) SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl("QName");

    /* renamed from: a */
    public XSDHandler f113216a;

    /* renamed from: c */
    public XSAttributeChecker f113218c;

    /* renamed from: b */
    public SymbolTable f113217b = null;

    /* renamed from: d */
    public boolean f113219d = false;

    /* renamed from: e */
    public ValidationState f113220e = new ValidationState();

    /* renamed from: f */
    public StringBuffer f113221f = new StringBuffer();

    /* renamed from: g */
    public final XSFacets f113222g = new XSFacets();

    /* renamed from: org.apache.xerces.impl.xs.traversers.a$a */
    /* loaded from: classes13.dex */
    public static final class a {

        /* renamed from: a */
        public final XSFacets f113223a;

        /* renamed from: b */
        public final Element f113224b;

        /* renamed from: c */
        public final short f113225c;

        /* renamed from: d */
        public final short f113226d;

        public a(XSFacets xSFacets, Element element, short s, short s2) {
            this.f113223a = xSFacets;
            this.f113224b = element;
            this.f113225c = s;
            this.f113226d = s2;
        }
    }

    public AbstractC20056a(XSDHandler xSDHandler, XSAttributeChecker xSAttributeChecker) {
        this.f113216a = null;
        this.f113218c = null;
        this.f113216a = xSDHandler;
        this.f113218c = xSAttributeChecker;
    }

    /* renamed from: g */
    public static String m70442g(String str, int i) {
        String str2;
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        stringBuffer.append(str.substring(0, i));
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                str2 = SerializerConstants.ENTITY_QUOT;
            } else if (charAt == '<') {
                str2 = "&lt;";
            } else if (charAt == '&') {
                str2 = "&amp;";
            } else if (charAt == '\t') {
                str2 = "&#x9;";
            } else if (charAt == '\n') {
                str2 = SerializerConstants.ENTITY_CRLF;
            } else if (charAt == '\r') {
                str2 = "&#xD;";
            } else {
                stringBuffer.append(charAt);
                i++;
            }
            stringBuffer.append(str2);
            i++;
        }
        return stringBuffer.toString();
    }

    /* renamed from: h */
    public static String m70443h(XSTypeDefinition xSTypeDefinition) {
        return xSTypeDefinition instanceof XSSimpleTypeDefinition ? ((XSSimpleTypeDecl) xSTypeDefinition).getTypeName() : ((XSComplexTypeDecl) xSTypeDefinition).getTypeName();
    }

    /* renamed from: i */
    public static String m70444i(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"' || charAt == '<' || charAt == '&' || charAt == '\t' || charAt == '\n' || charAt == '\r') {
                return m70442g(str, i);
            }
        }
        return str;
    }

    /* renamed from: a */
    public final void m70445a(XSSimpleType xSSimpleType, Vector vector, Element element, String str) {
        String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
        int i = 0;
        if (str2.equals(xSSimpleType.getNamespace()) && "hexBinary".equals(xSSimpleType.getName())) {
            while (i < vector.size()) {
                String str3 = (String) vector.get(i);
                if (str3.length() / 2 != this.f113222g.length) {
                    m70452k("FacetsContradict", new Object[]{str3, SchemaSymbols.ELT_LENGTH, str}, element);
                }
                i++;
            }
            return;
        }
        if (!str2.equals(xSSimpleType.getNamespace()) || !"base64Binary".equals(xSSimpleType.getName())) {
            while (i < vector.size()) {
                String str4 = (String) vector.get(i);
                if (str4.length() != this.f113222g.length) {
                    m70452k("FacetsContradict", new Object[]{str4, SchemaSymbols.ELT_LENGTH, str}, element);
                }
                i++;
            }
            return;
        }
        while (i < vector.size()) {
            String str5 = (String) vector.get(i);
            byte[] decode = Base64.decode(str5);
            if (decode != null && new String(decode).length() != this.f113222g.length) {
                m70452k("FacetsContradict", new Object[]{str5, SchemaSymbols.ELT_LENGTH, str}, element);
            }
            i++;
        }
    }

    /* renamed from: b */
    public final void m70446b(XSSimpleType xSSimpleType, Vector vector, Element element, String str) {
        String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
        int i = 0;
        if (str2.equals(xSSimpleType.getNamespace()) && "hexBinary".equals(xSSimpleType.getName())) {
            while (i < vector.size()) {
                String str3 = (String) vector.get(i);
                if (str3.length() / 2 > this.f113222g.maxLength) {
                    m70452k("FacetsContradict", new Object[]{str3, SchemaSymbols.ELT_MAXLENGTH, str}, element);
                }
                i++;
            }
            return;
        }
        if (!str2.equals(xSSimpleType.getNamespace()) || !"base64Binary".equals(xSSimpleType.getName())) {
            while (i < vector.size()) {
                String str4 = (String) vector.get(i);
                if (str4.length() > this.f113222g.maxLength) {
                    m70452k("FacetsContradict", new Object[]{str4, SchemaSymbols.ELT_MAXLENGTH, str}, element);
                }
                i++;
            }
            return;
        }
        while (i < vector.size()) {
            String str5 = (String) vector.get(i);
            byte[] decode = Base64.decode(str5);
            if (decode != null && new String(decode).length() > this.f113222g.maxLength) {
                m70452k("FacetsContradict", new Object[]{str5, SchemaSymbols.ELT_MAXLENGTH, str}, element);
            }
            i++;
        }
    }

    /* renamed from: c */
    public final void m70447c(XSSimpleType xSSimpleType, Vector vector, Element element, String str) {
        String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
        int i = 0;
        if (str2.equals(xSSimpleType.getNamespace()) && "hexBinary".equals(xSSimpleType.getName())) {
            while (i < vector.size()) {
                String str3 = (String) vector.get(i);
                if (str3.length() / 2 < this.f113222g.minLength) {
                    m70452k("FacetsContradict", new Object[]{str3, SchemaSymbols.ELT_MINLENGTH, str}, element);
                }
                i++;
            }
            return;
        }
        if (!str2.equals(xSSimpleType.getNamespace()) || !"base64Binary".equals(xSSimpleType.getName())) {
            while (i < vector.size()) {
                String str4 = (String) vector.get(i);
                if (str4.length() < this.f113222g.minLength) {
                    m70452k("FacetsContradict", new Object[]{str4, SchemaSymbols.ELT_MINLENGTH, str}, element);
                }
                i++;
            }
            return;
        }
        while (i < vector.size()) {
            String str5 = (String) vector.get(i);
            byte[] decode = Base64.decode(str5);
            if (decode != null && new String(decode).length() < this.f113222g.minLength) {
                m70452k("FacetsContradict", new Object[]{str5, SchemaSymbols.ELT_MINLENGTH, str}, element);
            }
            i++;
        }
    }

    /* renamed from: d */
    public void m70448d(String str, XSTypeDefinition xSTypeDefinition, Element element) {
        if (xSTypeDefinition.getTypeCategory() == 16) {
            XSSimpleType xSSimpleType = (XSSimpleType) xSTypeDefinition;
            if (xSSimpleType.getVariety() == 1 && xSSimpleType.getPrimitiveKind() == 20 && (xSSimpleType.getDefinedFacets() & 2048) == 0) {
                m70451j(XmlErrorCodes.DATATYPE_ENUM_NOTATION, new Object[]{xSTypeDefinition.getName(), str, DOMUtil.getLocalName(element)}, element);
            }
        }
    }

    /* renamed from: e */
    public XSParticleDecl m70449e(XSParticleDecl xSParticleDecl, String str, Element element, int i, long j) {
        int i2 = xSParticleDecl.fMinOccurs;
        int i3 = xSParticleDecl.fMaxOccurs;
        int i4 = 1;
        boolean z = (j & ((long) (1 << XSAttributeChecker.ATTIDX_MINOCCURS))) != 0;
        boolean z2 = (j & ((long) (1 << XSAttributeChecker.ATTIDX_MAXOCCURS))) != 0;
        boolean z3 = (i & 1) != 0;
        boolean z4 = (i & 8) != 0;
        boolean z5 = (i & 2) != 0;
        if ((i & 4) != 0) {
            if (!z) {
                m70451j("s4s-att-not-allowed", new Object[]{str, "minOccurs"}, element);
                i2 = 1;
            }
            if (!z2) {
                m70451j("s4s-att-not-allowed", new Object[]{str, "maxOccurs"}, element);
                i3 = 1;
            }
        }
        if (i2 == 0 && i3 == 0) {
            xSParticleDecl.fType = (short) 0;
            return null;
        }
        if (z3) {
            if (i3 != 1) {
                Object[] objArr = new Object[2];
                objArr[0] = i3 == -1 ? "unbounded" : Integer.toString(i3);
                objArr[1] = ((XSElementDecl) xSParticleDecl.fValue).getName();
                m70451j(XmlErrorCodes.ALL_GROUP_LIMITED$CHILD_PARTICLES_MAX_LTE_1, objArr, element);
                if (i2 > 1) {
                    i3 = 1;
                }
                i3 = 1;
            }
            i4 = i2;
        } else {
            if ((z4 || z5) && i3 != 1) {
                m70451j("cos-all-limited.1.2", null, element);
                if (i2 > 1) {
                    i2 = 1;
                }
                i3 = 1;
            }
            i4 = i2;
        }
        xSParticleDecl.fMinOccurs = i4;
        xSParticleDecl.fMaxOccurs = i3;
        return xSParticleDecl;
    }

    /* renamed from: f */
    public final boolean m70450f(XSSimpleType xSSimpleType) {
        if (xSSimpleType.getVariety() == 1) {
            short primitiveKind = xSSimpleType.getPrimitiveKind();
            return primitiveKind == 18 || primitiveKind == 20;
        }
        if (xSSimpleType.getVariety() == 2) {
            return m70450f((XSSimpleType) xSSimpleType.getItemType());
        }
        if (xSSimpleType.getVariety() == 3) {
            XSObjectList memberTypes = xSSimpleType.getMemberTypes();
            for (int i = 0; i < memberTypes.getLength(); i++) {
                if (m70450f((XSSimpleType) memberTypes.item(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: j */
    public void m70451j(String str, Object[] objArr, Element element) {
        this.f113216a.m70349D0(str, objArr, element);
    }

    /* renamed from: k */
    public void m70452k(String str, Object[] objArr, Element element) {
        this.f113216a.m70353F0(str, objArr, element);
    }

    /* renamed from: l */
    public void mo70453l(SymbolTable symbolTable, boolean z, Locale locale) {
        this.f113217b = symbolTable;
        this.f113219d = z;
        this.f113220e.setExtraChecking(false);
        this.f113220e.setSymbolTable(symbolTable);
        this.f113220e.setLocale(locale);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
    
        r10.f113218c.returnAttrArray(r10.f113218c.checkAttributes(r0, true, r14), r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
    
        if (r13 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
    
        r1 = r10.f113216a.m70408k0(r14.f85508h);
        r12 = (java.util.Vector) r12[org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker.ATTIDX_NONSCHEMA];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        if (r12 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        if (r12.isEmpty() != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
    
        r2 = new java.lang.StringBuffer(64);
        r2.append(" ");
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0072, code lost:
    
        if (r4 < r12.size()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00bf, code lost:
    
        r5 = r4 + 1;
        r4 = (java.lang.String) r12.elementAt(r4);
        r7 = r4.indexOf(58);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00cd, code lost:
    
        if (r7 != (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cf, code lost:
    
        r6 = "";
        r7 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f1, code lost:
    
        if (r11.getAttributeNS(r14.f85501a.getURI(r10.f113217b.addSymbol(r6)), r7).length() == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0013, code lost:
    
        if (r0 != null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f7, code lost:
    
        r2.append(r4);
        r2.append("=\"");
        r4 = r5 + 1;
        r2.append(m70444i((java.lang.String) r12.elementAt(r5)));
        r2.append("\" ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f3, code lost:
    
        r4 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
    
        r6 = r4.substring(0, r7);
        r7 = r4.substring(r7 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0074, code lost:
    
        r12 = new java.lang.StringBuffer(r13.length() + r2.length());
        r4 = org.apache.xerces.impl.p117xs.SchemaSymbols.ELT_ANNOTATION;
        r5 = r13.indexOf(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
    
        if (r5 != (-1)) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0015, code lost:
    
        r1 = org.apache.xerces.util.DOMUtil.getLocalName(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008a, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
    
        r5 = r5 + r4.length();
        r12.append(r13.substring(0, r5));
        r12.append(r2.toString());
        r12.append(r13.substring(r5, r13.length()));
        r12 = r12.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00af, code lost:
    
        if (r10.f113219d == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b1, code lost:
    
        r14.m57406b(new com.sunia.HTREnginev2.mmo(r12, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00be, code lost:
    
        return new org.apache.xerces.impl.p117xs.XSAnnotationImpl(r12, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0117, code lost:
    
        if (r10.f113219d == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0119, code lost:
    
        r14.m57406b(new com.sunia.HTREnginev2.mmo(r13, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001f, code lost:
    
        if (r1.equals(org.apache.xerces.impl.p117xs.SchemaSymbols.ELT_APPINFO) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0126, code lost:
    
        return new org.apache.xerces.impl.p117xs.XSAnnotationImpl(r13, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0027, code lost:
    
        if (r1.equals(org.apache.xerces.impl.p117xs.SchemaSymbols.ELT_DOCUMENTATION) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
    
        m70451j(org.apache.xmlbeans.XmlErrorCodes.SCHEMA_ANNOTATION, new java.lang.Object[]{r1}, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003f, code lost:
    
        r0 = org.apache.xerces.util.DOMUtil.getNextSiblingElement(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0043, code lost:
    
        if (r0 != null) goto L44;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.XSAnnotationImpl m70454m(org.w3c.dom.Element r11, java.lang.Object[] r12, boolean r13, com.sunia.HTREnginev2.tmo r14) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.AbstractC20056a.m70454m(org.w3c.dom.Element, java.lang.Object[], boolean, com.sunia.HTREnginev2.tmo):org.apache.xerces.impl.xs.XSAnnotationImpl");
    }

    /* renamed from: n */
    public Element m70455n(Element element, XSAttributeGroupDecl xSAttributeGroupDecl, tmo tmoVar, SchemaGrammar schemaGrammar, XSComplexTypeDecl xSComplexTypeDecl) {
        XSObjectList xSObjectList;
        Element element2 = element;
        while (true) {
            String str = "src-attribute_group.2";
            String str2 = "src-ct.4";
            if (element2 == null) {
                break;
            }
            String localName = DOMUtil.getLocalName(element2);
            boolean equals = localName.equals(SchemaSymbols.ELT_ATTRIBUTE);
            String str3 = XmlErrorCodes.ATTR_GROUP_PROPERTIES$TWO_IDS;
            String str4 = XmlErrorCodes.ATTR_GROUP_PROPERTIES$2;
            if (!equals) {
                if (!localName.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                    break;
                }
                XSAttributeGroupDecl m56329r = this.f113216a.f113141P.m56329r(element2, tmoVar, schemaGrammar);
                if (m56329r != null) {
                    XSObjectList attributeUses = m56329r.getAttributeUses();
                    int length = attributeUses.getLength();
                    int i = 0;
                    while (i < length) {
                        String str5 = str;
                        XSAttributeUseImpl xSAttributeUseImpl = (XSAttributeUseImpl) attributeUses.item(i);
                        String str6 = str2;
                        XSAttributeGroupDecl xSAttributeGroupDecl2 = m56329r;
                        if (xSAttributeUseImpl.fUse == 2) {
                            xSAttributeGroupDecl.addAttributeUse(xSAttributeUseImpl);
                        } else {
                            XSAttributeUse attributeUseNoProhibited = xSAttributeGroupDecl.getAttributeUseNoProhibited(xSAttributeUseImpl.fAttrDecl.getNamespace(), xSAttributeUseImpl.fAttrDecl.getName());
                            if (attributeUseNoProhibited == null) {
                                String addAttributeUse = xSAttributeGroupDecl.addAttributeUse(xSAttributeUseImpl);
                                if (addAttributeUse != null) {
                                    xSObjectList = attributeUses;
                                    m70451j(xSComplexTypeDecl == null ? XmlErrorCodes.ATTR_GROUP_PROPERTIES$TWO_IDS : "ct-props-correct.5", new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName(), xSAttributeUseImpl.fAttrDecl.getName(), addAttributeUse}, element2);
                                }
                            } else {
                                xSObjectList = attributeUses;
                                if (xSAttributeUseImpl != attributeUseNoProhibited) {
                                    m70451j(xSComplexTypeDecl == null ? XmlErrorCodes.ATTR_GROUP_PROPERTIES$2 : XmlErrorCodes.COMPLEX_TYPE_PROPERTIES$DUPLICATE_ATTRIBUTE, new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName(), xSAttributeUseImpl.fAttrDecl.getName()}, element2);
                                }
                            }
                            i++;
                            str2 = str6;
                            str = str5;
                            m56329r = xSAttributeGroupDecl2;
                            attributeUses = xSObjectList;
                        }
                        xSObjectList = attributeUses;
                        i++;
                        str2 = str6;
                        str = str5;
                        m56329r = xSAttributeGroupDecl2;
                        attributeUses = xSObjectList;
                    }
                    XSWildcardDecl xSWildcardDecl = m56329r.fAttributeWC;
                    if (xSWildcardDecl != null) {
                        XSWildcardDecl xSWildcardDecl2 = xSAttributeGroupDecl.fAttributeWC;
                        if (xSWildcardDecl2 == null) {
                            xSAttributeGroupDecl.fAttributeWC = xSWildcardDecl;
                        } else {
                            XSWildcardDecl performIntersectionWith = xSWildcardDecl2.performIntersectionWith(xSWildcardDecl, xSWildcardDecl2.fProcessContents);
                            xSAttributeGroupDecl.fAttributeWC = performIntersectionWith;
                            if (performIntersectionWith == null) {
                                if (xSComplexTypeDecl != null) {
                                    str = str2;
                                }
                                m70451j(str, new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName()}, element2);
                            }
                        }
                    }
                }
            } else {
                XSAttributeUseImpl m70461t = this.f113216a.f113142Q.m70461t(element2, tmoVar, schemaGrammar, xSComplexTypeDecl);
                if (m70461t != null) {
                    if (m70461t.fUse == 2) {
                        xSAttributeGroupDecl.addAttributeUse(m70461t);
                    } else {
                        XSAttributeUse attributeUseNoProhibited2 = xSAttributeGroupDecl.getAttributeUseNoProhibited(m70461t.fAttrDecl.getNamespace(), m70461t.fAttrDecl.getName());
                        if (attributeUseNoProhibited2 == null) {
                            String addAttributeUse2 = xSAttributeGroupDecl.addAttributeUse(m70461t);
                            if (addAttributeUse2 != null) {
                                if (xSComplexTypeDecl != null) {
                                    str3 = "ct-props-correct.5";
                                }
                                m70451j(str3, new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName(), m70461t.fAttrDecl.getName(), addAttributeUse2}, element2);
                            }
                        } else if (attributeUseNoProhibited2 != m70461t) {
                            if (xSComplexTypeDecl != null) {
                                str4 = XmlErrorCodes.COMPLEX_TYPE_PROPERTIES$DUPLICATE_ATTRIBUTE;
                            }
                            m70451j(str4, new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName(), m70461t.fAttrDecl.getName()}, element2);
                        }
                    }
                }
            }
            element2 = DOMUtil.getNextSiblingElement(element2);
        }
        if (element2 == null || !DOMUtil.getLocalName(element2).equals(SchemaSymbols.ELT_ANYATTRIBUTE)) {
            return element2;
        }
        XSWildcardDecl m70479r = this.f113216a.f113150Y.m70479r(element2, tmoVar, schemaGrammar);
        XSWildcardDecl xSWildcardDecl3 = xSAttributeGroupDecl.fAttributeWC;
        if (xSWildcardDecl3 == null) {
            xSAttributeGroupDecl.fAttributeWC = m70479r;
        } else {
            XSWildcardDecl performIntersectionWith2 = m70479r.performIntersectionWith(xSWildcardDecl3, m70479r.fProcessContents);
            xSAttributeGroupDecl.fAttributeWC = performIntersectionWith2;
            if (performIntersectionWith2 == null) {
                m70451j(xSComplexTypeDecl == null ? "src-attribute_group.2" : "src-ct.4", new Object[]{xSComplexTypeDecl == null ? xSAttributeGroupDecl.fName : xSComplexTypeDecl.getName()}, element2);
            }
        }
        return DOMUtil.getNextSiblingElement(element2);
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x00bc A[SYNTHETIC] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.traversers.AbstractC20056a.a m70456o(org.w3c.dom.Element r33, org.apache.xerces.p118xs.XSTypeDefinition r34, org.apache.xerces.impl.p115dv.XSSimpleType r35, com.sunia.HTREnginev2.tmo r36) {
        /*
            Method dump skipped, instructions count: 1269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.AbstractC20056a.m70456o(org.w3c.dom.Element, org.apache.xerces.xs.XSTypeDefinition, org.apache.xerces.impl.dv.XSSimpleType, com.sunia.HTREnginev2.tmo):org.apache.xerces.impl.xs.traversers.a$a");
    }

    /* renamed from: p */
    public XSAnnotationImpl m70457p(Element element, String str, Object[] objArr, boolean z, tmo tmoVar) {
        String substring;
        SchemaGrammar m70408k0 = this.f113216a.m70408k0(tmoVar.f85508h);
        Vector vector = (Vector) objArr[XSAttributeChecker.ATTIDX_NONSCHEMA];
        if (vector == null || vector.isEmpty()) {
            if (this.f113219d) {
                tmoVar.m57406b(new mmo(str, element));
            }
            return new XSAnnotationImpl(str, m70408k0);
        }
        StringBuffer stringBuffer = new StringBuffer(64);
        stringBuffer.append(" ");
        int i = 0;
        while (i < vector.size()) {
            int i2 = i + 1;
            String str2 = (String) vector.elementAt(i);
            int indexOf = str2.indexOf(58);
            if (indexOf == -1) {
                substring = "";
            } else {
                substring = str2.substring(0, indexOf);
                str2.substring(indexOf + 1);
            }
            tmoVar.f85501a.getURI(this.f113217b.addSymbol(substring));
            stringBuffer.append(str2);
            stringBuffer.append("=\"");
            i = i2 + 1;
            stringBuffer.append(m70444i((String) vector.elementAt(i2)));
            stringBuffer.append("\" ");
        }
        StringBuffer stringBuffer2 = new StringBuffer(str.length() + stringBuffer.length());
        String str3 = SchemaSymbols.ELT_ANNOTATION;
        int indexOf2 = str.indexOf(str3);
        if (indexOf2 == -1) {
            return null;
        }
        int length = indexOf2 + str3.length();
        stringBuffer2.append(str.substring(0, length));
        stringBuffer2.append(stringBuffer.toString());
        stringBuffer2.append(str.substring(length, str.length()));
        String stringBuffer3 = stringBuffer2.toString();
        if (this.f113219d) {
            tmoVar.m57406b(new mmo(stringBuffer3, element));
        }
        return new XSAnnotationImpl(stringBuffer3, m70408k0);
    }
}
