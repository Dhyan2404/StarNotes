package org.apache.xerces.impl.p117xs.traversers;

import com.sunia.HTREnginev2.a2m;
import com.sunia.HTREnginev2.gxm;
import com.sunia.HTREnginev2.mmo;
import com.sunia.HTREnginev2.pmo;
import com.sunia.HTREnginev2.qmo;
import com.sunia.HTREnginev2.rmo;
import com.sunia.HTREnginev2.smo;
import com.sunia.HTREnginev2.tmo;
import java.io.IOException;
import java.io.StringReader;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Stack;
import java.util.Vector;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p115dv.SchemaDVFactory;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.SchemaNamespaceSupport;
import org.apache.xerces.impl.p117xs.SchemaSymbols;
import org.apache.xerces.impl.p117xs.XMLSchemaLoader;
import org.apache.xerces.impl.p117xs.XSAttributeDecl;
import org.apache.xerces.impl.p117xs.XSAttributeGroupDecl;
import org.apache.xerces.impl.p117xs.XSComplexTypeDecl;
import org.apache.xerces.impl.p117xs.XSDDescription;
import org.apache.xerces.impl.p117xs.XSDeclarationPool;
import org.apache.xerces.impl.p117xs.XSElementDecl;
import org.apache.xerces.impl.p117xs.XSGrammarBucket;
import org.apache.xerces.impl.p117xs.XSGroupDecl;
import org.apache.xerces.impl.p117xs.XSModelGroupImpl;
import org.apache.xerces.impl.p117xs.XSNotationDecl;
import org.apache.xerces.impl.p117xs.XSParticleDecl;
import org.apache.xerces.impl.p117xs.identity.IdentityConstraint;
import org.apache.xerces.impl.p117xs.opti.ElementImpl;
import org.apache.xerces.impl.p117xs.opti.SchemaDOM;
import org.apache.xerces.impl.p117xs.opti.SchemaDOMParser;
import org.apache.xerces.impl.p117xs.opti.SchemaParsingConfig;
import org.apache.xerces.impl.p117xs.util.SimpleLocator;
import org.apache.xerces.impl.p117xs.util.XSInputSource;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSAttributeDeclaration;
import org.apache.xerces.p118xs.XSAttributeGroupDefinition;
import org.apache.xerces.p118xs.XSAttributeUse;
import org.apache.xerces.p118xs.XSElementDeclaration;
import org.apache.xerces.p118xs.XSModelGroup;
import org.apache.xerces.p118xs.XSModelGroupDefinition;
import org.apache.xerces.p118xs.XSNamedMap;
import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSParticle;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTerm;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.p118xs.datatypes.ObjectList;
import org.apache.xerces.parsers.XML11Configuration;
import org.apache.xerces.util.DOMInputSource;
import org.apache.xerces.util.DOMUtil;
import org.apache.xerces.util.DefaultErrorHandler;
import org.apache.xerces.util.ErrorHandlerWrapper;
import org.apache.xerces.util.SAXInputSource;
import org.apache.xerces.util.StAXInputSource;
import org.apache.xerces.util.StAXLocationWrapper;
import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.URI;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.grammars.XMLSchemaDescription;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParseException;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* loaded from: classes13.dex */
public class XSDHandler {

    /* renamed from: A0 */
    public static final String f113109A0 = "http://xml.org/sax/features/namespace-prefixes";
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";

    /* renamed from: B0 */
    public static final int f113110B0 = 1;

    /* renamed from: C0 */
    public static final int f113111C0 = 2;
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";

    /* renamed from: D0 */
    public static final int f113112D0 = 3;
    protected static final boolean DEBUG_NODE_POOL = false;
    protected static final String DISALLOW_DOCTYPE = "http://apache.org/xml/features/disallow-doctype-decl";

    /* renamed from: E0 */
    public static final int f113113E0 = 4;
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    public static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: F0 */
    public static final int f113114F0 = 5;

    /* renamed from: G0 */
    public static final int f113115G0 = 6;
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";

    /* renamed from: H0 */
    public static final int f113116H0 = 7;
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";

    /* renamed from: J0 */
    public static final int f113118J0 = 30;
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";

    /* renamed from: K0 */
    public static final int f113119K0 = 10;

    /* renamed from: L0 */
    public static final int f113120L0 = 2;
    protected static final String LOCALE = "http://apache.org/xml/properties/locale";

    /* renamed from: M0 */
    public static final int f113121M0 = 2;
    protected static final String NAMESPACE_GROWTH = "http://apache.org/xml/features/namespace-growth";
    public static final String REDEF_IDENTIFIER = "_fn3dktizrknc9pi";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String STRING_INTERNING = "http://xml.org/sax/features/string-interning";
    public static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String TOLERATE_DUPLICATES = "http://apache.org/xml/features/internal/tolerate-duplicates";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    public static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String XMLSCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";

    /* renamed from: A */
    public Hashtable f113126A;

    /* renamed from: B */
    public Hashtable f113127B;

    /* renamed from: C */
    public Hashtable f113128C;

    /* renamed from: D */
    public boolean f113129D;

    /* renamed from: E */
    public boolean f113130E;

    /* renamed from: F */
    public boolean f113131F;

    /* renamed from: G */
    public boolean f113132G;

    /* renamed from: H */
    public boolean f113133H;

    /* renamed from: I */
    public XMLErrorReporter f113134I;

    /* renamed from: J */
    public XMLEntityResolver f113135J;

    /* renamed from: K */
    public XSAttributeChecker f113136K;

    /* renamed from: L */
    public SymbolTable f113137L;

    /* renamed from: M */
    public XSGrammarBucket f113138M;

    /* renamed from: N */
    public XSDDescription f113139N;

    /* renamed from: O */
    public XMLGrammarPool f113140O;

    /* renamed from: P */
    public pmo f113141P;

    /* renamed from: Q */
    public C20057b f113142Q;

    /* renamed from: R */
    public XSDComplexTypeTraverser f113143R;

    /* renamed from: S */
    public C20058c f113144S;

    /* renamed from: T */
    public C20059d f113145T;

    /* renamed from: U */
    public qmo f113146U;

    /* renamed from: V */
    public rmo f113147V;

    /* renamed from: W */
    public C20061f f113148W;

    /* renamed from: X */
    public smo f113149X;

    /* renamed from: Y */
    public C20062g f113150Y;

    /* renamed from: Z */
    public SchemaDVFactory f113151Z;

    /* renamed from: a */
    public Hashtable f113152a;

    /* renamed from: a0 */
    public SchemaDOMParser f113153a0;

    /* renamed from: b */
    public Hashtable f113154b;

    /* renamed from: b0 */
    public a2m f113155b0;

    /* renamed from: c */
    public Hashtable f113156c;

    /* renamed from: c0 */
    public gxm f113157c0;

    /* renamed from: d */
    public Hashtable f113158d;

    /* renamed from: d0 */
    public XML11Configuration f113159d0;

    /* renamed from: e */
    public Hashtable f113160e;

    /* renamed from: e0 */
    public C20054b f113161e0;

    /* renamed from: f */
    public Hashtable f113162f;

    /* renamed from: f0 */
    public int f113163f0;
    protected XSDeclarationPool fDeclPool;
    protected Hashtable fNotationRegistry;

    /* renamed from: g */
    public Hashtable f113164g;

    /* renamed from: g0 */
    public XSParticleDecl[] f113165g0;

    /* renamed from: h */
    public Hashtable f113166h;

    /* renamed from: h0 */
    public Element[] f113167h0;

    /* renamed from: i */
    public Hashtable f113168i;

    /* renamed from: i0 */
    public tmo[] f113169i0;

    /* renamed from: j */
    public Hashtable f113170j;

    /* renamed from: j0 */
    public int[] f113171j0;

    /* renamed from: k */
    public Hashtable f113172k;

    /* renamed from: k0 */
    public XSObject[] f113173k0;

    /* renamed from: l */
    public Hashtable f113174l;

    /* renamed from: l0 */
    public String[][] f113175l0;

    /* renamed from: m */
    public Hashtable f113176m;

    /* renamed from: m0 */
    public int f113177m0;

    /* renamed from: n */
    public Hashtable f113178n;

    /* renamed from: n0 */
    public Element[] f113179n0;

    /* renamed from: o */
    public Hashtable[] f113180o;

    /* renamed from: o0 */
    public tmo[] f113181o0;

    /* renamed from: p */
    public Hashtable f113182p;

    /* renamed from: p0 */
    public XSElementDecl[] f113183p0;

    /* renamed from: q */
    public Hashtable f113184q;

    /* renamed from: q0 */
    public String[][] f113185q0;

    /* renamed from: r */
    public Hashtable f113186r;

    /* renamed from: r0 */
    public SymbolHash f113187r0;

    /* renamed from: s */
    public Vector f113188s;

    /* renamed from: s0 */
    public SymbolHash f113189s0;

    /* renamed from: t */
    public Hashtable f113190t;

    /* renamed from: t0 */
    public SymbolHash f113191t0;

    /* renamed from: u */
    public Hashtable f113192u;

    /* renamed from: u0 */
    public SymbolHash f113193u0;

    /* renamed from: v */
    public Hashtable f113194v;

    /* renamed from: v0 */
    public SymbolHash f113195v0;

    /* renamed from: w */
    public Hashtable f113196w;

    /* renamed from: w0 */
    public SymbolHash f113197w0;

    /* renamed from: x */
    public tmo f113198x;

    /* renamed from: x0 */
    public SymbolHash f113199x0;

    /* renamed from: y */
    public Hashtable f113200y;

    /* renamed from: y0 */
    public Vector f113201y0;

    /* renamed from: z */
    public Hashtable f113202z;

    /* renamed from: z0 */
    public SimpleLocator f113203z0;

    /* renamed from: I0 */
    public static final Hashtable f113117I0 = new Hashtable();

    /* renamed from: N0 */
    public static final String[][] f113122N0 = {new String[]{"src-include.2.1", "src-include.2.1"}, new String[]{"src-redefine.3.1", "src-redefine.3.1"}, new String[]{"src-import.3.1", "src-import.3.2"}, null, new String[]{"TargetNamespace.1", "TargetNamespace.2"}, new String[]{"TargetNamespace.1", "TargetNamespace.2"}, new String[]{"TargetNamespace.1", "TargetNamespace.2"}, new String[]{"TargetNamespace.1", "TargetNamespace.2"}};

    /* renamed from: O0 */
    public static final String[] f113123O0 = {"src-include.1", "src-redefine.2", "src-import.2", "schema_reference.4", "schema_reference.4", "schema_reference.4", "schema_reference.4", "schema_reference.4"};

    /* renamed from: P0 */
    public static final String[] f113124P0 = {null, "attribute declaration", "attribute group", "element declaration", "group", "identity constraint", "notation", "type definition"};

    /* renamed from: Q0 */
    public static final String[] f113125Q0 = {"Internal-Error", "Internal-Error", XmlErrorCodes.SCHEMA_ATTR_GROUP$SELF_REF, "e-props-correct.6", XmlErrorCodes.MODEL_GROUP_PROPERTIES$CIRCULAR, "Internal-Error", "Internal-Error", "st-props-correct.2"};

    /* renamed from: org.apache.xerces.impl.xs.traversers.XSDHandler$a */
    /* loaded from: classes13.dex */
    public static final class C20053a extends ErrorHandlerWrapper {
        /* renamed from: a */
        public static XMLParseException m70439a(SAXParseException sAXParseException) {
            return ErrorHandlerWrapper.createXMLParseException(sAXParseException);
        }

        /* renamed from: b */
        public static XNIException m70440b(SAXException sAXException) {
            return ErrorHandlerWrapper.createXNIException(sAXException);
        }
    }

    /* renamed from: org.apache.xerces.impl.xs.traversers.XSDHandler$b */
    /* loaded from: classes13.dex */
    public static class C20054b implements XMLGrammarPool {

        /* renamed from: a */
        public XSGrammarBucket f113204a;

        /* renamed from: b */
        public Grammar[] f113205b;

        public C20054b() {
        }

        /* renamed from: a */
        public void m70441a(XSGrammarBucket xSGrammarBucket) {
            this.f113204a = xSGrammarBucket;
            this.f113205b = null;
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void cacheGrammars(String str, Grammar[] grammarArr) {
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void clear() {
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void lockPool() {
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            SchemaGrammar grammar;
            if (xMLGrammarDescription.getGrammarType() != "http://www.w3.org/2001/XMLSchema") {
                return null;
            }
            String targetNamespace = ((XMLSchemaDescription) xMLGrammarDescription).getTargetNamespace();
            XSGrammarBucket xSGrammarBucket = this.f113204a;
            if (xSGrammarBucket != null && (grammar = xSGrammarBucket.getGrammar(targetNamespace)) != null) {
                return grammar;
            }
            if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(targetNamespace)) {
                return SchemaGrammar.Schema4Annotations.INSTANCE;
            }
            return null;
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar[] retrieveInitialGrammarSet(String str) {
            if (str != "http://www.w3.org/2001/XMLSchema") {
                return new Grammar[0];
            }
            if (this.f113205b == null) {
                XSGrammarBucket xSGrammarBucket = this.f113204a;
                if (xSGrammarBucket == null) {
                    this.f113205b = new Grammar[]{SchemaGrammar.Schema4Annotations.INSTANCE};
                } else {
                    SchemaGrammar[] grammars = xSGrammarBucket.getGrammars();
                    for (SchemaGrammar schemaGrammar : grammars) {
                        if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(schemaGrammar.getTargetNamespace())) {
                            this.f113205b = grammars;
                            return grammars;
                        }
                    }
                    int length = grammars.length + 1;
                    Grammar[] grammarArr = new Grammar[length];
                    System.arraycopy(grammars, 0, grammarArr, 0, grammars.length);
                    grammarArr[length - 1] = SchemaGrammar.Schema4Annotations.INSTANCE;
                    this.f113205b = grammarArr;
                }
            }
            return this.f113205b;
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void unlockPool() {
        }

        public /* synthetic */ C20054b(C20060e c20060e) {
            this();
        }
    }

    /* renamed from: org.apache.xerces.impl.xs.traversers.XSDHandler$c */
    /* loaded from: classes13.dex */
    public static class C20055c {

        /* renamed from: a */
        public String f113206a;

        /* renamed from: b */
        public short f113207b;

        /* renamed from: c */
        public String f113208c;

        public C20055c(String str, short s, String str2) {
            this.f113206a = str;
            this.f113207b = s;
            this.f113208c = str2;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof C20055c)) {
                return false;
            }
            C20055c c20055c = (C20055c) obj;
            return this.f113208c == c20055c.f113208c && (str = this.f113206a) != null && str.equals(c20055c.f113206a);
        }

        public int hashCode() {
            String str = this.f113208c;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }
    }

    public XSDHandler() {
        this.fNotationRegistry = new Hashtable();
        this.fDeclPool = null;
        this.f113152a = new Hashtable();
        this.f113154b = new Hashtable();
        this.f113156c = new Hashtable();
        this.f113158d = new Hashtable();
        this.f113160e = new Hashtable();
        this.f113162f = new Hashtable();
        this.f113164g = new Hashtable();
        this.f113166h = new Hashtable();
        this.f113168i = new Hashtable();
        this.f113170j = new Hashtable();
        this.f113172k = new Hashtable();
        this.f113174l = new Hashtable();
        this.f113176m = new Hashtable();
        this.f113178n = new Hashtable();
        this.f113180o = new Hashtable[]{null, new Hashtable(), new Hashtable(), new Hashtable(), new Hashtable(), new Hashtable(), new Hashtable(), new Hashtable()};
        this.f113182p = new Hashtable();
        this.f113184q = new Hashtable();
        this.f113186r = new Hashtable();
        this.f113188s = new Vector();
        this.f113190t = null;
        this.f113192u = null;
        this.f113194v = new Hashtable();
        this.f113196w = new Hashtable();
        this.f113198x = null;
        this.f113200y = new Hashtable();
        this.f113202z = new Hashtable();
        this.f113126A = new Hashtable();
        this.f113127B = new Hashtable();
        this.f113128C = new Hashtable();
        this.f113130E = false;
        this.f113131F = false;
        this.f113132G = false;
        this.f113133H = false;
        this.f113163f0 = 0;
        this.f113165g0 = new XSParticleDecl[30];
        this.f113167h0 = new Element[30];
        this.f113169i0 = new tmo[30];
        this.f113171j0 = new int[30];
        this.f113173k0 = new XSObject[30];
        this.f113175l0 = (String[][]) Array.newInstance((Class<?>) String.class, 30, 1);
        this.f113177m0 = 0;
        this.f113179n0 = new Element[2];
        this.f113181o0 = new tmo[2];
        this.f113183p0 = new XSElementDecl[2];
        this.f113185q0 = (String[][]) Array.newInstance((Class<?>) String.class, 2, 1);
        this.f113187r0 = new SymbolHash(12);
        this.f113189s0 = new SymbolHash(5);
        this.f113191t0 = new SymbolHash(25);
        this.f113193u0 = new SymbolHash(5);
        this.f113195v0 = new SymbolHash(1);
        this.f113197w0 = new SymbolHash(3);
        this.f113199x0 = new SymbolHash(25);
        this.f113201y0 = null;
        this.f113203z0 = new SimpleLocator();
        this.f113192u = new Hashtable();
        this.f113153a0 = new SchemaDOMParser(new SchemaParsingConfig());
    }

