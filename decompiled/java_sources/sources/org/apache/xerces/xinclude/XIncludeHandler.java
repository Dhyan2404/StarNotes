package org.apache.xerces.xinclude;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sunia.HTREnginev2.gon;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Stack;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.io.MalformedByteSequenceException;
import org.apache.xerces.util.AugmentationsImpl;
import org.apache.xerces.util.HTTPInputSource;
import org.apache.xerces.util.IntStack;
import org.apache.xerces.util.ParserConfigurationSettings;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.URI;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLLocatorWrapper;
import org.apache.xerces.util.XMLResourceIdentifierImpl;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDTDFilter;
import org.apache.xerces.xni.parser.XMLDTDSource;
import org.apache.xerces.xni.parser.XMLDocumentFilter;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.apache.xerces.xpointer.XPointerHandler;
import org.apache.xerces.xpointer.XPointerProcessor;

/* loaded from: classes13.dex */
public class XIncludeHandler implements XMLComponent, XMLDocumentFilter, XMLDTDFilter {
    protected static final String ALLOW_UE_AND_NOTATION_EVENTS = "http://xml.org/sax/features/allow-dtd-events-after-endDTD";
    protected static final String BUFFER_SIZE = "http://apache.org/xml/properties/input-buffer-size";
    public static final String CURRENT_BASE_URI = "currentBaseURI";
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    public static final String HTTP_ACCEPT = "Accept";
    public static final String HTTP_ACCEPT_LANGUAGE = "Accept-Language";

    /* renamed from: J */
    public static final int f113545J = 3;
    protected static final String JAXP_SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";

    /* renamed from: O */
    public static final String[] f113546O;
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";

    /* renamed from: Q */
    public static final Boolean[] f113547Q;
    protected static final String SCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    public static final String XINCLUDE_DEFAULT_CONFIGURATION = "org.apache.xerces.parsers.XIncludeParserConfiguration";
    protected static final String XINCLUDE_FIXUP_BASE_URIS = "http://apache.org/xml/features/xinclude/fixup-base-uris";
    protected static final String XINCLUDE_FIXUP_LANGUAGE = "http://apache.org/xml/features/xinclude/fixup-language";
    public static final String XPOINTER = "xpointer";

    /* renamed from: Z */
    public static final String[] f113548Z;

    /* renamed from: k0 */
    public static final Object[] f113549k0;

    /* renamed from: q0 */
    public static final int f113550q0 = 8;

    /* renamed from: t */
    public static final String f113551t;

    /* renamed from: t0 */
    public static final boolean[] f113552t0;

    /* renamed from: u */
    public static final QName f113553u;

    /* renamed from: u0 */
    public static final char[] f113554u0;

    /* renamed from: v */
    public static final String f113555v;

    /* renamed from: v0 */
    public static final char[] f113556v0;

    /* renamed from: w */
    public static final QName f113557w;

    /* renamed from: w0 */
    public static final char[] f113558w0;

    /* renamed from: x */
    public static final QName f113559x;

    /* renamed from: y */
    public static final int f113560y = 1;

    /* renamed from: z */
    public static final int f113561z = 2;

    /* renamed from: f */
    public int f113563f;
    protected final Stack fBaseURI;
    protected final IntStack fBaseURIScope;
    protected XMLParserConfiguration fChildConfig;
    protected final XMLResourceIdentifier fCurrentBaseURI;
    protected String fCurrentLanguage;
    protected XMLDTDHandler fDTDHandler;
    protected XMLDTDSource fDTDSource;
    protected XMLLocator fDocLocation;
    protected XMLDocumentHandler fDocumentHandler;
    protected XMLDocumentSource fDocumentSource;
    protected XMLEntityResolver fEntityResolver;
    protected XMLErrorReporter fErrorReporter;
    protected final Stack fExpandedSystemID;
    protected String fHrefFromParent;
    protected final IntStack fLanguageScope;
    protected final Stack fLanguageStack;
    protected final Stack fLiteralSystemID;
    protected XIncludeNamespaceSupport fNamespaceContext;
    protected String fParentRelativeURI;
    protected XIncludeHandler fParentXIncludeHandler;
    protected SecurityManager fSecurityManager;
    protected ParserConfigurationSettings fSettings;
    protected SymbolTable fSymbolTable;
    protected XIncludeTextReader fXInclude10TextReader;
    protected XIncludeTextReader fXInclude11TextReader;
    protected XMLParserConfiguration fXIncludeChildConfig;
    protected XMLParserConfiguration fXPointerChildConfig;

    /* renamed from: g */
    public boolean[] f113564g;

    /* renamed from: h */
    public boolean[] f113565h;

    /* renamed from: i */
    public int[] f113566i;

    /* renamed from: j */
    public final ArrayList f113567j;

    /* renamed from: k */
    public final ArrayList f113568k;

    /* renamed from: n */
    public boolean f113571n;

    /* renamed from: o */
    public boolean f113572o;

    /* renamed from: p */
    public boolean f113573p;

    /* renamed from: q */
    public boolean f113574q;

    /* renamed from: r */
    public boolean f113575r;
    public static final String XINCLUDE_NS_URI = "http://www.w3.org/2001/XInclude".intern();
    public static final String XINCLUDE_INCLUDE = "include".intern();
    public static final String XINCLUDE_FALLBACK = Constants.ELEMNAME_FALLBACK_STRING.intern();
    public static final String XINCLUDE_PARSE_XML = "xml".intern();
    public static final String XINCLUDE_PARSE_TEXT = "text".intern();
    public static final String XINCLUDE_ATTR_HREF = "href".intern();
    public static final String XINCLUDE_ATTR_PARSE = "parse".intern();
    public static final String XINCLUDE_ATTR_ENCODING = "encoding".intern();
    public static final String XINCLUDE_ATTR_ACCEPT = "accept".intern();
    public static final String XINCLUDE_ATTR_ACCEPT_LANGUAGE = "accept-language".intern();
    public static final String XINCLUDE_INCLUDED = "[included]".intern();
    protected int fBufferSize = 2048;
    protected XPointerProcessor fXPtrProcessor = null;
    protected XMLLocatorWrapper fXIncludeLocator = new XMLLocatorWrapper();
    protected XIncludeMessageFormatter fXIncludeMessageFormatter = new XIncludeMessageFormatter();

    /* renamed from: l */
    public boolean f113569l = true;

    /* renamed from: m */
    public boolean f113570m = true;

    /* renamed from: s */
    public boolean f113576s = true;

    /* renamed from: e */
    public int f113562e = 0;

    /* loaded from: classes13.dex */
    public static class Notation {
        public Augmentations augmentations;
        public String baseURI;
        public String expandedSystemId;
        public String name;
        public String publicId;
        public String systemId;

