package org.apache.xerces.impl.p117xs;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.chg;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.WeakHashMap;
import org.apache.xerces.dom.DOMErrorImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DOMStringListImpl;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.SchemaDVFactory;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.SchemaDVFactoryImpl;
import org.apache.xerces.impl.p117xs.models.CMBuilder;
import org.apache.xerces.impl.p117xs.models.CMNodeFactory;
import org.apache.xerces.impl.p117xs.traversers.XSDHandler;
import org.apache.xerces.p118xs.LSInputList;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSLoader;
import org.apache.xerces.p118xs.XSModel;
import org.apache.xerces.util.DOMEntityResolverWrapper;
import org.apache.xerces.util.DOMErrorHandlerWrapper;
import org.apache.xerces.util.DefaultErrorHandler;
import org.apache.xerces.util.MessageFormatter;
import org.apache.xerces.util.ParserConfigurationSettings;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.URI;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarLoader;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.grammars.XSGrammar;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.InputSource;

/* loaded from: classes13.dex */
public class XMLSchemaLoader implements XMLGrammarLoader, XMLComponent, XSElementDeclHelper, XSLoader, DOMConfiguration {
    protected static final String AUGMENT_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String DISALLOW_DOCTYPE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    public static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final String LOCALE = "http://apache.org/xml/properties/locale";
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    public static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    public static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";

    /* renamed from: Z */
    public static /* synthetic */ Class f112738Z;

    /* renamed from: k0 */
    public static /* synthetic */ Class f112739k0;

    /* renamed from: q0 */
    public static /* synthetic */ Class f112740q0;

    /* renamed from: t0 */
    public static /* synthetic */ Class f112741t0;

    /* renamed from: u0 */
    public static /* synthetic */ Class f112742u0;

    /* renamed from: J */
    public DOMEntityResolverWrapper f112743J;

    /* renamed from: e */
    public final ParserConfigurationSettings f112744e;

    /* renamed from: f */
    public XMLErrorReporter f112745f;

    /* renamed from: g */
    public XMLEntityManager f112746g;

    /* renamed from: h */
    public XMLEntityResolver f112747h;

    /* renamed from: i */
    public XMLGrammarPool f112748i;

    /* renamed from: j */
    public String f112749j;

    /* renamed from: k */
    public String f112750k;

    /* renamed from: l */
    public Object f112751l;

    /* renamed from: m */
    public boolean f112752m;

    /* renamed from: n */
    public boolean f112753n;

    /* renamed from: o */
    public boolean f112754o;

    /* renamed from: p */
    public XSDHandler f112755p;

    /* renamed from: q */
    public XSGrammarBucket f112756q;

    /* renamed from: r */
    public XSDeclarationPool f112757r;

    /* renamed from: s */
    public SubstitutionGroupHandler f112758s;

    /* renamed from: t */
    public CMBuilder f112759t;

    /* renamed from: u */
    public XSDDescription f112760u;

    /* renamed from: v */
    public SchemaDVFactory f112761v;

    /* renamed from: w */
    public WeakHashMap f112762w;

    /* renamed from: x */
    public Locale f112763x;

    /* renamed from: y */
    public DOMStringList f112764y;

    /* renamed from: z */
    public DOMErrorHandlerWrapper f112765z;
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    protected static final String NAMESPACE_GROWTH = "http://apache.org/xml/features/namespace-growth";
    protected static final String TOLERATE_DUPLICATES = "http://apache.org/xml/features/internal/tolerate-duplicates";

    /* renamed from: O */
    public static final String[] f112736O = {"http://apache.org/xml/features/validation/schema-full-checking", "http://apache.org/xml/features/validation/schema/augment-psvi", "http://apache.org/xml/features/continue-after-fatal-error", ALLOW_JAVA_ENCODINGS, STANDARD_URI_CONFORMANT_FEATURE, "http://apache.org/xml/features/disallow-doctype-decl", "http://apache.org/xml/features/generate-synthetic-annotations", VALIDATE_ANNOTATIONS, HONOUR_ALL_SCHEMALOCATIONS, NAMESPACE_GROWTH, TOLERATE_DUPLICATES};
    protected static final String SCHEMA_LOCATION = "http://apache.org/xml/properties/schema/external-schemaLocation";
    protected static final String SCHEMA_NONS_LOCATION = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
    protected static final String SCHEMA_DV_FACTORY = "http://apache.org/xml/properties/internal/validation/schema/dv-factory";