    /* renamed from: A */
    public final boolean m70342A(Vector vector) {
        int size = vector.size();
        XSDDescription xSDDescription = new XSDDescription();
        for (int i = 0; i < size; i++) {
            if (!m70437z((XSObject) vector.elementAt(i), xSDDescription)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: A0 */
    public void m70343A0() {
        this.f113152a.clear();
        this.f113154b.clear();
        this.f113156c.clear();
        this.f113158d.clear();
        this.f113160e.clear();
        this.f113162f.clear();
        this.f113164g.clear();
        this.f113166h.clear();
        this.f113168i.clear();
        this.f113170j.clear();
        this.f113172k.clear();
        this.f113174l.clear();
        this.f113176m.clear();
        this.f113178n.clear();
        for (int i = 1; i <= 7; i++) {
            this.f113180o[i].clear();
        }
        this.f113182p.clear();
        this.f113184q.clear();
        this.f113200y.clear();
        this.f113202z.clear();
        this.f113126A.clear();
        this.f113188s.removeAllElements();
        this.f113186r.clear();
        this.f113198x = null;
        for (int i2 = 0; i2 < this.f113163f0; i2++) {
            this.f113165g0[i2] = null;
            this.f113167h0[i2] = null;
            this.f113169i0[i2] = null;
            this.f113175l0[i2] = null;
        }
        this.f113163f0 = 0;
        for (int i3 = 0; i3 < this.f113177m0; i3++) {
            this.f113179n0[i3] = null;
            this.f113183p0[i3] = null;
            this.f113185q0[i3] = null;
            this.f113181o0[i3] = null;
        }
        this.f113177m0 = 0;
        if (this.f113136K == null) {
            m70356H();
        }
        Locale locale = this.f113134I.getLocale();
        this.f113136K.reset(this.f113137L);
        this.f113141P.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113142Q.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113143R.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113144S.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113145T.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113146U.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113147V.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113148W.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113149X.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113150Y.mo70453l(this.f113137L, this.f113130E, locale);
        this.f113127B.clear();
        this.f113128C.clear();
        this.f113187r0.clear();
        this.f113189s0.clear();
        this.f113191t0.clear();
        this.f113193u0.clear();
        this.f113195v0.clear();
        this.f113197w0.clear();
        this.f113199x0.clear();
    }

    /* renamed from: B */
    public final int m70344B(String str, String str2, String str3, Element element, tmo tmoVar) {
        int i = 0;
        for (Element firstChildElement = DOMUtil.getFirstChildElement(element); firstChildElement != null; firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement)) {
            if (DOMUtil.getLocalName(firstChildElement).equals(str2)) {
                String str4 = SchemaSymbols.ATT_REF;
                String attribute = firstChildElement.getAttribute(str4);
                if (attribute.length() != 0 && str.equals(m70392c0(attribute, tmoVar))) {
                    String str5 = XMLSymbols.EMPTY_STRING;
                    int indexOf = attribute.indexOf(":");
                    if (indexOf > 0) {
                        String substring = attribute.substring(0, indexOf);
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(substring);
                        stringBuffer.append(":");
                        stringBuffer.append(str3);
                        firstChildElement.setAttribute(str4, stringBuffer.toString());
                    } else {
                        firstChildElement.setAttribute(str4, str3);
                    }
                    i++;
                    if (str2.equals(SchemaSymbols.ELT_GROUP)) {
                        String attribute2 = firstChildElement.getAttribute(SchemaSymbols.ATT_MINOCCURS);
                        String attribute3 = firstChildElement.getAttribute(SchemaSymbols.ATT_MAXOCCURS);
                        if ((attribute3.length() != 0 && !attribute3.equals("1")) || (attribute2.length() != 0 && !attribute2.equals("1"))) {
                            m70349D0(XmlErrorCodes.SCHEMA_REDEFINE$GROUP_SELF_REF_MIN_MAX_1, new Object[]{attribute}, firstChildElement);
                        }
                    }
                }
            } else {
                i += m70344B(str, str2, str3, firstChildElement, tmoVar);
            }
        }
        return i;
    }

    /* renamed from: B0 */
    public final boolean m70345B0(XSModelGroupImpl xSModelGroupImpl, XSParticleDecl xSParticleDecl) {
        int i = 0;
        while (i < xSModelGroupImpl.fParticleCount) {
            XSParticleDecl xSParticleDecl2 = xSModelGroupImpl.fParticles[i];
            if (xSParticleDecl2 == xSParticleDecl) {
                while (true) {
                    int i2 = xSModelGroupImpl.fParticleCount;
                    if (i >= i2 - 1) {
                        xSModelGroupImpl.fParticleCount = i2 - 1;
                        return true;
                    }
                    XSParticleDecl[] xSParticleDeclArr = xSModelGroupImpl.fParticles;
                    int i3 = i + 1;
                    xSParticleDeclArr[i] = xSParticleDeclArr[i3];
                    i = i3;
                }
            } else {
                if (xSParticleDecl2.fType == 3 && m70345B0((XSModelGroupImpl) xSParticleDecl2.fValue, xSParticleDecl)) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0120  */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m70346C(java.lang.String r14, int r15, java.util.Hashtable r16, java.util.Hashtable r17, org.w3c.dom.Element r18, com.sunia.HTREnginev2.tmo r19) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSDHandler.m70346C(java.lang.String, int, java.util.Hashtable, java.util.Hashtable, org.w3c.dom.Element, com.sunia.HTREnginev2.tmo):void");
    }

    /* renamed from: C0 */
    public final void m70347C0(tmo tmoVar, Element element, String str, String str2, String str3) {
        StringBuffer stringBuffer;
        String stringBuffer2;
        Hashtable hashtable;
        StringBuffer stringBuffer3;
        StringBuffer stringBuffer4;
        String str4;
        if (str.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
            Element firstChildElement = DOMUtil.getFirstChildElement(element);
            str4 = "src-redefine.5.a.a";
            if (firstChildElement != null) {
                if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                    firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
                }
                if (firstChildElement != null) {
                    String localName = DOMUtil.getLocalName(firstChildElement);
                    if (!localName.equals(SchemaSymbols.ELT_RESTRICTION)) {
                        m70349D0("src-redefine.5.a.b", new Object[]{localName}, element);
                        return;
                    }
                    Object[] checkAttributes = this.f113136K.checkAttributes(firstChildElement, false, tmoVar);
                    QName qName = (QName) checkAttributes[XSAttributeChecker.ATTIDX_BASE];
                    if (qName != null && qName.uri == tmoVar.f85508h && qName.localpart.equals(str2)) {
                        String str5 = qName.prefix;
                        if (str5 == null || str5.length() <= 0) {
                            firstChildElement.setAttribute(SchemaSymbols.ATT_BASE, str3);
                        } else {
                            String str6 = SchemaSymbols.ATT_BASE;
                            StringBuffer stringBuffer5 = new StringBuffer();
                            stringBuffer5.append(qName.prefix);
                            stringBuffer5.append(":");
                            stringBuffer5.append(str3);
                            firstChildElement.setAttribute(str6, stringBuffer5.toString());
                        }
                    } else {
                        Object[] objArr = new Object[2];
                        objArr[0] = localName;
                        StringBuffer stringBuffer6 = new StringBuffer();
                        String str7 = tmoVar.f85508h;
                        stringBuffer6.append(str7 != null ? str7 : "");
                        stringBuffer6.append(",");
                        stringBuffer6.append(str2);
                        objArr[1] = stringBuffer6.toString();
                        m70349D0("src-redefine.5.a.c", objArr, element);
                    }
                    this.f113136K.returnAttrArray(checkAttributes, tmoVar);
                    return;
                }
            }
        } else {
            if (!str.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                if (str.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                    if (tmoVar.f85508h == null) {
                        stringBuffer4 = new StringBuffer();
                    } else {
                        stringBuffer4 = new StringBuffer();
                        stringBuffer4.append(tmoVar.f85508h);
                    }
                    stringBuffer4.append(",");
                    stringBuffer4.append(str2);
                    stringBuffer2 = stringBuffer4.toString();
                    int m70344B = m70344B(stringBuffer2, str, str3, element, tmoVar);
                    if (m70344B > 1) {
                        m70349D0(XmlErrorCodes.SCHEMA_REDEFINE$ATTR_GROUP_SELF_REF, new Object[]{new Integer(m70344B)}, element);
                        return;
                    }
                    if (m70344B == 1) {
                        return;
                    }
                    if (tmoVar.f85508h == null) {
                        hashtable = this.f113127B;
                        stringBuffer3 = new StringBuffer();
                    } else {
                        hashtable = this.f113127B;
                        stringBuffer3 = new StringBuffer();
                        stringBuffer3.append(tmoVar.f85508h);
                    }
                } else {
                    if (!str.equals(SchemaSymbols.ELT_GROUP)) {
                        m70349D0("Internal-Error", new Object[]{"could not handle this particular <redefine>; please submit your schemas and instance document in a bug report!"}, element);
                        return;
                    }
                    if (tmoVar.f85508h == null) {
                        stringBuffer = new StringBuffer();
                    } else {
                        stringBuffer = new StringBuffer();
                        stringBuffer.append(tmoVar.f85508h);
                    }
                    stringBuffer.append(",");
                    stringBuffer.append(str2);
                    stringBuffer2 = stringBuffer.toString();
                    int m70344B2 = m70344B(stringBuffer2, str, str3, element, tmoVar);
                    if (m70344B2 > 1) {
                        m70349D0(XmlErrorCodes.SCHEMA_REDEFINE$GROUP_SELF_REF, new Object[]{new Integer(m70344B2)}, element);
                        return;
                    }
                    if (m70344B2 == 1) {
                        return;
                    }
                    if (tmoVar.f85508h == null) {
                        hashtable = this.f113128C;
                        stringBuffer3 = new StringBuffer();
                    } else {
                        hashtable = this.f113128C;
                        stringBuffer3 = new StringBuffer();
                        stringBuffer3.append(tmoVar.f85508h);
                    }
                }
                stringBuffer3.append(",");
                stringBuffer3.append(str3);
                hashtable.put(stringBuffer2, stringBuffer3.toString());
                return;
            }
            Element firstChildElement2 = DOMUtil.getFirstChildElement(element);
            str4 = "src-redefine.5.b.a";
            if (firstChildElement2 != null) {
                String localName2 = DOMUtil.getLocalName(firstChildElement2);
                String str8 = SchemaSymbols.ELT_ANNOTATION;
                if (localName2.equals(str8)) {
                    firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
                }
                if (firstChildElement2 != null) {
                    Element firstChildElement3 = DOMUtil.getFirstChildElement(firstChildElement2);
                    if (firstChildElement3 != null) {
                        if (DOMUtil.getLocalName(firstChildElement3).equals(str8)) {
                            firstChildElement3 = DOMUtil.getNextSiblingElement(firstChildElement3);
                        }
                        if (firstChildElement3 != null) {
                            String localName3 = DOMUtil.getLocalName(firstChildElement3);
                            if (!localName3.equals(SchemaSymbols.ELT_RESTRICTION) && !localName3.equals(SchemaSymbols.ELT_EXTENSION)) {
                                m70349D0("src-redefine.5.b.c", new Object[]{localName3}, firstChildElement3);
                                return;
                            }
                            QName qName2 = (QName) this.f113136K.checkAttributes(firstChildElement3, false, tmoVar)[XSAttributeChecker.ATTIDX_BASE];
                            if (qName2 == null || qName2.uri != tmoVar.f85508h || !qName2.localpart.equals(str2)) {
                                Object[] objArr2 = new Object[2];
                                objArr2[0] = localName3;
                                StringBuffer stringBuffer7 = new StringBuffer();
                                String str9 = tmoVar.f85508h;
                                stringBuffer7.append(str9 != null ? str9 : "");
                                stringBuffer7.append(",");
                                stringBuffer7.append(str2);
                                objArr2[1] = stringBuffer7.toString();
                                m70349D0("src-redefine.5.b.d", objArr2, firstChildElement3);
                                return;
                            }
                            String str10 = qName2.prefix;
                            if (str10 == null || str10.length() <= 0) {
                                firstChildElement3.setAttribute(SchemaSymbols.ATT_BASE, str3);
                                return;
                            }
                            String str11 = SchemaSymbols.ATT_BASE;
                            StringBuffer stringBuffer8 = new StringBuffer();
                            stringBuffer8.append(qName2.prefix);
                            stringBuffer8.append(":");
                            stringBuffer8.append(str3);
                            firstChildElement3.setAttribute(str11, stringBuffer8.toString());
                            return;
                        }
                    }
                    m70349D0("src-redefine.5.b.b", null, firstChildElement2);
                    return;
                }
            }
        }
        m70349D0(str4, null, element);
    }

    /* renamed from: D */
    public void m70348D(String str, int i, Element element) {
        int indexOf = str.indexOf(44);
        SchemaGrammar grammar = this.f113138M.getGrammar(m70360J(str.substring(0, indexOf)));
        if (grammar == null || getGlobalDeclFromGrammar(grammar, i, str.substring(indexOf + 1)) == null) {
            return;
        }
        m70349D0(XmlErrorCodes.SCHEMA_PROPERTIES$DUPLICATE, new Object[]{str}, element);
    }

    /* renamed from: D0 */
    public void m70349D0(String str, Object[] objArr, Element element) {
        m70351E0(str, objArr, element, null);
    }

    /* renamed from: E */
    public final boolean m70350E(Vector vector, SchemaGrammar schemaGrammar) {
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            if (m70436y0(((SchemaGrammar) vector.elementAt(i)).getTargetNamespace()).equals(m70436y0(schemaGrammar.getTargetNamespace()))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: E0 */
    public void m70351E0(String str, Object[] objArr, Element element, Exception exc) {
        if (element2Locator(element, this.f113203z0)) {
            this.f113134I.reportError(this.f113203z0, "http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1, exc);
        } else {
            this.f113134I.reportError("http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1, exc);
        }
    }

    /* renamed from: F */
    public final void m70352F() {
        this.f113159d0 = new XML11Configuration();
        this.f113161e0 = new C20054b(null);
        this.f113159d0.setFeature("http://xml.org/sax/features/validation", true);
        this.f113159d0.setFeature("http://apache.org/xml/features/validation/schema", true);
        this.f113159d0.setProperty("http://apache.org/xml/properties/internal/grammar-pool", this.f113161e0);
        XMLErrorHandler errorHandler = this.f113134I.getErrorHandler();
        XML11Configuration xML11Configuration = this.f113159d0;
        if (errorHandler == null) {
            errorHandler = new DefaultErrorHandler();
        }
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/error-handler", errorHandler);
        this.f113159d0.setProperty("http://apache.org/xml/properties/locale", this.f113134I.getLocale());
    }

    /* renamed from: F0 */
    public void m70353F0(String str, Object[] objArr, Element element) {
        m70355G0(str, objArr, element, null);
    }

    /* renamed from: G */
    public final SchemaGrammar m70354G(SchemaGrammar schemaGrammar) {
        SchemaGrammar schemaGrammar2 = new SchemaGrammar(schemaGrammar);
        this.f113138M.putGrammar(schemaGrammar2);
        m70377R0(schemaGrammar2);
        m70375Q0(schemaGrammar2);
        return schemaGrammar2;
    }

    /* renamed from: G0 */
    public void m70355G0(String str, Object[] objArr, Element element, Exception exc) {
        if (element2Locator(element, this.f113203z0)) {
            this.f113134I.reportError(this.f113203z0, "http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 0, exc);
        } else {
            this.f113134I.reportError("http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 0, exc);
        }
    }

    /* renamed from: H */
    public final void m70356H() {
        this.f113136K = new XSAttributeChecker(this);
        this.f113141P = new pmo(this, this.f113136K);
        this.f113142Q = new C20057b(this, this.f113136K);
        this.f113143R = new XSDComplexTypeTraverser(this, this.f113136K);
        this.f113144S = new C20058c(this, this.f113136K);
        this.f113145T = new C20059d(this, this.f113136K);
        this.f113146U = new qmo(this, this.f113136K);
        this.f113147V = new rmo(this, this.f113136K);
        this.f113148W = new C20061f(this, this.f113136K);
        this.f113149X = new smo(this, this.f113136K);
        this.f113150Y = new C20062g(this, this.f113136K);
    }

    /* renamed from: H0 */
    public final void m70357H0(String str, String str2) {
        String stringBuffer;
        if (str == null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(str2);
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(str);
            stringBuffer3.append(",");
            stringBuffer3.append(str2);
            stringBuffer = stringBuffer3.toString();
        }
        m70349D0(XmlErrorCodes.SCHEMA_PROPERTIES$DUPLICATE, new Object[]{stringBuffer}, null);
    }

    /* renamed from: I */
    public final String m70358I(Element element) {
        String documentURI = element.getOwnerDocument() instanceof SchemaDOM ? ((SchemaDOM) element.getOwnerDocument()).getDocumentURI() : null;
        return documentURI != null ? documentURI : (String) this.f113196w.get(element);
    }

    /* renamed from: I0 */
    public final Element m70359I0(XSDDescription xSDDescription, boolean z, Element element, boolean z2) {
        XMLInputSource xMLInputSource;
        try {
            xMLInputSource = XMLSchemaLoader.resolveDocument(xSDDescription, z2 ? this.f113190t : f113117I0, this.f113135J);
        } catch (IOException unused) {
            String[] locationHints = xSDDescription.getLocationHints();
            if (z) {
                m70349D0("schema_reference.4", new Object[]{locationHints[0]}, element);
            } else {
                m70353F0("schema_reference.4", new Object[]{locationHints[0]}, element);
            }
            xMLInputSource = null;
        }
        XMLInputSource xMLInputSource2 = xMLInputSource;
        return xMLInputSource2 instanceof DOMInputSource ? m70414n0(xSDDescription.getTargetNamespace(), (DOMInputSource) xMLInputSource2, z, xSDDescription.getContextType(), element) : xMLInputSource2 instanceof SAXInputSource ? m70416o0(xSDDescription.getTargetNamespace(), (SAXInputSource) xMLInputSource2, z, xSDDescription.getContextType(), element) : xMLInputSource2 instanceof StAXInputSource ? m70418p0(xSDDescription.getTargetNamespace(), (StAXInputSource) xMLInputSource2, z, xSDDescription.getContextType(), element) : xMLInputSource2 instanceof XSInputSource ? m70422r0((XSInputSource) xMLInputSource2, xSDDescription) : m70420q0(xSDDescription.getTargetNamespace(), xMLInputSource2, z, xSDDescription.getContextType(), element);
    }

    /* renamed from: J */
    public final String m70360J(String str) {
        if (str == XMLSymbols.EMPTY_STRING) {
            return null;
        }
        return str;
    }

    /* renamed from: J0 */
    public final Element m70361J0(XMLInputSource xMLInputSource, XSDDescription xSDDescription, boolean z, Element element) {
        return xMLInputSource instanceof DOMInputSource ? m70414n0(xSDDescription.getTargetNamespace(), (DOMInputSource) xMLInputSource, z, xSDDescription.getContextType(), element) : xMLInputSource instanceof SAXInputSource ? m70416o0(xSDDescription.getTargetNamespace(), (SAXInputSource) xMLInputSource, z, xSDDescription.getContextType(), element) : xMLInputSource instanceof StAXInputSource ? m70418p0(xSDDescription.getTargetNamespace(), (StAXInputSource) xMLInputSource, z, xSDDescription.getContextType(), element) : xMLInputSource instanceof XSInputSource ? m70422r0((XSInputSource) xMLInputSource, xSDDescription) : m70420q0(xSDDescription.getTargetNamespace(), xMLInputSource, z, xSDDescription.getContextType(), element);
    }

    /* renamed from: K */
    public final boolean m70362K(Vector vector) {
        int size = vector.size();
        XSDDescription xSDDescription = new XSDDescription();
        for (int i = 0; i < size; i++) {
            xSDDescription.setNamespace(((SchemaGrammar) vector.elementAt(i)).getTargetNamespace());
            if (findGrammar(xSDDescription, false) != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: K0 */
    public final XMLInputSource m70363K0(XSDDescription xSDDescription, boolean z, Element element, boolean z2) {
        try {
            return XMLSchemaLoader.resolveDocument(xSDDescription, z2 ? this.f113190t : f113117I0, this.f113135J);
        } catch (IOException unused) {
            String[] locationHints = xSDDescription.getLocationHints();
            if (z) {
                this.m70349D0("schema_reference.4", new Object[]{locationHints[0]}, element);
            } else {
                this.m70353F0("schema_reference.4", new Object[]{locationHints[0]}, element);
            }
            return null;
        }
    }

    /* renamed from: L */
    public final Vector m70364L(XSObject[] xSObjectArr, Hashtable hashtable) {
        Vector vector = new Vector();
        for (int i = 0; i < xSObjectArr.length; i++) {
            if (!vector.contains(xSObjectArr[i])) {
                vector.add(xSObjectArr[i]);
            }
        }
        for (int i2 = 0; i2 < vector.size(); i2++) {
            m70380T((XSObject) vector.elementAt(i2), vector, hashtable);
        }
        return vector;
    }

    /* renamed from: L0 */
    public final void m70365L0(tmo tmoVar) {
        if (DOMUtil.isHidden(tmoVar.f85510j, this.f113192u)) {
            DOMUtil.setVisible(tmoVar.f85510j, this.f113192u);
            Vector vector = (Vector) this.f113184q.get(tmoVar);
            for (int i = 0; i < vector.size(); i++) {
                m70365L0((tmo) vector.elementAt(i));
            }
        }
    }

    /* renamed from: M */
    public final Vector m70366M(SchemaGrammar[] schemaGrammarArr) {
        Vector vector = new Vector();
        for (int i = 0; i < schemaGrammarArr.length; i++) {
            if (!vector.contains(schemaGrammarArr[i])) {
                vector.add(schemaGrammarArr[i]);
            }
        }
        for (int i2 = 0; i2 < vector.size(); i2++) {
            Vector importedGrammars = ((SchemaGrammar) vector.elementAt(i2)).getImportedGrammars();
            if (importedGrammars != null) {
                for (int size = importedGrammars.size() - 1; size >= 0; size--) {
                    SchemaGrammar schemaGrammar = (SchemaGrammar) importedGrammars.elementAt(size);
                    if (!vector.contains(schemaGrammar)) {
                        vector.addElement(schemaGrammar);
                    }
                }
            }
        }
        return vector;
    }

    /* renamed from: M0 */
    public void m70367M0() {
        XSModelGroupImpl xSModelGroupImpl;
        this.f113144S.f113228p = false;
        for (int i = 0; i < this.f113163f0; i++) {
            Element element = this.f113167h0[i];
            tmo tmoVar = this.f113169i0[i];
            this.f113144S.m70465s(this.f113165g0[i], element, tmoVar, this.f113138M.getGrammar(tmoVar.f85508h), this.f113171j0[i], this.f113173k0[i], this.f113175l0[i]);
            if (this.f113165g0[i].fType == 0) {
                XSObject xSObject = this.f113173k0[i];
                if (xSObject instanceof XSComplexTypeDecl) {
                    XSParticle particle = ((XSComplexTypeDecl) xSObject).getParticle();
                    xSModelGroupImpl = particle != null ? (XSModelGroupImpl) particle.getTerm() : null;
                } else {
                    xSModelGroupImpl = ((XSGroupDecl) xSObject).fModelGroup;
                }
                if (xSModelGroupImpl != null) {
                    m70345B0(xSModelGroupImpl, this.f113165g0[i]);
                }
            }
        }
    }

    /* renamed from: N */
    public final void m70368N(String str, Vector vector) {
        SchemaGrammar grammar = this.f113138M.getGrammar(str);
        if (grammar != null) {
            Vector importedGrammars = grammar.getImportedGrammars();
            if (importedGrammars != null) {
                m70373P0(grammar, importedGrammars, vector);
                return;
            }
            Vector vector2 = new Vector();
            m70421r(grammar, vector2, vector);
            grammar.setImportedGrammars(vector2);
        }
    }

    /* renamed from: N0 */
    public final void m70369N0(Hashtable hashtable) {
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            Vector vector = (Vector) hashtable.get(m70436y0(str));
            if (vector.size() > 0) {
                m70368N(str, vector);
            }
        }
    }

    /* renamed from: O */
    public final void m70370O(XSAttributeDeclaration xSAttributeDeclaration, Vector vector, String str, Hashtable hashtable) {
        m70435y(xSAttributeDeclaration.getTypeDefinition(), vector, str, hashtable);
    }

    /* renamed from: O0 */
    public final void m70371O0(Vector vector, Vector vector2) {
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            SchemaGrammar schemaGrammar = (SchemaGrammar) vector.elementAt(i);
            if (!m70350E(vector2, schemaGrammar)) {
                vector2.add(schemaGrammar);
            }
        }
    }

    /* renamed from: P */
    public final void m70372P(XSAttributeGroupDefinition xSAttributeGroupDefinition, Vector vector, String str, Hashtable hashtable) {
        m70376R(xSAttributeGroupDefinition.getAttributeUses(), vector, str, hashtable);
    }

    /* renamed from: P0 */
    public final void m70373P0(SchemaGrammar schemaGrammar, Vector vector, Vector vector2) {
        int size = vector2.size();
        for (int i = 0; i < size; i++) {
            SchemaGrammar grammar = this.f113138M.getGrammar((String) vector2.elementAt(i));
            if (grammar != null && !m70350E(vector, grammar)) {
                vector.add(grammar);
            }
        }
    }

    /* renamed from: Q */
    public final void m70374Q(XSAttributeUse xSAttributeUse, Vector vector, String str, Hashtable hashtable) {
        m70431w(xSAttributeUse.getAttrDeclaration(), vector, str, hashtable);
    }

    /* renamed from: Q0 */
    public final void m70375Q0(SchemaGrammar schemaGrammar) {
        Vector importedGrammars = schemaGrammar.getImportedGrammars();
        if (importedGrammars != null) {
            for (int i = 0; i < importedGrammars.size(); i++) {
                SchemaGrammar schemaGrammar2 = (SchemaGrammar) importedGrammars.elementAt(i);
                SchemaGrammar grammar = this.f113138M.getGrammar(schemaGrammar2.getTargetNamespace());
                if (grammar != null && schemaGrammar2 != grammar) {
                    importedGrammars.set(i, grammar);
                }
            }
        }
    }

    /* renamed from: R */
    public final void m70376R(XSObjectList xSObjectList, Vector vector, String str, Hashtable hashtable) {
        int size = xSObjectList == null ? 0 : xSObjectList.size();
        for (int i = 0; i < size; i++) {
            m70374Q((XSAttributeUse) xSObjectList.item(i), vector, str, hashtable);
        }
    }

    /* renamed from: R0 */
    public final void m70377R0(SchemaGrammar schemaGrammar) {
        Vector importedGrammars;
        for (SchemaGrammar schemaGrammar2 : this.f113138M.getGrammars()) {
            if (schemaGrammar2 != schemaGrammar && (importedGrammars = schemaGrammar2.getImportedGrammars()) != null) {
                int i = 0;
                while (true) {
                    if (i >= importedGrammars.size()) {
                        break;
                    }
                    SchemaGrammar schemaGrammar3 = (SchemaGrammar) importedGrammars.elementAt(i);
                    if (!m70436y0(schemaGrammar3.getTargetNamespace()).equals(m70436y0(schemaGrammar.getTargetNamespace()))) {
                        i++;
                    } else if (schemaGrammar3 != schemaGrammar) {
                        importedGrammars.set(i, schemaGrammar);
                    }
                }
            }
        }
    }

    /* renamed from: S */
    public final void m70378S(XSComplexTypeDecl xSComplexTypeDecl, Vector vector, String str, Hashtable hashtable) {
        m70435y(xSComplexTypeDecl.getBaseType(), vector, str, hashtable);
        m70376R(xSComplexTypeDecl.getAttributeUses(), vector, str, hashtable);
        XSParticle particle = xSComplexTypeDecl.getParticle();
        if (particle != null) {
            m70384X(particle, vector, str, hashtable);
        }
    }

    /* renamed from: S0 */
    public final void m70379S0(ArrayList arrayList) {
        if (this.f113159d0 == null) {
            m70352F();
        }
        int size = arrayList.size();
        XMLInputSource xMLInputSource = new XMLInputSource(null, null, null);
        this.f113161e0.m70441a(this.f113138M);
        for (int i = 0; i < size; i += 2) {
            xMLInputSource.setSystemId((String) arrayList.get(i));
            for (mmo mmoVar = (mmo) arrayList.get(i + 1); mmoVar != null; mmoVar = mmoVar.f77785e) {
                xMLInputSource.setCharacterStream(new StringReader(mmoVar.f77781a));
                try {
                    this.f113159d0.parse(xMLInputSource);
                } catch (IOException unused) {
                }
            }
        }
    }

    /* renamed from: T */
    public final void m70380T(XSObject xSObject, Vector vector, Hashtable hashtable) {
        short type = xSObject.getType();
        if (type == 1) {
            m70370O((XSAttributeDeclaration) xSObject, vector, xSObject.getNamespace(), hashtable);
            return;
        }
        if (type != 2) {
            if (type == 3) {
                m70386Z((XSTypeDefinition) xSObject, vector, xSObject.getNamespace(), hashtable);
                return;
            } else {
                if (type != 5) {
                    if (type != 6) {
                        return;
                    }
                    m70383W((XSModelGroupDefinition) xSObject, vector, xSObject.getNamespace(), hashtable);
                    return;
                }
                m70372P((XSAttributeGroupDefinition) xSObject, vector, xSObject.getNamespace(), hashtable);
            }
        }
        m70381U((XSElementDeclaration) xSObject, vector, xSObject.getNamespace(), hashtable);
    }

    /* renamed from: U */
    public final void m70381U(XSElementDeclaration xSElementDeclaration, Vector vector, String str, Hashtable hashtable) {
        m70435y(xSElementDeclaration.getTypeDefinition(), vector, str, hashtable);
        XSElementDeclaration substitutionGroupAffiliation = xSElementDeclaration.getSubstitutionGroupAffiliation();
        if (substitutionGroupAffiliation != null) {
            m70433x(substitutionGroupAffiliation, vector, str, hashtable);
        }
    }

    /* renamed from: V */
    public final void m70382V(XSModelGroup xSModelGroup, Vector vector, String str, Hashtable hashtable) {
        XSObjectList particles = xSModelGroup.getParticles();
        int length = particles == null ? 0 : particles.getLength();
        for (int i = 0; i < length; i++) {
            m70384X((XSParticle) particles.item(i), vector, str, hashtable);
        }
    }

    /* renamed from: W */
    public final void m70383W(XSModelGroupDefinition xSModelGroupDefinition, Vector vector, String str, Hashtable hashtable) {
        m70382V(xSModelGroupDefinition.getModelGroup(), vector, str, hashtable);
    }

    /* renamed from: X */
    public final void m70384X(XSParticle xSParticle, Vector vector, String str, Hashtable hashtable) {
        XSTerm term = xSParticle.getTerm();
        short type = term.getType();
        if (type == 2) {
            m70433x((XSElementDeclaration) term, vector, str, hashtable);
        } else {
            if (type != 7) {
                return;
            }
            m70382V((XSModelGroup) term, vector, str, hashtable);
        }
    }

    /* renamed from: Y */
    public final void m70385Y(XSSimpleTypeDefinition xSSimpleTypeDefinition, Vector vector, String str, Hashtable hashtable) {
        XSTypeDefinition baseType = xSSimpleTypeDefinition.getBaseType();
        if (baseType != null) {
            m70435y(baseType, vector, str, hashtable);
        }
        XSSimpleTypeDefinition itemType = xSSimpleTypeDefinition.getItemType();
        if (itemType != null) {
            m70435y(itemType, vector, str, hashtable);
        }
        XSSimpleTypeDefinition primitiveType = xSSimpleTypeDefinition.getPrimitiveType();
        if (primitiveType != null) {
            m70435y(primitiveType, vector, str, hashtable);
        }
        XSObjectList memberTypes = xSSimpleTypeDefinition.getMemberTypes();
        if (memberTypes.size() > 0) {
            for (int i = 0; i < memberTypes.size(); i++) {
                m70435y((XSTypeDefinition) memberTypes.item(i), vector, str, hashtable);
            }
        }
    }

    /* renamed from: Z */
    public final void m70386Z(XSTypeDefinition xSTypeDefinition, Vector vector, String str, Hashtable hashtable) {
        if (xSTypeDefinition instanceof XSComplexTypeDecl) {
            m70378S((XSComplexTypeDecl) xSTypeDefinition, vector, str, hashtable);
        } else if (xSTypeDefinition instanceof XSSimpleTypeDecl) {
            m70385Y((XSSimpleTypeDefinition) xSTypeDefinition, vector, str, hashtable);
        }
    }

    /* renamed from: a */
    public void m70387a(XSAttributeDecl xSAttributeDecl) {
        String stringBuffer;
        String namespace = xSAttributeDecl.getNamespace();
        if (namespace == null || namespace.length() == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(xSAttributeDecl.getName());
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(namespace);
            stringBuffer3.append(",");
            stringBuffer3.append(xSAttributeDecl.getName());
            stringBuffer = stringBuffer3.toString();
        }
        if (this.f113187r0.get(stringBuffer) == null) {
            this.f113187r0.put(stringBuffer, xSAttributeDecl);
        }
    }

    /* renamed from: a0 */
    public void m70388a0(Element element, tmo tmoVar, int i, XSObject xSObject, XSParticleDecl xSParticleDecl) {
        XSParticleDecl[] xSParticleDeclArr = this.f113165g0;
        int length = xSParticleDeclArr.length;
        int i2 = this.f113163f0;
        if (length == i2) {
            XSParticleDecl[] xSParticleDeclArr2 = new XSParticleDecl[i2 + 10];
            System.arraycopy(xSParticleDeclArr, 0, xSParticleDeclArr2, 0, i2);
            this.f113165g0 = xSParticleDeclArr2;
            int i3 = this.f113163f0;
            Element[] elementArr = new Element[i3 + 10];
            System.arraycopy(this.f113167h0, 0, elementArr, 0, i3);
            this.f113167h0 = elementArr;
            int i4 = this.f113163f0;
            tmo[] tmoVarArr = new tmo[i4 + 10];
            System.arraycopy(this.f113169i0, 0, tmoVarArr, 0, i4);
            this.f113169i0 = tmoVarArr;
            int i5 = this.f113163f0;
            int[] iArr = new int[i5 + 10];
            System.arraycopy(this.f113171j0, 0, iArr, 0, i5);
            this.f113171j0 = iArr;
            int i6 = this.f113163f0;
            XSObject[] xSObjectArr = new XSObject[i6 + 10];
            System.arraycopy(this.f113173k0, 0, xSObjectArr, 0, i6);
            this.f113173k0 = xSObjectArr;
            int i7 = this.f113163f0;
            String[][] strArr = new String[i7 + 10];
            System.arraycopy(this.f113175l0, 0, strArr, 0, i7);
            this.f113175l0 = strArr;
        }
        XSParticleDecl[] xSParticleDeclArr3 = this.f113165g0;
        int i8 = this.f113163f0;
        xSParticleDeclArr3[i8] = xSParticleDecl;
        this.f113167h0[i8] = element;
        this.f113169i0[i8] = tmoVar;
        this.f113171j0[i8] = i;
        this.f113173k0[i8] = xSObject;
        String[][] strArr2 = this.f113175l0;
        this.f113163f0 = i8 + 1;
        strArr2[i8] = tmoVar.f85501a.getEffectiveLocalContext();
    }

    /* renamed from: b */
    public final void m70389b(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        XSNamedMap components = schemaGrammar.getComponents((short) 1);
        int length = components.getLength();
        for (int i = 0; i < length; i++) {
            XSAttributeDecl xSAttributeDecl = (XSAttributeDecl) components.item(i);
            XSAttributeDecl globalAttributeDecl = schemaGrammar2.getGlobalAttributeDecl(xSAttributeDecl.getName());
            if (globalAttributeDecl == null) {
                schemaGrammar2.addGlobalAttributeDecl(xSAttributeDecl);
            } else if (globalAttributeDecl != xSAttributeDecl && !this.f113133H) {
                m70357H0(xSAttributeDecl.getNamespace(), xSAttributeDecl.getName());
            }
        }
        ObjectList componentsExt = schemaGrammar.getComponentsExt((short) 1);
        int length2 = componentsExt.getLength();
        for (int i2 = 0; i2 < length2; i2 += 2) {
            String str = (String) componentsExt.item(i2);
            int indexOf = str.indexOf(44);
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1, str.length());
            XSAttributeDecl xSAttributeDecl2 = (XSAttributeDecl) componentsExt.item(i2 + 1);
            if (schemaGrammar2.getGlobalAttributeDecl(substring2, substring) == null) {
                schemaGrammar2.addGlobalAttributeDecl(xSAttributeDecl2, substring);
            }
        }
    }

    /* renamed from: b0 */
    public final Vector m70390b0(String str, Hashtable hashtable) {
        String m70436y0 = m70436y0(str);
        Vector vector = (Vector) hashtable.get(m70436y0);
        if (vector != null) {
            return vector;
        }
        Vector vector2 = new Vector();
        hashtable.put(m70436y0, vector2);
        return vector2;
    }

    public void buildGlobalNameRegistries() {
        int i;
        Stack stack;
        Element element;
        StringBuffer stringBuffer;
        int i2;
        Hashtable hashtable;
        Hashtable hashtable2;
        StringBuffer stringBuffer2;
        Stack stack2;
        Element element2;
        Stack stack3 = new Stack();
        stack3.push(this.f113198x);
        while (!stack3.empty()) {
            tmo tmoVar = (tmo) stack3.pop();
            Element element3 = tmoVar.f85510j;
            if (!DOMUtil.isHidden(element3, this.f113192u)) {
                Element firstChildElement = DOMUtil.getFirstChildElement(element3);
                boolean z = true;
                while (true) {
                    if (firstChildElement == null) {
                        break;
                    }
                    if (!DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                        if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_INCLUDE) || DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_IMPORT)) {
                            stack = stack3;
                            element = element3;
                            if (!z) {
                                m70349D0("s4s-elt-invalid-content.3", new Object[]{DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
                            }
                            DOMUtil.setHidden(firstChildElement, this.f113192u);
                        } else if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_REDEFINE)) {
                            if (!z) {
                                m70349D0("s4s-elt-invalid-content.3", new Object[]{DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
                            }
                            Element firstChildElement2 = DOMUtil.getFirstChildElement(firstChildElement);
                            while (firstChildElement2 != null) {
                                String str = SchemaSymbols.ATT_NAME;
                                String attrValue = DOMUtil.getAttrValue(firstChildElement2, str);
                                if (attrValue.length() != 0) {
                                    if (tmoVar.f85508h == null) {
                                        stringBuffer2 = new StringBuffer();
                                    } else {
                                        stringBuffer2 = new StringBuffer();
                                        stringBuffer2.append(tmoVar.f85508h);
                                    }
                                    stringBuffer2.append(",");
                                    stringBuffer2.append(attrValue);
                                    String trim = XMLChar.trim(stringBuffer2.toString());
                                    String localName = DOMUtil.getLocalName(firstChildElement2);
                                    String str2 = SchemaSymbols.ELT_ATTRIBUTEGROUP;
                                    if (localName.equals(str2)) {
                                        m70346C(trim, 2, this.f113154b, this.f113168i, firstChildElement2, tmoVar);
                                        StringBuffer stringBuffer3 = new StringBuffer();
                                        stringBuffer3.append(DOMUtil.getAttrValue(firstChildElement2, str));
                                        stringBuffer3.append("_fn3dktizrknc9pi");
                                        m70347C0(tmoVar, firstChildElement2, str2, attrValue, stringBuffer3.toString());
                                    } else {
                                        String str3 = SchemaSymbols.ELT_COMPLEXTYPE;
                                        if (localName.equals(str3) || localName.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                                            stack2 = stack3;
                                            element2 = element3;
                                            m70346C(trim, 7, this.f113164g, this.f113178n, firstChildElement2, tmoVar);
                                            StringBuffer stringBuffer4 = new StringBuffer();
                                            stringBuffer4.append(DOMUtil.getAttrValue(firstChildElement2, str));
                                            stringBuffer4.append("_fn3dktizrknc9pi");
                                            String stringBuffer5 = stringBuffer4.toString();
                                            String str4 = str3;
                                            if (!localName.equals(str4)) {
                                                str4 = SchemaSymbols.ELT_SIMPLETYPE;
                                            }
                                            m70347C0(tmoVar, firstChildElement2, str4, attrValue, stringBuffer5);
                                            firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
                                            element3 = element2;
                                            stack3 = stack2;
                                        } else {
                                            String str5 = SchemaSymbols.ELT_GROUP;
                                            if (localName.equals(str5)) {
                                                stack2 = stack3;
                                                m70346C(trim, 4, this.f113158d, this.f113172k, firstChildElement2, tmoVar);
                                                StringBuffer stringBuffer6 = new StringBuffer();
                                                stringBuffer6.append(DOMUtil.getAttrValue(firstChildElement2, str));
                                                stringBuffer6.append("_fn3dktizrknc9pi");
                                                m70347C0(tmoVar, firstChildElement2, str5, attrValue, stringBuffer6.toString());
                                                element2 = element3;
                                                firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
                                                element3 = element2;
                                                stack3 = stack2;
                                            }
                                        }
                                    }
                                }
                                stack2 = stack3;
                                element2 = element3;
                                firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
                                element3 = element2;
                                stack3 = stack2;
                            }
                        } else {
                            stack = stack3;
                            element = element3;
                            String attrValue2 = DOMUtil.getAttrValue(firstChildElement, SchemaSymbols.ATT_NAME);
                            if (attrValue2.length() != 0) {
                                if (tmoVar.f85508h == null) {
                                    stringBuffer = new StringBuffer();
                                } else {
                                    stringBuffer = new StringBuffer();
                                    stringBuffer.append(tmoVar.f85508h);
                                }
                                stringBuffer.append(",");
                                stringBuffer.append(attrValue2);
                                String trim2 = XMLChar.trim(stringBuffer.toString());
                                String localName2 = DOMUtil.getLocalName(firstChildElement);
                                if (localName2.equals(SchemaSymbols.ELT_ATTRIBUTE)) {
                                    i2 = 1;
                                    hashtable = this.f113152a;
                                    hashtable2 = this.f113166h;
                                } else if (localName2.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                                    i2 = 2;
                                    hashtable = this.f113154b;
                                    hashtable2 = this.f113168i;
                                } else if (localName2.equals(SchemaSymbols.ELT_COMPLEXTYPE) || localName2.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                                    i2 = 7;
                                    hashtable = this.f113164g;
                                    hashtable2 = this.f113178n;
                                } else if (localName2.equals(SchemaSymbols.ELT_ELEMENT)) {
                                    i2 = 3;
                                    hashtable = this.f113156c;
                                    hashtable2 = this.f113170j;
                                } else if (localName2.equals(SchemaSymbols.ELT_GROUP)) {
                                    i2 = 4;
                                    hashtable = this.f113158d;
                                    hashtable2 = this.f113172k;
                                } else if (localName2.equals(SchemaSymbols.ELT_NOTATION)) {
                                    i2 = 6;
                                    hashtable = this.f113162f;
                                    hashtable2 = this.f113176m;
                                }
                                m70346C(trim2, i2, hashtable, hashtable2, firstChildElement, tmoVar);
                            }
                            z = false;
                        }
                        firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
                        element3 = element;
                        stack3 = stack;
                    }
                    stack = stack3;
                    element = element3;
                    firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
                    element3 = element;
                    stack3 = stack;
                }
                DOMUtil.setHidden(element3, this.f113192u);
                Vector vector = (Vector) this.f113184q.get(tmoVar);
                for (i = 0; i < vector.size(); i++) {
                    stack3.push(vector.elementAt(i));
                }
            }
        }
    }

    /* renamed from: c */
    public void m70391c(XSAttributeGroupDecl xSAttributeGroupDecl) {
        String stringBuffer;
        String namespace = xSAttributeGroupDecl.getNamespace();
        if (namespace == null || namespace.length() == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(xSAttributeGroupDecl.getName());
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(namespace);
            stringBuffer3.append(",");
            stringBuffer3.append(xSAttributeGroupDecl.getName());
            stringBuffer = stringBuffer3.toString();
        }
        if (this.f113189s0.get(stringBuffer) == null) {
            this.f113189s0.put(stringBuffer, xSAttributeGroupDecl);
        }
    }

    /* renamed from: c0 */
    public final String m70392c0(String str, tmo tmoVar) {
        SchemaNamespaceSupport schemaNamespaceSupport = tmoVar.f85501a;
        int indexOf = str.indexOf(58);
        String str2 = XMLSymbols.EMPTY_STRING;
        String substring = indexOf > 0 ? str.substring(0, indexOf) : str2;
        String uri = schemaNamespaceSupport.getURI(this.f113137L.addSymbol(substring));
        if (indexOf != 0) {
            str = str.substring(indexOf + 1);
        }
        if (substring == str2 && uri == null && tmoVar.f85509i) {
            uri = tmoVar.f85508h;
        }
        if (uri == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(",");
            stringBuffer.append(str);
            return stringBuffer.toString();
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(uri);
        stringBuffer2.append(",");
        stringBuffer2.append(str);
        return stringBuffer2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01e5, code lost:
    
        if (r7.contains(r13) == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01b8, code lost:
    
        if (r20.f113132G == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0240, code lost:
    
        if (m70430v0(r20.f113139N, false) == false) goto L112;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x024a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sunia.HTREnginev2.tmo constructTrees(org.w3c.dom.Element r21, java.lang.String r22, org.apache.xerces.impl.p117xs.XSDDescription r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 1015
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSDHandler.constructTrees(org.w3c.dom.Element, java.lang.String, org.apache.xerces.impl.xs.XSDDescription, boolean):com.sunia.HTREnginev2.tmo");
    }

    /* renamed from: d */
    public final void m70393d(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        XSNamedMap components = schemaGrammar.getComponents((short) 5);
        int length = components.getLength();
        for (int i = 0; i < length; i++) {
            XSAttributeGroupDecl xSAttributeGroupDecl = (XSAttributeGroupDecl) components.item(i);
            XSAttributeGroupDecl globalAttributeGroupDecl = schemaGrammar2.getGlobalAttributeGroupDecl(xSAttributeGroupDecl.getName());
            if (globalAttributeGroupDecl == null) {
                schemaGrammar2.addGlobalAttributeGroupDecl(xSAttributeGroupDecl);
            } else if (globalAttributeGroupDecl != xSAttributeGroupDecl && !this.f113133H) {
                m70357H0(xSAttributeGroupDecl.getNamespace(), xSAttributeGroupDecl.getName());
            }
        }
        ObjectList componentsExt = schemaGrammar.getComponentsExt((short) 5);
        int length2 = componentsExt.getLength();
        for (int i2 = 0; i2 < length2; i2 += 2) {
            String str = (String) componentsExt.item(i2);
            int indexOf = str.indexOf(44);
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1, str.length());
            XSAttributeGroupDecl xSAttributeGroupDecl2 = (XSAttributeGroupDecl) componentsExt.item(i2 + 1);
            if (schemaGrammar2.getGlobalAttributeGroupDecl(substring2, substring) == null) {
                schemaGrammar2.addGlobalAttributeGroupDecl(xSAttributeGroupDecl2, substring);
            }
        }
    }

    /* renamed from: d0 */
    public final tmo m70394d0(tmo tmoVar, Element element, tmo tmoVar2) {
        if (tmoVar2 == null) {
            return null;
        }
        return tmoVar2;
    }

    /* renamed from: e */
    public final void m70395e(XSObject xSObject, XSDDescription xSDDescription) {
        xSDDescription.setNamespace(xSObject.getNamespace());
        SchemaGrammar m70428u0 = m70428u0(xSDDescription);
        short type = xSObject.getType();
        String name = xSObject.getName();
        if (type == 1) {
            XSAttributeDecl xSAttributeDecl = (XSAttributeDecl) xSObject;
            if (xSAttributeDecl.getScope() == 1) {
                if (m70428u0.getGlobalAttributeDecl(name) == null) {
                    m70428u0.addGlobalAttributeDecl(xSAttributeDecl);
                }
                if (m70428u0.getGlobalAttributeDecl(name, "") == null) {
                    m70428u0.addGlobalAttributeDecl(xSAttributeDecl, "");
                    return;
                }
                return;
            }
            return;
        }
        if (type == 2) {
            XSElementDecl xSElementDecl = (XSElementDecl) xSObject;
            if (xSElementDecl.getScope() == 1) {
                m70428u0.addGlobalElementDeclAll(xSElementDecl);
                if (m70428u0.getGlobalElementDecl(name) == null) {
                    m70428u0.addGlobalElementDecl(xSElementDecl);
                }
                if (m70428u0.getGlobalElementDecl(name, "") == null) {
                    m70428u0.addGlobalElementDecl(xSElementDecl, "");
                    return;
                }
                return;
            }
            return;
        }
        if (type == 3) {
            XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) xSObject;
            if (xSTypeDefinition.getAnonymous()) {
                return;
            }
            if (m70428u0.getGlobalTypeDecl(name) == null) {
                m70428u0.addGlobalTypeDecl(xSTypeDefinition);
            }
            if (m70428u0.getGlobalTypeDecl(name, "") == null) {
                m70428u0.addGlobalTypeDecl(xSTypeDefinition, "");
                return;
            }
            return;
        }
        if (type == 5) {
            if (m70428u0.getGlobalAttributeDecl(name) == null) {
                m70428u0.addGlobalAttributeGroupDecl((XSAttributeGroupDecl) xSObject);
            }
            if (m70428u0.getGlobalAttributeDecl(name, "") == null) {
                m70428u0.addGlobalAttributeGroupDecl((XSAttributeGroupDecl) xSObject, "");
                return;
            }
            return;
        }
        if (type == 6) {
            if (m70428u0.getGlobalGroupDecl(name) == null) {
                m70428u0.addGlobalGroupDecl((XSGroupDecl) xSObject);
            }
            if (m70428u0.getGlobalGroupDecl(name, "") == null) {
                m70428u0.addGlobalGroupDecl((XSGroupDecl) xSObject, "");
                return;
            }
            return;
        }
        if (type != 11) {
            return;
        }
        if (m70428u0.getGlobalNotationDecl(name) == null) {
            m70428u0.addGlobalNotationDecl((XSNotationDecl) xSObject);
        }
        if (m70428u0.getGlobalNotationDecl(name, "") == null) {
            m70428u0.addGlobalNotationDecl((XSNotationDecl) xSObject, "");
        }
    }

    /* renamed from: e0 */
    public final XSAttributeDecl m70396e0(String str) {
        return (XSAttributeDecl) this.f113187r0.get(str);
    }

    public SimpleLocator element2Locator(Element element) {
        if (!(element instanceof ElementImpl)) {
            return null;
        }
        SimpleLocator simpleLocator = new SimpleLocator();
        if (element2Locator(element, simpleLocator)) {
            return simpleLocator;
        }
        return null;
    }

    /* renamed from: f */
    public final void m70397f(Vector vector, Hashtable hashtable) {
        XSDDescription xSDDescription = new XSDDescription();
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            m70395e((XSObject) vector.elementAt(i), xSDDescription);
        }
        m70369N0(hashtable);
    }

    /* renamed from: f0 */
    public final XSAttributeGroupDecl m70398f0(String str) {
        return (XSAttributeGroupDecl) this.f113189s0.get(str);
    }

    public SchemaGrammar findGrammar(XSDDescription xSDDescription, boolean z) {
        XMLGrammarPool xMLGrammarPool;
        SchemaGrammar grammar = this.f113138M.getGrammar(xSDDescription.getTargetNamespace());
        if (grammar != null || (xMLGrammarPool = this.f113140O) == null) {
            return grammar;
        }
        SchemaGrammar schemaGrammar = (SchemaGrammar) xMLGrammarPool.retrieveGrammar(xSDDescription);
        if (schemaGrammar == null || this.f113138M.putGrammar(schemaGrammar, true, z)) {
            return schemaGrammar;
        }
        m70353F0("GrammarConflict", null, null);
        return null;
    }

    /* renamed from: g */
    public void m70399g(XSElementDecl xSElementDecl) {
        String stringBuffer;
        String namespace = xSElementDecl.getNamespace();
        if (namespace == null || namespace.length() == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(xSElementDecl.getName());
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(namespace);
            stringBuffer3.append(",");
            stringBuffer3.append(xSElementDecl.getName());
            stringBuffer = stringBuffer3.toString();
        }
        if (this.f113191t0.get(stringBuffer) == null) {
            this.f113191t0.put(stringBuffer, xSElementDecl);
        }
    }

    /* renamed from: g0 */
    public final XSElementDecl m70400g0(String str) {
        return (XSElementDecl) this.f113191t0.get(str);
    }

    public Object getGlobalDecl(tmo tmoVar, int i, QName qName, Element element) {
        StringBuffer stringBuffer;
        Hashtable hashtable;
        tmo tmoVar2;
        XSTypeDefinition globalTypeDecl;
        String str = qName.uri;
        if (str != null && str == SchemaSymbols.URI_SCHEMAFORSCHEMA && i == 7 && (globalTypeDecl = SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(qName.localpart)) != null) {
            return globalTypeDecl;
        }
        if (!tmoVar.m57410f(qName.uri) && tmoVar.m57411g(qName.uri)) {
            m70349D0(qName.uri == null ? "src-resolve.4.1" : "src-resolve.4.2", new Object[]{this.f113196w.get(tmoVar.f85510j), qName.uri, qName.rawname}, element);
        }
        SchemaGrammar grammar = this.f113138M.getGrammar(qName.uri);
        Element element2 = null;
        if (grammar == null) {
            if (m70432w0(qName.uri)) {
                m70349D0(XmlErrorCodes.SCHEMA_QNAME_RESOLVE, new Object[]{qName.rawname, f113124P0[i]}, element);
            }
            return null;
        }
        Object globalDeclFromGrammar = getGlobalDeclFromGrammar(grammar, i, qName.localpart);
        if (qName.uri == null) {
            stringBuffer = new StringBuffer();
        } else {
            stringBuffer = new StringBuffer();
            stringBuffer.append(qName.uri);
        }
        stringBuffer.append(",");
        stringBuffer.append(qName.localpart);
        String stringBuffer2 = stringBuffer.toString();
        if (this.f113133H) {
            Object globalDecl = getGlobalDecl(stringBuffer2, i);
            if (globalDecl != null) {
                return globalDecl;
            }
        } else if (globalDeclFromGrammar != null) {
            return globalDeclFromGrammar;
        }
        switch (i) {
            case 1:
                element2 = (Element) this.f113152a.get(stringBuffer2);
                hashtable = this.f113166h;
                tmoVar2 = (tmo) hashtable.get(stringBuffer2);
                break;
            case 2:
                element2 = (Element) this.f113154b.get(stringBuffer2);
                hashtable = this.f113168i;
                tmoVar2 = (tmo) hashtable.get(stringBuffer2);
                break;
            case 3:
                element2 = (Element) this.f113156c.get(stringBuffer2);
                hashtable = this.f113170j;
                tmoVar2 = (tmo) hashtable.get(stringBuffer2);
                break;
            case 4:
                element2 = (Element) this.f113158d.get(stringBuffer2);
                hashtable = this.f113172k;
                tmoVar2 = (tmo) hashtable.get(stringBuffer2);
                break;
            case 5:
                element2 = (Element) this.f113160e.get(stringBuffer2);
                hashtable = this.f113174l;
                tmoVar2 = (tmo) hashtable.get(stringBuffer2);
                break;
            case 6:
                element2 = (Element) this.f113162f.get(stringBuffer2);
                hashtable = this.f113176m;
                tmoVar2 = (tmo) hashtable.get(stringBuffer2);
                break;
            case 7:
                element2 = (Element) this.f113164g.get(stringBuffer2);
                hashtable = this.f113178n;
                tmoVar2 = (tmo) hashtable.get(stringBuffer2);
                break;
            default:
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("XSDHandler asked to locate component of type ");
                stringBuffer3.append(i);
                stringBuffer3.append("; it does not recognize this type!");
                m70349D0("Internal-Error", new Object[]{stringBuffer3.toString()}, element);
                tmoVar2 = null;
                break;
        }
        if (element2 == null) {
            if (globalDeclFromGrammar == null) {
                m70349D0(XmlErrorCodes.SCHEMA_QNAME_RESOLVE, new Object[]{qName.rawname, f113124P0[i]}, element);
            }
            return globalDeclFromGrammar;
        }
        tmo m70394d0 = m70394d0(tmoVar, element2, tmoVar2);
        if (m70394d0 == null) {
            if (globalDeclFromGrammar == null) {
                m70349D0(qName.uri != null ? "src-resolve.4.2" : "src-resolve.4.1", new Object[]{this.f113196w.get(tmoVar.f85510j), qName.uri, qName.rawname}, element);
            }
            return globalDeclFromGrammar;
        }
        if (!DOMUtil.isHidden(element2, this.f113192u)) {
            return traverseGlobalDecl(i, element2, m70394d0, grammar);
        }
        if (globalDeclFromGrammar == null) {
            String str2 = f113125Q0[i];
            if (i == 7 && SchemaSymbols.ELT_COMPLEXTYPE.equals(DOMUtil.getLocalName(element2))) {
                str2 = "ct-props-correct.3";
            }
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(qName.prefix);
            stringBuffer4.append(":");
            stringBuffer4.append(qName.localpart);
            m70349D0(str2, new Object[]{stringBuffer4.toString()}, element);
        }
        return globalDeclFromGrammar;
    }

    public Object getGlobalDeclFromGrammar(SchemaGrammar schemaGrammar, int i, String str) {
        switch (i) {
            case 1:
                return schemaGrammar.getGlobalAttributeDecl(str);
            case 2:
                return schemaGrammar.getGlobalAttributeGroupDecl(str);
            case 3:
                return schemaGrammar.getGlobalElementDecl(str);
            case 4:
                return schemaGrammar.getGlobalGroupDecl(str);
            case 5:
                return schemaGrammar.getIDConstraintDecl(str);
            case 6:
                return schemaGrammar.getGlobalNotationDecl(str);
            case 7:
                return schemaGrammar.getGlobalTypeDecl(str);
            default:
                return null;
        }
    }

    public Hashtable getIDRegistry() {
        return this.f113160e;
    }

    public Hashtable getIDRegistry_sub() {
        return this.f113174l;
    }

    /* renamed from: h */
    public final void m70401h(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        XSNamedMap components = schemaGrammar.getComponents((short) 2);
        int length = components.getLength();
        for (int i = 0; i < length; i++) {
            XSElementDecl xSElementDecl = (XSElementDecl) components.item(i);
            if (schemaGrammar2.getGlobalElementDecl(xSElementDecl.getName()) == null) {
                schemaGrammar2.addGlobalElementDecl(xSElementDecl);
            }
        }
        ObjectList componentsExt = schemaGrammar.getComponentsExt((short) 2);
        int length2 = componentsExt.getLength();
        for (int i2 = 0; i2 < length2; i2 += 2) {
            String str = (String) componentsExt.item(i2);
            int indexOf = str.indexOf(44);
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1, str.length());
            XSElementDecl xSElementDecl2 = (XSElementDecl) componentsExt.item(i2 + 1);
            if (schemaGrammar2.getGlobalElementDecl(substring2, substring) == null) {
                schemaGrammar2.addGlobalElementDecl(xSElementDecl2, substring);
            }
        }
    }

    /* renamed from: h0 */
    public final XSGroupDecl m70402h0(String str) {
        return (XSGroupDecl) this.f113193u0.get(str);
    }

    /* renamed from: i */
    public void m70403i(XSGroupDecl xSGroupDecl) {
        String stringBuffer;
        String namespace = xSGroupDecl.getNamespace();
        if (namespace == null || namespace.length() == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(xSGroupDecl.getName());
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(namespace);
            stringBuffer3.append(",");
            stringBuffer3.append(xSGroupDecl.getName());
            stringBuffer = stringBuffer3.toString();
        }
        if (this.f113193u0.get(stringBuffer) == null) {
            this.f113193u0.put(stringBuffer, xSGroupDecl);
        }
    }

    /* renamed from: i0 */
    public final XSNotationDecl m70404i0(String str) {
        return (XSNotationDecl) this.f113195v0.get(str);
    }

    /* renamed from: j */
    public final void m70405j(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        XSNamedMap components = schemaGrammar.getComponents((short) 6);
        int length = components.getLength();
        for (int i = 0; i < length; i++) {
            XSGroupDecl xSGroupDecl = (XSGroupDecl) components.item(i);
            XSGroupDecl globalGroupDecl = schemaGrammar2.getGlobalGroupDecl(xSGroupDecl.getName());
            if (globalGroupDecl == null) {
                schemaGrammar2.addGlobalGroupDecl(xSGroupDecl);
            } else if (xSGroupDecl != globalGroupDecl && !this.f113133H) {
                m70357H0(xSGroupDecl.getNamespace(), xSGroupDecl.getName());
            }
        }
        ObjectList componentsExt = schemaGrammar.getComponentsExt((short) 6);
        int length2 = componentsExt.getLength();
        for (int i2 = 0; i2 < length2; i2 += 2) {
            String str = (String) componentsExt.item(i2);
            int indexOf = str.indexOf(44);
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1, str.length());
            XSGroupDecl xSGroupDecl2 = (XSGroupDecl) componentsExt.item(i2 + 1);
            if (schemaGrammar2.getGlobalGroupDecl(substring2, substring) == null) {
                schemaGrammar2.addGlobalGroupDecl(xSGroupDecl2, substring);
            }
        }
    }

    /* renamed from: j0 */
    public final XSTypeDefinition m70406j0(String str) {
        return (XSTypeDefinition) this.f113199x0.get(str);
    }

    /* renamed from: k */
    public void m70407k(XSNotationDecl xSNotationDecl) {
        String stringBuffer;
        String namespace = xSNotationDecl.getNamespace();
        if (namespace == null || namespace.length() == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(xSNotationDecl.getName());
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(namespace);
            stringBuffer3.append(",");
            stringBuffer3.append(xSNotationDecl.getName());
            stringBuffer = stringBuffer3.toString();
        }
        if (this.f113195v0.get(stringBuffer) == null) {
            this.f113195v0.put(stringBuffer, xSNotationDecl);
        }
    }

    /* renamed from: k0 */
    public SchemaGrammar m70408k0(String str) {
        return this.f113138M.getGrammar(str);
    }

    /* renamed from: l */
    public final void m70409l(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        XSNamedMap components = schemaGrammar.getComponents((short) 11);
        int length = components.getLength();
        for (int i = 0; i < length; i++) {
            XSNotationDecl xSNotationDecl = (XSNotationDecl) components.item(i);
            XSNotationDecl globalNotationDecl = schemaGrammar2.getGlobalNotationDecl(xSNotationDecl.getName());
            if (globalNotationDecl == null) {
                schemaGrammar2.addGlobalNotationDecl(xSNotationDecl);
            } else if (globalNotationDecl != xSNotationDecl && !this.f113133H) {
                m70357H0(xSNotationDecl.getNamespace(), xSNotationDecl.getName());
            }
        }
        ObjectList componentsExt = schemaGrammar.getComponentsExt((short) 11);
        int length2 = componentsExt.getLength();
        for (int i2 = 0; i2 < length2; i2 += 2) {
            String str = (String) componentsExt.item(i2);
            int indexOf = str.indexOf(44);
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1, str.length());
            XSNotationDecl xSNotationDecl2 = (XSNotationDecl) componentsExt.item(i2 + 1);
            if (schemaGrammar2.getGlobalNotationDecl(substring2, substring) == null) {
                schemaGrammar2.addGlobalNotationDecl(xSNotationDecl2, substring);
            }
        }
    }

    /* renamed from: l0 */
    public Object m70410l0(int i, QName qName, tmo tmoVar, Element element) {
        StringBuffer stringBuffer;
        Hashtable hashtable;
        if (qName.uri != null) {
            stringBuffer = new StringBuffer();
            stringBuffer.append(qName.uri);
        } else {
            stringBuffer = new StringBuffer();
        }
        stringBuffer.append(",");
        stringBuffer.append(qName.localpart);
        String stringBuffer2 = stringBuffer.toString();
        if (i == 2) {
            hashtable = this.f113127B;
        } else {
            if (i != 4) {
                return null;
            }
            hashtable = this.f113128C;
        }
        String str = (String) hashtable.get(stringBuffer2);
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(",");
        Object globalDecl = getGlobalDecl(tmoVar, i, new QName(XMLSymbols.EMPTY_STRING, str.substring(indexOf + 1), str.substring(indexOf), indexOf == 0 ? null : str.substring(0, indexOf)), element);
        if (globalDecl != null) {
            return globalDecl;
        }
        if (i == 2) {
            m70349D0("src-redefine.7.2.1", new Object[]{qName.localpart}, element);
        } else if (i == 4) {
            m70349D0("src-redefine.6.2.1", new Object[]{qName.localpart}, element);
        }
        return null;
    }

    /* renamed from: m */
    public void m70411m(XSTypeDefinition xSTypeDefinition) {
        String stringBuffer;
        String namespace = xSTypeDefinition.getNamespace();
        if (namespace == null || namespace.length() == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(xSTypeDefinition.getName());
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(namespace);
            stringBuffer3.append(",");
            stringBuffer3.append(xSTypeDefinition.getName());
            stringBuffer = stringBuffer3.toString();
        }
        if (this.f113199x0.get(stringBuffer) == null) {
            this.f113199x0.put(stringBuffer, xSTypeDefinition);
        }
    }

    /* renamed from: m0 */
    public final IdentityConstraint m70412m0(String str) {
        return (IdentityConstraint) this.f113197w0.get(str);
    }

    /* renamed from: n */
    public final void m70413n(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        XSNamedMap components = schemaGrammar.getComponents((short) 3);
        int length = components.getLength();
        for (int i = 0; i < length; i++) {
            XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) components.item(i);
            XSTypeDefinition globalTypeDecl = schemaGrammar2.getGlobalTypeDecl(xSTypeDefinition.getName());
            if (globalTypeDecl == null) {
                schemaGrammar2.addGlobalTypeDecl(xSTypeDefinition);
            } else if (globalTypeDecl != xSTypeDefinition && !this.f113133H) {
                m70357H0(xSTypeDefinition.getNamespace(), xSTypeDefinition.getName());
            }
        }
        ObjectList componentsExt = schemaGrammar.getComponentsExt((short) 3);
        int length2 = componentsExt.getLength();
        for (int i2 = 0; i2 < length2; i2 += 2) {
            String str = (String) componentsExt.item(i2);
            int indexOf = str.indexOf(44);
            String substring = str.substring(0, indexOf);
            String substring2 = str.substring(indexOf + 1, str.length());
            XSTypeDefinition xSTypeDefinition2 = (XSTypeDefinition) componentsExt.item(i2 + 1);
            if (schemaGrammar2.getGlobalTypeDecl(substring2, substring) == null) {
                schemaGrammar2.addGlobalTypeDecl(xSTypeDefinition2, substring);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: n0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.w3c.dom.Element m70414n0(java.lang.String r11, org.apache.xerces.util.DOMInputSource r12, boolean r13, short r14, org.w3c.dom.Element r15) {
        /*
            r10 = this;
            org.w3c.dom.Node r0 = r12.getNode()
            r1 = 9
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L1c
            short r4 = r0.getNodeType()
            if (r4 != r1) goto L17
            org.w3c.dom.Document r0 = (org.w3c.dom.Document) r0
            org.w3c.dom.Element r0 = org.apache.xerces.util.DOMUtil.getRoot(r0)
            goto L1e
        L17:
            if (r4 != r2) goto L1d
            org.w3c.dom.Element r0 = (org.w3c.dom.Element) r0
            goto L1e
        L1c:
            r4 = -1
        L1d:
            r0 = r3
        L1e:
            r5 = 0
            if (r0 == 0) goto L64
            r6 = 3
            if (r14 == r6) goto L59
            java.lang.String r6 = r12.getSystemId()     // Catch: java.io.IOException -> L5f
            java.lang.String r7 = r12.getBaseSystemId()     // Catch: java.io.IOException -> L5f
            java.lang.String r6 = org.apache.xerces.impl.XMLEntityManager.expandSystemId(r6, r7, r5)     // Catch: java.io.IOException -> L5f
            if (r4 != r1) goto L34
            r4 = r2
            goto L35
        L34:
            r4 = r5
        L35:
            if (r4 != 0) goto L45
            org.w3c.dom.Node r7 = r0.getParentNode()     // Catch: java.io.IOException -> L5f
            if (r7 == 0) goto L45
            short r4 = r7.getNodeType()     // Catch: java.io.IOException -> L5f
            if (r4 != r1) goto L44
            r5 = r2
        L44:
            r4 = r5
        L45:
            if (r4 == 0) goto L5a
            org.apache.xerces.impl.xs.traversers.XSDHandler$c r3 = new org.apache.xerces.impl.xs.traversers.XSDHandler$c     // Catch: java.io.IOException -> L5f
            r3.<init>(r6, r14, r11)     // Catch: java.io.IOException -> L5f
            java.util.Hashtable r11 = r10.f113194v     // Catch: java.io.IOException -> L5f
            java.lang.Object r11 = r11.get(r3)     // Catch: java.io.IOException -> L5f
            org.w3c.dom.Element r11 = (org.w3c.dom.Element) r11     // Catch: java.io.IOException -> L5f
            if (r11 == 0) goto L5a
            r10.f113129D = r2     // Catch: java.io.IOException -> L5f
            return r11
        L59:
            r6 = r3
        L5a:
            org.w3c.dom.Element r10 = r10.m70424s0(r3, r6, r0)     // Catch: java.io.IOException -> L5f
            return r10
        L5f:
            r11 = move-exception
            r3 = r11
            r6 = r2
            r9 = r3
            goto L66
        L64:
            r9 = r3
            r6 = r5
        L66:
            r4 = r10
            r5 = r13
            r7 = r12
            r8 = r15
            org.w3c.dom.Element r10 = r4.m70426t0(r5, r6, r7, r8, r9)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSDHandler.m70414n0(java.lang.String, org.apache.xerces.util.DOMInputSource, boolean, short, org.w3c.dom.Element):org.w3c.dom.Element");
    }

    /* renamed from: o */
    public final void m70415o(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        if (schemaGrammar2 == null) {
            m70354G(schemaGrammar);
            return;
        }
        if (schemaGrammar2.isImmutable()) {
            schemaGrammar2 = m70354G(schemaGrammar2);
        }
        m70427u(schemaGrammar, schemaGrammar2);
        m70429v(schemaGrammar, schemaGrammar2);
        m70425t(schemaGrammar, schemaGrammar2);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:26:0x006d
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.io.IOException] */
    /* renamed from: o0 */
    public final org.w3c.dom.Element m70416o0(java.lang.String r10, org.apache.xerces.util.SAXInputSource r11, boolean r12, short r13, org.w3c.dom.Element r14) {
        /*
            r9 = this;
            java.lang.String r0 = "http://apache.org/xml/properties/security-manager"
            org.xml.sax.XMLReader r1 = r11.getXMLReader()
            org.xml.sax.InputSource r2 = r11.getInputSource()
            r3 = 0
            r4 = 0
            if (r2 == 0) goto Lc0
            r5 = 1
            java.lang.String r6 = r2.getSystemId()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            if (r6 != 0) goto L21
            java.io.InputStream r6 = r2.getByteStream()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            if (r6 != 0) goto L21
            java.io.Reader r6 = r2.getCharacterStream()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            if (r6 == 0) goto Lc0
        L21:
            r6 = 3
            if (r13 == r6) goto L42
            java.lang.String r6 = r2.getSystemId()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            java.lang.String r7 = r11.getBaseSystemId()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            java.lang.String r6 = org.apache.xerces.impl.XMLEntityManager.expandSystemId(r6, r7, r3)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            org.apache.xerces.impl.xs.traversers.XSDHandler$c r7 = new org.apache.xerces.impl.xs.traversers.XSDHandler$c     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r7.<init>(r6, r13, r10)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            java.util.Hashtable r10 = r9.f113194v     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            java.lang.Object r10 = r10.get(r7)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            org.w3c.dom.Element r10 = (org.w3c.dom.Element) r10     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            if (r10 == 0) goto L44
            r9.f113129D = r5     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            return r10
        L42:
            r6 = r4
            r7 = r6
        L44:
            java.lang.String r10 = "http://xml.org/sax/features/namespace-prefixes"
            if (r1 == 0) goto L4d
            boolean r10 = r1.getFeature(r10)     // Catch: org.xml.sax.SAXException -> L6d java.io.IOException -> Lb0
            goto L6e
        L4d:
            org.xml.sax.XMLReader r13 = org.xml.sax.helpers.XMLReaderFactory.createXMLReader()     // Catch: org.xml.sax.SAXException -> L53 java.io.IOException -> Lb0
        L51:
            r1 = r13
            goto L59
        L53:
            org.apache.xerces.parsers.SAXParser r13 = new org.apache.xerces.parsers.SAXParser     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r13.<init>()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            goto L51
        L59:
            r1.setFeature(r10, r5)     // Catch: org.xml.sax.SAXException -> L6d java.io.IOException -> Lb0
            boolean r10 = r1 instanceof org.apache.xerces.parsers.SAXParser     // Catch: org.xml.sax.SAXException -> L6b java.io.IOException -> Lb0
            if (r10 == 0) goto L6b
            org.apache.xerces.impl.xs.opti.SchemaDOMParser r10 = r9.f113153a0     // Catch: org.xml.sax.SAXException -> L6b java.io.IOException -> Lb0
            java.lang.Object r10 = r10.getProperty(r0)     // Catch: org.xml.sax.SAXException -> L6b java.io.IOException -> Lb0
            if (r10 == 0) goto L6b
            r1.setProperty(r0, r10)     // Catch: org.xml.sax.SAXException -> L6b java.io.IOException -> Lb0
        L6b:
            r10 = r5
            goto L6e
        L6d:
            r10 = r3
        L6e:
            java.lang.String r13 = "http://xml.org/sax/features/string-interning"
            boolean r3 = r1.getFeature(r13)     // Catch: org.xml.sax.SAXException -> L74 java.io.IOException -> Lb0
        L74:
            com.sunia.HTREnginev2.a2m r13 = r9.f113155b0     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            if (r13 != 0) goto L7f
            com.sunia.HTREnginev2.a2m r13 = new com.sunia.HTREnginev2.a2m     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r13.<init>()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r9.f113155b0 = r13     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
        L7f:
            com.sunia.HTREnginev2.a2m r13 = r9.f113155b0     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            org.apache.xerces.impl.xs.opti.SchemaDOMParser r0 = r9.f113153a0     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            org.apache.xerces.util.SymbolTable r8 = r9.f113137L     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r13.m52940g(r0, r8, r10, r3)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            com.sunia.HTREnginev2.a2m r10 = r9.f113155b0     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r1.setContentHandler(r10)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            org.apache.xerces.impl.XMLErrorReporter r10 = r9.f113134I     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            org.xml.sax.ErrorHandler r10 = r10.getSAXErrorHandler()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r1.setErrorHandler(r10)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r1.parse(r2)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            r1.setContentHandler(r4)     // Catch: java.lang.Exception -> L9f
            r1.setErrorHandler(r4)     // Catch: java.lang.Exception -> L9f
        L9f:
            com.sunia.HTREnginev2.a2m r10 = r9.f113155b0     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            org.w3c.dom.Document r10 = r10.m52939f()     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            if (r10 == 0) goto Lab
            org.w3c.dom.Element r4 = org.apache.xerces.util.DOMUtil.getRoot(r10)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
        Lab:
            org.w3c.dom.Element r9 = r9.m70424s0(r7, r6, r4)     // Catch: java.io.IOException -> Lb0 org.xml.sax.SAXException -> Lb4 org.xml.sax.SAXParseException -> Lba
            return r9
        Lb0:
            r10 = move-exception
            r4 = r10
            r2 = r5
            goto Lc1
        Lb4:
            r9 = move-exception
            org.apache.xerces.xni.XNIException r9 = org.apache.xerces.impl.p117xs.traversers.XSDHandler.C20053a.m70440b(r9)
            throw r9
        Lba:
            r9 = move-exception
            org.apache.xerces.xni.parser.XMLParseException r9 = org.apache.xerces.impl.p117xs.traversers.XSDHandler.C20053a.m70439a(r9)
            throw r9
        Lc0:
            r2 = r3
        Lc1:
            r5 = r4
            r0 = r9
            r1 = r12
            r3 = r11
            r4 = r14
            org.w3c.dom.Element r9 = r0.m70426t0(r1, r2, r3, r4, r5)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.traversers.XSDHandler.m70416o0(java.lang.String, org.apache.xerces.util.SAXInputSource, boolean, short, org.w3c.dom.Element):org.w3c.dom.Element");
    }

    /* renamed from: p */
    public final void m70417p(Vector vector) {
        int size = vector.size();
        XSDDescription xSDDescription = new XSDDescription();
        for (int i = 0; i < size; i++) {
            SchemaGrammar schemaGrammar = (SchemaGrammar) vector.elementAt(i);
            xSDDescription.setNamespace(schemaGrammar.getTargetNamespace());
            SchemaGrammar findGrammar = findGrammar(xSDDescription, this.f113132G);
            if (schemaGrammar != findGrammar) {
                m70415o(schemaGrammar, findGrammar);
            }
        }
    }

    /* renamed from: p0 */
    public final Element m70418p0(String str, StAXInputSource stAXInputSource, boolean z, short s, Element element) {
        IOException e;
        String str2;
        C20055c c20055c;
        try {
            boolean shouldConsumeRemainingContent = stAXInputSource.shouldConsumeRemainingContent();
            XMLStreamReader xMLStreamReader = stAXInputSource.getXMLStreamReader();
            XMLEventReader xMLEventReader = stAXInputSource.getXMLEventReader();
            if (s != 3) {
                boolean z2 = false;
                str2 = XMLEntityManager.expandSystemId(stAXInputSource.getSystemId(), stAXInputSource.getBaseSystemId(), false);
                if (shouldConsumeRemainingContent) {
                    z2 = shouldConsumeRemainingContent;
                } else if (xMLStreamReader == null) {
                    z2 = xMLEventReader.peek().isStartDocument();
                } else if (xMLStreamReader.getEventType() == 7) {
                    z2 = true;
                }
                if (z2) {
                    c20055c = new C20055c(str2, s, str);
                    Element element2 = (Element) this.f113194v.get(c20055c);
                    if (element2 != null) {
                        this.f113129D = true;
                        return element2;
                    }
                } else {
                    c20055c = null;
                }
            } else {
                str2 = null;
                c20055c = null;
            }
            if (this.f113157c0 == null) {
                this.f113157c0 = new gxm();
            }
            this.f113157c0.m54383n(this.f113153a0, this.f113137L);
            if (xMLStreamReader != null) {
                this.f113157c0.m54382m(xMLStreamReader);
                if (shouldConsumeRemainingContent) {
                    while (xMLStreamReader.hasNext()) {
                        xMLStreamReader.next();
                    }
                }
            } else {
                this.f113157c0.m54381l(xMLEventReader);
                if (shouldConsumeRemainingContent) {
                    while (xMLEventReader.hasNext()) {
                        xMLEventReader.nextEvent();
                    }
                }
            }
            Document m54380k = this.f113157c0.m54380k();
            return m70424s0(c20055c, str2, m54380k != null ? DOMUtil.getRoot(m54380k) : null);
        } catch (IOException e2) {
            e = e2;
            return m70426t0(z, true, stAXInputSource, element, e);
        } catch (XMLStreamException e3) {
            Throwable nestedException = e3.getNestedException();
            if (nestedException instanceof IOException) {
                e = (IOException) nestedException;
                return m70426t0(z, true, stAXInputSource, element, e);
            }
            StAXLocationWrapper stAXLocationWrapper = new StAXLocationWrapper();
            stAXLocationWrapper.setLocation(e3.getLocation());
            throw new XMLParseException(stAXLocationWrapper, e3.getMessage(), e3);
        }
    }

    public SchemaGrammar parseSchema(XMLInputSource xMLInputSource, XSDDescription xSDDescription, Hashtable hashtable) throws IOException {
        String str;
        SchemaGrammar schemaGrammar;
        Element m70420q0;
        String str2;
        XSGrammarBucket xSGrammarBucket;
        String namespace;
        this.f113190t = hashtable;
        this.f113153a0.resetNodePool();
        short contextType = xSDDescription.getContextType();
        if (contextType != 3) {
            SchemaGrammar grammar = (this.f113131F && contextType == 2 && m70430v0(xSDDescription, this.f113132G)) ? this.f113138M.getGrammar(xSDDescription.getTargetNamespace()) : findGrammar(xSDDescription, this.f113132G);
            if (grammar != null) {
                if (!this.f113132G) {
                    return grammar;
                }
                try {
                    if (grammar.getDocumentLocations().contains(XMLEntityManager.expandSystemId(xMLInputSource.getSystemId(), xMLInputSource.getBaseSystemId(), false))) {
                        return grammar;
                    }
                } catch (URI.MalformedURIException unused) {
                }
            }
            str = xSDDescription.getTargetNamespace();
            if (str != null) {
                str = this.f113137L.addSymbol(str);
            }
            schemaGrammar = grammar;
        } else {
            str = null;
            schemaGrammar = null;
        }
        m70438z0();
        if (xMLInputSource instanceof DOMInputSource) {
            m70420q0 = m70414n0(str, (DOMInputSource) xMLInputSource, contextType == 3, contextType, null);
        } else if (xMLInputSource instanceof SAXInputSource) {
            m70420q0 = m70416o0(str, (SAXInputSource) xMLInputSource, contextType == 3, contextType, null);
        } else if (xMLInputSource instanceof StAXInputSource) {
            m70420q0 = m70418p0(str, (StAXInputSource) xMLInputSource, contextType == 3, contextType, null);
        } else if (xMLInputSource instanceof XSInputSource) {
            m70420q0 = m70422r0((XSInputSource) xMLInputSource, xSDDescription);
        } else {
            m70420q0 = m70420q0(str, xMLInputSource, contextType == 3, contextType, null);
        }
        if (m70420q0 == null) {
            if (!(xMLInputSource instanceof XSInputSource)) {
                return schemaGrammar;
            }
            XSInputSource xSInputSource = (XSInputSource) xMLInputSource;
            SchemaGrammar[] grammars = xSInputSource.getGrammars();
            if (grammars == null || grammars.length <= 0) {
                XSObject[] components = xSInputSource.getComponents();
                if (components == null || components.length <= 0) {
                    return schemaGrammar;
                }
                xSGrammarBucket = this.f113138M;
                namespace = components[0].getNamespace();
            } else {
                xSGrammarBucket = this.f113138M;
                namespace = grammars[0].getTargetNamespace();
            }
            return xSGrammarBucket.getGrammar(namespace);
        }
        if (contextType == 3) {
            String attrValue = DOMUtil.getAttrValue(m70420q0, SchemaSymbols.ATT_TARGETNAMESPACE);
            if (attrValue == null || attrValue.length() <= 0) {
                str2 = null;
            } else {
                str2 = this.f113137L.addSymbol(attrValue);
                xSDDescription.setTargetNamespace(str2);
            }
            schemaGrammar = findGrammar(xSDDescription, this.f113132G);
            String expandSystemId = XMLEntityManager.expandSystemId(xMLInputSource.getSystemId(), xMLInputSource.getBaseSystemId(), false);
            if (schemaGrammar != null && (!this.f113132G || (expandSystemId != null && schemaGrammar.getDocumentLocations().contains(expandSystemId)))) {
                return schemaGrammar;
            }
            this.f113194v.put(new C20055c(expandSystemId, contextType, str2), m70420q0);
            if (expandSystemId != null) {
                this.f113196w.put(m70420q0, expandSystemId);
            }
        }
        m70343A0();
        tmo constructTrees = constructTrees(m70420q0, xMLInputSource.getSystemId(), xSDDescription, schemaGrammar != null);
        this.f113198x = constructTrees;
        if (constructTrees == null) {
            return null;
        }
        buildGlobalNameRegistries();
        ArrayList arrayList = this.f113130E ? new ArrayList() : null;
        traverseSchemas(arrayList);
        m70367M0();
        resolveKeyRefs();
        for (int size = this.f113188s.size() - 1; size >= 0; size--) {
            String str3 = (String) this.f113188s.elementAt(size);
            Vector vector = (Vector) this.f113186r.get(str3);
            SchemaGrammar grammar2 = this.f113138M.getGrammar(m70360J(str3));
            if (grammar2 != null) {
                int i = 0;
                for (int i2 = 0; i2 < vector.size(); i2++) {
                    SchemaGrammar grammar3 = this.f113138M.getGrammar((String) vector.elementAt(i2));
                    if (grammar3 != null) {
                        vector.setElementAt(grammar3, i);
                        i++;
                    }
                }
                vector.setSize(i);
                grammar2.setImportedGrammars(vector);
            }
        }
        if (this.f113130E && arrayList.size() > 0) {
            m70379S0(arrayList);
        }
        return this.f113138M.getGrammar(this.f113198x.f85508h);
    }

    /* renamed from: q */
    public void m70419q(IdentityConstraint identityConstraint) {
        String stringBuffer;
        String namespace = identityConstraint.getNamespace();
        if (namespace == null || namespace.length() == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(",");
            stringBuffer2.append(identityConstraint.getIdentityConstraintName());
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(namespace);
            stringBuffer3.append(",");
            stringBuffer3.append(identityConstraint.getIdentityConstraintName());
            stringBuffer = stringBuffer3.toString();
        }
        if (this.f113197w0.get(stringBuffer) == null) {
            this.f113197w0.put(stringBuffer, identityConstraint);
        }
    }

    /* renamed from: q0 */
    public final Element m70420q0(String str, XMLInputSource xMLInputSource, boolean z, short s, Element element) {
        boolean z2;
        IOException iOException;
        String str2;
        C20055c c20055c;
        if (xMLInputSource != null) {
            try {
                if (xMLInputSource.getSystemId() != null || xMLInputSource.getByteStream() != null || xMLInputSource.getCharacterStream() != null) {
                    if (s != 3) {
                        str2 = XMLEntityManager.expandSystemId(xMLInputSource.getSystemId(), xMLInputSource.getBaseSystemId(), false);
                        c20055c = new C20055c(str2, s, str);
                        Element element2 = (Element) this.f113194v.get(c20055c);
                        if (element2 != null) {
                            this.f113129D = true;
                            return element2;
                        }
                    } else {
                        str2 = null;
                        c20055c = null;
                    }
                    this.f113153a0.parse(xMLInputSource);
                    Document document = this.f113153a0.getDocument();
                    return m70424s0(c20055c, str2, document != null ? DOMUtil.getRoot(document) : null);
                }
            } catch (IOException e) {
                iOException = e;
                z2 = true;
            }
        }
        z2 = false;
        iOException = null;
        return m70426t0(z, z2, xMLInputSource, element, iOException);
    }

    /* renamed from: r */
    public final void m70421r(SchemaGrammar schemaGrammar, Vector vector, Vector vector2) {
        int size = vector2.size();
        for (int i = 0; i < size; i++) {
            SchemaGrammar grammar = this.f113138M.getGrammar((String) vector2.elementAt(i));
            if (grammar != null) {
                vector.add(grammar);
            }
        }
    }

    /* renamed from: r0 */
    public final Element m70422r0(XSInputSource xSInputSource, XSDDescription xSDDescription) {
        String namespace;
        SchemaGrammar[] grammars = xSInputSource.getGrammars();
        short contextType = xSDDescription.getContextType();
        if (grammars == null || grammars.length <= 0) {
            XSObject[] components = xSInputSource.getComponents();
            if (components == null || components.length <= 0) {
                return null;
            }
            Hashtable hashtable = new Hashtable();
            Vector m70364L = m70364L(components, hashtable);
            if (!this.f113132G && !m70342A(m70364L)) {
                return null;
            }
            m70397f(m70364L, hashtable);
            if (contextType != 3) {
                return null;
            }
            namespace = components[0].getNamespace();
        } else {
            Vector m70366M = m70366M(grammars);
            if (!this.f113132G && m70362K(m70366M)) {
                return null;
            }
            m70417p(m70366M);
            if (contextType != 3) {
                return null;
            }
            namespace = grammars[0].getTargetNamespace();
        }
        xSDDescription.setTargetNamespace(namespace);
        return null;
    }

    public void reset(XMLComponentManager xMLComponentManager) {
        this.f113137L = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.f113135J = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        XMLEntityResolver xMLEntityResolver = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
        if (xMLEntityResolver != null) {
            this.f113153a0.setEntityResolver(xMLEntityResolver);
        }
        XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.f113134I = xMLErrorReporter;
        try {
            XMLErrorHandler errorHandler = xMLErrorReporter.getErrorHandler();
            if (errorHandler != this.f113153a0.getProperty("http://apache.org/xml/properties/internal/error-handler")) {
                this.f113153a0.setProperty("http://apache.org/xml/properties/internal/error-handler", errorHandler != null ? errorHandler : new DefaultErrorHandler());
                XML11Configuration xML11Configuration = this.f113159d0;
                if (xML11Configuration != null) {
                    if (errorHandler == null) {
                        errorHandler = new DefaultErrorHandler();
                    }
                    xML11Configuration.setProperty("http://apache.org/xml/properties/internal/error-handler", errorHandler);
                }
            }
            Locale locale = this.f113134I.getLocale();
            if (locale != this.f113153a0.getProperty("http://apache.org/xml/properties/locale")) {
                this.f113153a0.setProperty("http://apache.org/xml/properties/locale", locale);
                XML11Configuration xML11Configuration2 = this.f113159d0;
                if (xML11Configuration2 != null) {
                    xML11Configuration2.setProperty("http://apache.org/xml/properties/locale", locale);
                }
            }
        } catch (XMLConfigurationException unused) {
        }
        try {
            this.f113130E = xMLComponentManager.getFeature(VALIDATE_ANNOTATIONS);
        } catch (XMLConfigurationException unused2) {
            this.f113130E = false;
        }
        try {
            this.f113131F = xMLComponentManager.getFeature(HONOUR_ALL_SCHEMALOCATIONS);
        } catch (XMLConfigurationException unused3) {
            this.f113131F = false;
        }
        try {
            this.f113132G = xMLComponentManager.getFeature(NAMESPACE_GROWTH);
        } catch (XMLConfigurationException unused4) {
            this.f113132G = false;
        }
        try {
            this.f113133H = xMLComponentManager.getFeature(TOLERATE_DUPLICATES);
        } catch (XMLConfigurationException unused5) {
            this.f113133H = false;
        }
        try {
            this.f113153a0.setFeature("http://apache.org/xml/features/continue-after-fatal-error", this.f113134I.getFeature("http://apache.org/xml/features/continue-after-fatal-error"));
        } catch (XMLConfigurationException unused6) {
        }
        try {
            this.f113153a0.setFeature(ALLOW_JAVA_ENCODINGS, xMLComponentManager.getFeature(ALLOW_JAVA_ENCODINGS));
        } catch (XMLConfigurationException unused7) {
        }
        try {
            this.f113153a0.setFeature(STANDARD_URI_CONFORMANT_FEATURE, xMLComponentManager.getFeature(STANDARD_URI_CONFORMANT_FEATURE));
        } catch (XMLConfigurationException unused8) {
        }
        try {
            this.f113140O = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused9) {
            this.f113140O = null;
        }
        try {
            this.f113153a0.setFeature("http://apache.org/xml/features/disallow-doctype-decl", xMLComponentManager.getFeature("http://apache.org/xml/features/disallow-doctype-decl"));
        } catch (XMLConfigurationException unused10) {
        }
        try {
            Object property = xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
            if (property != null) {
                this.f113153a0.setProperty("http://apache.org/xml/properties/security-manager", property);
            }
        } catch (XMLConfigurationException unused11) {
        }
    }

    public void resolveKeyRefs() {
        for (int i = 0; i < this.f113177m0; i++) {
            tmo tmoVar = this.f113181o0[i];
            tmoVar.f85501a.makeGlobal();
            tmoVar.f85501a.setEffectiveContext(this.f113185q0[i]);
            SchemaGrammar grammar = this.f113138M.getGrammar(tmoVar.f85508h);
            DOMUtil.setHidden(this.f113179n0[i], this.f113192u);
            this.f113146U.m56727r(this.f113179n0[i], this.f113183p0[i], tmoVar, grammar);
        }
    }

    /* renamed from: s */
    public final void m70423s(String str, String str2, Vector vector) {
        String m70436y0 = m70436y0(str);
        String m70436y02 = m70436y0(str2);
        if (m70436y0.equals(m70436y02) || vector.contains(m70436y02)) {
            return;
        }
        vector.add(m70436y02);
    }

    /* renamed from: s0 */
    public final Element m70424s0(C20055c c20055c, String str, Element element) {
        if (c20055c != null) {
            this.f113194v.put(c20055c, element);
        }
        if (str != null) {
            this.f113196w.put(element, str);
        }
        this.f113129D = false;
        return element;
    }

    public String schemaDocument2SystemId(tmo tmoVar) {
        return (String) this.f113196w.get(tmoVar.f85510j);
    }

    public void setDVFactory(SchemaDVFactory schemaDVFactory) {
        this.f113151Z = schemaDVFactory;
    }

    public void setDeclPool(XSDeclarationPool xSDeclarationPool) {
        this.fDeclPool = xSDeclarationPool;
    }

    public void setGenerateSyntheticAnnotations(boolean z) {
        this.f113153a0.setFeature("http://apache.org/xml/features/generate-synthetic-annotations", z);
    }

    public void storeKeyRef(Element element, tmo tmoVar, XSElementDecl xSElementDecl) {
        StringBuffer stringBuffer;
        String attrValue = DOMUtil.getAttrValue(element, SchemaSymbols.ATT_NAME);
        if (attrValue.length() != 0) {
            if (tmoVar.f85508h == null) {
                stringBuffer = new StringBuffer();
            } else {
                stringBuffer = new StringBuffer();
                stringBuffer.append(tmoVar.f85508h);
            }
            stringBuffer.append(",");
            stringBuffer.append(attrValue);
            m70346C(stringBuffer.toString(), 5, this.f113160e, this.f113174l, element, tmoVar);
        }
        int i = this.f113177m0;
        Element[] elementArr = this.f113179n0;
        if (i == elementArr.length) {
            Element[] elementArr2 = new Element[i + 2];
            System.arraycopy(elementArr, 0, elementArr2, 0, i);
            this.f113179n0 = elementArr2;
            int i2 = this.f113177m0;
            XSElementDecl[] xSElementDeclArr = new XSElementDecl[i2 + 2];
            System.arraycopy(this.f113183p0, 0, xSElementDeclArr, 0, i2);
            this.f113183p0 = xSElementDeclArr;
            int i3 = this.f113177m0;
            String[][] strArr = new String[i3 + 2];
            System.arraycopy(this.f113185q0, 0, strArr, 0, i3);
            this.f113185q0 = strArr;
            int i4 = this.f113177m0;
            tmo[] tmoVarArr = new tmo[i4 + 2];
            System.arraycopy(this.f113181o0, 0, tmoVarArr, 0, i4);
            this.f113181o0 = tmoVarArr;
        }
        Element[] elementArr3 = this.f113179n0;
        int i5 = this.f113177m0;
        elementArr3[i5] = element;
        this.f113183p0[i5] = xSElementDecl;
        this.f113185q0[i5] = tmoVar.f85501a.getEffectiveLocalContext();
        tmo[] tmoVarArr2 = this.f113181o0;
        int i6 = this.f113177m0;
        this.f113177m0 = i6 + 1;
        tmoVarArr2[i6] = tmoVar;
    }

    /* renamed from: t */
    public final void m70425t(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        schemaGrammar2.resetComponents();
        m70401h(schemaGrammar, schemaGrammar2);
        m70389b(schemaGrammar, schemaGrammar2);
        m70393d(schemaGrammar, schemaGrammar2);
        m70405j(schemaGrammar, schemaGrammar2);
        m70413n(schemaGrammar, schemaGrammar2);
        m70409l(schemaGrammar, schemaGrammar2);
    }

    /* renamed from: t0 */
    public final Element m70426t0(boolean z, boolean z2, XMLInputSource xMLInputSource, Element element, IOException iOException) {
        if (z) {
            if (z2) {
                m70351E0("schema_reference.4", new Object[]{xMLInputSource.getSystemId()}, element, iOException);
            } else {
                Object[] objArr = new Object[1];
                objArr[0] = xMLInputSource == null ? "" : xMLInputSource.getSystemId();
                m70351E0("schema_reference.4", objArr, element, iOException);
            }
        } else if (z2) {
            m70355G0("schema_reference.4", new Object[]{xMLInputSource.getSystemId()}, element, iOException);
        }
        this.f113129D = false;
        return null;
    }

    public Object traverseGlobalDecl(int i, Element element, tmo tmoVar, SchemaGrammar schemaGrammar) {
        DOMUtil.setHidden(element, this.f113192u);
        Element parent = DOMUtil.getParent(element);
        Object obj = null;
        tmoVar.m57407c(DOMUtil.getLocalName(parent).equals(SchemaSymbols.ELT_REDEFINE) ? (SchemaNamespaceSupport) this.f113126A.get(parent) : null);
        if (i == 1) {
            obj = this.f113142Q.m70460s(element, tmoVar, schemaGrammar);
        } else if (i == 2) {
            obj = this.f113141P.m56328q(element, tmoVar, schemaGrammar);
        } else if (i == 3) {
            obj = this.f113144S.m70463q(element, tmoVar, schemaGrammar);
        } else if (i == 4) {
            obj = this.f113145T.m70467v(element, tmoVar, schemaGrammar);
        } else if (i == 6) {
            obj = this.f113147V.m56983q(element, tmoVar, schemaGrammar);
        } else if (i == 7) {
            obj = DOMUtil.getLocalName(element).equals(SchemaSymbols.ELT_COMPLEXTYPE) ? this.f113143R.m70334I(element, tmoVar, schemaGrammar) : this.f113148W.m70475w(element, tmoVar, schemaGrammar);
        }
        tmoVar.m57413i();
        return obj;
    }

    public void traverseSchemas(ArrayList arrayList) {
        mmo m57408d;
        String syntheticAnnotation;
        m70365L0(this.f113198x);
        Stack stack = new Stack();
        stack.push(this.f113198x);
        while (!stack.empty()) {
            tmo tmoVar = (tmo) stack.pop();
            Element element = tmoVar.f85510j;
            SchemaGrammar grammar = this.f113138M.getGrammar(tmoVar.f85508h);
            if (!DOMUtil.isHidden(element, this.f113192u)) {
                Element firstVisibleChildElement = DOMUtil.getFirstVisibleChildElement(element, this.f113192u);
                boolean z = false;
                while (firstVisibleChildElement != null) {
                    DOMUtil.setHidden(firstVisibleChildElement, this.f113192u);
                    String localName = DOMUtil.getLocalName(firstVisibleChildElement);
                    if (DOMUtil.getLocalName(firstVisibleChildElement).equals(SchemaSymbols.ELT_REDEFINE)) {
                        tmoVar.m57407c((SchemaNamespaceSupport) this.f113126A.get(firstVisibleChildElement));
                        Element firstVisibleChildElement2 = DOMUtil.getFirstVisibleChildElement(firstVisibleChildElement, this.f113192u);
                        while (firstVisibleChildElement2 != null) {
                            String localName2 = DOMUtil.getLocalName(firstVisibleChildElement2);
                            DOMUtil.setHidden(firstVisibleChildElement2, this.f113192u);
                            if (localName2.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                                this.f113141P.m56328q(firstVisibleChildElement2, tmoVar, grammar);
                            } else if (localName2.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                                this.f113143R.m70334I(firstVisibleChildElement2, tmoVar, grammar);
                            } else if (localName2.equals(SchemaSymbols.ELT_GROUP)) {
                                this.f113145T.m70467v(firstVisibleChildElement2, tmoVar, grammar);
                            } else if (localName2.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                                this.f113148W.m70475w(firstVisibleChildElement2, tmoVar, grammar);
                            } else {
                                m70349D0("s4s-elt-must-match.1", new Object[]{DOMUtil.getLocalName(firstVisibleChildElement), "(annotation | (simpleType | complexType | group | attributeGroup))*", localName2}, firstVisibleChildElement2);
                            }
                            firstVisibleChildElement2 = DOMUtil.getNextVisibleSiblingElement(firstVisibleChildElement2, this.f113192u);
                        }
                        tmoVar.m57413i();
                    } else if (localName.equals(SchemaSymbols.ELT_ATTRIBUTE)) {
                        this.f113142Q.m70460s(firstVisibleChildElement, tmoVar, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                        this.f113141P.m56328q(firstVisibleChildElement, tmoVar, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                        this.f113143R.m70334I(firstVisibleChildElement, tmoVar, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_ELEMENT)) {
                        this.f113144S.m70463q(firstVisibleChildElement, tmoVar, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_GROUP)) {
                        this.f113145T.m70467v(firstVisibleChildElement, tmoVar, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_NOTATION)) {
                        this.f113147V.m56983q(firstVisibleChildElement, tmoVar, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                        this.f113148W.m70475w(firstVisibleChildElement, tmoVar, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_ANNOTATION)) {
                        grammar.addAnnotation(this.f113144S.m70454m(firstVisibleChildElement, tmoVar.m57409e(), true, tmoVar));
                        z = true;
                    } else {
                        m70349D0("s4s-elt-invalid-content.1", new Object[]{SchemaSymbols.ELT_SCHEMA, DOMUtil.getLocalName(firstVisibleChildElement)}, firstVisibleChildElement);
                    }
                    firstVisibleChildElement = DOMUtil.getNextVisibleSiblingElement(firstVisibleChildElement, this.f113192u);
                }
                if (!z && (syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element)) != null) {
                    grammar.addAnnotation(this.f113144S.m70457p(element, syntheticAnnotation, tmoVar.m57409e(), true, tmoVar));
                }
                if (arrayList != null && (m57408d = tmoVar.m57408d()) != null) {
                    arrayList.add(m70358I(element));
                    arrayList.add(m57408d);
                }
                tmoVar.m57414j();
                DOMUtil.setHidden(element, this.f113192u);
                Vector vector = (Vector) this.f113184q.get(tmoVar);
                for (int i = 0; i < vector.size(); i++) {
                    stack.push(vector.elementAt(i));
                }
            }
        }
    }

    /* renamed from: u */
    public final void m70427u(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        StringList documentLocations = schemaGrammar.getDocumentLocations();
        int size = documentLocations.size();
        StringList documentLocations2 = schemaGrammar2.getDocumentLocations();
        for (int i = 0; i < size; i++) {
            String item = documentLocations.item(i);
            if (!documentLocations2.contains(item)) {
                schemaGrammar2.addDocument(null, item);
            }
        }
    }

    /* renamed from: u0 */
    public final SchemaGrammar m70428u0(XSDDescription xSDDescription) {
        SchemaGrammar findGrammar = findGrammar(xSDDescription, this.f113132G);
        if (findGrammar != null) {
            return findGrammar.isImmutable() ? m70354G(findGrammar) : findGrammar;
        }
        SchemaGrammar schemaGrammar = new SchemaGrammar(xSDDescription.getNamespace(), xSDDescription.makeClone(), this.f113137L);
        this.f113138M.putGrammar(schemaGrammar);
        return schemaGrammar;
    }

    /* renamed from: v */
    public final void m70429v(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
        Vector importedGrammars = schemaGrammar.getImportedGrammars();
        if (importedGrammars != null) {
            Vector importedGrammars2 = schemaGrammar2.getImportedGrammars();
            if (importedGrammars2 == null) {
                importedGrammars2 = new Vector();
                schemaGrammar2.setImportedGrammars(importedGrammars2);
            }
            int size = importedGrammars.size();
            for (int i = 0; i < size; i++) {
                SchemaGrammar schemaGrammar3 = (SchemaGrammar) importedGrammars.elementAt(i);
                SchemaGrammar grammar = this.f113138M.getGrammar(schemaGrammar3.getTargetNamespace());
                if (grammar != null) {
                    schemaGrammar3 = grammar;
                }
                if (!m70350E(importedGrammars2, schemaGrammar3)) {
                    importedGrammars2.add(schemaGrammar3);
                }
            }
        }
    }

    /* renamed from: v0 */
    public final boolean m70430v0(XSDDescription xSDDescription, boolean z) {
        SchemaGrammar grammar = this.f113138M.getGrammar(xSDDescription.getTargetNamespace());
        if (grammar == null) {
            return findGrammar(xSDDescription, z) != null;
        }
        if (grammar.isImmutable()) {
            return true;
        }
        try {
            return grammar.getDocumentLocations().contains(XMLEntityManager.expandSystemId(xSDDescription.getLiteralSystemId(), xSDDescription.getBaseSystemId(), false));
        } catch (URI.MalformedURIException unused) {
            return false;
        }
    }

    /* renamed from: w */
    public final void m70431w(XSAttributeDeclaration xSAttributeDeclaration, Vector vector, String str, Hashtable hashtable) {
        if (xSAttributeDeclaration.getScope() != 1) {
            m70370O(xSAttributeDeclaration, vector, str, hashtable);
        } else {
            if (vector.contains(xSAttributeDeclaration)) {
                return;
            }
            m70423s(str, xSAttributeDeclaration.getNamespace(), m70390b0(str, hashtable));
            vector.add(xSAttributeDeclaration);
        }
    }

    /* renamed from: w0 */
    public final boolean m70432w0(String str) {
        Vector vector = this.f113201y0;
        if (vector == null) {
            this.f113201y0 = new Vector();
        } else if (vector.contains(str)) {
            return false;
        }
        this.f113201y0.addElement(str);
        return true;
    }

    /* renamed from: x */
    public final void m70433x(XSElementDeclaration xSElementDeclaration, Vector vector, String str, Hashtable hashtable) {
        if (xSElementDeclaration.getScope() != 1) {
            m70381U(xSElementDeclaration, vector, str, hashtable);
        } else {
            if (vector.contains(xSElementDeclaration)) {
                return;
            }
            m70423s(str, xSElementDeclaration.getNamespace(), m70390b0(str, hashtable));
            vector.add(xSElementDeclaration);
        }
    }

    /* renamed from: x0 */
    public final boolean m70434x0(Element element) {
        for (Element firstChildElement = DOMUtil.getFirstChildElement(element); firstChildElement != null; firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement)) {
            if (!DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: y */
    public final void m70435y(XSTypeDefinition xSTypeDefinition, Vector vector, String str, Hashtable hashtable) {
        if (xSTypeDefinition.getAnonymous()) {
            m70386Z(xSTypeDefinition, vector, str, hashtable);
        } else {
            if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(xSTypeDefinition.getNamespace()) || vector.contains(xSTypeDefinition)) {
                return;
            }
            m70423s(str, xSTypeDefinition.getNamespace(), m70390b0(str, hashtable));
            vector.add(xSTypeDefinition);
        }
    }

    /* renamed from: y0 */
    public final String m70436y0(String str) {
        return str == null ? XMLSymbols.EMPTY_STRING : str;
    }

    /* renamed from: z */
    public final boolean m70437z(XSObject xSObject, XSDDescription xSDDescription) {
        xSDDescription.setNamespace(xSObject.getNamespace());
        SchemaGrammar findGrammar = findGrammar(xSDDescription, false);
        if (findGrammar == null) {
            return true;
        }
        if (findGrammar.isImmutable()) {
            return false;
        }
        short type = xSObject.getType();
        String name = xSObject.getName();
        if (type != 1) {
            if (type != 2) {
                if (type != 3) {
                    if (type != 5) {
                        if (type != 6) {
                            if (type != 11 || findGrammar.getGlobalNotationDecl(name) == xSObject) {
                                return true;
                            }
                        } else if (findGrammar.getGlobalGroupDecl(name) == xSObject) {
                            return true;
                        }
                    } else if (findGrammar.getGlobalAttributeDecl(name) == xSObject) {
                        return true;
                    }
                } else if (findGrammar.getGlobalTypeDecl(name) == xSObject) {
                    return true;
                }
            } else if (findGrammar.getGlobalElementDecl(name) == xSObject) {
                return true;
            }
        } else if (findGrammar.getGlobalAttributeDecl(name) == xSObject) {
            return true;
        }
        return false;
    }

    /* renamed from: z0 */
    public void m70438z0() {
        this.f113194v.clear();
        this.f113196w.clear();
        this.f113192u.clear();
        this.f113129D = false;
    }

    public XSDHandler(XSGrammarBucket xSGrammarBucket) {
        this();
        this.f113138M = xSGrammarBucket;
        this.f113139N = new XSDDescription();
    }

    public boolean element2Locator(Element element, SimpleLocator simpleLocator) {
        if (simpleLocator == null || !(element instanceof ElementImpl)) {
            return false;
        }
        ElementImpl elementImpl = (ElementImpl) element;
        String str = (String) this.f113196w.get(DOMUtil.getRoot(elementImpl.getOwnerDocument()));
        simpleLocator.setValues(str, str, elementImpl.getLineNumber(), elementImpl.getColumnNumber(), elementImpl.getCharacterOffset());
        return true;
    }

    public Object getGlobalDecl(String str, int i) {
        switch (i) {
            case 1:
                return m70396e0(str);
            case 2:
                return m70398f0(str);
            case 3:
                return m70400g0(str);
            case 4:
                return m70402h0(str);
            case 5:
                return m70412m0(str);
            case 6:
                return m70404i0(str);
            case 7:
                return m70406j0(str);
            default:
                return null;
        }
    }

    public Object getGlobalDeclFromGrammar(SchemaGrammar schemaGrammar, int i, String str, String str2) {
        switch (i) {
            case 1:
                return schemaGrammar.getGlobalAttributeDecl(str, str2);
            case 2:
                return schemaGrammar.getGlobalAttributeGroupDecl(str, str2);
            case 3:
                return schemaGrammar.getGlobalElementDecl(str, str2);
            case 4:
                return schemaGrammar.getGlobalGroupDecl(str, str2);
            case 5:
                return schemaGrammar.getIDConstraintDecl(str, str2);
            case 6:
                return schemaGrammar.getGlobalNotationDecl(str, str2);
            case 7:
                return schemaGrammar.getGlobalTypeDecl(str, str2);
            default:
                return null;
        }
    }
}