        /* renamed from: a */
        public final boolean m70629a(String str, String str2) {
            return str == str2 || (str != null && str.equals(str2));
        }

        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof Notation)) {
                return this.name.equals(((Notation) obj).name);
            }
            return false;
        }

        public boolean isDuplicate(Object obj) {
            if (obj == null || !(obj instanceof Notation)) {
                return false;
            }
            Notation notation = (Notation) obj;
            return this.name.equals(notation.name) && m70629a(this.publicId, notation.publicId) && m70629a(this.expandedSystemId, notation.expandedSystemId);
        }
    }

    /* loaded from: classes13.dex */
    public static class UnparsedEntity {
        public Augmentations augmentations;
        public String baseURI;
        public String expandedSystemId;
        public String name;
        public String notation;
        public String publicId;
        public String systemId;

        /* renamed from: a */
        public final boolean m70630a(String str, String str2) {
            return str == str2 || (str != null && str.equals(str2));
        }

        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof UnparsedEntity)) {
                return this.name.equals(((UnparsedEntity) obj).name);
            }
            return false;
        }

        public boolean isDuplicate(Object obj) {
            if (obj == null || !(obj instanceof UnparsedEntity)) {
                return false;
            }
            UnparsedEntity unparsedEntity = (UnparsedEntity) obj;
            return this.name.equals(unparsedEntity.name) && m70630a(this.publicId, unparsedEntity.publicId) && m70630a(this.expandedSystemId, unparsedEntity.expandedSystemId) && m70630a(this.notation, unparsedEntity.notation);
        }
    }

    static {
        String intern = gon.f71271X.intern();
        f113551t = intern;
        String str = XMLSymbols.PREFIX_XML;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(":");
        stringBuffer.append(intern);
        String intern2 = stringBuffer.toString().intern();
        String str2 = NamespaceContext.XML_URI;
        f113553u = new QName(str, intern, intern2, str2);
        String intern3 = "lang".intern();
        f113555v = intern3;
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(str);
        stringBuffer2.append(":");
        stringBuffer2.append(intern3);
        f113557w = new QName(str, intern3, stringBuffer2.toString().intern(), str2);
        String str3 = XMLSymbols.PREFIX_XMLNS;
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(str3);
        stringBuffer3.append(":");
        f113559x = new QName(str3, "", stringBuffer3.toString(), NamespaceContext.XMLNS_URI);
        f113546O = new String[]{ALLOW_UE_AND_NOTATION_EVENTS, XINCLUDE_FIXUP_BASE_URIS, XINCLUDE_FIXUP_LANGUAGE};
        Boolean bool = Boolean.TRUE;
        f113547Q = new Boolean[]{bool, bool, bool};
        f113548Z = new String[]{"http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/security-manager", "http://apache.org/xml/properties/input-buffer-size"};
        f113549k0 = new Object[]{null, null, null, new Integer(2048)};
        f113552t0 = new boolean[128];
        f113554u0 = new char[128];
        f113556v0 = new char[128];
        f113558w0 = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr = {' ', '<', '>', '\"', '{', '}', '|', '\\', '^', '`'};
        for (int i = 0; i < 10; i++) {
            char c = cArr[i];
            f113552t0[c] = true;
            char[] cArr2 = f113554u0;
            char[] cArr3 = f113558w0;
            cArr2[c] = cArr3[c >> 4];
            f113556v0[c] = cArr3[c & 15];
        }
    }

    public XIncludeHandler() {
        boolean[] zArr = new boolean[8];
        this.f113564g = zArr;
        boolean[] zArr2 = new boolean[8];
        this.f113565h = zArr2;
        int[] iArr = new int[8];
        this.f113566i = iArr;
        zArr2[0] = false;
        zArr[0] = false;
        iArr[0] = 1;
        this.f113567j = new ArrayList();
        this.f113568k = new ArrayList();
        this.fBaseURIScope = new IntStack();
        this.fBaseURI = new Stack();
        this.fLiteralSystemID = new Stack();
        this.fExpandedSystemID = new Stack();
        this.fCurrentBaseURI = new XMLResourceIdentifierImpl();
        this.fLanguageScope = new IntStack();
        this.fLanguageStack = new Stack();
        this.fCurrentLanguage = null;
    }

    /* renamed from: A */
    public final boolean m70611A(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (charAt < ' ' || charAt > '~') {
                return false;
            }
        }
        return true;
    }

    /* renamed from: B */
    public final void m70612B(String str, Object[] objArr, short s, Exception exc) {
        XMLErrorReporter xMLErrorReporter = this.fErrorReporter;
        if (xMLErrorReporter != null) {
            xMLErrorReporter.reportError("http://www.w3.org/TR/xinclude", str, objArr, s, exc);
        }
    }

    /* renamed from: C */
    public final int m70613C(int i) {
        for (int size = this.fBaseURIScope.size() - 1; size >= 0; size--) {
            if (this.fBaseURIScope.elementAt(size) <= i) {
                return size;
            }
        }
        return -1;
    }

    /* renamed from: D */
    public final int m70614D(int i) {
        for (int size = this.fLanguageScope.size() - 1; size >= 0; size--) {
            if (this.fLanguageScope.elementAt(size) <= i) {
                return size;
            }
        }
        return -1;
    }

    /* renamed from: E */
    public final void m70615E(XMLErrorReporter xMLErrorReporter) {
        this.fErrorReporter = xMLErrorReporter;
        if (xMLErrorReporter != null) {
            xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/xinclude", this.fXIncludeMessageFormatter);
            XMLLocator xMLLocator = this.fDocLocation;
            if (xMLLocator != null) {
                this.fErrorReporter.setDocumentLocator(xMLLocator);
            }
        }
    }

    /* renamed from: F */
    public final void m70616F(boolean z) {
        if (isRootDocument()) {
            this.f113575r = z;
        } else {
            this.fParentXIncludeHandler.m70616F(z);
        }
    }

    public void addNotation(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) {
        Notation notation = new Notation();
        notation.name = str;
        notation.systemId = xMLResourceIdentifier.getLiteralSystemId();
        notation.publicId = xMLResourceIdentifier.getPublicId();
        notation.baseURI = xMLResourceIdentifier.getBaseSystemId();
        notation.expandedSystemId = xMLResourceIdentifier.getExpandedSystemId();
        notation.augmentations = augmentations;
        this.f113567j.add(notation);
    }

    public void addUnparsedEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) {
        UnparsedEntity unparsedEntity = new UnparsedEntity();
        unparsedEntity.name = str;
        unparsedEntity.systemId = xMLResourceIdentifier.getLiteralSystemId();
        unparsedEntity.publicId = xMLResourceIdentifier.getPublicId();
        unparsedEntity.baseURI = xMLResourceIdentifier.getBaseSystemId();
        unparsedEntity.expandedSystemId = xMLResourceIdentifier.getExpandedSystemId();
        unparsedEntity.notation = str2;
        unparsedEntity.augmentations = augmentations;
        this.f113568k.add(unparsedEntity);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.attributeDecl(str, str2, str3, strArr, str4, xMLString, xMLString2, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (getState() == 1) {
            if (this.f113563f == 0) {
                m70618p(xMLString);
            } else if (this.fDocumentHandler != null) {
                this.f113562e++;
                this.fDocumentHandler.characters(xMLString, modifyAugmentations(augmentations));
                this.f113562e--;
            }
        }
    }

    public void checkAndSendNotation(Notation notation) {
        XMLDTDHandler xMLDTDHandler;
        if (!isRootDocument()) {
            this.fParentXIncludeHandler.checkAndSendNotation(notation);
            return;
        }
        int indexOf = this.f113567j.indexOf(notation);
        if (indexOf != -1) {
            if (notation.isDuplicate((Notation) this.f113567j.get(indexOf))) {
                return;
            }
            reportFatalError("NonDuplicateNotation", new Object[]{notation.name});
        } else {
            XMLResourceIdentifierImpl xMLResourceIdentifierImpl = new XMLResourceIdentifierImpl(notation.publicId, notation.systemId, notation.baseURI, notation.expandedSystemId);
            addNotation(notation.name, xMLResourceIdentifierImpl, notation.augmentations);
            if (!this.f113571n || (xMLDTDHandler = this.fDTDHandler) == null) {
                return;
            }
            xMLDTDHandler.notationDecl(notation.name, xMLResourceIdentifierImpl, notation.augmentations);
        }
    }

    public void checkAndSendUnparsedEntity(UnparsedEntity unparsedEntity) {
        XMLDTDHandler xMLDTDHandler;
        if (!isRootDocument()) {
            this.fParentXIncludeHandler.checkAndSendUnparsedEntity(unparsedEntity);
            return;
        }
        int indexOf = this.f113568k.indexOf(unparsedEntity);
        if (indexOf != -1) {
            if (unparsedEntity.isDuplicate((UnparsedEntity) this.f113568k.get(indexOf))) {
                return;
            }
            reportFatalError("NonDuplicateUnparsedEntity", new Object[]{unparsedEntity.name});
        } else {
            XMLResourceIdentifierImpl xMLResourceIdentifierImpl = new XMLResourceIdentifierImpl(unparsedEntity.publicId, unparsedEntity.systemId, unparsedEntity.baseURI, unparsedEntity.expandedSystemId);
            addUnparsedEntity(unparsedEntity.name, xMLResourceIdentifierImpl, unparsedEntity.notation, unparsedEntity.augmentations);
            if (!this.f113571n || (xMLDTDHandler = this.fDTDHandler) == null) {
                return;
            }
            xMLDTDHandler.unparsedEntityDecl(unparsedEntity.name, xMLResourceIdentifierImpl, unparsedEntity.notation, unparsedEntity.augmentations);
        }
    }

    public void checkNotation(String str) {
        Notation notation = new Notation();
        notation.name = str;
        int indexOf = this.f113567j.indexOf(notation);
        if (indexOf != -1) {
            checkAndSendNotation((Notation) this.f113567j.get(indexOf));
        }
    }

    public void checkUnparsedEntity(String str) {
        UnparsedEntity unparsedEntity = new UnparsedEntity();
        unparsedEntity.name = str;
        int indexOf = this.f113568k.indexOf(unparsedEntity);
        if (indexOf != -1) {
            UnparsedEntity unparsedEntity2 = (UnparsedEntity) this.f113568k.get(indexOf);
            checkNotation(unparsedEntity2.notation);
            checkAndSendUnparsedEntity(unparsedEntity2);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f113573p) {
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.comment(xMLString, augmentations);
                return;
            }
            return;
        }
        if (this.fDocumentHandler == null || getState() != 1) {
            return;
        }
        this.f113562e++;
        this.fDocumentHandler.comment(xMLString, modifyAugmentations(augmentations));
        this.f113562e--;
    }

    public void copyFeatures(XMLComponentManager xMLComponentManager, ParserConfigurationSettings parserConfigurationSettings) {
        m70619q(org.apache.xerces.impl.Constants.getXercesFeatures(), "http://apache.org/xml/features/", xMLComponentManager, parserConfigurationSettings);
        m70619q(org.apache.xerces.impl.Constants.getSAXFeatures(), "http://xml.org/sax/features/", xMLComponentManager, parserConfigurationSettings);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        if (!isRootDocument() || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        xMLDocumentHandler.doctypeDecl(str, str2, str3, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.elementDecl(str, str2, augmentations);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0087, code lost:
    
        if (r5.fDocumentHandler != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009b, code lost:
    
        r5.fDocumentHandler.emptyElement(r6, processAttributes(r7), modifyAugmentations(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0099, code lost:
    
        if (r5.fDocumentHandler != null) goto L43;
     */
    @Override // org.apache.xerces.xni.XMLDocumentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void emptyElement(org.apache.xerces.xni.QName r6, org.apache.xerces.xni.XMLAttributes r7, org.apache.xerces.xni.Augmentations r8) throws org.apache.xerces.xni.XNIException {
        /*
            r5 = this;
            int r0 = r5.f113562e
            r1 = 1
            int r0 = r0 + r1
            r5.f113562e = r0
            int r0 = r0 - r1
            int r0 = r5.getState(r0)
            r2 = 2
            r3 = 3
            if (r0 != r3) goto L1c
            int r4 = r5.f113562e
            int r4 = r4 - r2
            int r4 = r5.getState(r4)
            if (r4 != r3) goto L1c
            r5.setState(r2)
            goto L1f
        L1c:
            r5.setState(r0)
        L1f:
            r5.processXMLBaseAttributes(r7)
            boolean r0 = r5.f113570m
            if (r0 == 0) goto L29
            r5.processXMLLangAttributes(r7)
        L29:
            boolean r0 = r5.isIncludeElement(r6)
            if (r0 == 0) goto L40
            boolean r6 = r5.handleIncludeElement(r7)
            if (r6 == 0) goto L3a
            r5.setState(r2)
            goto La8
        L3a:
            java.lang.String r6 = "NoFallback"
            r5.reportFatalError(r6)
            goto La8
        L40:
            boolean r0 = r5.isFallbackElement(r6)
            if (r0 == 0) goto L4a
            r5.handleFallbackElement()
            goto La8
        L4a:
            boolean r0 = r5.hasXIncludeNamespace(r6)
            if (r0 == 0) goto L8a
            int r0 = r5.f113562e
            int r0 = r0 - r1
            boolean r0 = r5.getSawInclude(r0)
            if (r0 == 0) goto L64
            java.lang.String r0 = r6.rawname
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r2 = "IncludeChild"
            r5.reportFatalError(r2, r0)
        L64:
            int r0 = r5.f113562e
            int r0 = r0 - r1
            boolean r0 = r5.getSawFallback(r0)
            if (r0 == 0) goto L78
            java.lang.String r0 = r6.rawname
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r2 = "FallbackChild"
            r5.reportFatalError(r2, r0)
        L78:
            int r0 = r5.getState()
            if (r0 != r1) goto La8
            int r0 = r5.f113563f
            if (r0 != 0) goto L85
            r5.m70617o()
        L85:
            org.apache.xerces.xni.XMLDocumentHandler r0 = r5.fDocumentHandler
            if (r0 == 0) goto La8
            goto L9b
        L8a:
            int r0 = r5.getState()
            if (r0 != r1) goto La8
            int r0 = r5.f113563f
            if (r0 != 0) goto L97
            r5.m70617o()
        L97:
            org.apache.xerces.xni.XMLDocumentHandler r0 = r5.fDocumentHandler
            if (r0 == 0) goto La8
        L9b:
            org.apache.xerces.xni.Augmentations r8 = r5.modifyAugmentations(r8)
            org.apache.xerces.xni.XMLAttributes r7 = r5.processAttributes(r7)
            org.apache.xerces.xni.XMLDocumentHandler r0 = r5.fDocumentHandler
            r0.emptyElement(r6, r7, r8)
        La8:
            int r6 = r5.f113562e
            int r6 = r6 + r1
            r7 = 0
            r5.setSawFallback(r6, r7)
            int r6 = r5.f113562e
            r5.setSawInclude(r6, r7)
            org.apache.xerces.util.IntStack r6 = r5.fBaseURIScope
            int r6 = r6.size()
            if (r6 <= 0) goto Lc9
            int r6 = r5.f113562e
            org.apache.xerces.util.IntStack r7 = r5.fBaseURIScope
            int r7 = r7.peek()
            if (r6 != r7) goto Lc9
            r5.restoreBaseURI()
        Lc9:
            int r6 = r5.f113562e
            int r6 = r6 - r1
            r5.f113562e = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.xinclude.XIncludeHandler.emptyElement(org.apache.xerces.xni.QName, org.apache.xerces.xni.XMLAttributes, org.apache.xerces.xni.Augmentations):void");
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endAttlist(Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endAttlist(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1 || this.f113563f == 0) {
            return;
        }
        this.fDocumentHandler.endCDATA(augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endConditional(Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endConditional(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endDTD(Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endDTD(augmentations);
        }
        this.f113573p = false;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        if (isRootDocument()) {
            if (!this.f113575r) {
                reportFatalError("RootElementRequired");
            }
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.endDocument(augmentations);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        if (isIncludeElement(qName) && getState() == 3 && !getSawFallback(this.f113562e + 1)) {
            reportFatalError("NoFallback");
        }
        if (isFallbackElement(qName)) {
            if (getState() == 1) {
                setState(2);
            }
        } else if (getState() == 1) {
            this.f113563f--;
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.endElement(qName, augmentations);
            }
        }
        setSawFallback(this.f113562e + 1, false);
        setSawInclude(this.f113562e, false);
        if (this.fBaseURIScope.size() > 0 && this.f113562e == this.fBaseURIScope.peek()) {
            restoreBaseURI();
        }
        if (this.fLanguageScope.size() > 0 && this.f113562e == this.fLanguageScope.peek()) {
            this.fCurrentLanguage = restoreLanguage();
        }
        this.f113562e--;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endExternalSubset(Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endExternalSubset(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1 || this.f113563f == 0) {
            return;
        }
        this.fDocumentHandler.endGeneralEntity(str, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endParameterEntity(str, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.externalEntityDecl(str, xMLResourceIdentifier, augmentations);
        }
    }

    public String getBaseURI(int i) {
        return (String) this.fExpandedSystemID.elementAt(m70613C(i));
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDSource
    public XMLDTDHandler getDTDHandler() {
        return this.fDTDHandler;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public XMLDTDSource getDTDSource() {
        return this.fDTDSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.fDocumentSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f113546O;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f113547Q[i];
            }
            i++;
        }
    }

    public String getLanguage(int i) {
        return (String) this.fLanguageStack.elementAt(m70614D(i));
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f113548Z;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f113549k0[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f113546O.clone();
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f113548Z.clone();
    }

    public String getRelativeBaseURI() throws URI.MalformedURIException {
        int m70624v = m70624v();
        String relativeURI = getRelativeURI(m70624v);
        if (isRootDocument()) {
            return relativeURI;
        }
        if (relativeURI.length() == 0) {
            relativeURI = this.fCurrentBaseURI.getLiteralSystemId();
        }
        if (m70624v != 0) {
            return relativeURI;
        }
        if (this.fParentRelativeURI == null) {
            this.fParentRelativeURI = this.fParentXIncludeHandler.getRelativeBaseURI();
        }
        if (this.fParentRelativeURI.length() == 0) {
            return relativeURI;
        }
        URI uri = new URI(this.fParentRelativeURI, true);
        URI uri2 = new URI(uri, relativeURI);
        if (!m70628z(uri.getScheme(), uri2.getScheme())) {
            return relativeURI;
        }
        if (!m70628z(uri.getAuthority(), uri2.getAuthority())) {
            return uri2.getSchemeSpecificPart();
        }
        String path = uri2.getPath();
        String queryString = uri2.getQueryString();
        String fragment = uri2.getFragment();
        if (queryString == null && fragment == null) {
            return path;
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (path != null) {
            stringBuffer.append(path);
        }
        if (queryString != null) {
            stringBuffer.append('?');
            stringBuffer.append(queryString);
        }
        if (fragment != null) {
            stringBuffer.append('#');
            stringBuffer.append(fragment);
        }
        return stringBuffer.toString();
    }

    public String getRelativeURI(int i) throws URI.MalformedURIException {
        int m70613C = m70613C(i) + 1;
        if (m70613C == this.fBaseURIScope.size()) {
            return "";
        }
        URI uri = new URI("file", (String) this.fLiteralSystemID.elementAt(m70613C));
        int i2 = m70613C + 1;
        while (i2 < this.fBaseURIScope.size()) {
            URI uri2 = new URI(uri, (String) this.fLiteralSystemID.elementAt(i2));
            i2++;
            uri = uri2;
        }
        return uri.getPath();
    }

    public boolean getSawFallback(int i) {
        boolean[] zArr = this.f113565h;
        if (i >= zArr.length) {
            return false;
        }
        return zArr[i];
    }

    public boolean getSawInclude(int i) {
        boolean[] zArr = this.f113564g;
        if (i >= zArr.length) {
            return false;
        }
        return zArr[i];
    }

    public int getState() {
        return this.f113566i[this.f113562e];
    }

    public void handleFallbackElement() {
        if (!getSawInclude(this.f113562e - 1)) {
            if (getState() == 2) {
                return;
            } else {
                reportFatalError("FallbackParent");
            }
        }
        setSawInclude(this.f113562e, false);
        this.fNamespaceContext.setContextInvalid();
        if (getSawFallback(this.f113562e)) {
            reportFatalError("MultipleFallbacks");
        } else {
            setSawFallback(this.f113562e, true);
        }
        if (getState() == 3) {
            setState(1);
        }
    }

    public boolean handleIncludeElement(XMLAttributes xMLAttributes) throws XNIException {
        String str;
        String str2;
        String str3;
        String str4;
        XMLInputSource resolveEntity;
        XIncludeTextReader xIncludeTextReader;
        if (getSawInclude(this.f113562e - 1)) {
            reportFatalError("IncludeChild", new Object[]{XINCLUDE_INCLUDE});
        }
        if (getState() == 2) {
            return true;
        }
        setSawInclude(this.f113562e, true);
        this.fNamespaceContext.setContextInvalid();
        String value = xMLAttributes.getValue(XINCLUDE_ATTR_HREF);
        String value2 = xMLAttributes.getValue(XINCLUDE_ATTR_PARSE);
        String value3 = xMLAttributes.getValue("xpointer");
        String value4 = xMLAttributes.getValue(XINCLUDE_ATTR_ACCEPT);
        String value5 = xMLAttributes.getValue(XINCLUDE_ATTR_ACCEPT_LANGUAGE);
        if (value2 == null) {
            value2 = XINCLUDE_PARSE_XML;
        }
        String str5 = value2;
        if (value == null) {
            value = XMLSymbols.EMPTY_STRING;
        }
        XIncludeTextReader xIncludeTextReader2 = null;
        if (value.length() == 0 && XINCLUDE_PARSE_XML.equals(str5)) {
            if (value3 != null) {
                XMLErrorReporter xMLErrorReporter = this.fErrorReporter;
                reportResourceError("XMLResourceError", new Object[]{value, this.fXIncludeMessageFormatter.formatMessage(xMLErrorReporter != null ? xMLErrorReporter.getLocale() : null, "XPointerStreamability", null)});
                return false;
            }
            reportFatalError("XpointerMissing");
        }
        try {
            if (new URI(value, true).getFragment() != null) {
                reportFatalError("HrefFragmentIdentifierIllegal", new Object[]{value});
            }
        } catch (URI.MalformedURIException unused) {
            String m70622t = m70622t(value);
            if (value != m70622t) {
                try {
                    if (new URI(m70622t, true).getFragment() != null) {
                        reportFatalError("HrefFragmentIdentifierIllegal", new Object[]{m70622t});
                    }
                } catch (URI.MalformedURIException unused2) {
                    reportFatalError("HrefSyntacticallyInvalid", new Object[]{m70622t});
                }
                str = m70622t;
            } else {
                reportFatalError("HrefSyntacticallyInvalid", new Object[]{value});
            }
        }
        str = value;
        if (value4 == null || m70611A(value4)) {
            str2 = value4;
        } else {
            reportFatalError("AcceptMalformed", null);
            str2 = null;
        }
        if (value5 == null || m70611A(value5)) {
            str3 = value5;
        } else {
            reportFatalError("AcceptLanguageMalformed", null);
            str3 = null;
        }
        if (this.fEntityResolver != null) {
            try {
                resolveEntity = this.fEntityResolver.resolveEntity(new XMLResourceIdentifierImpl(null, str, this.fCurrentBaseURI.getExpandedSystemId(), XMLEntityManager.expandSystemId(str, this.fCurrentBaseURI.getExpandedSystemId(), false)));
                if (resolveEntity == null || (resolveEntity instanceof HTTPInputSource) || !((str2 != null || str3 != null) && resolveEntity.getCharacterStream() == null && resolveEntity.getByteStream() == null)) {
                    str4 = str;
                } else {
                    str4 = str;
                    try {
                        resolveEntity = m70621s(resolveEntity.getPublicId(), resolveEntity.getSystemId(), resolveEntity.getBaseSystemId(), str2, str3);
                    } catch (IOException e) {
                        e = e;
                        reportResourceError("XMLResourceError", new Object[]{str4, e.getMessage()}, e);
                        return false;
                    }
                }
            } catch (IOException e2) {
                e = e2;
                str4 = str;
            }
        } else {
            str4 = str;
            resolveEntity = null;
        }
        if (resolveEntity == null) {
            resolveEntity = (str2 == null && str3 == null) ? new XMLInputSource(null, str4, this.fCurrentBaseURI.getExpandedSystemId()) : m70621s(null, str4, this.fCurrentBaseURI.getExpandedSystemId(), str2, str3);
        }
        if (str5.equals(XINCLUDE_PARSE_XML)) {
            if ((value3 != null && this.fXPointerChildConfig == null) || (value3 == null && this.fXIncludeChildConfig == null)) {
                XMLParserConfiguration xMLParserConfiguration = (XMLParserConfiguration) ObjectFactory.m70610h(value3 != null ? "org.apache.xerces.parsers.XPointerParserConfiguration" : XINCLUDE_DEFAULT_CONFIGURATION, ObjectFactory.m70606d(), true);
                this.fChildConfig = xMLParserConfiguration;
                SymbolTable symbolTable = this.fSymbolTable;
                if (symbolTable != null) {
                    xMLParserConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
                }
                XMLErrorReporter xMLErrorReporter2 = this.fErrorReporter;
                if (xMLErrorReporter2 != null) {
                    this.fChildConfig.setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter2);
                }
                XMLEntityResolver xMLEntityResolver = this.fEntityResolver;
                if (xMLEntityResolver != null) {
                    this.fChildConfig.setProperty("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
                }
                this.fChildConfig.setProperty("http://apache.org/xml/properties/security-manager", this.fSecurityManager);
                this.fChildConfig.setProperty("http://apache.org/xml/properties/input-buffer-size", new Integer(this.fBufferSize));
                this.f113576s = true;
                this.fChildConfig.setProperty("http://apache.org/xml/properties/internal/namespace-context", this.fNamespaceContext);
                this.fChildConfig.setFeature(XINCLUDE_FIXUP_BASE_URIS, this.f113569l);
                this.fChildConfig.setFeature(XINCLUDE_FIXUP_LANGUAGE, this.f113570m);
                XMLParserConfiguration xMLParserConfiguration2 = this.fChildConfig;
                if (value3 != null) {
                    XPointerHandler xPointerHandler = (XPointerHandler) xMLParserConfiguration2.getProperty("http://apache.org/xml/properties/internal/xpointer-handler");
                    this.fXPtrProcessor = xPointerHandler;
                    xPointerHandler.setProperty("http://apache.org/xml/properties/internal/namespace-context", this.fNamespaceContext);
                    ((XPointerHandler) this.fXPtrProcessor).setProperty(XINCLUDE_FIXUP_BASE_URIS, this.f113569l ? Boolean.TRUE : Boolean.FALSE);
                    ((XPointerHandler) this.fXPtrProcessor).setProperty(XINCLUDE_FIXUP_LANGUAGE, this.f113570m ? Boolean.TRUE : Boolean.FALSE);
                    XMLErrorReporter xMLErrorReporter3 = this.fErrorReporter;
                    if (xMLErrorReporter3 != null) {
                        ((XPointerHandler) this.fXPtrProcessor).setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter3);
                    }
                    xPointerHandler.setParent(this);
                    xPointerHandler.setHref(str4);
                    xPointerHandler.setXIncludeLocator(this.fXIncludeLocator);
                    xPointerHandler.setDocumentHandler(getDocumentHandler());
                    this.fXPointerChildConfig = this.fChildConfig;
                } else {
                    XIncludeHandler xIncludeHandler = (XIncludeHandler) xMLParserConfiguration2.getProperty("http://apache.org/xml/properties/internal/xinclude-handler");
                    xIncludeHandler.setParent(this);
                    xIncludeHandler.setHref(str4);
                    xIncludeHandler.setXIncludeLocator(this.fXIncludeLocator);
                    xIncludeHandler.setDocumentHandler(getDocumentHandler());
                    this.fXIncludeChildConfig = this.fChildConfig;
                }
            }
            if (value3 != null) {
                this.fChildConfig = this.fXPointerChildConfig;
                try {
                    this.fXPtrProcessor.parseXPointer(value3);
                } catch (XNIException e3) {
                    reportResourceError("XMLResourceError", new Object[]{str4, e3.getMessage()});
                    return false;
                }
            } else {
                this.fChildConfig = this.fXIncludeChildConfig;
            }
            if (this.f113576s) {
                copyFeatures(this.fSettings, this.fChildConfig);
            }
            this.f113576s = false;
            try {
                try {
                    this.f113574q = false;
                    this.fNamespaceContext.pushScope();
                    this.fChildConfig.parse(resolveEntity);
                    this.fXIncludeLocator.setLocator(this.fDocLocation);
                    XMLErrorReporter xMLErrorReporter4 = this.fErrorReporter;
                    if (xMLErrorReporter4 != null) {
                        xMLErrorReporter4.setDocumentLocator(this.fDocLocation);
                    }
                    if (value3 != null && !this.fXPtrProcessor.isXPointerResolved()) {
                        XMLErrorReporter xMLErrorReporter5 = this.fErrorReporter;
                        reportResourceError("XMLResourceError", new Object[]{str4, this.fXIncludeMessageFormatter.formatMessage(xMLErrorReporter5 != null ? xMLErrorReporter5.getLocale() : null, "XPointerResolutionUnsuccessful", null)});
                        this.fNamespaceContext.popScope();
                        return false;
                    }
                } catch (Throwable th) {
                    this.fNamespaceContext.popScope();
                    throw th;
                }
            } catch (IOException e4) {
                this.fXIncludeLocator.setLocator(this.fDocLocation);
                XMLErrorReporter xMLErrorReporter6 = this.fErrorReporter;
                if (xMLErrorReporter6 != null) {
                    xMLErrorReporter6.setDocumentLocator(this.fDocLocation);
                }
                if (this.f113574q) {
                    throw new XNIException(e4);
                }
                reportResourceError("XMLResourceError", new Object[]{str4, e4.getMessage()}, e4);
                this.fNamespaceContext.popScope();
                return false;
            } catch (XNIException unused3) {
                this.fXIncludeLocator.setLocator(this.fDocLocation);
                XMLErrorReporter xMLErrorReporter7 = this.fErrorReporter;
                if (xMLErrorReporter7 != null) {
                    xMLErrorReporter7.setDocumentLocator(this.fDocLocation);
                }
                reportFatalError("XMLParseError", new Object[]{str4});
            }
            this.fNamespaceContext.popScope();
        } else if (str5.equals(XINCLUDE_PARSE_TEXT)) {
            resolveEntity.setEncoding(xMLAttributes.getValue(XINCLUDE_ATTR_ENCODING));
            try {
                try {
                    try {
                        try {
                            this.f113574q = false;
                            if (this.f113572o) {
                                XIncludeTextReader xIncludeTextReader3 = this.fXInclude11TextReader;
                                if (xIncludeTextReader3 == null) {
                                    this.fXInclude11TextReader = new XInclude11TextReader(resolveEntity, this, this.fBufferSize);
                                } else {
                                    xIncludeTextReader3.setInputSource(resolveEntity);
                                }
                                xIncludeTextReader = this.fXInclude11TextReader;
                            } else {
                                XIncludeTextReader xIncludeTextReader4 = this.fXInclude10TextReader;
                                if (xIncludeTextReader4 == null) {
                                    this.fXInclude10TextReader = new XIncludeTextReader(resolveEntity, this, this.fBufferSize);
                                } else {
                                    xIncludeTextReader4.setInputSource(resolveEntity);
                                }
                                xIncludeTextReader = this.fXInclude10TextReader;
                            }
                            xIncludeTextReader2 = xIncludeTextReader;
                            xIncludeTextReader2.setErrorReporter(this.fErrorReporter);
                            xIncludeTextReader2.parse();
                            try {
                                xIncludeTextReader2.close();
                            } catch (IOException e5) {
                                reportResourceError("TextResourceError", new Object[]{str4, e5.getMessage()}, e5);
                                return false;
                            }
                        } catch (Throwable th2) {
                            if (xIncludeTextReader2 != null) {
                                try {
                                    xIncludeTextReader2.close();
                                } catch (IOException e6) {
                                    reportResourceError("TextResourceError", new Object[]{str4, e6.getMessage()}, e6);
                                    return false;
                                }
                            }
                            throw th2;
                        }
                    } catch (MalformedByteSequenceException e7) {
                        this.fErrorReporter.reportError(e7.getDomain(), e7.getKey(), e7.getArguments(), (short) 2, (Exception) e7);
                        if (xIncludeTextReader2 != null) {
                            try {
                                xIncludeTextReader2.close();
                            } catch (IOException e8) {
                                reportResourceError("TextResourceError", new Object[]{str4, e8.getMessage()}, e8);
                                return false;
                            }
                        }
                    }
                } catch (CharConversionException e9) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "CharConversionFailure", (Object[]) null, (short) 2, (Exception) e9);
                    if (xIncludeTextReader2 != null) {
                        try {
                            xIncludeTextReader2.close();
                        } catch (IOException e10) {
                            reportResourceError("TextResourceError", new Object[]{str4, e10.getMessage()}, e10);
                            return false;
                        }
                    }
                }
            } catch (IOException e11) {
                if (this.f113574q) {
                    throw new XNIException(e11);
                }
                reportResourceError("TextResourceError", new Object[]{str4, e11.getMessage()}, e11);
                if (xIncludeTextReader2 != null) {
                    try {
                        xIncludeTextReader2.close();
                    } catch (IOException e12) {
                        reportResourceError("TextResourceError", new Object[]{str4, e12.getMessage()}, e12);
                    }
                }
                return false;
            }
        } else {
            reportFatalError("InvalidParseValue", new Object[]{str5});
        }
        return true;
    }

    public boolean hasXIncludeNamespace(QName qName) {
        String str = qName.uri;
        String str2 = XINCLUDE_NS_URI;
        return str == str2 || this.fNamespaceContext.getURI(qName.prefix) == str2;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1 || this.f113563f == 0) {
            return;
        }
        this.fDocumentHandler.ignorableWhitespace(xMLString, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.ignoredCharacters(xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.internalEntityDecl(str, xMLString, xMLString2, augmentations);
        }
    }

    public boolean isFallbackElement(QName qName) {
        return qName.localpart.equals(XINCLUDE_FALLBACK) && hasXIncludeNamespace(qName);
    }

    public boolean isIncludeElement(QName qName) {
        return qName.localpart.equals(XINCLUDE_INCLUDE) && hasXIncludeNamespace(qName);
    }

    public boolean isRootDocument() {
        return this.fParentXIncludeHandler == null;
    }

    public boolean isTopLevelIncludedItem() {
        return isTopLevelIncludedItemViaInclude() || isTopLevelIncludedItemViaFallback();
    }

    public boolean isTopLevelIncludedItemViaFallback() {
        return getSawFallback(this.f113562e - 1);
    }

    public boolean isTopLevelIncludedItemViaInclude() {
        return this.f113562e == 1 && !isRootDocument();
    }

    public Augmentations modifyAugmentations(Augmentations augmentations) {
        return modifyAugmentations(augmentations, false);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        addNotation(str, xMLResourceIdentifier, augmentations);
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.notationDecl(str, xMLResourceIdentifier, augmentations);
        }
    }

    /* renamed from: o */
    public final void m70617o() {
        if (m70627y()) {
            reportFatalError("MultipleRootElements");
        }
        m70616F(true);
    }

    /* renamed from: p */
    public final void m70618p(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        while (i < i2) {
            if (!XMLChar.isSpace(xMLString.f113585ch[i])) {
                reportFatalError("ContentIllegalAtTopLevel");
                return;
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d5, code lost:
    
        if (r4 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0093, code lost:
    
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0091, code lost:
    
        if (r4 != null) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.xni.XMLAttributes processAttributes(org.apache.xerces.xni.XMLAttributes r9) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.xinclude.XIncludeHandler.processAttributes(org.apache.xerces.xni.XMLAttributes):org.apache.xerces.xni.XMLAttributes");
    }

    public void processXMLBaseAttributes(XMLAttributes xMLAttributes) {
        String value = xMLAttributes.getValue(NamespaceContext.XML_URI, gon.f71271X);
        if (value != null) {
            try {
                String expandSystemId = XMLEntityManager.expandSystemId(value, this.fCurrentBaseURI.getExpandedSystemId(), false);
                this.fCurrentBaseURI.setLiteralSystemId(value);
                XMLResourceIdentifier xMLResourceIdentifier = this.fCurrentBaseURI;
                xMLResourceIdentifier.setBaseSystemId(xMLResourceIdentifier.getExpandedSystemId());
                this.fCurrentBaseURI.setExpandedSystemId(expandSystemId);
                saveBaseURI();
            } catch (URI.MalformedURIException unused) {
            }
        }
    }

    public void processXMLLangAttributes(XMLAttributes xMLAttributes) {
        String value = xMLAttributes.getValue(NamespaceContext.XML_URI, "lang");
        if (value != null) {
            this.fCurrentLanguage = value;
            saveLanguage(value);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f113573p) {
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.processingInstruction(str, xMLString, augmentations);
                return;
            }
            return;
        }
        if (this.fDocumentHandler == null || getState() != 1) {
            return;
        }
        this.f113562e++;
        this.fDocumentHandler.processingInstruction(str, xMLString, modifyAugmentations(augmentations));
        this.f113562e--;
    }

    /* renamed from: q */
    public final void m70619q(Enumeration enumeration, String str, XMLComponentManager xMLComponentManager, ParserConfigurationSettings parserConfigurationSettings) {
        while (enumeration.hasMoreElements()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append((String) enumeration.nextElement());
            String stringBuffer2 = stringBuffer.toString();
            parserConfigurationSettings.addRecognizedFeatures(new String[]{stringBuffer2});
            try {
                parserConfigurationSettings.setFeature(stringBuffer2, xMLComponentManager.getFeature(stringBuffer2));
            } catch (XMLConfigurationException unused) {
            }
        }
    }

    /* renamed from: r */
    public final void m70620r(Enumeration enumeration, String str, XMLComponentManager xMLComponentManager, XMLParserConfiguration xMLParserConfiguration) {
        while (enumeration.hasMoreElements()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append((String) enumeration.nextElement());
            String stringBuffer2 = stringBuffer.toString();
            try {
                xMLParserConfiguration.setFeature(stringBuffer2, xMLComponentManager.getFeature(stringBuffer2));
            } catch (XMLConfigurationException unused) {
            }
        }
    }

    public void reportFatalError(String str) {
        reportFatalError(str, null);
    }

    public void reportResourceError(String str) {
        reportResourceError(str, null);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XNIException {
        this.fNamespaceContext = null;
        this.f113562e = 0;
        this.f113563f = isRootDocument() ? 0 : this.fParentXIncludeHandler.m70626x();
        this.f113567j.clear();
        this.f113568k.clear();
        this.fParentRelativeURI = null;
        this.f113572o = false;
        this.f113573p = false;
        this.f113575r = false;
        this.fBaseURIScope.clear();
        this.fBaseURI.clear();
        this.fLiteralSystemID.clear();
        this.fExpandedSystemID.clear();
        this.fLanguageScope.clear();
        this.fLanguageStack.clear();
        int i = 0;
        while (true) {
            int[] iArr = this.f113566i;
            if (i >= iArr.length) {
                break;
            }
            iArr[i] = 1;
            i++;
        }
        int i2 = 0;
        while (true) {
            boolean[] zArr = this.f113565h;
            if (i2 >= zArr.length) {
                break;
            }
            zArr[i2] = false;
            i2++;
        }
        int i3 = 0;
        while (true) {
            boolean[] zArr2 = this.f113564g;
            if (i3 >= zArr2.length) {
                try {
                    break;
                } catch (XMLConfigurationException unused) {
                }
            } else {
                zArr2[i3] = false;
                i3++;
            }
        }
        if (!xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings")) {
            return;
        }
        this.f113576s = true;
        try {
            boolean feature = xMLComponentManager.getFeature(ALLOW_UE_AND_NOTATION_EVENTS);
            this.f113571n = feature;
            XMLParserConfiguration xMLParserConfiguration = this.fChildConfig;
            if (xMLParserConfiguration != null) {
                xMLParserConfiguration.setFeature(ALLOW_UE_AND_NOTATION_EVENTS, feature);
            }
        } catch (XMLConfigurationException unused2) {
        }
        try {
            boolean feature2 = xMLComponentManager.getFeature(XINCLUDE_FIXUP_BASE_URIS);
            this.f113569l = feature2;
            XMLParserConfiguration xMLParserConfiguration2 = this.fChildConfig;
            if (xMLParserConfiguration2 != null) {
                xMLParserConfiguration2.setFeature(XINCLUDE_FIXUP_BASE_URIS, feature2);
            }
        } catch (XMLConfigurationException unused3) {
            this.f113569l = true;
        }
        try {
            boolean feature3 = xMLComponentManager.getFeature(XINCLUDE_FIXUP_LANGUAGE);
            this.f113570m = feature3;
            XMLParserConfiguration xMLParserConfiguration3 = this.fChildConfig;
            if (xMLParserConfiguration3 != null) {
                xMLParserConfiguration3.setFeature(XINCLUDE_FIXUP_LANGUAGE, feature3);
            }
        } catch (XMLConfigurationException unused4) {
            this.f113570m = true;
        }
        try {
            SymbolTable symbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
            if (symbolTable != null) {
                this.fSymbolTable = symbolTable;
                XMLParserConfiguration xMLParserConfiguration4 = this.fChildConfig;
                if (xMLParserConfiguration4 != null) {
                    xMLParserConfiguration4.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
                }
            }
        } catch (XMLConfigurationException unused5) {
            this.fSymbolTable = null;
        }
        try {
            XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
            if (xMLErrorReporter != null) {
                m70615E(xMLErrorReporter);
                XMLParserConfiguration xMLParserConfiguration5 = this.fChildConfig;
                if (xMLParserConfiguration5 != null) {
                    xMLParserConfiguration5.setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter);
                }
            }
        } catch (XMLConfigurationException unused6) {
            this.fErrorReporter = null;
        }
        try {
            XMLEntityResolver xMLEntityResolver = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
            if (xMLEntityResolver != null) {
                this.fEntityResolver = xMLEntityResolver;
                XMLParserConfiguration xMLParserConfiguration6 = this.fChildConfig;
                if (xMLParserConfiguration6 != null) {
                    xMLParserConfiguration6.setProperty("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
                }
            }
        } catch (XMLConfigurationException unused7) {
            this.fEntityResolver = null;
        }
        try {
            SecurityManager securityManager = (SecurityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
            if (securityManager != null) {
                this.fSecurityManager = securityManager;
                XMLParserConfiguration xMLParserConfiguration7 = this.fChildConfig;
                if (xMLParserConfiguration7 != null) {
                    xMLParserConfiguration7.setProperty("http://apache.org/xml/properties/security-manager", securityManager);
                }
            }
        } catch (XMLConfigurationException unused8) {
            this.fSecurityManager = null;
        }
        try {
            Integer num = (Integer) xMLComponentManager.getProperty("http://apache.org/xml/properties/input-buffer-size");
            if (num == null || num.intValue() <= 0) {
                this.fBufferSize = ((Integer) getPropertyDefault("http://apache.org/xml/properties/input-buffer-size")).intValue();
            } else {
                this.fBufferSize = num.intValue();
                XMLParserConfiguration xMLParserConfiguration8 = this.fChildConfig;
                if (xMLParserConfiguration8 != null) {
                    xMLParserConfiguration8.setProperty("http://apache.org/xml/properties/input-buffer-size", num);
                }
            }
        } catch (XMLConfigurationException unused9) {
            this.fBufferSize = ((Integer) getPropertyDefault("http://apache.org/xml/properties/input-buffer-size")).intValue();
        }
        XIncludeTextReader xIncludeTextReader = this.fXInclude10TextReader;
        if (xIncludeTextReader != null) {
            xIncludeTextReader.setBufferSize(this.fBufferSize);
        }
        XIncludeTextReader xIncludeTextReader2 = this.fXInclude11TextReader;
        if (xIncludeTextReader2 != null) {
            xIncludeTextReader2.setBufferSize(this.fBufferSize);
        }
        ParserConfigurationSettings parserConfigurationSettings = new ParserConfigurationSettings();
        this.fSettings = parserConfigurationSettings;
        copyFeatures(xMLComponentManager, parserConfigurationSettings);
        try {
            if (xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema")) {
                this.fSettings.setFeature("http://apache.org/xml/features/validation/schema", false);
                if (org.apache.xerces.impl.Constants.NS_XMLSCHEMA.equals(xMLComponentManager.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage"))) {
                    this.fSettings.setFeature("http://xml.org/sax/features/validation", false);
                } else if (xMLComponentManager.getFeature("http://xml.org/sax/features/validation")) {
                    this.fSettings.setFeature(DYNAMIC_VALIDATION, true);
                }
            }
        } catch (XMLConfigurationException unused10) {
        }
    }

    public void restoreBaseURI() {
        this.fBaseURI.pop();
        this.fLiteralSystemID.pop();
        this.fExpandedSystemID.pop();
        this.fBaseURIScope.pop();
        this.fCurrentBaseURI.setBaseSystemId((String) this.fBaseURI.peek());
        this.fCurrentBaseURI.setLiteralSystemId((String) this.fLiteralSystemID.peek());
        this.fCurrentBaseURI.setExpandedSystemId((String) this.fExpandedSystemID.peek());
    }

    public String restoreLanguage() {
        this.fLanguageStack.pop();
        this.fLanguageScope.pop();
        return (String) this.fLanguageStack.peek();
    }

    /* renamed from: s */
    public final XMLInputSource m70621s(String str, String str2, String str3, String str4, String str5) {
        HTTPInputSource hTTPInputSource = new HTTPInputSource(str, str2, str3);
        if (str4 != null && str4.length() > 0) {
            hTTPInputSource.setHTTPRequestProperty("Accept", str4);
        }
        if (str5 != null && str5.length() > 0) {
            hTTPInputSource.setHTTPRequestProperty("Accept-Language", str5);
        }
        return hTTPInputSource;
    }

    public boolean sameBaseURIAsIncludeParent() {
        String m70623u = m70623u();
        return m70623u != null && m70623u.equals(this.fCurrentBaseURI.getExpandedSystemId());
    }

    public boolean sameLanguageAsIncludeParent() {
        String m70625w = m70625w();
        return m70625w != null && m70625w.equalsIgnoreCase(this.fCurrentLanguage);
    }

    public void saveBaseURI() {
        this.fBaseURIScope.push(this.f113562e);
        this.fBaseURI.push(this.fCurrentBaseURI.getBaseSystemId());
        this.fLiteralSystemID.push(this.fCurrentBaseURI.getLiteralSystemId());
        this.fExpandedSystemID.push(this.fCurrentBaseURI.getExpandedSystemId());
    }

    public void saveLanguage(String str) {
        this.fLanguageScope.push(this.f113562e);
        this.fLanguageStack.push(str);
    }

    public boolean searchForRecursiveIncludes(String str) {
        if (str.equals(this.fCurrentBaseURI.getExpandedSystemId())) {
            return true;
        }
        XIncludeHandler xIncludeHandler = this.fParentXIncludeHandler;
        if (xIncludeHandler == null) {
            return false;
        }
        return xIncludeHandler.searchForRecursiveIncludes(str);
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDSource
    public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
        this.fDTDHandler = xMLDTDHandler;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void setDTDSource(XMLDTDSource xMLDTDSource) {
        this.fDTDSource = xMLDTDSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        if (this.fDocumentHandler != xMLDocumentHandler) {
            this.fDocumentHandler = xMLDocumentHandler;
            XMLParserConfiguration xMLParserConfiguration = this.fXIncludeChildConfig;
            if (xMLParserConfiguration != null) {
                xMLParserConfiguration.setDocumentHandler(xMLDocumentHandler);
            }
            XMLParserConfiguration xMLParserConfiguration2 = this.fXPointerChildConfig;
            if (xMLParserConfiguration2 != null) {
                xMLParserConfiguration2.setDocumentHandler(xMLDocumentHandler);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
        this.fDocumentSource = xMLDocumentSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if (str.equals(ALLOW_UE_AND_NOTATION_EVENTS)) {
            this.f113571n = z;
        }
        ParserConfigurationSettings parserConfigurationSettings = this.fSettings;
        if (parserConfigurationSettings != null) {
            this.f113576s = true;
            parserConfigurationSettings.setFeature(str, z);
        }
    }

    public void setHref(String str) {
        this.fHrefFromParent = str;
    }

    public void setParent(XIncludeHandler xIncludeHandler) {
        this.fParentXIncludeHandler = xIncludeHandler;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.equals("http://apache.org/xml/properties/internal/symbol-table")) {
            this.fSymbolTable = (SymbolTable) obj;
            XMLParserConfiguration xMLParserConfiguration = this.fChildConfig;
            if (xMLParserConfiguration != null) {
                xMLParserConfiguration.setProperty(str, obj);
                return;
            }
            return;
        }
        if (str.equals("http://apache.org/xml/properties/internal/error-reporter")) {
            m70615E((XMLErrorReporter) obj);
            XMLParserConfiguration xMLParserConfiguration2 = this.fChildConfig;
            if (xMLParserConfiguration2 != null) {
                xMLParserConfiguration2.setProperty(str, obj);
                return;
            }
            return;
        }
        if (str.equals("http://apache.org/xml/properties/internal/entity-resolver")) {
            this.fEntityResolver = (XMLEntityResolver) obj;
            XMLParserConfiguration xMLParserConfiguration3 = this.fChildConfig;
            if (xMLParserConfiguration3 != null) {
                xMLParserConfiguration3.setProperty(str, obj);
                return;
            }
            return;
        }
        if (str.equals("http://apache.org/xml/properties/security-manager")) {
            this.fSecurityManager = (SecurityManager) obj;
            XMLParserConfiguration xMLParserConfiguration4 = this.fChildConfig;
            if (xMLParserConfiguration4 != null) {
                xMLParserConfiguration4.setProperty(str, obj);
                return;
            }
            return;
        }
        if (str.equals("http://apache.org/xml/properties/input-buffer-size")) {
            Integer num = (Integer) obj;
            XMLParserConfiguration xMLParserConfiguration5 = this.fChildConfig;
            if (xMLParserConfiguration5 != null) {
                xMLParserConfiguration5.setProperty(str, obj);
            }
            if (num == null || num.intValue() <= 0) {
                return;
            }
            int intValue = num.intValue();
            this.fBufferSize = intValue;
            XIncludeTextReader xIncludeTextReader = this.fXInclude10TextReader;
            if (xIncludeTextReader != null) {
                xIncludeTextReader.setBufferSize(intValue);
            }
            XIncludeTextReader xIncludeTextReader2 = this.fXInclude11TextReader;
            if (xIncludeTextReader2 != null) {
                xIncludeTextReader2.setBufferSize(this.fBufferSize);
            }
        }
    }

    public void setSawFallback(int i, boolean z) {
        boolean[] zArr = this.f113565h;
        if (i >= zArr.length) {
            boolean[] zArr2 = new boolean[i * 2];
            System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
            this.f113565h = zArr2;
        }
        this.f113565h[i] = z;
    }

    public void setSawInclude(int i, boolean z) {
        boolean[] zArr = this.f113564g;
        if (i >= zArr.length) {
            boolean[] zArr2 = new boolean[i * 2];
            System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
            this.f113564g = zArr2;
        }
        this.f113564g[i] = z;
    }

    public void setState(int i) {
        int i2 = this.f113562e;
        int[] iArr = this.f113566i;
        if (i2 >= iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f113566i = iArr2;
        }
        this.f113566i[this.f113562e] = i;
    }

    public void setXIncludeLocator(XMLLocatorWrapper xMLLocatorWrapper) {
        this.fXIncludeLocator = xMLLocatorWrapper;
    }

    public void setupCurrentBaseURI(XMLLocator xMLLocator) {
        XMLResourceIdentifier xMLResourceIdentifier;
        String str;
        this.fCurrentBaseURI.setBaseSystemId(xMLLocator.getBaseSystemId());
        if (xMLLocator.getLiteralSystemId() != null) {
            xMLResourceIdentifier = this.fCurrentBaseURI;
            str = xMLLocator.getLiteralSystemId();
        } else {
            xMLResourceIdentifier = this.fCurrentBaseURI;
            str = this.fHrefFromParent;
        }
        xMLResourceIdentifier.setLiteralSystemId(str);
        String expandedSystemId = xMLLocator.getExpandedSystemId();
        if (expandedSystemId == null) {
            try {
                expandedSystemId = XMLEntityManager.expandSystemId(this.fCurrentBaseURI.getLiteralSystemId(), this.fCurrentBaseURI.getBaseSystemId(), false);
                if (expandedSystemId == null) {
                    expandedSystemId = this.fCurrentBaseURI.getLiteralSystemId();
                }
            } catch (URI.MalformedURIException unused) {
                reportFatalError("ExpandedSystemId");
            }
        }
        this.fCurrentBaseURI.setExpandedSystemId(expandedSystemId);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startAttlist(String str, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startAttlist(str, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1 || this.f113563f == 0) {
            return;
        }
        this.fDocumentHandler.startCDATA(augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startConditional(short s, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startConditional(s, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
        this.f113573p = true;
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startDTD(xMLLocator, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        this.fErrorReporter.setDocumentLocator(xMLLocator);
        if (!(namespaceContext instanceof XIncludeNamespaceSupport)) {
            reportFatalError("IncompatibleNamespaceContext");
        }
        this.fNamespaceContext = (XIncludeNamespaceSupport) namespaceContext;
        this.fDocLocation = xMLLocator;
        this.fXIncludeLocator.setLocator(xMLLocator);
        setupCurrentBaseURI(xMLLocator);
        saveBaseURI();
        if (augmentations == null) {
            augmentations = new AugmentationsImpl();
        }
        augmentations.putItem("currentBaseURI", this.fCurrentBaseURI);
        if (!isRootDocument()) {
            XIncludeHandler xIncludeHandler = this.fParentXIncludeHandler;
            xIncludeHandler.f113574q = true;
            if (xIncludeHandler.searchForRecursiveIncludes(this.fCurrentBaseURI.getExpandedSystemId())) {
                reportFatalError("RecursiveInclude", new Object[]{this.fCurrentBaseURI.getExpandedSystemId()});
            }
        }
        String str2 = XMLSymbols.EMPTY_STRING;
        this.fCurrentLanguage = str2;
        saveLanguage(str2);
        if (!isRootDocument() || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        xMLDocumentHandler.startDocument(this.fXIncludeLocator, str, namespaceContext, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        int i = this.f113562e + 1;
        this.f113562e = i;
        int state = getState(i - 1);
        if (state == 3 && getState(this.f113562e - 2) == 3) {
            setState(2);
        } else {
            setState(state);
        }
        processXMLBaseAttributes(xMLAttributes);
        if (this.f113570m) {
            processXMLLangAttributes(xMLAttributes);
        }
        if (isIncludeElement(qName)) {
            if (handleIncludeElement(xMLAttributes)) {
                setState(2);
                return;
            } else {
                setState(3);
                return;
            }
        }
        if (isFallbackElement(qName)) {
            handleFallbackElement();
            return;
        }
        if (hasXIncludeNamespace(qName)) {
            if (getSawInclude(this.f113562e - 1)) {
                reportFatalError("IncludeChild", new Object[]{qName.rawname});
            }
            if (getSawFallback(this.f113562e - 1)) {
                reportFatalError("FallbackChild", new Object[]{qName.rawname});
            }
            if (getState() != 1) {
                return;
            }
            int i2 = this.f113563f;
            this.f113563f = i2 + 1;
            if (i2 == 0) {
                m70617o();
            }
            if (this.fDocumentHandler == null) {
                return;
            }
        } else {
            if (getState() != 1) {
                return;
            }
            int i3 = this.f113563f;
            this.f113563f = i3 + 1;
            if (i3 == 0) {
                m70617o();
            }
            if (this.fDocumentHandler == null) {
                return;
            }
        }
        Augmentations modifyAugmentations = modifyAugmentations(augmentations);
        this.fDocumentHandler.startElement(qName, processAttributes(xMLAttributes), modifyAugmentations);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startExternalSubset(xMLResourceIdentifier, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (getState() == 1) {
            if (this.f113563f == 0) {
                if (augmentations == null || !Boolean.TRUE.equals(augmentations.getItem("ENTITY_SKIPPED"))) {
                    return;
                }
                reportFatalError("UnexpandedEntityReferenceIllegal");
                return;
            }
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startParameterEntity(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    /* renamed from: t */
    public final String m70622t(String str) {
        char c;
        int supplemental;
        char charAt;
        char c2;
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length * 3);
        int i = 0;
        while (i < length && (charAt = str.charAt(i)) <= '~') {
            if (charAt < ' ') {
                return str;
            }
            if (f113552t0[charAt]) {
                stringBuffer.append('%');
                stringBuffer.append(f113554u0[charAt]);
                c2 = f113556v0[charAt];
            } else {
                c2 = charAt;
            }
            stringBuffer.append(c2);
            i++;
        }
        if (i < length) {
            int i2 = i;
            while (i2 < length) {
                char charAt2 = str.charAt(i2);
                if ((charAt2 < ' ' || charAt2 > '~') && ((charAt2 < 160 || charAt2 > 55295) && ((charAt2 < 63744 || charAt2 > 64975) && (charAt2 < 65008 || charAt2 > 65519)))) {
                    if (XMLChar.isHighSurrogate(charAt2) && (i2 = i2 + 1) < length) {
                        char charAt3 = str.charAt(i2);
                        if (XMLChar.isLowSurrogate(charAt3) && (supplemental = XMLChar.supplemental(charAt2, charAt3)) < 983040 && (supplemental & 65535) <= 65533) {
                        }
                    }
                    return str;
                }
                i2++;
            }
            try {
                byte[] bytes = str.substring(i).getBytes("UTF-8");
                int length2 = bytes.length;
                for (byte b : bytes) {
                    if (b < 0) {
                        int i3 = b + 256;
                        stringBuffer.append('%');
                        char[] cArr = f113558w0;
                        stringBuffer.append(cArr[i3 >> 4]);
                        c = cArr[i3 & 15];
                    } else if (f113552t0[b]) {
                        stringBuffer.append('%');
                        stringBuffer.append(f113554u0[b]);
                        c = f113556v0[b];
                    } else {
                        c = (char) b;
                    }
                    stringBuffer.append(c);
                }
                length = length2;
            } catch (UnsupportedEncodingException unused) {
                return str;
            }
        }
        return stringBuffer.length() != length ? stringBuffer.toString() : str;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1) {
            return;
        }
        this.fDocumentHandler.textDecl(str, str2, augmentations);
    }

    /* renamed from: u */
    public final String m70623u() {
        int m70624v = m70624v();
        return (isRootDocument() || m70624v != 0) ? getBaseURI(m70624v) : this.fParentXIncludeHandler.m70623u();
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        addUnparsedEntity(str, xMLResourceIdentifier, str2, augmentations);
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.unparsedEntityDecl(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    /* renamed from: v */
    public final int m70624v() {
        for (int i = this.f113562e - 1; i >= 0; i--) {
            if (!getSawInclude(i) && !getSawFallback(i)) {
                return i;
            }
        }
        return 0;
    }

    /* renamed from: w */
    public final String m70625w() {
        int m70624v = m70624v();
        return (isRootDocument() || m70624v != 0) ? getLanguage(m70624v) : this.fParentXIncludeHandler.m70625w();
    }

    /* renamed from: x */
    public final int m70626x() {
        return this.f113563f;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        this.f113572o = SerializerConstants.XMLVERSION11.equals(str);
        if (!isRootDocument() || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        xMLDocumentHandler.xmlDecl(str, str2, str3, augmentations);
    }

    /* renamed from: y */
    public final boolean m70627y() {
        return isRootDocument() ? this.f113575r : this.fParentXIncludeHandler.m70627y();
    }

    /* renamed from: z */
    public final boolean m70628z(String str, String str2) {
        return str == str2 || (str != null && str.equals(str2));
    }

    public void copyFeatures(XMLComponentManager xMLComponentManager, XMLParserConfiguration xMLParserConfiguration) {
        m70620r(org.apache.xerces.impl.Constants.getXercesFeatures(), "http://apache.org/xml/features/", xMLComponentManager, xMLParserConfiguration);
        m70620r(org.apache.xerces.impl.Constants.getSAXFeatures(), "http://xml.org/sax/features/", xMLComponentManager, xMLParserConfiguration);
    }

    public int getState(int i) {
        return this.f113566i[i];
    }

    public Augmentations modifyAugmentations(Augmentations augmentations, boolean z) {
        if (z || isTopLevelIncludedItem()) {
            if (augmentations == null) {
                augmentations = new AugmentationsImpl();
            }
            augmentations.putItem(XINCLUDE_INCLUDED, Boolean.TRUE);
        }
        return augmentations;
    }

    public void reportFatalError(String str, Object[] objArr) {
        reportFatalError(str, objArr, null);
    }

    public void reportResourceError(String str, Object[] objArr) {
        reportResourceError(str, objArr, null);
    }

    public void reportFatalError(String str, Object[] objArr, Exception exc) {
        m70612B(str, objArr, (short) 2, exc);
    }

    public void reportResourceError(String str, Object[] objArr, Exception exc) {
        m70612B(str, objArr, (short) 0, exc);
    }
}