    /* renamed from: Q */
    public static final String[] f112737Q = {"http://apache.org/xml/properties/internal/entity-manager", "http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/error-handler", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/grammar-pool", SCHEMA_LOCATION, SCHEMA_NONS_LOCATION, "http://java.sun.com/xml/jaxp/properties/schemaSource", "http://apache.org/xml/properties/security-manager", "http://apache.org/xml/properties/locale", SCHEMA_DV_FACTORY};

    /* renamed from: org.apache.xerces.impl.xs.XMLSchemaLoader$a */
    /* loaded from: classes13.dex */
    public static class C20047a {

        /* renamed from: a */
        public int f112766a;

        /* renamed from: b */
        public String[] f112767b = new String[2];

        /* renamed from: a */
        public void m70149a(String str) {
            int i = this.f112766a;
            if (i >= this.f112767b.length) {
                m70153e(i, Math.max(1, i * 2));
            }
            String[] strArr = this.f112767b;
            int i2 = this.f112766a;
            this.f112766a = i2 + 1;
            strArr[i2] = str;
        }

        /* renamed from: b */
        public String m70150b() {
            if (this.f112766a > 0) {
                return this.f112767b[0];
            }
            return null;
        }

        /* renamed from: c */
        public int m70151c() {
            return this.f112766a;
        }

        /* renamed from: d */
        public String[] m70152d() {
            int i = this.f112766a;
            String[] strArr = this.f112767b;
            if (i < strArr.length) {
                m70153e(strArr.length, i);
            }
            return this.f112767b;
        }

        /* renamed from: e */
        public void m70153e(int i, int i2) {
            String[] strArr = new String[i2];
            System.arraycopy(this.f112767b, 0, strArr, 0, Math.min(i, i2));
            this.f112767b = strArr;
            this.f112766a = Math.min(i, i2);
        }
    }

    public XMLSchemaLoader() {
        this(new SymbolTable(), null, new XMLEntityManager(), null, null, null);
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: g */
    public static XMLInputSource m70141g(InputSource inputSource) {
        String publicId = inputSource.getPublicId();
        String systemId = inputSource.getSystemId();
        Reader characterStream = inputSource.getCharacterStream();
        if (characterStream != null) {
            return new XMLInputSource(publicId, systemId, (String) null, characterStream, (String) null);
        }
        InputStream byteStream = inputSource.getByteStream();
        return byteStream != null ? new XMLInputSource(publicId, systemId, (String) null, byteStream, inputSource.getEncoding()) : new XMLInputSource(publicId, systemId, null);
    }

    public static void processExternalHints(String str, String str2, Hashtable hashtable, XMLErrorReporter xMLErrorReporter) {
        if (str != null) {
            try {
                SchemaGrammar.SG_XSI.getGlobalAttributeDecl(SchemaSymbols.XSI_SCHEMALOCATION).f112857g.validate(str, (ValidationContext) null, (ValidatedInfo) null);
                if (!tokenizeSchemaLocationStr(str, hashtable, null)) {
                    xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "SchemaLocation", new Object[]{str}, (short) 0);
                }
            } catch (InvalidDatatypeValueException e) {
                xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", e.getKey(), e.getArgs(), (short) 0);
            }
        }
        if (str2 != null) {
            try {
                SchemaGrammar.SG_XSI.getGlobalAttributeDecl(SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION).f112857g.validate(str2, (ValidationContext) null, (ValidatedInfo) null);
                String str3 = XMLSymbols.EMPTY_STRING;
                C20047a c20047a = (C20047a) hashtable.get(str3);
                if (c20047a == null) {
                    c20047a = new C20047a();
                    hashtable.put(str3, c20047a);
                }
                c20047a.m70149a(str2);
            } catch (InvalidDatatypeValueException e2) {
                xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", e2.getKey(), e2.getArgs(), (short) 0);
            }
        }
    }

    public static XMLInputSource resolveDocument(XSDDescription xSDDescription, Hashtable hashtable, XMLEntityResolver xMLEntityResolver) throws IOException {
        String m70150b;
        String[] locationHints;
        if (xSDDescription.getContextType() == 2 || xSDDescription.fromInstance()) {
            String targetNamespace = xSDDescription.getTargetNamespace();
            if (targetNamespace == null) {
                targetNamespace = XMLSymbols.EMPTY_STRING;
            }
            C20047a c20047a = (C20047a) hashtable.get(targetNamespace);
            if (c20047a != null) {
                m70150b = c20047a.m70150b();
                if (m70150b == null && (locationHints = xSDDescription.getLocationHints()) != null && locationHints.length > 0) {
                    m70150b = locationHints[0];
                }
                String expandSystemId = XMLEntityManager.expandSystemId(m70150b, xSDDescription.getBaseSystemId(), false);
                xSDDescription.setLiteralSystemId(m70150b);
                xSDDescription.setExpandedSystemId(expandSystemId);
                return xMLEntityResolver.resolveEntity(xSDDescription);
            }
        }
        m70150b = null;
        if (m70150b == null) {
            m70150b = locationHints[0];
        }
        String expandSystemId2 = XMLEntityManager.expandSystemId(m70150b, xSDDescription.getBaseSystemId(), false);
        xSDDescription.setLiteralSystemId(m70150b);
        xSDDescription.setExpandedSystemId(expandSystemId2);
        return xMLEntityResolver.resolveEntity(xSDDescription);
    }

    public static boolean tokenizeSchemaLocationStr(String str, Hashtable hashtable, String str2) {
        if (str == null) {
            return true;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \n\t\r");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (!stringTokenizer.hasMoreTokens()) {
                return false;
            }
            String nextToken2 = stringTokenizer.nextToken();
            C20047a c20047a = (C20047a) hashtable.get(nextToken);
            if (c20047a == null) {
                c20047a = new C20047a();
                hashtable.put(nextToken, c20047a);
            }
            if (str2 != null) {
                try {
                    nextToken2 = XMLEntityManager.expandSystemId(nextToken2, str2, false);
                } catch (URI.MalformedURIException unused) {
                }
            }
            c20047a.m70149a(nextToken2);
        }
        return true;
    }

