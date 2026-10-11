package org.apache.xerces.impl.p117xs;

import java.lang.ref.SoftReference;
import java.util.Vector;
import org.apache.xerces.impl.p115dv.SchemaDVFactory;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;
import org.apache.xerces.impl.p117xs.identity.IdentityConstraint;
import org.apache.xerces.impl.p117xs.util.ObjectListImpl;
import org.apache.xerces.impl.p117xs.util.SimpleLocator;
import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.impl.p117xs.util.XSNamedMap4Types;
import org.apache.xerces.impl.p117xs.util.XSNamedMapImpl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSAttributeDeclaration;
import org.apache.xerces.p118xs.XSAttributeGroupDefinition;
import org.apache.xerces.p118xs.XSElementDeclaration;
import org.apache.xerces.p118xs.XSIDCDefinition;
import org.apache.xerces.p118xs.XSModel;
import org.apache.xerces.p118xs.XSModelGroupDefinition;
import org.apache.xerces.p118xs.XSNamedMap;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSNotationDeclaration;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.p118xs.datatypes.ObjectList;
import org.apache.xerces.parsers.DOMParser;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.parsers.XML11Configuration;
import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XSGrammar;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class SchemaGrammar implements XSGrammar, XSNamespaceItem {

    /* renamed from: C0 */
    public static final int f112673C0 = 29;

    /* renamed from: D0 */
    public static final int f112674D0 = 46;

    /* renamed from: E0 */
    public static final int f112675E0 = 1;

    /* renamed from: F0 */
    public static final int f112676F0 = 2;

    /* renamed from: G0 */
    public static final int f112677G0 = 16;

    /* renamed from: H0 */
    public static final int f112678H0 = 16;

    /* renamed from: I0 */
    public static final int f112679I0 = 2;

    /* renamed from: J0 */
    public static final BuiltinSchemaGrammar f112680J0;

    /* renamed from: K0 */
    public static final short f112681K0 = 16;

    /* renamed from: L0 */
    public static final boolean[] f112682L0;
    public static final BuiltinSchemaGrammar SG_SchemaNS;
    public static final BuiltinSchemaGrammar SG_XSI;
    public static final XSSimpleType fAnySimpleType;
    public static final XSComplexTypeDecl fAnyType = new C20044b();

    /* renamed from: A0 */
    public Vector f112683A0;

    /* renamed from: B0 */
    public Vector f112684B0;

    /* renamed from: J */
    public boolean f112685J;

    /* renamed from: O */
    public Vector f112686O;

    /* renamed from: Q */
    public int f112687Q;

    /* renamed from: Z */
    public XSComplexTypeDecl[] f112688Z;

    /* renamed from: e */
    public String f112689e;

    /* renamed from: f */
    public SymbolHash f112690f;

    /* renamed from: g */
    public SymbolHash f112691g;

    /* renamed from: h */
    public SymbolHash f112692h;

    /* renamed from: i */
    public SymbolHash f112693i;

    /* renamed from: j */
    public SymbolHash f112694j;

    /* renamed from: k */
    public SymbolHash f112695k;

    /* renamed from: k0 */
    public SimpleLocator[] f112696k0;

    /* renamed from: l */
    public SymbolHash f112697l;

    /* renamed from: m */
    public SymbolHash f112698m;

    /* renamed from: n */
    public SymbolHash f112699n;

    /* renamed from: o */
    public SymbolHash f112700o;

    /* renamed from: p */
    public SymbolHash f112701p;

    /* renamed from: q */
    public SymbolHash f112702q;

    /* renamed from: q0 */
    public int f112703q0;

    /* renamed from: r */
    public SymbolHash f112704r;

    /* renamed from: s */
    public SymbolHash f112705s;

    /* renamed from: t */
    public SymbolHash f112706t;

    /* renamed from: t0 */
    public XSGroupDecl[] f112707t0;

    /* renamed from: u */
    public XSDDescription f112708u;

    /* renamed from: u0 */
    public SimpleLocator[] f112709u0;

    /* renamed from: v */
    public XSAnnotationImpl[] f112710v;

    /* renamed from: v0 */
    public boolean f112711v0;

    /* renamed from: w */
    public int f112712w;

    /* renamed from: w0 */
    public int f112713w0;

    /* renamed from: x */
    public SymbolTable f112714x;

    /* renamed from: x0 */
    public XSElementDecl[] f112715x0;

    /* renamed from: y */
    public SoftReference f112716y;

    /* renamed from: y0 */
    public XSNamedMap[] f112717y0;

    /* renamed from: z */
    public SoftReference f112718z;

    /* renamed from: z0 */
    public ObjectList[] f112719z0;

    /* loaded from: classes13.dex */
    public static class BuiltinSchemaGrammar extends SchemaGrammar {

        /* renamed from: M0 */
        public static final String f112720M0 = "org.apache.xerces.impl.dv.xs.ExtendedSchemaDVFactoryImpl";

        public BuiltinSchemaGrammar(int i, short s) {
            SchemaDVFactory schemaDVFactory = s == 1 ? SchemaDVFactory.getInstance() : SchemaDVFactory.getInstance(f112720M0);
            if (i == 1) {
                String str = SchemaSymbols.URI_SCHEMAFORSCHEMA;
                this.f112689e = str;
                XSDDescription xSDDescription = new XSDDescription();
                this.f112708u = xSDDescription;
                xSDDescription.fContextType = (short) 3;
                xSDDescription.setNamespace(str);
                this.f112690f = new SymbolHash(1);
                this.f112691g = new SymbolHash(1);
                this.f112692h = new SymbolHash(1);
                this.f112693i = new SymbolHash(1);
                this.f112694j = new SymbolHash(1);
                this.f112695k = new SymbolHash(1);
                this.f112698m = new SymbolHash(1);
                this.f112699n = new SymbolHash(1);
                this.f112700o = new SymbolHash(1);
                this.f112701p = new SymbolHash(1);
                this.f112702q = new SymbolHash(1);
                this.f112704r = new SymbolHash(1);
                this.f112705s = new SymbolHash(1);
                this.f112706t = new SymbolHash(1);
                SymbolHash builtInTypes = schemaDVFactory.getBuiltInTypes();
                this.f112697l = builtInTypes;
                int length = builtInTypes.getLength();
                XSTypeDefinition[] xSTypeDefinitionArr = new XSTypeDefinition[length];
                this.f112697l.getValues(xSTypeDefinitionArr, 0);
                for (int i2 = 0; i2 < length; i2++) {
                    XSTypeDefinition xSTypeDefinition = xSTypeDefinitionArr[i2];
                    if (xSTypeDefinition instanceof XSSimpleTypeDecl) {
                        ((XSSimpleTypeDecl) xSTypeDefinition).setNamespaceItem(this);
                    }
                }
                SymbolHash symbolHash = this.f112697l;
                XSComplexTypeDecl xSComplexTypeDecl = SchemaGrammar.fAnyType;
                symbolHash.put(xSComplexTypeDecl.getName(), xSComplexTypeDecl);
                return;
            }
            if (i == 2) {
                String str2 = SchemaSymbols.URI_XSI;
                this.f112689e = str2;
                XSDDescription xSDDescription2 = new XSDDescription();
                this.f112708u = xSDDescription2;
                xSDDescription2.fContextType = (short) 3;
                xSDDescription2.setNamespace(str2);
                this.f112691g = new SymbolHash(1);
                this.f112692h = new SymbolHash(1);
                this.f112693i = new SymbolHash(1);
                this.f112694j = new SymbolHash(1);
                this.f112695k = new SymbolHash(1);
                this.f112697l = new SymbolHash(1);
                this.f112698m = new SymbolHash(1);
                this.f112699n = new SymbolHash(1);
                this.f112700o = new SymbolHash(1);
                this.f112701p = new SymbolHash(1);
                this.f112702q = new SymbolHash(1);
                this.f112704r = new SymbolHash(1);
                this.f112705s = new SymbolHash(1);
                this.f112706t = new SymbolHash(1);
                this.f112690f = new SymbolHash(8);
                String str3 = SchemaSymbols.XSI_TYPE;
                this.f112690f.put(str3, new C20043a(str3, str2, schemaDVFactory.getBuiltInType("QName"), (short) 1));
                String str4 = SchemaSymbols.XSI_NIL;
                this.f112690f.put(str4, new C20043a(str4, str2, schemaDVFactory.getBuiltInType("boolean"), (short) 1));
                XSSimpleType builtInType = schemaDVFactory.getBuiltInType("anyURI");
                String str5 = SchemaSymbols.XSI_SCHEMALOCATION;
                XSSimpleType createTypeList = schemaDVFactory.createTypeList("#AnonType_schemaLocation", str2, (short) 0, builtInType, null);
                if (createTypeList instanceof XSSimpleTypeDecl) {
                    ((XSSimpleTypeDecl) createTypeList).setAnonymous(true);
                }
                this.f112690f.put(str5, new C20043a(str5, str2, createTypeList, (short) 1));
                String str6 = SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION;
                this.f112690f.put(str6, new C20043a(str6, str2, builtInType, (short) 1));
            }
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        /* renamed from: a */
        public synchronized DOMParser mo70117a() {
            return null;
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public synchronized void addDocument(Object obj, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalElementDeclAll(XSElementDecl xSElementDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalSimpleTypeDecl(XSSimpleType xSSimpleType) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        /* renamed from: d */
        public synchronized SAXParser mo70120d() {
            return null;
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar, org.apache.xerces.xni.grammars.Grammar
        public XMLGrammarDescription getGrammarDescription() {
            return this.f112708u.makeClone();
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void setImportedGrammars(Vector vector) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalElementDecl(XSElementDecl xSElementDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalSimpleTypeDecl(XSSimpleType xSSimpleType, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition, String str) {
        }
    }

    /* loaded from: classes13.dex */
    public static final class Schema4Annotations extends SchemaGrammar {
        public static final Schema4Annotations INSTANCE = new Schema4Annotations();

        public Schema4Annotations() {
            String str = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            this.f112689e = str;
            XSDDescription xSDDescription = new XSDDescription();
            this.f112708u = xSDDescription;
            xSDDescription.fContextType = (short) 3;
            xSDDescription.setNamespace(str);
            this.f112690f = new SymbolHash(1);
            this.f112691g = new SymbolHash(1);
            this.f112692h = new SymbolHash(6);
            this.f112693i = new SymbolHash(1);
            this.f112694j = new SymbolHash(1);
            this.f112695k = new SymbolHash(1);
            this.f112698m = new SymbolHash(1);
            this.f112699n = new SymbolHash(1);
            this.f112700o = new SymbolHash(6);
            this.f112701p = new SymbolHash(1);
            this.f112702q = new SymbolHash(1);
            this.f112704r = new SymbolHash(1);
            this.f112705s = new SymbolHash(1);
            this.f112706t = new SymbolHash(6);
            this.f112697l = SchemaGrammar.SG_SchemaNS.f112697l;
            String str2 = SchemaSymbols.ELT_ANNOTATION;
            XSElementDecl m70125m = m70125m(str2);
            String str3 = SchemaSymbols.ELT_DOCUMENTATION;
            XSElementDecl m70125m2 = m70125m(str3);
            String str4 = SchemaSymbols.ELT_APPINFO;
            XSElementDecl m70125m3 = m70125m(str4);
            this.f112692h.put(m70125m.fName, m70125m);
            this.f112692h.put(m70125m2.fName, m70125m2);
            this.f112692h.put(m70125m3.fName, m70125m3);
            SymbolHash symbolHash = this.f112700o;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(",");
            stringBuffer.append(m70125m.fName);
            symbolHash.put(stringBuffer.toString(), m70125m);
            SymbolHash symbolHash2 = this.f112700o;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(m70125m2.fName);
            symbolHash2.put(stringBuffer2.toString(), m70125m2);
            SymbolHash symbolHash3 = this.f112700o;
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(",");
            stringBuffer3.append(m70125m3.fName);
            symbolHash3.put(stringBuffer3.toString(), m70125m3);
            this.f112706t.put(m70125m, m70125m);
            this.f112706t.put(m70125m2, m70125m2);
            this.f112706t.put(m70125m3, m70125m3);
            XSComplexTypeDecl xSComplexTypeDecl = new XSComplexTypeDecl();
            XSComplexTypeDecl xSComplexTypeDecl2 = new XSComplexTypeDecl();
            XSComplexTypeDecl xSComplexTypeDecl3 = new XSComplexTypeDecl();
            m70125m.fType = xSComplexTypeDecl;
            m70125m2.fType = xSComplexTypeDecl2;
            m70125m3.fType = xSComplexTypeDecl3;
            XSAttributeGroupDecl xSAttributeGroupDecl = new XSAttributeGroupDecl();
            XSAttributeGroupDecl xSAttributeGroupDecl2 = new XSAttributeGroupDecl();
            XSAttributeGroupDecl xSAttributeGroupDecl3 = new XSAttributeGroupDecl();
            XSAttributeUseImpl xSAttributeUseImpl = new XSAttributeUseImpl();
            XSAttributeDecl xSAttributeDecl = new XSAttributeDecl();
            xSAttributeUseImpl.fAttrDecl = xSAttributeDecl;
            xSAttributeDecl.setValues(SchemaSymbols.ATT_ID, null, (XSSimpleType) this.f112697l.get("ID"), (short) 0, (short) 2, null, xSComplexTypeDecl, null);
            xSAttributeUseImpl.fUse = (short) 0;
            xSAttributeUseImpl.fConstraintType = (short) 0;
            XSAttributeUseImpl xSAttributeUseImpl2 = new XSAttributeUseImpl();
            XSAttributeDecl xSAttributeDecl2 = new XSAttributeDecl();
            xSAttributeUseImpl2.fAttrDecl = xSAttributeDecl2;
            String str5 = SchemaSymbols.ATT_SOURCE;
            xSAttributeDecl2.setValues(str5, null, (XSSimpleType) this.f112697l.get("anyURI"), (short) 0, (short) 2, null, xSComplexTypeDecl2, null);
            xSAttributeUseImpl2.fUse = (short) 0;
            xSAttributeUseImpl2.fConstraintType = (short) 0;
            XSAttributeUseImpl xSAttributeUseImpl3 = new XSAttributeUseImpl();
            XSAttributeDecl xSAttributeDecl3 = new XSAttributeDecl();
            xSAttributeUseImpl3.fAttrDecl = xSAttributeDecl3;
            xSAttributeDecl3.setValues("lang".intern(), NamespaceContext.XML_URI, (XSSimpleType) this.f112697l.get("language"), (short) 0, (short) 2, null, xSComplexTypeDecl2, null);
            xSAttributeUseImpl3.fUse = (short) 0;
            xSAttributeUseImpl3.fConstraintType = (short) 0;
            XSAttributeUseImpl xSAttributeUseImpl4 = new XSAttributeUseImpl();
            XSAttributeDecl xSAttributeDecl4 = new XSAttributeDecl();
            xSAttributeUseImpl4.fAttrDecl = xSAttributeDecl4;
            xSAttributeDecl4.setValues(str5, null, (XSSimpleType) this.f112697l.get("anyURI"), (short) 0, (short) 2, null, xSComplexTypeDecl3, null);
            xSAttributeUseImpl4.fUse = (short) 0;
            xSAttributeUseImpl4.fConstraintType = (short) 0;
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fNamespaceList = new String[]{this.f112689e, null};
            xSWildcardDecl.fType = (short) 2;
            xSWildcardDecl.fProcessContents = (short) 3;
            xSAttributeGroupDecl.addAttributeUse(xSAttributeUseImpl);
            xSAttributeGroupDecl.fAttributeWC = xSWildcardDecl;
            xSAttributeGroupDecl2.addAttributeUse(xSAttributeUseImpl2);
            xSAttributeGroupDecl2.addAttributeUse(xSAttributeUseImpl3);
            xSAttributeGroupDecl2.fAttributeWC = xSWildcardDecl;
            xSAttributeGroupDecl3.addAttributeUse(xSAttributeUseImpl4);
            xSAttributeGroupDecl3.fAttributeWC = xSWildcardDecl;
            XSParticleDecl m70129q = m70129q();
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short) 101;
            xSModelGroupImpl.fParticleCount = 2;
            XSParticleDecl[] xSParticleDeclArr = new XSParticleDecl[2];
            xSModelGroupImpl.fParticles = xSParticleDeclArr;
            xSParticleDeclArr[0] = m70127o(m70125m3);
            xSModelGroupImpl.fParticles[1] = m70127o(m70125m2);
            m70129q.fValue = xSModelGroupImpl;
            XSParticleDecl m70128p = m70128p();
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("#AnonType_");
            stringBuffer4.append(str2);
            String stringBuffer5 = stringBuffer4.toString();
            String str6 = this.f112689e;
            XSComplexTypeDecl xSComplexTypeDecl4 = SchemaGrammar.fAnyType;
            XSObjectListImpl xSObjectListImpl = XSObjectListImpl.EMPTY_LIST;
            xSComplexTypeDecl.setValues(stringBuffer5, str6, xSComplexTypeDecl4, (short) 2, (short) 0, (short) 3, (short) 2, false, xSAttributeGroupDecl, null, m70129q, xSObjectListImpl);
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("#AnonType_");
            stringBuffer6.append(str2);
            xSComplexTypeDecl.setName(stringBuffer6.toString());
            xSComplexTypeDecl.setIsAnonymous();
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append("#AnonType_");
            stringBuffer7.append(str3);
            xSComplexTypeDecl2.setValues(stringBuffer7.toString(), this.f112689e, xSComplexTypeDecl4, (short) 2, (short) 0, (short) 3, (short) 3, false, xSAttributeGroupDecl2, null, m70128p, xSObjectListImpl);
            StringBuffer stringBuffer8 = new StringBuffer();
            stringBuffer8.append("#AnonType_");
            stringBuffer8.append(str3);
            xSComplexTypeDecl2.setName(stringBuffer8.toString());
            xSComplexTypeDecl2.setIsAnonymous();
            StringBuffer stringBuffer9 = new StringBuffer();
            stringBuffer9.append("#AnonType_");
            stringBuffer9.append(str4);
            xSComplexTypeDecl3.setValues(stringBuffer9.toString(), this.f112689e, xSComplexTypeDecl4, (short) 2, (short) 0, (short) 3, (short) 3, false, xSAttributeGroupDecl3, null, m70128p, xSObjectListImpl);
            StringBuffer stringBuffer10 = new StringBuffer();
            stringBuffer10.append("#AnonType_");
            stringBuffer10.append(str4);
            xSComplexTypeDecl3.setName(stringBuffer10.toString());
            xSComplexTypeDecl3.setIsAnonymous();
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        /* renamed from: a */
        public synchronized DOMParser mo70117a() {
            return null;
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public synchronized void addDocument(Object obj, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalElementDeclAll(XSElementDecl xSElementDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalSimpleTypeDecl(XSSimpleType xSSimpleType) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        /* renamed from: d */
        public synchronized SAXParser mo70120d() {
            return null;
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar, org.apache.xerces.xni.grammars.Grammar
        public XMLGrammarDescription getGrammarDescription() {
            return this.f112708u.makeClone();
        }

        /* renamed from: m */
        public final XSElementDecl m70125m(String str) {
            XSElementDecl xSElementDecl = new XSElementDecl();
            xSElementDecl.fName = str;
            xSElementDecl.fTargetNamespace = this.f112689e;
            xSElementDecl.setIsGlobal();
            xSElementDecl.fBlock = (short) 7;
            xSElementDecl.setConstraintType((short) 0);
            return xSElementDecl;
        }

        /* renamed from: n */
        public final XSParticleDecl m70126n() {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 1;
            xSParticleDecl.fMaxOccurs = 1;
            xSParticleDecl.fType = (short) 2;
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fNamespaceList = null;
            xSWildcardDecl.fType = (short) 1;
            xSWildcardDecl.fProcessContents = (short) 3;
            xSParticleDecl.fValue = xSWildcardDecl;
            return xSParticleDecl;
        }

        /* renamed from: o */
        public final XSParticleDecl m70127o(XSElementDecl xSElementDecl) {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 1;
            xSParticleDecl.fMaxOccurs = 1;
            xSParticleDecl.fType = (short) 1;
            xSParticleDecl.fValue = xSElementDecl;
            return xSParticleDecl;
        }

        /* renamed from: p */
        public final XSParticleDecl m70128p() {
            XSParticleDecl m70129q = m70129q();
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short) 102;
            xSModelGroupImpl.fParticleCount = 1;
            xSModelGroupImpl.fParticles = r2;
            XSParticleDecl[] xSParticleDeclArr = {m70126n()};
            m70129q.fValue = xSModelGroupImpl;
            return m70129q;
        }

        /* renamed from: q */
        public final XSParticleDecl m70129q() {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 0;
            xSParticleDecl.fMaxOccurs = -1;
            xSParticleDecl.fType = (short) 3;
            return xSParticleDecl;
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void setImportedGrammars(Vector vector) {
        }

        public void addGlobalAttributeDecl(XSAttributeGroupDecl xSAttributeGroupDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalElementDecl(XSElementDecl xSElementDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalSimpleTypeDecl(XSSimpleType xSSimpleType, String str) {
        }

        @Override // org.apache.xerces.impl.p117xs.SchemaGrammar
        public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition, String str) {
        }
    }

    /* renamed from: org.apache.xerces.impl.xs.SchemaGrammar$a */
    /* loaded from: classes13.dex */
    public static class C20043a extends XSAttributeDecl {
        public C20043a(String str, String str2, XSSimpleType xSSimpleType, short s) {
            this.f112855e = str;
            this.f112856f = str2;
            this.f112857g = xSSimpleType;
            this.f112859i = s;
        }

        /* renamed from: b */
        public void m70130b(String str, String str2, XSSimpleType xSSimpleType, short s, short s2, ValidatedInfo validatedInfo, XSComplexTypeDecl xSComplexTypeDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.XSAttributeDecl, org.apache.xerces.p118xs.XSAttributeDeclaration
        public XSAnnotation getAnnotation() {
            return null;
        }

        @Override // org.apache.xerces.impl.p117xs.XSAttributeDecl, org.apache.xerces.p118xs.XSObject
        public XSNamespaceItem getNamespaceItem() {
            return SchemaGrammar.SG_XSI;
        }

        @Override // org.apache.xerces.impl.p117xs.XSAttributeDecl
        public void reset() {
        }
    }

    /* renamed from: org.apache.xerces.impl.xs.SchemaGrammar$b */
    /* loaded from: classes13.dex */
    public static class C20044b extends XSComplexTypeDecl {
        public C20044b() {
            this.f112876e = "anyType";
            this.f112877f = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            this.f112878g = this;
            this.f112879h = (short) 2;
            this.f112884m = (short) 3;
            this.f112886o = m70132g();
            this.f112883l = m70131f();
        }

        /* renamed from: f */
        public final XSAttributeGroupDecl m70131f() {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short) 3;
            XSAttributeGroupDecl xSAttributeGroupDecl = new XSAttributeGroupDecl();
            xSAttributeGroupDecl.fAttributeWC = xSWildcardDecl;
            return xSAttributeGroupDecl;
        }

        /* renamed from: g */
        public final XSParticleDecl m70132g() {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short) 3;
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 0;
            xSParticleDecl.fMaxOccurs = -1;
            xSParticleDecl.fType = (short) 2;
            xSParticleDecl.fValue = xSWildcardDecl;
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short) 102;
            xSModelGroupImpl.fParticleCount = 1;
            xSModelGroupImpl.fParticles = r3;
            XSParticleDecl[] xSParticleDeclArr = {xSParticleDecl};
            XSParticleDecl xSParticleDecl2 = new XSParticleDecl();
            xSParticleDecl2.fType = (short) 3;
            xSParticleDecl2.fValue = xSModelGroupImpl;
            return xSParticleDecl2;
        }

        @Override // org.apache.xerces.impl.p117xs.XSComplexTypeDecl, org.apache.xerces.p118xs.XSComplexTypeDefinition
        public XSObjectList getAnnotations() {
            return XSObjectListImpl.EMPTY_LIST;
        }

        @Override // org.apache.xerces.impl.p117xs.XSComplexTypeDecl, org.apache.xerces.p118xs.XSObject
        public XSNamespaceItem getNamespaceItem() {
            return SchemaGrammar.SG_SchemaNS;
        }

        /* renamed from: h */
        public void m70133h(String str, String str2, XSTypeDefinition xSTypeDefinition, short s, short s2, short s3, short s4, boolean z, XSAttributeGroupDecl xSAttributeGroupDecl, XSSimpleType xSSimpleType, XSParticleDecl xSParticleDecl) {
        }

        @Override // org.apache.xerces.impl.p117xs.XSComplexTypeDecl
        public void reset() {
        }

        @Override // org.apache.xerces.impl.p117xs.XSComplexTypeDecl
        public void setContainsTypeID() {
        }

        @Override // org.apache.xerces.impl.p117xs.XSComplexTypeDecl
        public void setIsAbstractType() {
        }

        @Override // org.apache.xerces.impl.p117xs.XSComplexTypeDecl
        public void setIsAnonymous() {
        }

        @Override // org.apache.xerces.impl.p117xs.XSComplexTypeDecl
        public void setName(String str) {
        }
    }

    static {
        BuiltinSchemaGrammar builtinSchemaGrammar = new BuiltinSchemaGrammar(1, (short) 1);
        SG_SchemaNS = builtinSchemaGrammar;
        f112680J0 = new BuiltinSchemaGrammar(1, (short) 2);
        fAnySimpleType = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("anySimpleType");
        SG_XSI = new BuiltinSchemaGrammar(2, (short) 1);
        f112682L0 = new boolean[]{false, true, true, true, false, true, true, false, false, false, true, true, false, false, false, true, true};
    }

    public SchemaGrammar() {
        this.f112708u = null;
        this.f112710v = null;
        this.f112714x = null;
        this.f112716y = null;
        this.f112718z = null;
        this.f112685J = false;
        this.f112686O = null;
        this.f112687Q = 0;
        this.f112688Z = new XSComplexTypeDecl[16];
        this.f112696k0 = new SimpleLocator[16];
        this.f112703q0 = 0;
        this.f112707t0 = new XSGroupDecl[2];
        this.f112709u0 = new SimpleLocator[1];
        this.f112711v0 = false;
        this.f112713w0 = 0;
        this.f112715x0 = new XSElementDecl[16];
        this.f112717y0 = null;
        this.f112719z0 = null;
        this.f112683A0 = null;
        this.f112684B0 = null;
    }

    public static SchemaGrammar getS4SGrammar(short s) {
        return s == 1 ? SG_SchemaNS : f112680J0;
    }

    /* renamed from: h */
    public static final XSComplexTypeDecl[] m70113h(XSComplexTypeDecl[] xSComplexTypeDeclArr, int i) {
        XSComplexTypeDecl[] xSComplexTypeDeclArr2 = new XSComplexTypeDecl[i];
        System.arraycopy(xSComplexTypeDeclArr, 0, xSComplexTypeDeclArr2, 0, Math.min(xSComplexTypeDeclArr.length, i));
        return xSComplexTypeDeclArr2;
    }

    /* renamed from: i */
    public static final XSElementDecl[] m70114i(XSElementDecl[] xSElementDeclArr, int i) {
        XSElementDecl[] xSElementDeclArr2 = new XSElementDecl[i];
        System.arraycopy(xSElementDeclArr, 0, xSElementDeclArr2, 0, Math.min(xSElementDeclArr.length, i));
        return xSElementDeclArr2;
    }

    /* renamed from: j */
    public static final XSGroupDecl[] m70115j(XSGroupDecl[] xSGroupDeclArr, int i) {
        XSGroupDecl[] xSGroupDeclArr2 = new XSGroupDecl[i];
        System.arraycopy(xSGroupDeclArr, 0, xSGroupDeclArr2, 0, Math.min(xSGroupDeclArr.length, i));
        return xSGroupDeclArr2;
    }

    /* renamed from: k */
    public static final SimpleLocator[] m70116k(SimpleLocator[] simpleLocatorArr, int i) {
        SimpleLocator[] simpleLocatorArr2 = new SimpleLocator[i];
        System.arraycopy(simpleLocatorArr, 0, simpleLocatorArr2, 0, Math.min(simpleLocatorArr.length, i));
        return simpleLocatorArr2;
    }

    /* renamed from: a */
    public synchronized DOMParser mo70117a() {
        DOMParser dOMParser;
        SoftReference softReference = this.f112718z;
        if (softReference != null && (dOMParser = (DOMParser) softReference.get()) != null) {
            return dOMParser;
        }
        XML11Configuration xML11Configuration = new XML11Configuration(this.f112714x);
        xML11Configuration.setFeature("http://xml.org/sax/features/namespaces", true);
        xML11Configuration.setFeature("http://xml.org/sax/features/validation", false);
        DOMParser dOMParser2 = new DOMParser(xML11Configuration);
        try {
            dOMParser2.setFeature("http://apache.org/xml/features/dom/defer-node-expansion", false);
        } catch (SAXException unused) {
        }
        this.f112718z = new SoftReference(dOMParser2);
        return dOMParser2;
    }

    public void addAnnotation(XSAnnotationImpl xSAnnotationImpl) {
        if (xSAnnotationImpl == null) {
            return;
        }
        XSAnnotationImpl[] xSAnnotationImplArr = this.f112710v;
        if (xSAnnotationImplArr == null) {
            this.f112710v = new XSAnnotationImpl[2];
        } else {
            int i = this.f112712w;
            if (i == xSAnnotationImplArr.length) {
                XSAnnotationImpl[] xSAnnotationImplArr2 = new XSAnnotationImpl[i << 1];
                System.arraycopy(xSAnnotationImplArr, 0, xSAnnotationImplArr2, 0, i);
                this.f112710v = xSAnnotationImplArr2;
            }
        }
        XSAnnotationImpl[] xSAnnotationImplArr3 = this.f112710v;
        int i2 = this.f112712w;
        this.f112712w = i2 + 1;
        xSAnnotationImplArr3[i2] = xSAnnotationImpl;
    }

    public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        int i = this.f112687Q;
        XSComplexTypeDecl[] xSComplexTypeDeclArr = this.f112688Z;
        if (i == xSComplexTypeDeclArr.length) {
            this.f112688Z = m70113h(xSComplexTypeDeclArr, i + 16);
            this.f112696k0 = m70116k(this.f112696k0, this.f112687Q + 16);
        }
        SimpleLocator[] simpleLocatorArr = this.f112696k0;
        int i2 = this.f112687Q;
        simpleLocatorArr[i2] = simpleLocator;
        XSComplexTypeDecl[] xSComplexTypeDeclArr2 = this.f112688Z;
        this.f112687Q = i2 + 1;
        xSComplexTypeDeclArr2[i2] = xSComplexTypeDecl;
    }

    public synchronized void addDocument(Object obj, String str) {
        if (this.f112683A0 == null) {
            this.f112683A0 = new Vector();
            this.f112684B0 = new Vector();
        }
        this.f112683A0.addElement(obj);
        this.f112684B0.addElement(str);
    }

    public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        this.f112690f.put(xSAttributeDecl.f112855e, xSAttributeDecl);
        xSAttributeDecl.m70196a(this);
    }

    public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        this.f112691g.put(xSAttributeGroupDecl.fName, xSAttributeGroupDecl);
        xSAttributeGroupDecl.m70198b(this);
    }

    public void addGlobalComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl) {
        this.f112697l.put(xSComplexTypeDecl.getName(), xSComplexTypeDecl);
        xSComplexTypeDecl.m70203e(this);
    }

    public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        this.f112692h.put(xSElementDecl.fName, xSElementDecl);
        xSElementDecl.m70238b(this);
    }

    public void addGlobalElementDeclAll(XSElementDecl xSElementDecl) {
        if (this.f112706t.get(xSElementDecl) == null) {
            this.f112706t.put(xSElementDecl, xSElementDecl);
            if (xSElementDecl.fSubGroup != null) {
                int i = this.f112713w0;
                XSElementDecl[] xSElementDeclArr = this.f112715x0;
                if (i == xSElementDeclArr.length) {
                    this.f112715x0 = m70114i(xSElementDeclArr, i + 16);
                }
                XSElementDecl[] xSElementDeclArr2 = this.f112715x0;
                int i2 = this.f112713w0;
                this.f112713w0 = i2 + 1;
                xSElementDeclArr2[i2] = xSElementDecl;
            }
        }
    }

    public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        this.f112693i.put(xSGroupDecl.fName, xSGroupDecl);
        xSGroupDecl.m70239a(this);
    }

    public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        this.f112694j.put(xSNotationDecl.fName, xSNotationDecl);
        xSNotationDecl.m70254a(this);
    }

    public void addGlobalSimpleTypeDecl(XSSimpleType xSSimpleType) {
        this.f112697l.put(xSSimpleType.getName(), xSSimpleType);
        if (xSSimpleType instanceof XSSimpleTypeDecl) {
            ((XSSimpleTypeDecl) xSSimpleType).setNamespaceItem(this);
        }
    }

    public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        this.f112697l.put(xSTypeDefinition.getName(), xSTypeDefinition);
        if (xSTypeDefinition instanceof XSComplexTypeDecl) {
            ((XSComplexTypeDecl) xSTypeDefinition).m70203e(this);
        } else if (xSTypeDefinition instanceof XSSimpleTypeDecl) {
            ((XSSimpleTypeDecl) xSTypeDefinition).setNamespaceItem(this);
        }
    }

    public final void addIDConstraintDecl(XSElementDecl xSElementDecl, IdentityConstraint identityConstraint) {
        xSElementDecl.addIDConstraint(identityConstraint);
        this.f112695k.put(identityConstraint.getIdentityConstraintName(), identityConstraint);
    }

    public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        int i = this.f112703q0;
        XSGroupDecl[] xSGroupDeclArr = this.f112707t0;
        if (i == xSGroupDeclArr.length) {
            this.f112707t0 = m70115j(xSGroupDeclArr, i << 1);
            this.f112709u0 = m70116k(this.f112709u0, this.f112703q0);
        }
        SimpleLocator[] simpleLocatorArr = this.f112709u0;
        int i2 = this.f112703q0;
        simpleLocatorArr[i2 / 2] = simpleLocator;
        XSGroupDecl[] xSGroupDeclArr2 = this.f112707t0;
        int i3 = i2 + 1;
        xSGroupDeclArr2[i2] = xSGroupDecl;
        this.f112703q0 = i3 + 1;
        xSGroupDeclArr2[i3] = xSGroupDecl2;
    }

    /* renamed from: b */
    public final SimpleLocator[] m70118b() {
        int i = this.f112703q0;
        XSGroupDecl[] xSGroupDeclArr = this.f112707t0;
        if (i < xSGroupDeclArr.length) {
            this.f112707t0 = m70115j(xSGroupDeclArr, i);
            this.f112709u0 = m70116k(this.f112709u0, this.f112703q0 / 2);
        }
        return this.f112709u0;
    }

    /* renamed from: c */
    public final XSGroupDecl[] m70119c() {
        int i = this.f112703q0;
        XSGroupDecl[] xSGroupDeclArr = this.f112707t0;
        if (i < xSGroupDeclArr.length) {
            this.f112707t0 = m70115j(xSGroupDeclArr, i);
            this.f112709u0 = m70116k(this.f112709u0, this.f112703q0 / 2);
        }
        return this.f112707t0;
    }

    /* renamed from: d */
    public synchronized SAXParser mo70120d() {
        SAXParser sAXParser;
        SoftReference softReference = this.f112716y;
        if (softReference != null && (sAXParser = (SAXParser) softReference.get()) != null) {
            return sAXParser;
        }
        XML11Configuration xML11Configuration = new XML11Configuration(this.f112714x);
        xML11Configuration.setFeature("http://xml.org/sax/features/namespaces", true);
        xML11Configuration.setFeature("http://xml.org/sax/features/validation", false);
        SAXParser sAXParser2 = new SAXParser(xML11Configuration);
        this.f112716y = new SoftReference(sAXParser2);
        return sAXParser2;
    }

    /* renamed from: e */
    public final XSElementDecl[] m70121e() {
        int i = this.f112713w0;
        XSElementDecl[] xSElementDeclArr = this.f112715x0;
        if (i < xSElementDeclArr.length) {
            this.f112715x0 = m70114i(xSElementDeclArr, i);
        }
        return this.f112715x0;
    }

    /* renamed from: f */
    public final SimpleLocator[] m70122f() {
        int i = this.f112687Q;
        if (i < this.f112696k0.length) {
            this.f112688Z = m70113h(this.f112688Z, i);
            this.f112696k0 = m70116k(this.f112696k0, this.f112687Q);
        }
        return this.f112696k0;
    }

    /* renamed from: g */
    public final XSComplexTypeDecl[] m70123g() {
        int i = this.f112687Q;
        XSComplexTypeDecl[] xSComplexTypeDeclArr = this.f112688Z;
        if (i < xSComplexTypeDeclArr.length) {
            this.f112688Z = m70113h(xSComplexTypeDeclArr, i);
            this.f112696k0 = m70116k(this.f112696k0, this.f112687Q);
        }
        return this.f112688Z;
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public XSObjectList getAnnotations() {
        return this.f112712w == 0 ? XSObjectListImpl.EMPTY_LIST : new XSObjectListImpl(this.f112710v, this.f112712w);
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public XSAttributeDeclaration getAttributeDeclaration(String str) {
        return getGlobalAttributeDecl(str);
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public XSAttributeGroupDefinition getAttributeGroup(String str) {
        return getGlobalAttributeGroupDecl(str);
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public synchronized XSNamedMap getComponents(short s) {
        SymbolHash symbolHash;
        if (s > 0 && s <= 16) {
            if (f112682L0[s]) {
                if (this.f112717y0 == null) {
                    this.f112717y0 = new XSNamedMap[17];
                }
                XSNamedMap[] xSNamedMapArr = this.f112717y0;
                if (xSNamedMapArr[s] == null) {
                    if (s == 1) {
                        symbolHash = this.f112690f;
                    } else if (s != 2) {
                        if (s != 3) {
                            if (s == 5) {
                                symbolHash = this.f112691g;
                            } else if (s == 6) {
                                symbolHash = this.f112693i;
                            } else if (s == 10) {
                                symbolHash = this.f112695k;
                            } else if (s == 11) {
                                symbolHash = this.f112694j;
                            } else if (s != 15 && s != 16) {
                                symbolHash = null;
                            }
                        }
                        symbolHash = this.f112697l;
                    } else {
                        symbolHash = this.f112692h;
                    }
                    if (s != 15 && s != 16) {
                        xSNamedMapArr[s] = new XSNamedMapImpl(this.f112689e, symbolHash);
                    }
                    xSNamedMapArr[s] = new XSNamedMap4Types(this.f112689e, symbolHash, s);
                }
                return this.f112717y0[s];
            }
        }
        return XSNamedMapImpl.EMPTY_MAP;
    }

    public synchronized ObjectList getComponentsExt(short s) {
        SymbolHash symbolHash;
        if (s > 0 && s <= 16) {
            if (f112682L0[s]) {
                if (this.f112719z0 == null) {
                    this.f112719z0 = new ObjectList[17];
                }
                if (this.f112719z0[s] == null) {
                    if (s == 1) {
                        symbolHash = this.f112698m;
                    } else if (s != 2) {
                        if (s != 3) {
                            if (s == 5) {
                                symbolHash = this.f112699n;
                            } else if (s == 6) {
                                symbolHash = this.f112701p;
                            } else if (s == 10) {
                                symbolHash = this.f112704r;
                            } else if (s == 11) {
                                symbolHash = this.f112702q;
                            } else if (s != 15 && s != 16) {
                                symbolHash = null;
                            }
                        }
                        symbolHash = this.f112705s;
                    } else {
                        symbolHash = this.f112700o;
                    }
                    Object[] entries = symbolHash.getEntries();
                    this.f112719z0[s] = new ObjectListImpl(entries, entries.length);
                }
                return this.f112719z0[s];
            }
        }
        return ObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public StringList getDocumentLocations() {
        return new StringListImpl(this.f112684B0);
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public XSElementDeclaration getElementDeclaration(String str) {
        return getGlobalElementDecl(str);
    }

    public final XSAttributeDecl getGlobalAttributeDecl(String str) {
        return (XSAttributeDecl) this.f112690f.get(str);
    }

    public final XSAttributeGroupDecl getGlobalAttributeGroupDecl(String str) {
        return (XSAttributeGroupDecl) this.f112691g.get(str);
    }

    public final XSElementDecl getGlobalElementDecl(String str) {
        return (XSElementDecl) this.f112692h.get(str);
    }

    public final XSGroupDecl getGlobalGroupDecl(String str) {
        return (XSGroupDecl) this.f112693i.get(str);
    }

    public final XSNotationDecl getGlobalNotationDecl(String str) {
        return (XSNotationDecl) this.f112694j.get(str);
    }

    public final XSTypeDefinition getGlobalTypeDecl(String str) {
        return (XSTypeDefinition) this.f112697l.get(str);
    }

    @Override // org.apache.xerces.xni.grammars.Grammar
    public XMLGrammarDescription getGrammarDescription() {
        return this.f112708u;
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public XSIDCDefinition getIDCDefinition(String str) {
        return getIDConstraintDecl(str);
    }

    public final IdentityConstraint getIDConstraintDecl(String str) {
        return (IdentityConstraint) this.f112695k.get(str);
    }

    public Vector getImportedGrammars() {
        return this.f112686O;
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public XSModelGroupDefinition getModelGroupDefinition(String str) {
        return getGlobalGroupDecl(str);
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public XSNotationDeclaration getNotationDeclaration(String str) {
        return getGlobalNotationDecl(str);
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public String getSchemaNamespace() {
        return this.f112689e;
    }

    public final String getTargetNamespace() {
        return this.f112689e;
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItem
    public XSTypeDefinition getTypeDefinition(String str) {
        return getGlobalTypeDecl(str);
    }

    public final boolean hasIDConstraints() {
        return this.f112695k.getLength() > 0;
    }

    public boolean isImmutable() {
        return this.f112685J;
    }

    public boolean isNamespaceAware() {
        return true;
    }

    /* renamed from: l */
    public final void m70124l(int i) {
        this.f112687Q = i;
        this.f112688Z = m70113h(this.f112688Z, i);
        this.f112696k0 = m70116k(this.f112696k0, this.f112687Q);
    }

    public synchronized void removeDocument(int i) {
        Vector vector = this.f112683A0;
        if (vector != null && i >= 0 && i < vector.size()) {
            this.f112683A0.removeElementAt(i);
            this.f112684B0.removeElementAt(i);
        }
    }

    public synchronized void resetComponents() {
        this.f112717y0 = null;
        this.f112719z0 = null;
    }

    public void setImmutable(boolean z) {
        this.f112685J = z;
    }

    public void setImportedGrammars(Vector vector) {
        this.f112686O = vector;
    }

    @Override // org.apache.xerces.xni.grammars.XSGrammar
    public XSModel toXSModel() {
        return new XSModelImpl(new SchemaGrammar[]{this});
    }

    public SchemaGrammar(String str, XSDDescription xSDDescription, SymbolTable symbolTable) {
        this.f112710v = null;
        this.f112716y = null;
        this.f112718z = null;
        this.f112685J = false;
        this.f112686O = null;
        this.f112687Q = 0;
        this.f112688Z = new XSComplexTypeDecl[16];
        this.f112696k0 = new SimpleLocator[16];
        this.f112703q0 = 0;
        this.f112707t0 = new XSGroupDecl[2];
        this.f112709u0 = new SimpleLocator[1];
        this.f112711v0 = false;
        this.f112713w0 = 0;
        this.f112715x0 = new XSElementDecl[16];
        this.f112717y0 = null;
        this.f112719z0 = null;
        this.f112683A0 = null;
        this.f112684B0 = null;
        this.f112689e = str;
        this.f112708u = xSDDescription;
        this.f112714x = symbolTable;
        this.f112690f = new SymbolHash(12);
        this.f112691g = new SymbolHash(5);
        this.f112692h = new SymbolHash(25);
        this.f112693i = new SymbolHash(5);
        this.f112694j = new SymbolHash(1);
        this.f112695k = new SymbolHash(3);
        this.f112698m = new SymbolHash(12);
        this.f112699n = new SymbolHash(5);
        this.f112700o = new SymbolHash(25);
        this.f112701p = new SymbolHash(5);
        this.f112702q = new SymbolHash(1);
        this.f112704r = new SymbolHash(3);
        this.f112705s = new SymbolHash(25);
        this.f112706t = new SymbolHash(25);
        this.f112697l = this.f112689e == SchemaSymbols.URI_SCHEMAFORSCHEMA ? SG_SchemaNS.f112697l.makeClone() : new SymbolHash(25);
    }

    public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl, String str) {
        SymbolHash symbolHash = this.f112698m;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(xSAttributeDecl.f112855e);
        symbolHash.put(stringBuffer.toString(), xSAttributeDecl);
        if (xSAttributeDecl.getNamespaceItem() == null) {
            xSAttributeDecl.m70196a(this);
        }
    }

    public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl, String str) {
        SymbolHash symbolHash = this.f112699n;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(xSAttributeGroupDecl.fName);
        symbolHash.put(stringBuffer.toString(), xSAttributeGroupDecl);
        if (xSAttributeGroupDecl.getNamespaceItem() == null) {
            xSAttributeGroupDecl.m70198b(this);
        }
    }

    public void addGlobalComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, String str) {
        SymbolHash symbolHash = this.f112705s;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(xSComplexTypeDecl.getName());
        symbolHash.put(stringBuffer.toString(), xSComplexTypeDecl);
        if (xSComplexTypeDecl.getNamespaceItem() == null) {
            xSComplexTypeDecl.m70203e(this);
        }
    }

    public void addGlobalElementDecl(XSElementDecl xSElementDecl, String str) {
        SymbolHash symbolHash = this.f112700o;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(xSElementDecl.fName);
        symbolHash.put(stringBuffer.toString(), xSElementDecl);
        if (xSElementDecl.getNamespaceItem() == null) {
            xSElementDecl.m70238b(this);
        }
    }

    public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl, String str) {
        SymbolHash symbolHash = this.f112701p;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(xSGroupDecl.fName);
        symbolHash.put(stringBuffer.toString(), xSGroupDecl);
        if (xSGroupDecl.getNamespaceItem() == null) {
            xSGroupDecl.m70239a(this);
        }
    }

    public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl, String str) {
        SymbolHash symbolHash = this.f112702q;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(xSNotationDecl.fName);
        symbolHash.put(stringBuffer.toString(), xSNotationDecl);
        if (xSNotationDecl.getNamespaceItem() == null) {
            xSNotationDecl.m70254a(this);
        }
    }

    public void addGlobalSimpleTypeDecl(XSSimpleType xSSimpleType, String str) {
        SymbolHash symbolHash = this.f112705s;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(xSSimpleType.getName());
        symbolHash.put(stringBuffer.toString(), xSSimpleType);
        if (xSSimpleType.getNamespaceItem() == null && (xSSimpleType instanceof XSSimpleTypeDecl)) {
            ((XSSimpleTypeDecl) xSSimpleType).setNamespaceItem(this);
        }
    }

    public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition, String str) {
        SymbolHash symbolHash = this.f112705s;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(xSTypeDefinition.getName());
        symbolHash.put(stringBuffer.toString(), xSTypeDefinition);
        if (xSTypeDefinition.getNamespaceItem() == null) {
            if (xSTypeDefinition instanceof XSComplexTypeDecl) {
                ((XSComplexTypeDecl) xSTypeDefinition).m70203e(this);
            } else if (xSTypeDefinition instanceof XSSimpleTypeDecl) {
                ((XSSimpleTypeDecl) xSTypeDefinition).setNamespaceItem(this);
            }
        }
    }

    public final void addIDConstraintDecl(XSElementDecl xSElementDecl, IdentityConstraint identityConstraint, String str) {
        SymbolHash symbolHash = this.f112704r;
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(",");
        stringBuffer.append(identityConstraint.getIdentityConstraintName());
        symbolHash.put(stringBuffer.toString(), identityConstraint);
    }

    public final XSAttributeDecl getGlobalAttributeDecl(String str, String str2) {
        SymbolHash symbolHash = this.f112698m;
        StringBuffer stringBuffer = new StringBuffer();
        if (str2 == null) {
            str2 = "";
        }
        stringBuffer.append(str2);
        stringBuffer.append(",");
        stringBuffer.append(str);
        return (XSAttributeDecl) symbolHash.get(stringBuffer.toString());
    }

    public final XSAttributeGroupDecl getGlobalAttributeGroupDecl(String str, String str2) {
        SymbolHash symbolHash = this.f112699n;
        StringBuffer stringBuffer = new StringBuffer();
        if (str2 == null) {
            str2 = "";
        }
        stringBuffer.append(str2);
        stringBuffer.append(",");
        stringBuffer.append(str);
        return (XSAttributeGroupDecl) symbolHash.get(stringBuffer.toString());
    }

    public final XSElementDecl getGlobalElementDecl(String str, String str2) {
        SymbolHash symbolHash = this.f112700o;
        StringBuffer stringBuffer = new StringBuffer();
        if (str2 == null) {
            str2 = "";
        }
        stringBuffer.append(str2);
        stringBuffer.append(",");
        stringBuffer.append(str);
        return (XSElementDecl) symbolHash.get(stringBuffer.toString());
    }

    public final XSGroupDecl getGlobalGroupDecl(String str, String str2) {
        SymbolHash symbolHash = this.f112701p;
        StringBuffer stringBuffer = new StringBuffer();
        if (str2 == null) {
            str2 = "";
        }
        stringBuffer.append(str2);
        stringBuffer.append(",");
        stringBuffer.append(str);
        return (XSGroupDecl) symbolHash.get(stringBuffer.toString());
    }

    public final XSNotationDecl getGlobalNotationDecl(String str, String str2) {
        SymbolHash symbolHash = this.f112702q;
        StringBuffer stringBuffer = new StringBuffer();
        if (str2 == null) {
            str2 = "";
        }
        stringBuffer.append(str2);
        stringBuffer.append(",");
        stringBuffer.append(str);
        return (XSNotationDecl) symbolHash.get(stringBuffer.toString());
    }

    public final XSTypeDefinition getGlobalTypeDecl(String str, String str2) {
        SymbolHash symbolHash = this.f112705s;
        StringBuffer stringBuffer = new StringBuffer();
        if (str2 == null) {
            str2 = "";
        }
        stringBuffer.append(str2);
        stringBuffer.append(",");
        stringBuffer.append(str);
        return (XSTypeDefinition) symbolHash.get(stringBuffer.toString());
    }

    public final IdentityConstraint getIDConstraintDecl(String str, String str2) {
        SymbolHash symbolHash = this.f112704r;
        StringBuffer stringBuffer = new StringBuffer();
        if (str2 == null) {
            str2 = "";
        }
        stringBuffer.append(str2);
        stringBuffer.append(",");
        stringBuffer.append(str);
        return (IdentityConstraint) symbolHash.get(stringBuffer.toString());
    }

    @Override // org.apache.xerces.xni.grammars.XSGrammar
    public XSModel toXSModel(XSGrammar[] xSGrammarArr) {
        boolean z;
        if (xSGrammarArr == null || xSGrammarArr.length == 0) {
            return toXSModel();
        }
        int length = xSGrammarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (xSGrammarArr[i] == this) {
                z = true;
                break;
            }
            i++;
        }
        SchemaGrammar[] schemaGrammarArr = new SchemaGrammar[z ? length : length + 1];
        for (int i2 = 0; i2 < length; i2++) {
            schemaGrammarArr[i2] = (SchemaGrammar) xSGrammarArr[i2];
        }
        if (!z) {
            schemaGrammarArr[length] = this;
        }
        return new XSModelImpl(schemaGrammarArr);
    }

    public SchemaGrammar(SchemaGrammar schemaGrammar) {
        this.f112708u = null;
        this.f112710v = null;
        this.f112714x = null;
        this.f112716y = null;
        this.f112718z = null;
        this.f112685J = false;
        this.f112686O = null;
        this.f112687Q = 0;
        this.f112688Z = new XSComplexTypeDecl[16];
        this.f112696k0 = new SimpleLocator[16];
        this.f112703q0 = 0;
        this.f112707t0 = new XSGroupDecl[2];
        this.f112709u0 = new SimpleLocator[1];
        this.f112711v0 = false;
        this.f112713w0 = 0;
        this.f112715x0 = new XSElementDecl[16];
        this.f112717y0 = null;
        this.f112719z0 = null;
        this.f112683A0 = null;
        this.f112684B0 = null;
        this.f112689e = schemaGrammar.f112689e;
        this.f112708u = schemaGrammar.f112708u.makeClone();
        this.f112714x = schemaGrammar.f112714x;
        this.f112690f = schemaGrammar.f112690f.makeClone();
        this.f112691g = schemaGrammar.f112691g.makeClone();
        this.f112692h = schemaGrammar.f112692h.makeClone();
        this.f112693i = schemaGrammar.f112693i.makeClone();
        this.f112694j = schemaGrammar.f112694j.makeClone();
        this.f112695k = schemaGrammar.f112695k.makeClone();
        this.f112697l = schemaGrammar.f112697l.makeClone();
        this.f112698m = schemaGrammar.f112698m.makeClone();
        this.f112699n = schemaGrammar.f112699n.makeClone();
        this.f112700o = schemaGrammar.f112700o.makeClone();
        this.f112701p = schemaGrammar.f112701p.makeClone();
        this.f112702q = schemaGrammar.f112702q.makeClone();
        this.f112704r = schemaGrammar.f112704r.makeClone();
        this.f112705s = schemaGrammar.f112705s.makeClone();
        this.f112706t = schemaGrammar.f112706t.makeClone();
        int i = schemaGrammar.f112712w;
        this.f112712w = i;
        if (i > 0) {
            XSAnnotationImpl[] xSAnnotationImplArr = new XSAnnotationImpl[schemaGrammar.f112710v.length];
            this.f112710v = xSAnnotationImplArr;
            System.arraycopy(schemaGrammar.f112710v, 0, xSAnnotationImplArr, 0, i);
        }
        int i2 = schemaGrammar.f112713w0;
        this.f112713w0 = i2;
        if (i2 > 0) {
            XSElementDecl[] xSElementDeclArr = new XSElementDecl[schemaGrammar.f112715x0.length];
            this.f112715x0 = xSElementDeclArr;
            System.arraycopy(schemaGrammar.f112715x0, 0, xSElementDeclArr, 0, i2);
        }
        int i3 = schemaGrammar.f112687Q;
        this.f112687Q = i3;
        if (i3 > 0) {
            XSComplexTypeDecl[] xSComplexTypeDeclArr = new XSComplexTypeDecl[schemaGrammar.f112688Z.length];
            this.f112688Z = xSComplexTypeDeclArr;
            this.f112696k0 = new SimpleLocator[schemaGrammar.f112696k0.length];
            System.arraycopy(schemaGrammar.f112688Z, 0, xSComplexTypeDeclArr, 0, i3);
            System.arraycopy(schemaGrammar.f112696k0, 0, this.f112696k0, 0, this.f112687Q);
        }
        int i4 = schemaGrammar.f112703q0;
        this.f112703q0 = i4;
        if (i4 > 0) {
            XSGroupDecl[] xSGroupDeclArr = new XSGroupDecl[schemaGrammar.f112707t0.length];
            this.f112707t0 = xSGroupDeclArr;
            this.f112709u0 = new SimpleLocator[schemaGrammar.f112709u0.length];
            System.arraycopy(schemaGrammar.f112707t0, 0, xSGroupDeclArr, 0, i4);
            System.arraycopy(schemaGrammar.f112709u0, 0, this.f112709u0, 0, this.f112703q0 / 2);
        }
        if (schemaGrammar.f112686O != null) {
            this.f112686O = new Vector();
            for (int i5 = 0; i5 < schemaGrammar.f112686O.size(); i5++) {
                this.f112686O.add(schemaGrammar.f112686O.elementAt(i5));
            }
        }
        if (schemaGrammar.f112684B0 != null) {
            for (int i6 = 0; i6 < schemaGrammar.f112684B0.size(); i6++) {
                addDocument(null, (String) schemaGrammar.f112684B0.elementAt(i6));
            }
        }
    }
}