    /* renamed from: a */
    public XMLInputSource m70142a(LSInput lSInput) {
        return lSInput.getCharacterStream() != null ? new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), lSInput.getCharacterStream(), "UTF-16") : lSInput.getByteStream() != null ? new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), lSInput.getByteStream(), lSInput.getEncoding()) : (lSInput.getStringData() == null || lSInput.getStringData().length() == 0) ? new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI()) : new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), new StringReader(lSInput.getStringData()), "UTF-16");
    }

    /* renamed from: b */
    public final void m70143b() {
        XMLGrammarPool xMLGrammarPool = this.f112748i;
        if (xMLGrammarPool != null) {
            Grammar[] retrieveInitialGrammarSet = xMLGrammarPool.retrieveInitialGrammarSet("http://www.w3.org/2001/XMLSchema");
            int length = retrieveInitialGrammarSet != null ? retrieveInitialGrammarSet.length : 0;
            for (int i = 0; i < length; i++) {
                if (!this.f112756q.putGrammar((SchemaGrammar) retrieveInitialGrammarSet[i], true)) {
                    this.f112745f.reportError("http://www.w3.org/TR/xml-schema-1", "GrammarConflict", null, (short) 0);
                }
            }
        }
    }

    /* renamed from: c */
    public SchemaGrammar m70144c(XSDDescription xSDDescription, XMLInputSource xMLInputSource, Hashtable hashtable) throws IOException, XNIException {
        if (!this.f112753n) {
            m70146e(hashtable);
        }
        return this.f112755p.parseSchema(xMLInputSource, xSDDescription, hashtable);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public boolean canSetParameter(String str, Object obj) {
        return obj instanceof Boolean ? str.equals("validate") || str.equals("http://apache.org/xml/features/validation/schema-full-checking") || str.equals(VALIDATE_ANNOTATIONS) || str.equals("http://apache.org/xml/features/continue-after-fatal-error") || str.equals(ALLOW_JAVA_ENCODINGS) || str.equals(STANDARD_URI_CONFORMANT_FEATURE) || str.equals("http://apache.org/xml/features/generate-synthetic-annotations") || str.equals(HONOUR_ALL_SCHEMALOCATIONS) || str.equals(NAMESPACE_GROWTH) || str.equals(TOLERATE_DUPLICATES) : str.equals("error-handler") || str.equals("resource-resolver") || str.equals("http://apache.org/xml/properties/internal/symbol-table") || str.equals("http://apache.org/xml/properties/internal/error-reporter") || str.equals("http://apache.org/xml/properties/internal/error-handler") || str.equals("http://apache.org/xml/properties/internal/entity-resolver") || str.equals("http://apache.org/xml/properties/internal/grammar-pool") || str.equals(SCHEMA_LOCATION) || str.equals(SCHEMA_NONS_LOCATION) || str.equals("http://java.sun.com/xml/jaxp/properties/schemaSource") || str.equals(SCHEMA_DV_FACTORY);
    }

    /* renamed from: d */
    public final boolean m70145d(XMLComponentManager xMLComponentManager) {
        if (xMLComponentManager == this.f112744e) {
            return true;
        }
        try {
            return xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            return true;
        }
    }

    /* renamed from: e */
    public final void m70146e(Hashtable hashtable) throws IOException {
        SchemaGrammar schemaGrammar;
        SchemaGrammar schemaGrammar2;
        this.f112753n = true;
        Object obj = this.f112751l;
        if (obj == null) {
            return;
        }
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType == null) {
            Object obj2 = this.f112751l;
            if (((obj2 instanceof InputStream) || (obj2 instanceof InputSource)) && (schemaGrammar2 = (SchemaGrammar) this.f112762w.get(obj2)) != null) {
                this.f112756q.putGrammar(schemaGrammar2);
                return;
            }
            this.f112760u.reset();
            XMLInputSource m70148h = m70148h(this.f112751l);
            String systemId = m70148h.getSystemId();
            XSDDescription xSDDescription = this.f112760u;
            xSDDescription.fContextType = (short) 3;
            if (systemId != null) {
                xSDDescription.setBaseSystemId(m70148h.getBaseSystemId());
                this.f112760u.setLiteralSystemId(systemId);
                this.f112760u.setExpandedSystemId(systemId);
                this.f112760u.fLocationHints = new String[]{systemId};
            }
            SchemaGrammar m70144c = m70144c(this.f112760u, m70148h, hashtable);
            if (m70144c != null) {
                Object obj3 = this.f112751l;
                if ((obj3 instanceof InputStream) || (obj3 instanceof InputSource)) {
                    this.f112762w.put(obj3, m70144c);
                    if (this.f112752m) {
                        XSConstraints.fullSchemaChecking(this.f112756q, this.f112758s, this.f112759t, this.f112745f);
                    }
                }
                this.f112756q.putGrammar(m70144c);
                return;
            }
            return;
        }
        Class<?> cls = f112738Z;
        if (cls == null) {
            cls = class$(Constants.OBJECT_CLASS);
            f112738Z = cls;
        }
        if (componentType != cls) {
            Class<?> cls2 = f112739k0;
            if (cls2 == null) {
                cls2 = class$("java.lang.String");
                f112739k0 = cls2;
            }
            if (componentType != cls2) {
                Class<?> cls3 = f112740q0;
                if (cls3 == null) {
                    cls3 = class$("java.io.File");
                    f112740q0 = cls3;
                }
                if (componentType != cls3) {
                    Class<?> cls4 = f112741t0;
                    if (cls4 == null) {
                        cls4 = class$("java.io.InputStream");
                        f112741t0 = cls4;
                    }
                    if (componentType != cls4) {
                        Class<?> cls5 = f112742u0;
                        if (cls5 == null) {
                            cls5 = class$("org.xml.sax.InputSource");
                            f112742u0 = cls5;
                        }
                        if (componentType != cls5) {
                            Class cls6 = f112740q0;
                            if (cls6 == null) {
                                cls6 = class$("java.io.File");
                                f112740q0 = cls6;
                            }
                            if (!cls6.isAssignableFrom(componentType)) {
                                Class cls7 = f112741t0;
                                if (cls7 == null) {
                                    cls7 = class$("java.io.InputStream");
                                    f112741t0 = cls7;
                                }
                                if (!cls7.isAssignableFrom(componentType)) {
                                    Class cls8 = f112742u0;
                                    if (cls8 == null) {
                                        cls8 = class$("org.xml.sax.InputSource");
                                        f112742u0 = cls8;
                                    }
                                    if (!cls8.isAssignableFrom(componentType) && !componentType.isInterface()) {
                                        throw new XMLConfigurationException((short) 1, this.f112745f.getMessageFormatter("http://www.w3.org/TR/xml-schema-1").formatMessage(this.f112745f.getLocale(), "jaxp12-schema-source-type.2", new Object[]{componentType.getName()}));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        Object[] objArr = (Object[]) this.f112751l;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < objArr.length; i++) {
            Object obj4 = objArr[i];
            if ((!(obj4 instanceof InputStream) && !(obj4 instanceof InputSource)) || (schemaGrammar = (SchemaGrammar) this.f112762w.get(obj4)) == null) {
                this.f112760u.reset();
                XMLInputSource m70148h2 = m70148h(objArr[i]);
                String systemId2 = m70148h2.getSystemId();
                XSDDescription xSDDescription2 = this.f112760u;
                xSDDescription2.fContextType = (short) 3;
                if (systemId2 != null) {
                    xSDDescription2.setBaseSystemId(m70148h2.getBaseSystemId());
                    this.f112760u.setLiteralSystemId(systemId2);
                    this.f112760u.setExpandedSystemId(systemId2);
                    this.f112760u.fLocationHints = new String[]{systemId2};
                }
                schemaGrammar = this.f112755p.parseSchema(m70148h2, this.f112760u, hashtable);
                if (this.f112752m) {
                    XSConstraints.fullSchemaChecking(this.f112756q, this.f112758s, this.f112759t, this.f112745f);
                }
                if (schemaGrammar != null) {
                    String targetNamespace = schemaGrammar.getTargetNamespace();
                    if (arrayList.contains(targetNamespace)) {
                        throw new IllegalArgumentException(this.f112745f.getMessageFormatter("http://www.w3.org/TR/xml-schema-1").formatMessage(this.f112745f.getLocale(), "jaxp12-schema-source-ns", null));
                    }
                    arrayList.add(targetNamespace);
                    Object obj5 = objArr[i];
                    if ((obj5 instanceof InputStream) || (obj5 instanceof InputSource)) {
                        this.f112762w.put(obj5, schemaGrammar);
                    }
                } else {
                    continue;
                }
            }
            this.f112756q.putGrammar(schemaGrammar);
        }
    }

    /* renamed from: f */
    public void m70147f(Exception exc) {
        if (this.f112765z != null) {
            DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
            dOMErrorImpl.fException = exc;
            dOMErrorImpl.fMessage = exc.getMessage();
            dOMErrorImpl.fSeverity = (short) 3;
            this.f112765z.getErrorHandler().handleError(dOMErrorImpl);
        }
    }

    @Override // org.apache.xerces.p118xs.XSLoader
    public DOMConfiguration getConfig() {
        return this;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public XMLEntityResolver getEntityResolver() {
        return this.f112747h;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public XMLErrorHandler getErrorHandler() {
        return this.f112745f.getErrorHandler();
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public boolean getFeature(String str) throws XMLConfigurationException {
        return this.f112744e.getFeature(str);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        if (str.equals("http://apache.org/xml/features/validation/schema/augment-psvi")) {
            return Boolean.TRUE;
        }
        return null;
    }

    @Override // org.apache.xerces.impl.p117xs.XSElementDeclHelper
    public XSElementDecl getGlobalElementDecl(QName qName) {
        SchemaGrammar grammar = this.f112756q.getGrammar(qName.uri);
        if (grammar != null) {
            return grammar.getGlobalElementDecl(qName.localpart);
        }
        return null;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public Locale getLocale() {
        return this.f112763x;
    }

    @Override // org.w3c.dom.DOMConfiguration
    public Object getParameter(String str) throws DOMException {
        if (str.equals("error-handler")) {
            DOMErrorHandlerWrapper dOMErrorHandlerWrapper = this.f112765z;
            if (dOMErrorHandlerWrapper != null) {
                return dOMErrorHandlerWrapper.getErrorHandler();
            }
            return null;
        }
        if (!str.equals("resource-resolver")) {
            try {
                try {
                    return getFeature(str) ? Boolean.TRUE : Boolean.FALSE;
                } catch (Exception unused) {
                    return getProperty(str);
                }
            } catch (Exception unused2) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
            }
        }
        DOMEntityResolverWrapper dOMEntityResolverWrapper = this.f112743J;
        if (dOMEntityResolverWrapper != null) {
            return dOMEntityResolverWrapper.getEntityResolver();
        }
        return null;
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        if (this.f112764y == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("validate");
            arrayList.add("error-handler");
            arrayList.add("resource-resolver");
            arrayList.add("http://apache.org/xml/properties/internal/symbol-table");
            arrayList.add("http://apache.org/xml/properties/internal/error-reporter");
            arrayList.add("http://apache.org/xml/properties/internal/error-handler");
            arrayList.add("http://apache.org/xml/properties/internal/entity-resolver");
            arrayList.add("http://apache.org/xml/properties/internal/grammar-pool");
            arrayList.add(SCHEMA_LOCATION);
            arrayList.add(SCHEMA_NONS_LOCATION);
            arrayList.add("http://java.sun.com/xml/jaxp/properties/schemaSource");
            arrayList.add("http://apache.org/xml/features/validation/schema-full-checking");
            arrayList.add("http://apache.org/xml/features/continue-after-fatal-error");
            arrayList.add(ALLOW_JAVA_ENCODINGS);
            arrayList.add(STANDARD_URI_CONFORMANT_FEATURE);
            arrayList.add(VALIDATE_ANNOTATIONS);
            arrayList.add("http://apache.org/xml/features/generate-synthetic-annotations");
            arrayList.add(HONOUR_ALL_SCHEMALOCATIONS);
            arrayList.add(NAMESPACE_GROWTH);
            arrayList.add(TOLERATE_DUPLICATES);
            this.f112764y = new DOMStringListImpl(arrayList);
        }
        return this.f112764y;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public Object getProperty(String str) throws XMLConfigurationException {
        return this.f112744e.getProperty(str);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        return null;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f112736O.clone();
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f112737Q.clone();
    }

    /* renamed from: h */
    public final XMLInputSource m70148h(Object obj) {
        BufferedInputStream bufferedInputStream;
        XMLInputSource xMLInputSource;
        if (obj instanceof String) {
            String str = (String) obj;
            this.f112760u.reset();
            this.f112760u.setValues(null, str, null, null);
            try {
                xMLInputSource = this.f112746g.resolveEntity(this.f112760u);
            } catch (IOException unused) {
                this.f112745f.reportError("http://www.w3.org/TR/xml-schema-1", "schema_reference.4", new Object[]{str}, (short) 1);
                xMLInputSource = null;
            }
            return xMLInputSource == null ? new XMLInputSource(null, str, null) : xMLInputSource;
        }
        if (obj instanceof InputSource) {
            return m70141g((InputSource) obj);
        }
        if (obj instanceof InputStream) {
            return new XMLInputSource((String) null, (String) null, (String) null, (InputStream) obj, (String) null);
        }
        if (!(obj instanceof File)) {
            MessageFormatter messageFormatter = this.f112745f.getMessageFormatter("http://www.w3.org/TR/xml-schema-1");
            Locale locale = this.f112745f.getLocale();
            Object[] objArr = new Object[1];
            objArr[0] = obj != null ? obj.getClass().getName() : "null";
            throw new XMLConfigurationException((short) 1, messageFormatter.formatMessage(locale, "jaxp12-schema-source-type.1", objArr));
        }
        File file = (File) obj;
        String m53457a = chg.m53457a(file.getAbsolutePath());
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        } catch (FileNotFoundException unused2) {
            this.f112745f.reportError("http://www.w3.org/TR/xml-schema-1", "schema_reference.4", new Object[]{file.toString()}, (short) 1);
            bufferedInputStream = null;
        }
        return new XMLInputSource((String) null, m53457a, (String) null, bufferedInputStream, (String) null);
    }

    @Override // org.apache.xerces.p118xs.XSLoader
    public XSModel load(LSInput lSInput) {
        try {
            return ((XSGrammar) loadGrammar(m70142a(lSInput))).toXSModel();
        } catch (Exception e) {
            this.m70147f(e);
            return null;
        }
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public Grammar loadGrammar(XMLInputSource xMLInputSource) throws IOException, XNIException {
        XMLGrammarPool xMLGrammarPool;
        reset(this.f112744e);
        this.f112754o = false;
        XSDDescription xSDDescription = new XSDDescription();
        xSDDescription.fContextType = (short) 3;
        xSDDescription.setBaseSystemId(xMLInputSource.getBaseSystemId());
        xSDDescription.setLiteralSystemId(xMLInputSource.getSystemId());
        Hashtable hashtable = new Hashtable();
        processExternalHints(this.f112749j, this.f112750k, hashtable, this.f112745f);
        SchemaGrammar m70144c = m70144c(xSDDescription, xMLInputSource, hashtable);
        if (m70144c != null && (xMLGrammarPool = this.f112748i) != null) {
            xMLGrammarPool.cacheGrammars("http://www.w3.org/2001/XMLSchema", this.f112756q.getGrammars());
            if (this.f112752m && this.f112762w.get(m70144c) != m70144c) {
                XSConstraints.fullSchemaChecking(this.f112756q, this.f112758s, this.f112759t, this.f112745f);
            }
        }
        return m70144c;
    }

    @Override // org.apache.xerces.p118xs.XSLoader
    public XSModel loadInputList(LSInputList lSInputList) {
        int length = lSInputList.getLength();
        SchemaGrammar[] schemaGrammarArr = new SchemaGrammar[length];
        for (int i = 0; i < length; i++) {
            try {
                schemaGrammarArr[i] = (SchemaGrammar) loadGrammar(m70142a(lSInputList.item(i)));
            } catch (Exception e) {
                m70147f(e);
                return null;
            }
        }
        return new XSModelImpl(schemaGrammarArr);
    }

    @Override // org.apache.xerces.p118xs.XSLoader
    public XSModel loadURI(String str) {
        try {
            return ((XSGrammar) loadGrammar(new XMLInputSource(null, str, null))).toXSModel();
        } catch (Exception e) {
            this.m70147f(e);
            return null;
        }
    }

    @Override // org.apache.xerces.p118xs.XSLoader
    public XSModel loadURIList(StringList stringList) {
        int length = stringList.getLength();
        SchemaGrammar[] schemaGrammarArr = new SchemaGrammar[length];
        for (int i = 0; i < length; i++) {
            try {
                schemaGrammarArr[i] = (SchemaGrammar) loadGrammar(new XMLInputSource(null, stringList.item(i), null));
            } catch (Exception e) {
                m70147f(e);
                return null;
            }
        }
        return new XSModelImpl(schemaGrammarArr);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        SchemaDVFactory schemaDVFactory;
        this.f112756q.reset();
        this.f112758s.reset();
        if (!this.f112754o || !m70145d(xMLComponentManager)) {
            this.f112753n = false;
            m70143b();
            XSDeclarationPool xSDeclarationPool = this.f112757r;
            if (xSDeclarationPool != null) {
                xSDeclarationPool.reset();
                return;
            }
            return;
        }
        this.f112746g = (XMLEntityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        this.f112745f = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        try {
            schemaDVFactory = (SchemaDVFactory) xMLComponentManager.getProperty(SCHEMA_DV_FACTORY);
        } catch (XMLConfigurationException unused) {
            schemaDVFactory = null;
        }
        if (schemaDVFactory == null) {
            if (this.f112761v == null) {
                this.f112761v = SchemaDVFactory.getInstance();
            }
            schemaDVFactory = this.f112761v;
        }
        this.f112755p.setDVFactory(schemaDVFactory);
        try {
            this.f112749j = (String) xMLComponentManager.getProperty(SCHEMA_LOCATION);
            this.f112750k = (String) xMLComponentManager.getProperty(SCHEMA_NONS_LOCATION);
        } catch (XMLConfigurationException unused2) {
            this.f112749j = null;
            this.f112750k = null;
        }
        try {
            this.f112751l = xMLComponentManager.getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource");
            this.f112753n = false;
        } catch (XMLConfigurationException unused3) {
            this.f112751l = null;
            this.f112753n = false;
        }
        try {
            this.f112748i = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused4) {
            this.f112748i = null;
        }
        m70143b();
        try {
            xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema/augment-psvi");
        } catch (XMLConfigurationException unused5) {
        }
        this.f112759t.setDeclPool(null);
        this.f112755p.setDeclPool(null);
        if (schemaDVFactory instanceof SchemaDVFactoryImpl) {
            ((SchemaDVFactoryImpl) schemaDVFactory).setDeclPool(null);
        }
        try {
            this.f112745f.setFeature("http://apache.org/xml/features/continue-after-fatal-error", xMLComponentManager.getFeature("http://apache.org/xml/features/continue-after-fatal-error"));
        } catch (XMLConfigurationException unused6) {
        }
        try {
            this.f112752m = xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema-full-checking");
        } catch (XMLConfigurationException unused7) {
            this.f112752m = false;
        }
        try {
            this.f112755p.setGenerateSyntheticAnnotations(xMLComponentManager.getFeature("http://apache.org/xml/features/generate-synthetic-annotations"));
        } catch (XMLConfigurationException unused8) {
            this.f112755p.setGenerateSyntheticAnnotations(false);
        }
        this.f112755p.reset(xMLComponentManager);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        this.f112747h = xMLEntityResolver;
        this.f112744e.setProperty("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
        this.f112746g.setProperty("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public void setErrorHandler(XMLErrorHandler xMLErrorHandler) {
        this.f112745f.setProperty("http://apache.org/xml/properties/internal/error-handler", xMLErrorHandler);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader, org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        this.f112754o = true;
        if (str.equals("http://apache.org/xml/features/continue-after-fatal-error")) {
            this.f112745f.setFeature("http://apache.org/xml/features/continue-after-fatal-error", z);
        } else if (str.equals("http://apache.org/xml/features/generate-synthetic-annotations")) {
            this.f112755p.setGenerateSyntheticAnnotations(z);
        }
        this.f112744e.setFeature(str, z);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader
    public void setLocale(Locale locale) {
        this.f112763x = locale;
        this.f112745f.setLocale(locale);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public void setParameter(String str, Object obj) throws DOMException {
        if (obj instanceof Boolean) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (str.equals("validate") && booleanValue) {
                return;
            }
            try {
                setFeature(str, booleanValue);
                return;
            } catch (Exception unused) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
            }
        }
        if (str.equals("error-handler")) {
            if (!(obj instanceof DOMErrorHandler)) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
            }
            try {
                DOMErrorHandlerWrapper dOMErrorHandlerWrapper = new DOMErrorHandlerWrapper((DOMErrorHandler) obj);
                this.f112765z = dOMErrorHandlerWrapper;
                setErrorHandler(dOMErrorHandlerWrapper);
                return;
            } catch (XMLConfigurationException unused2) {
                return;
            }
        }
        if (!str.equals("resource-resolver")) {
            try {
                setProperty(str, obj);
            } catch (Exception unused3) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
            }
        } else {
            if (!(obj instanceof LSResourceResolver)) {
                throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{str}));
            }
            try {
                DOMEntityResolverWrapper dOMEntityResolverWrapper = new DOMEntityResolverWrapper((LSResourceResolver) obj);
                this.f112743J = dOMEntityResolverWrapper;
                setEntityResolver(dOMEntityResolverWrapper);
            } catch (XMLConfigurationException unused4) {
            }
        }
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarLoader, org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        this.f112754o = true;
        this.f112744e.setProperty(str, obj);
        if (str.equals("http://java.sun.com/xml/jaxp/properties/schemaSource")) {
            this.f112751l = obj;
            this.f112753n = false;
            return;
        }
        if (str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
            this.f112748i = (XMLGrammarPool) obj;
            return;
        }
        if (str.equals(SCHEMA_LOCATION)) {
            this.f112749j = (String) obj;
            return;
        }
        if (str.equals(SCHEMA_NONS_LOCATION)) {
            this.f112750k = (String) obj;
            return;
        }
        if (str.equals("http://apache.org/xml/properties/locale")) {
            setLocale((Locale) obj);
            return;
        }
        if (str.equals("http://apache.org/xml/properties/internal/entity-resolver")) {
            this.f112746g.setProperty("http://apache.org/xml/properties/internal/entity-resolver", obj);
            return;
        }
        if (str.equals("http://apache.org/xml/properties/internal/error-reporter")) {
            XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) obj;
            this.f112745f = xMLErrorReporter;
            if (xMLErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
                this.f112745f.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
            }
        }
    }

    public XMLSchemaLoader(XMLErrorReporter xMLErrorReporter, XSGrammarBucket xSGrammarBucket, SubstitutionGroupHandler substitutionGroupHandler, CMBuilder cMBuilder) {
        this(null, xMLErrorReporter, null, xSGrammarBucket, substitutionGroupHandler, cMBuilder);
    }

    public void loadGrammar(XMLInputSource[] xMLInputSourceArr) throws IOException, XNIException {
        for (XMLInputSource xMLInputSource : xMLInputSourceArr) {
            loadGrammar(xMLInputSource);
        }
    }

    public XMLSchemaLoader(SymbolTable symbolTable) {
        this(symbolTable, null, new XMLEntityManager(), null, null, null);
    }

    public XMLSchemaLoader(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager, XSGrammarBucket xSGrammarBucket, SubstitutionGroupHandler substitutionGroupHandler, CMBuilder cMBuilder) {
        ParserConfigurationSettings parserConfigurationSettings = new ParserConfigurationSettings();
        this.f112744e = parserConfigurationSettings;
        this.f112745f = new XMLErrorReporter();
        this.f112746g = null;
        this.f112747h = null;
        this.f112748i = null;
        this.f112749j = null;
        this.f112750k = null;
        this.f112751l = null;
        this.f112752m = false;
        this.f112753n = false;
        this.f112754o = true;
        this.f112757r = null;
        this.f112760u = new XSDDescription();
        this.f112763x = Locale.getDefault();
        this.f112764y = null;
        this.f112765z = null;
        this.f112743J = null;
        parserConfigurationSettings.addRecognizedFeatures(f112736O);
        parserConfigurationSettings.addRecognizedProperties(f112737Q);
        if (symbolTable != null) {
            parserConfigurationSettings.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
        }
        if (xMLErrorReporter == null) {
            xMLErrorReporter = new XMLErrorReporter();
            xMLErrorReporter.setLocale(this.f112763x);
            xMLErrorReporter.setProperty("http://apache.org/xml/properties/internal/error-handler", new DefaultErrorHandler());
        }
        this.f112745f = xMLErrorReporter;
        if (xMLErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
            this.f112745f.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
        }
        parserConfigurationSettings.setProperty("http://apache.org/xml/properties/internal/error-reporter", this.f112745f);
        this.f112746g = xMLEntityManager;
        if (xMLEntityManager != null) {
            parserConfigurationSettings.setProperty("http://apache.org/xml/properties/internal/entity-manager", xMLEntityManager);
        }
        parserConfigurationSettings.setFeature("http://apache.org/xml/features/validation/schema/augment-psvi", true);
        this.f112756q = xSGrammarBucket == null ? new XSGrammarBucket() : xSGrammarBucket;
        this.f112758s = substitutionGroupHandler == null ? new SubstitutionGroupHandler(this) : substitutionGroupHandler;
        this.f112759t = cMBuilder == null ? new CMBuilder(new CMNodeFactory()) : cMBuilder;
        this.f112755p = new XSDHandler(this.f112756q);
        this.f112762w = new WeakHashMap();
        this.f112754o = true;
    }
}
