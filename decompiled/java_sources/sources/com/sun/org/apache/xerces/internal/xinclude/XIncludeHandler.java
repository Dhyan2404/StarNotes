package com.sun.org.apache.xerces.internal.xinclude;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.io.MalformedByteSequenceException;
import com.sun.org.apache.xerces.internal.util.AugmentationsImpl;
import com.sun.org.apache.xerces.internal.util.HTTPInputSource;
import com.sun.org.apache.xerces.internal.util.IntStack;
import com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.URI;
import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDTDFilter;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import com.sun.org.apache.xerces.internal.xpointer.XPointerHandler;
import com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sunia.HTREnginev2.gon;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Stack;
import java.util.StringTokenizer;

/* loaded from: classes10.dex */
public class XIncludeHandler implements XMLComponent, XMLDocumentFilter, XMLDTDFilter {
    protected static final String ALLOW_UE_AND_NOTATION_EVENTS = "http://xml.org/sax/features/allow-dtd-events-after-endDTD";
    public static final String BUFFER_SIZE = "http://apache.org/xml/properties/input-buffer-size";
    public static final String CURRENT_BASE_URI = "currentBaseURI";
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    private static final Boolean[] FEATURE_DEFAULTS;
    public static final String HTTP_ACCEPT = "Accept";
    public static final String HTTP_ACCEPT_LANGUAGE = "Accept-Language";
    private static final int INITIAL_SIZE = 8;
    public static final QName NEW_NS_ATTR_QNAME;
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    private static final Object[] PROPERTY_DEFAULTS;
    private static final String[] RECOGNIZED_FEATURES;
    private static final String[] RECOGNIZED_PROPERTIES;
    protected static final String SCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private static final int STATE_EXPECT_FALLBACK = 3;
    private static final int STATE_IGNORE = 2;
    private static final int STATE_NORMAL_PROCESSING = 1;
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    public static final String XINCLUDE_BASE;
    public static final String XINCLUDE_DEFAULT_CONFIGURATION = "com.sun.org.apache.xerces.internal.parsers.XIncludeParserConfiguration";
    protected static final String XINCLUDE_FIXUP_BASE_URIS = "http://apache.org/xml/features/xinclude/fixup-base-uris";
    protected static final String XINCLUDE_FIXUP_LANGUAGE = "http://apache.org/xml/features/xinclude/fixup-language";
    public static final String XINCLUDE_LANG;
    public static final QName XML_BASE_QNAME;
    public static final QName XML_LANG_QNAME;
    public static final String XPOINTER = "xpointer";
    private static char[] gAfterEscaping1;
    private static char[] gAfterEscaping2;
    private static char[] gHexChs;
    private static boolean[] gNeedEscaping;
    protected Stack fBaseURI;
    protected IntStack fBaseURIScope;
    protected XMLParserConfiguration fChildConfig;
    protected XMLResourceIdentifier fCurrentBaseURI;
    protected String fCurrentLanguage;
    protected XMLDTDHandler fDTDHandler;
    protected XMLDTDSource fDTDSource;
    protected XMLLocator fDocLocation;
    protected XMLDocumentHandler fDocumentHandler;
    protected XMLDocumentSource fDocumentSource;
    protected XMLEntityResolver fEntityResolver;
    protected XMLErrorReporter fErrorReporter;
    protected Stack fExpandedSystemID;
    private boolean fInDTD;
    private boolean fIsXML11;
    protected IntStack fLanguageScope;
    protected Stack fLanguageStack;
    protected Stack fLiteralSystemID;
    protected XIncludeNamespaceSupport fNamespaceContext;
    private ArrayList fNotations;
    protected String fParentRelativeURI;
    protected XIncludeHandler fParentXIncludeHandler;
    private int fResultDepth;
    private boolean[] fSawFallback;
    private boolean[] fSawInclude;
    protected SecurityManager fSecurityManager;
    private boolean fSeenRootElement;
    private boolean fSendUEAndNotationEvents;
    protected ParserConfigurationSettings fSettings;
    private int[] fState;
    protected SymbolTable fSymbolTable;
    private ArrayList fUnparsedEntities;
    protected XIncludeTextReader fXInclude10TextReader;
    protected XIncludeTextReader fXInclude11TextReader;
    protected XMLParserConfiguration fXIncludeChildConfig;
    protected XMLParserConfiguration fXPointerChildConfig;
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
    protected int fBufferSize = 8192;
    protected XPointerProcessor fXPtrProcessor = null;
    protected XIncludeMessageFormatter fXIncludeMessageFormatter = new XIncludeMessageFormatter();
    private boolean fFixupBaseURIs = true;
    private boolean fFixupLanguage = true;
    private boolean fNeedCopyFeatures = true;
    private int fDepth = 0;

    /* loaded from: classes10.dex */
    public static class Notation {
        public Augmentations augmentations;
        public String baseURI;
        public String expandedSystemId;
        public String name;
        public String publicId;
        public String systemId;

        private boolean isEqual(String str, String str2) {
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
            return this.name.equals(notation.name) && isEqual(this.publicId, notation.publicId) && isEqual(this.expandedSystemId, notation.expandedSystemId);
        }
    }

    /* loaded from: classes10.dex */
    public static class UnparsedEntity {
        public Augmentations augmentations;
        public String baseURI;
        public String expandedSystemId;
        public String name;
        public String notation;
        public String publicId;
        public String systemId;

        private boolean isEqual(String str, String str2) {
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
            return this.name.equals(unparsedEntity.name) && isEqual(this.publicId, unparsedEntity.publicId) && isEqual(this.expandedSystemId, unparsedEntity.expandedSystemId) && isEqual(this.notation, unparsedEntity.notation);
        }
    }

    static {
        String intern = gon.f71271X.intern();
        XINCLUDE_BASE = intern;
        String str = XMLSymbols.PREFIX_XML;
        String intern2 = (str + ":" + intern).intern();
        String str2 = NamespaceContext.XML_URI;
        XML_BASE_QNAME = new QName(str, intern, intern2, str2);
        String intern3 = "lang".intern();
        XINCLUDE_LANG = intern3;
        XML_LANG_QNAME = new QName(str, intern3, (str + ":" + intern3).intern(), str2);
        String str3 = XMLSymbols.PREFIX_XMLNS;
        NEW_NS_ATTR_QNAME = new QName(str3, "", str3 + ":", NamespaceContext.XMLNS_URI);
        RECOGNIZED_FEATURES = new String[]{ALLOW_UE_AND_NOTATION_EVENTS, XINCLUDE_FIXUP_BASE_URIS, XINCLUDE_FIXUP_LANGUAGE};
        Boolean bool = Boolean.TRUE;
        FEATURE_DEFAULTS = new Boolean[]{bool, bool, bool};
        RECOGNIZED_PROPERTIES = new String[]{"http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/security-manager", BUFFER_SIZE};
        PROPERTY_DEFAULTS = new Object[]{null, null, null, new Integer(8192)};
        gNeedEscaping = new boolean[128];
        gAfterEscaping1 = new char[128];
        gAfterEscaping2 = new char[128];
        gHexChs = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr = {' ', '<', '>', '\"', '{', '}', '|', '\\', '^', '`'};
        for (int i = 0; i < 10; i++) {
            char c = cArr[i];
            gNeedEscaping[c] = true;
            char[] cArr2 = gAfterEscaping1;
            char[] cArr3 = gHexChs;
            cArr2[c] = cArr3[c >> 4];
            gAfterEscaping2[c] = cArr3[c & 15];
        }
    }

    public XIncludeHandler() {
        boolean[] zArr = new boolean[8];
        this.fSawInclude = zArr;
        boolean[] zArr2 = new boolean[8];
        this.fSawFallback = zArr2;
        int[] iArr = new int[8];
        this.fState = iArr;
        zArr2[0] = false;
        zArr[0] = false;
        iArr[0] = 1;
        this.fNotations = new ArrayList();
        this.fUnparsedEntities = new ArrayList();
        this.fBaseURIScope = new IntStack();
        this.fBaseURI = new Stack();
        this.fLiteralSystemID = new Stack();
        this.fExpandedSystemID = new Stack();
        this.fCurrentBaseURI = new XMLResourceIdentifierImpl();
        this.fLanguageScope = new IntStack();
        this.fLanguageStack = new Stack();
        this.fCurrentLanguage = null;
    }

    private void checkMultipleRootElements() {
        if (getRootElementProcessed()) {
            reportFatalError("MultipleRootElements");
        }
        setRootElementProcessed(true);
    }

    private void checkWhitespace(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        while (i < i2) {
            if (!XMLChar.isSpace(xMLString.f64120ch[i])) {
                reportFatalError("ContentIllegalAtTopLevel");
                return;
            }
            i++;
        }
    }

    private void copyFeatures1(Enumeration enumeration, String str, XMLComponentManager xMLComponentManager, ParserConfigurationSettings parserConfigurationSettings) {
        while (enumeration.hasMoreElements()) {
            String str2 = str + ((String) enumeration.nextElement());
            parserConfigurationSettings.addRecognizedFeatures(new String[]{str2});
            try {
                parserConfigurationSettings.setFeature(str2, xMLComponentManager.getFeature(str2));
            } catch (XMLConfigurationException unused) {
            }
        }
    }

    private XMLInputSource createInputSource(String str, String str2, String str3, String str4, String str5) {
        HTTPInputSource hTTPInputSource = new HTTPInputSource(str, str2, str3);
        if (str4 != null && str4.length() > 0) {
            hTTPInputSource.setHTTPRequestProperty("Accept", str4);
        }
        if (str5 != null && str5.length() > 0) {
            hTTPInputSource.setHTTPRequestProperty("Accept-Language", str5);
        }
        return hTTPInputSource;
    }

    private String escapeHref(String str) {
        int supplemental;
        char charAt;
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length * 3);
        int i = 0;
        while (i < length && (charAt = str.charAt(i)) <= '~') {
            if (charAt < ' ') {
                return str;
            }
            if (gNeedEscaping[charAt]) {
                stringBuffer.append('%');
                stringBuffer.append(gAfterEscaping1[charAt]);
                stringBuffer.append(gAfterEscaping2[charAt]);
            } else {
                stringBuffer.append(charAt);
            }
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
                        stringBuffer.append(gHexChs[i3 >> 4]);
                        stringBuffer.append(gHexChs[i3 & 15]);
                    } else if (gNeedEscaping[b]) {
                        stringBuffer.append('%');
                        stringBuffer.append(gAfterEscaping1[b]);
                        stringBuffer.append(gAfterEscaping2[b]);
                    } else {
                        stringBuffer.append((char) b);
                    }
                }
                length = length2;
            } catch (UnsupportedEncodingException unused) {
                return str;
            }
        }
        return stringBuffer.length() != length ? stringBuffer.toString() : str;
    }

    private String getIncludeParentBaseURI() {
        int includeParentDepth = getIncludeParentDepth();
        return (isRootDocument() || includeParentDepth != 0) ? getBaseURI(includeParentDepth) : this.fParentXIncludeHandler.getIncludeParentBaseURI();
    }

    private int getIncludeParentDepth() {
        for (int i = this.fDepth - 1; i >= 0; i--) {
            if (!getSawInclude(i) && !getSawFallback(i)) {
                return i;
            }
        }
        return 0;
    }

    private String getIncludeParentLanguage() {
        int includeParentDepth = getIncludeParentDepth();
        return (isRootDocument() || includeParentDepth != 0) ? getLanguage(includeParentDepth) : this.fParentXIncludeHandler.getIncludeParentLanguage();
    }

    private int getResultDepth() {
        return this.fResultDepth;
    }

    private boolean getRootElementProcessed() {
        return isRootDocument() ? this.fSeenRootElement : this.fParentXIncludeHandler.getRootElementProcessed();
    }

    private boolean isEqual(String str, String str2) {
        return str == str2 || (str != null && str.equals(str2));
    }

    private boolean isValidInHTTPHeader(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (charAt < ' ' || charAt > '~') {
                return false;
            }
        }
        return true;
    }

    private void reportError(String str, Object[] objArr, short s) {
        XMLErrorReporter xMLErrorReporter = this.fErrorReporter;
        if (xMLErrorReporter != null) {
            xMLErrorReporter.reportError("http://www.w3.org/TR/xinclude", str, objArr, s);
        }
    }

    private int scopeOfBaseURI(int i) {
        for (int size = this.fBaseURIScope.size() - 1; size >= 0; size--) {
            if (this.fBaseURIScope.elementAt(size) <= i) {
                return size;
            }
        }
        return -1;
    }

    private int scopeOfLanguage(int i) {
        for (int size = this.fLanguageScope.size() - 1; size >= 0; size--) {
            if (this.fLanguageScope.elementAt(size) <= i) {
                return size;
            }
        }
        return -1;
    }

    private void setErrorReporter(XMLErrorReporter xMLErrorReporter) {
        this.fErrorReporter = xMLErrorReporter;
        if (xMLErrorReporter != null) {
            xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/xinclude", this.fXIncludeMessageFormatter);
            XMLLocator xMLLocator = this.fDocLocation;
            if (xMLLocator != null) {
                this.fErrorReporter.setDocumentLocator(xMLLocator);
            }
        }
    }

    private void setRootElementProcessed(boolean z) {
        if (isRootDocument()) {
            this.fSeenRootElement = z;
        } else {
            this.fParentXIncludeHandler.setRootElementProcessed(z);
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
        this.fNotations.add(notation);
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
        this.fUnparsedEntities.add(unparsedEntity);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.attributeDecl(str, str2, str3, strArr, str4, xMLString, xMLString2, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (getState() == 1) {
            if (this.fResultDepth == 0) {
                checkWhitespace(xMLString);
            } else if (this.fDocumentHandler != null) {
                this.fDepth++;
                this.fDocumentHandler.characters(xMLString, modifyAugmentations(augmentations));
                this.fDepth--;
            }
        }
    }

    public void checkAndSendNotation(Notation notation) {
        XMLDTDHandler xMLDTDHandler;
        if (!isRootDocument()) {
            this.fParentXIncludeHandler.checkAndSendNotation(notation);
            return;
        }
        int indexOf = this.fNotations.indexOf(notation);
        if (indexOf != -1) {
            if (notation.isDuplicate((Notation) this.fNotations.get(indexOf))) {
                return;
            }
            reportFatalError("NonDuplicateNotation", new Object[]{notation.name});
        } else {
            XMLResourceIdentifierImpl xMLResourceIdentifierImpl = new XMLResourceIdentifierImpl(notation.publicId, notation.systemId, notation.baseURI, notation.expandedSystemId);
            addNotation(notation.name, xMLResourceIdentifierImpl, notation.augmentations);
            if (!this.fSendUEAndNotationEvents || (xMLDTDHandler = this.fDTDHandler) == null) {
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
        int indexOf = this.fUnparsedEntities.indexOf(unparsedEntity);
        if (indexOf != -1) {
            if (unparsedEntity.isDuplicate((UnparsedEntity) this.fUnparsedEntities.get(indexOf))) {
                return;
            }
            reportFatalError("NonDuplicateUnparsedEntity", new Object[]{unparsedEntity.name});
        } else {
            XMLResourceIdentifierImpl xMLResourceIdentifierImpl = new XMLResourceIdentifierImpl(unparsedEntity.publicId, unparsedEntity.systemId, unparsedEntity.baseURI, unparsedEntity.expandedSystemId);
            addUnparsedEntity(unparsedEntity.name, xMLResourceIdentifierImpl, unparsedEntity.notation, unparsedEntity.augmentations);
            if (!this.fSendUEAndNotationEvents || (xMLDTDHandler = this.fDTDHandler) == null) {
                return;
            }
            xMLDTDHandler.unparsedEntityDecl(unparsedEntity.name, xMLResourceIdentifierImpl, unparsedEntity.notation, unparsedEntity.augmentations);
        }
    }

    public void checkNotation(String str) {
        Notation notation = new Notation();
        notation.name = str;
        int indexOf = this.fNotations.indexOf(notation);
        if (indexOf != -1) {
            checkAndSendNotation((Notation) this.fNotations.get(indexOf));
        }
    }

    public void checkUnparsedEntity(String str) {
        UnparsedEntity unparsedEntity = new UnparsedEntity();
        unparsedEntity.name = str;
        int indexOf = this.fUnparsedEntities.indexOf(unparsedEntity);
        if (indexOf != -1) {
            UnparsedEntity unparsedEntity2 = (UnparsedEntity) this.fUnparsedEntities.get(indexOf);
            checkNotation(unparsedEntity2.notation);
            checkAndSendUnparsedEntity(unparsedEntity2);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fInDTD) {
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
        this.fDepth++;
        this.fDocumentHandler.comment(xMLString, modifyAugmentations(augmentations));
        this.fDepth--;
    }

    public void copyFeatures(XMLComponentManager xMLComponentManager, ParserConfigurationSettings parserConfigurationSettings) {
        copyFeatures1(com.sun.org.apache.xerces.internal.impl.Constants.getXercesFeatures(), "http://apache.org/xml/features/", xMLComponentManager, parserConfigurationSettings);
        copyFeatures1(com.sun.org.apache.xerces.internal.impl.Constants.getSAXFeatures(), "http://xml.org/sax/features/", xMLComponentManager, parserConfigurationSettings);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        if (!isRootDocument() || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        xMLDocumentHandler.doctypeDecl(str, str2, str3, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.elementDecl(str, str2, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        int i = this.fDepth + 1;
        this.fDepth = i;
        int state = getState(i - 1);
        if (state == 3 && getState(this.fDepth - 2) == 3) {
            setState(2);
        } else {
            setState(state);
        }
        processXMLBaseAttributes(xMLAttributes);
        if (this.fFixupLanguage) {
            processXMLLangAttributes(xMLAttributes);
        }
        if (isIncludeElement(qName)) {
            if (handleIncludeElement(xMLAttributes)) {
                setState(2);
            } else {
                reportFatalError("NoFallback");
            }
        } else if (isFallbackElement(qName)) {
            handleFallbackElement();
        } else if (hasXIncludeNamespace(qName)) {
            if (getSawInclude(this.fDepth - 1)) {
                reportFatalError("IncludeChild", new Object[]{qName.rawname});
            }
            if (getSawFallback(this.fDepth - 1)) {
                reportFatalError("FallbackChild", new Object[]{qName.rawname});
            }
            if (getState() == 1) {
                if (this.fResultDepth == 0) {
                    checkMultipleRootElements();
                }
                if (this.fDocumentHandler != null) {
                    this.fDocumentHandler.emptyElement(qName, processAttributes(xMLAttributes), modifyAugmentations(augmentations));
                }
            }
        } else if (getState() == 1) {
            if (this.fResultDepth == 0) {
                checkMultipleRootElements();
            }
            if (this.fDocumentHandler != null) {
                this.fDocumentHandler.emptyElement(qName, processAttributes(xMLAttributes), modifyAugmentations(augmentations));
            }
        }
        setSawFallback(this.fDepth + 1, false);
        setSawInclude(this.fDepth, false);
        if (this.fBaseURIScope.size() > 0 && this.fDepth == this.fBaseURIScope.peek()) {
            restoreBaseURI();
        }
        this.fDepth--;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endAttlist(Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endAttlist(augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1 || this.fResultDepth == 0) {
            return;
        }
        this.fDocumentHandler.endCDATA(augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endConditional(Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endConditional(augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endDTD(Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endDTD(augmentations);
        }
        this.fInDTD = false;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        if (isRootDocument()) {
            if (!this.fSeenRootElement) {
                reportFatalError("RootElementRequired");
            }
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.endDocument(augmentations);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        if (isIncludeElement(qName) && getState() == 3 && !getSawFallback(this.fDepth + 1)) {
            reportFatalError("NoFallback");
        }
        if (isFallbackElement(qName)) {
            if (getState() == 1) {
                setState(2);
            }
        } else if (getState() == 1) {
            this.fResultDepth--;
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.endElement(qName, augmentations);
            }
        }
        setSawFallback(this.fDepth + 1, false);
        setSawInclude(this.fDepth, false);
        if (this.fBaseURIScope.size() > 0 && this.fDepth == this.fBaseURIScope.peek()) {
            restoreBaseURI();
        }
        if (this.fLanguageScope.size() > 0 && this.fDepth == this.fLanguageScope.peek()) {
            this.fCurrentLanguage = restoreLanguage();
        }
        this.fDepth--;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endExternalSubset(Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endExternalSubset(augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1 || this.fResultDepth == 0) {
            return;
        }
        this.fDocumentHandler.endGeneralEntity(str, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endParameterEntity(str, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.externalEntityDecl(str, xMLResourceIdentifier, augmentations);
        }
    }

    public String getBaseURI(int i) {
        return (String) this.fExpandedSystemID.elementAt(scopeOfBaseURI(i));
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource
    public XMLDTDHandler getDTDHandler() {
        return this.fDTDHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public XMLDTDSource getDTDSource() {
        return this.fDTDSource;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.fDocumentSource;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_FEATURES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return FEATURE_DEFAULTS[i];
            }
            i++;
        }
    }

    public String getLanguage(int i) {
        return (String) this.fLanguageStack.elementAt(scopeOfLanguage(i));
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_PROPERTIES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return PROPERTY_DEFAULTS[i];
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) RECOGNIZED_FEATURES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) RECOGNIZED_PROPERTIES.clone();
    }

    public String getRelativeBaseURI() throws URI.MalformedURIException {
        int includeParentDepth = getIncludeParentDepth();
        String relativeURI = getRelativeURI(includeParentDepth);
        if (isRootDocument()) {
            return relativeURI;
        }
        if (relativeURI.equals("")) {
            relativeURI = this.fCurrentBaseURI.getLiteralSystemId();
        }
        if (includeParentDepth != 0) {
            return relativeURI;
        }
        if (this.fParentRelativeURI == null) {
            this.fParentRelativeURI = this.fParentXIncludeHandler.getRelativeBaseURI();
        }
        if (this.fParentRelativeURI.equals("")) {
            return relativeURI;
        }
        URI uri = new URI(this.fParentRelativeURI, true);
        URI uri2 = new URI(uri, relativeURI);
        if (!isEqual(uri.getScheme(), uri2.getScheme())) {
            return relativeURI;
        }
        if (!isEqual(uri.getAuthority(), uri2.getAuthority())) {
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
        int scopeOfBaseURI = scopeOfBaseURI(i) + 1;
        if (scopeOfBaseURI == this.fBaseURIScope.size()) {
            return "";
        }
        URI uri = new URI("file", (String) this.fLiteralSystemID.elementAt(scopeOfBaseURI));
        int i2 = scopeOfBaseURI + 1;
        while (i2 < this.fBaseURIScope.size()) {
            URI uri2 = new URI(uri, (String) this.fLiteralSystemID.elementAt(i2));
            i2++;
            uri = uri2;
        }
        return uri.getPath();
    }

    public boolean getSawFallback(int i) {
        boolean[] zArr = this.fSawFallback;
        if (i >= zArr.length) {
            return false;
        }
        return zArr[i];
    }

    public boolean getSawInclude(int i) {
        boolean[] zArr = this.fSawInclude;
        if (i >= zArr.length) {
            return false;
        }
        return zArr[i];
    }

    public int getState(int i) {
        return this.fState[i];
    }

    public void handleFallbackElement() {
        if (!getSawInclude(this.fDepth - 1)) {
            if (getState() == 2) {
                return;
            } else {
                reportFatalError("FallbackParent");
            }
        }
        setSawInclude(this.fDepth, false);
        this.fNamespaceContext.setContextInvalid();
        if (getSawFallback(this.fDepth)) {
            reportFatalError("MultipleFallbacks");
        } else {
            setSawFallback(this.fDepth, true);
        }
        if (getState() == 3) {
            setState(1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader] */
    /* JADX WARN: Type inference failed for: r14v3, types: [com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader] */
    /* JADX WARN: Type inference failed for: r14v4, types: [com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader] */
    /* JADX WARN: Type inference failed for: r1v22, types: [com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader] */
    public boolean handleIncludeElement(XMLAttributes xMLAttributes) throws XNIException {
        String str;
        String str2;
        String str3;
        String str4;
        XMLInputSource xMLInputSource;
        ?? r1;
        XIncludeTextReader xIncludeTextReader;
        if (getSawInclude(this.fDepth - 1)) {
            reportFatalError("IncludeChild", new Object[]{XINCLUDE_INCLUDE});
        }
        if (getState() == 2) {
            return true;
        }
        setSawInclude(this.fDepth, true);
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
        ?? r14 = null;
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
            String escapeHref = escapeHref(value);
            if (value != escapeHref) {
                try {
                    if (new URI(escapeHref, true).getFragment() != null) {
                        reportFatalError("HrefFragmentIdentifierIllegal", new Object[]{escapeHref});
                    }
                } catch (URI.MalformedURIException unused2) {
                    reportFatalError("HrefSyntacticallyInvalid", new Object[]{escapeHref});
                }
                str = escapeHref;
            } else {
                reportFatalError("HrefSyntacticallyInvalid", new Object[]{value});
            }
        }
        str = value;
        if (value4 == null || isValidInHTTPHeader(value4)) {
            str2 = value4;
        } else {
            reportFatalError("AcceptMalformed", null);
            str2 = null;
        }
        if (value5 == null || isValidInHTTPHeader(value5)) {
            str3 = value5;
        } else {
            reportFatalError("AcceptLanguageMalformed", null);
            str3 = null;
        }
        if (this.fEntityResolver != null) {
            try {
                XMLInputSource resolveEntity = this.fEntityResolver.resolveEntity(new XMLResourceIdentifierImpl(null, str, this.fCurrentBaseURI.getExpandedSystemId(), XMLEntityManager.expandSystemId(str, this.fCurrentBaseURI.getExpandedSystemId(), false)));
                if (resolveEntity == null || (resolveEntity instanceof HTTPInputSource) || !((str2 != null || str3 != null) && resolveEntity.getCharacterStream() == null && resolveEntity.getByteStream() == null)) {
                    str4 = str;
                    xMLInputSource = resolveEntity;
                } else {
                    str4 = str;
                    try {
                        xMLInputSource = createInputSource(resolveEntity.getPublicId(), resolveEntity.getSystemId(), resolveEntity.getBaseSystemId(), str2, str3);
                    } catch (IOException e) {
                        e = e;
                        reportResourceError("XMLResourceError", new Object[]{str4, e.getMessage()});
                        return false;
                    }
                }
            } catch (IOException e2) {
                e = e2;
                str4 = str;
            }
        } else {
            str4 = str;
            xMLInputSource = null;
        }
        if (xMLInputSource == null) {
            xMLInputSource = (str2 == null && str3 == null) ? new XMLInputSource(null, str4, this.fCurrentBaseURI.getExpandedSystemId()) : createInputSource(null, str4, this.fCurrentBaseURI.getExpandedSystemId(), str2, str3);
        }
        if (str5.equals(XINCLUDE_PARSE_XML)) {
            if ((value3 != null && this.fXPointerChildConfig == null) || (value3 == null && this.fXIncludeChildConfig == null)) {
                XMLParserConfiguration xMLParserConfiguration = (XMLParserConfiguration) ObjectFactory.newInstance(value3 != null ? "com.sun.org.apache.xerces.internal.parsers.XPointerParserConfiguration" : XINCLUDE_DEFAULT_CONFIGURATION, ObjectFactory.findClassLoader(), true);
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
                this.fChildConfig.setProperty(BUFFER_SIZE, new Integer(this.fBufferSize));
                this.fNeedCopyFeatures = true;
                this.fChildConfig.setProperty("http://apache.org/xml/properties/internal/namespace-context", this.fNamespaceContext);
                this.fChildConfig.setFeature(XINCLUDE_FIXUP_BASE_URIS, this.fFixupBaseURIs);
                this.fChildConfig.setFeature(XINCLUDE_FIXUP_LANGUAGE, this.fFixupLanguage);
                if (value3 != null) {
                    XPointerHandler xPointerHandler = (XPointerHandler) this.fChildConfig.getProperty("http://apache.org/xml/properties/internal/xpointer-handler");
                    this.fXPtrProcessor = xPointerHandler;
                    xPointerHandler.setProperty("http://apache.org/xml/properties/internal/namespace-context", this.fNamespaceContext);
                    ((XPointerHandler) this.fXPtrProcessor).setProperty(XINCLUDE_FIXUP_BASE_URIS, new Boolean(this.fFixupBaseURIs));
                    ((XPointerHandler) this.fXPtrProcessor).setProperty(XINCLUDE_FIXUP_LANGUAGE, new Boolean(this.fFixupLanguage));
                    XMLErrorReporter xMLErrorReporter3 = this.fErrorReporter;
                    if (xMLErrorReporter3 != null) {
                        ((XPointerHandler) this.fXPtrProcessor).setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter3);
                    }
                    xPointerHandler.setParent(this);
                    xPointerHandler.setDocumentHandler(getDocumentHandler());
                    this.fXPointerChildConfig = this.fChildConfig;
                } else {
                    XIncludeHandler xIncludeHandler = (XIncludeHandler) this.fChildConfig.getProperty("http://apache.org/xml/properties/internal/xinclude-handler");
                    xIncludeHandler.setParent(this);
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
            if (this.fNeedCopyFeatures) {
                copyFeatures(this.fSettings, this.fChildConfig);
            }
            this.fNeedCopyFeatures = false;
            try {
                try {
                    this.fNamespaceContext.pushScope();
                    this.fChildConfig.parse(xMLInputSource);
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
            } catch (XNIException unused3) {
                XMLErrorReporter xMLErrorReporter6 = this.fErrorReporter;
                if (xMLErrorReporter6 != null) {
                    xMLErrorReporter6.setDocumentLocator(this.fDocLocation);
                }
                reportFatalError("XMLParseError", new Object[]{str4});
            } catch (IOException e4) {
                XMLErrorReporter xMLErrorReporter7 = this.fErrorReporter;
                if (xMLErrorReporter7 != null) {
                    xMLErrorReporter7.setDocumentLocator(this.fDocLocation);
                }
                reportResourceError("XMLResourceError", new Object[]{str4, e4.getMessage()});
                this.fNamespaceContext.popScope();
                return false;
            }
            this.fNamespaceContext.popScope();
        } else if (str5.equals(XINCLUDE_PARSE_TEXT)) {
            xMLInputSource.setEncoding(xMLAttributes.getValue(XINCLUDE_ATTR_ENCODING));
            try {
                try {
                    try {
                        if (this.fIsXML11) {
                            XIncludeTextReader xIncludeTextReader2 = this.fXInclude11TextReader;
                            if (xIncludeTextReader2 == null) {
                                this.fXInclude11TextReader = new XInclude11TextReader(xMLInputSource, this, this.fBufferSize);
                            } else {
                                xIncludeTextReader2.setInputSource(xMLInputSource);
                            }
                            xIncludeTextReader = this.fXInclude11TextReader;
                        } else {
                            XIncludeTextReader xIncludeTextReader3 = this.fXInclude10TextReader;
                            if (xIncludeTextReader3 == null) {
                                this.fXInclude10TextReader = new XIncludeTextReader(xMLInputSource, this, this.fBufferSize);
                            } else {
                                xIncludeTextReader3.setInputSource(xMLInputSource);
                            }
                            xIncludeTextReader = this.fXInclude10TextReader;
                        }
                        r1 = xIncludeTextReader;
                    } catch (Throwable th2) {
                        th = th2;
                        if (r14 != null) {
                            try {
                                r14.close();
                            } catch (IOException e5) {
                                reportResourceError("TextResourceError", new Object[]{str4, e5.getMessage()});
                                return false;
                            }
                        }
                        throw th;
                    }
                } catch (MalformedByteSequenceException e6) {
                    e = e6;
                } catch (CharConversionException unused4) {
                    r1 = 0;
                } catch (IOException e7) {
                    e = e7;
                }
                try {
                    r1.setErrorReporter(this.fErrorReporter);
                    r1.parse();
                    try {
                        r1.close();
                        xMLInputSource = r1;
                    } catch (IOException e8) {
                        reportResourceError("TextResourceError", new Object[]{str4, e8.getMessage()});
                        return false;
                    }
                } catch (MalformedByteSequenceException e9) {
                    e = e9;
                    r14 = r1;
                    this.fErrorReporter.reportError(e.getDomain(), e.getKey(), e.getArguments(), (short) 2);
                    if (r14 != null) {
                        try {
                            r14.close();
                        } catch (IOException e10) {
                            reportResourceError("TextResourceError", new Object[]{str4, e10.getMessage()});
                            return false;
                        }
                    }
                    return true;
                } catch (CharConversionException unused5) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "CharConversionFailure", null, (short) 2);
                    xMLInputSource = r1;
                    if (r1 != 0) {
                        try {
                            r1.close();
                            xMLInputSource = r1;
                        } catch (IOException e11) {
                            reportResourceError("TextResourceError", new Object[]{str4, e11.getMessage()});
                            return false;
                        }
                    }
                    return true;
                } catch (IOException e12) {
                    e = e12;
                    r14 = r1;
                    reportResourceError("TextResourceError", new Object[]{str4, e.getMessage()});
                    if (r14 != null) {
                        try {
                            r14.close();
                        } catch (IOException e13) {
                            reportResourceError("TextResourceError", new Object[]{str4, e13.getMessage()});
                        }
                    }
                    return false;
                }
            } catch (Throwable th3) {
                th = th3;
                r14 = xMLInputSource;
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

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1 || this.fResultDepth == 0) {
            return;
        }
        this.fDocumentHandler.ignorableWhitespace(xMLString, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.ignoredCharacters(xMLString, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
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
        return getSawFallback(this.fDepth - 1);
    }

    public boolean isTopLevelIncludedItemViaInclude() {
        return this.fDepth == 1 && !isRootDocument();
    }

    public Augmentations modifyAugmentations(Augmentations augmentations) {
        return modifyAugmentations(augmentations, false);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        addNotation(str, xMLResourceIdentifier, augmentations);
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.notationDecl(str, xMLResourceIdentifier, augmentations);
        }
    }

    public XMLAttributes processAttributes(XMLAttributes xMLAttributes) {
        String expandedSystemId;
        if (isTopLevelIncludedItem()) {
            if (this.fFixupBaseURIs && !sameBaseURIAsIncludeParent()) {
                if (xMLAttributes == null) {
                    xMLAttributes = new XMLAttributesImpl();
                }
                try {
                    expandedSystemId = getRelativeBaseURI();
                } catch (URI.MalformedURIException unused) {
                    expandedSystemId = this.fCurrentBaseURI.getExpandedSystemId();
                }
                xMLAttributes.setSpecified(xMLAttributes.addAttribute(XML_BASE_QNAME, XMLSymbols.fCDATASymbol, expandedSystemId), true);
            }
            if (this.fFixupLanguage && !sameLanguageAsIncludeParent()) {
                if (xMLAttributes == null) {
                    xMLAttributes = new XMLAttributesImpl();
                }
                xMLAttributes.setSpecified(xMLAttributes.addAttribute(XML_LANG_QNAME, XMLSymbols.fCDATASymbol, this.fCurrentLanguage), true);
            }
            Enumeration allPrefixes = this.fNamespaceContext.getAllPrefixes();
            while (allPrefixes.hasMoreElements()) {
                String str = (String) allPrefixes.nextElement();
                String uRIFromIncludeParent = this.fNamespaceContext.getURIFromIncludeParent(str);
                String uri = this.fNamespaceContext.getURI(str);
                if (uRIFromIncludeParent != uri && xMLAttributes != null) {
                    String str2 = XMLSymbols.EMPTY_STRING;
                    if (str == str2) {
                        String str3 = NamespaceContext.XMLNS_URI;
                        String str4 = XMLSymbols.PREFIX_XMLNS;
                        if (xMLAttributes.getValue(str3, str4) == null) {
                            QName qName = (QName) NEW_NS_ATTR_QNAME.clone();
                            qName.prefix = null;
                            qName.localpart = str4;
                            qName.rawname = str4;
                            String str5 = XMLSymbols.fCDATASymbol;
                            if (uri != null) {
                                str2 = uri;
                            }
                            xMLAttributes.setSpecified(xMLAttributes.addAttribute(qName, str5, str2), true);
                            this.fNamespaceContext.declarePrefix(str, uri);
                        }
                    } else if (xMLAttributes.getValue(NamespaceContext.XMLNS_URI, str) == null) {
                        QName qName2 = (QName) NEW_NS_ATTR_QNAME.clone();
                        qName2.localpart = str;
                        String str6 = qName2.rawname + str;
                        qName2.rawname = str6;
                        SymbolTable symbolTable = this.fSymbolTable;
                        qName2.rawname = symbolTable != null ? symbolTable.addSymbol(str6) : str6.intern();
                        String str7 = XMLSymbols.fCDATASymbol;
                        if (uri != null) {
                            str2 = uri;
                        }
                        xMLAttributes.setSpecified(xMLAttributes.addAttribute(qName2, str7, str2), true);
                        this.fNamespaceContext.declarePrefix(str, uri);
                    }
                }
            }
        }
        if (xMLAttributes != null) {
            int length = xMLAttributes.getLength();
            for (int i = 0; i < length; i++) {
                String type = xMLAttributes.getType(i);
                String value = xMLAttributes.getValue(i);
                if (type == XMLSymbols.fENTITYSymbol) {
                    checkUnparsedEntity(value);
                }
                if (type == XMLSymbols.fENTITIESSymbol) {
                    StringTokenizer stringTokenizer = new StringTokenizer(value);
                    while (stringTokenizer.hasMoreTokens()) {
                        checkUnparsedEntity(stringTokenizer.nextToken());
                    }
                } else if (type == XMLSymbols.fNOTATIONSymbol) {
                    checkNotation(value);
                }
            }
        }
        return xMLAttributes;
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

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fInDTD) {
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
        this.fDepth++;
        this.fDocumentHandler.processingInstruction(str, xMLString, modifyAugmentations(augmentations));
        this.fDepth--;
    }

    public void reportFatalError(String str) {
        reportFatalError(str, null);
    }

    public void reportResourceError(String str) {
        reportFatalError(str, null);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XNIException {
        this.fNamespaceContext = null;
        this.fDepth = 0;
        this.fResultDepth = isRootDocument() ? 0 : this.fParentXIncludeHandler.getResultDepth();
        this.fNotations.clear();
        this.fUnparsedEntities.clear();
        this.fParentRelativeURI = null;
        this.fIsXML11 = false;
        this.fInDTD = false;
        this.fSeenRootElement = false;
        this.fBaseURIScope.clear();
        this.fBaseURI.clear();
        this.fLiteralSystemID.clear();
        this.fExpandedSystemID.clear();
        this.fLanguageScope.clear();
        this.fLanguageStack.clear();
        int i = 0;
        while (true) {
            int[] iArr = this.fState;
            if (i >= iArr.length) {
                break;
            }
            iArr[i] = 1;
            i++;
        }
        int i2 = 0;
        while (true) {
            boolean[] zArr = this.fSawFallback;
            if (i2 >= zArr.length) {
                break;
            }
            zArr[i2] = false;
            i2++;
        }
        int i3 = 0;
        while (true) {
            boolean[] zArr2 = this.fSawInclude;
            if (i3 < zArr2.length) {
                zArr2[i3] = false;
                i3++;
            } else {
                try {
                    break;
                } catch (XMLConfigurationException unused) {
                }
            }
        }
        if (!xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings")) {
            return;
        }
        this.fNeedCopyFeatures = true;
        try {
            boolean feature = xMLComponentManager.getFeature(ALLOW_UE_AND_NOTATION_EVENTS);
            this.fSendUEAndNotationEvents = feature;
            XMLParserConfiguration xMLParserConfiguration = this.fChildConfig;
            if (xMLParserConfiguration != null) {
                xMLParserConfiguration.setFeature(ALLOW_UE_AND_NOTATION_EVENTS, feature);
            }
        } catch (XMLConfigurationException unused2) {
        }
        try {
            boolean feature2 = xMLComponentManager.getFeature(XINCLUDE_FIXUP_BASE_URIS);
            this.fFixupBaseURIs = feature2;
            XMLParserConfiguration xMLParserConfiguration2 = this.fChildConfig;
            if (xMLParserConfiguration2 != null) {
                xMLParserConfiguration2.setFeature(XINCLUDE_FIXUP_BASE_URIS, feature2);
            }
        } catch (XMLConfigurationException unused3) {
            this.fFixupBaseURIs = true;
        }
        try {
            boolean feature3 = xMLComponentManager.getFeature(XINCLUDE_FIXUP_LANGUAGE);
            this.fFixupLanguage = feature3;
            XMLParserConfiguration xMLParserConfiguration3 = this.fChildConfig;
            if (xMLParserConfiguration3 != null) {
                xMLParserConfiguration3.setFeature(XINCLUDE_FIXUP_LANGUAGE, feature3);
            }
        } catch (XMLConfigurationException unused4) {
            this.fFixupLanguage = true;
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
                setErrorReporter(xMLErrorReporter);
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
            Integer num = (Integer) xMLComponentManager.getProperty(BUFFER_SIZE);
            if (num == null || num.intValue() <= 0) {
                this.fBufferSize = ((Integer) getPropertyDefault(BUFFER_SIZE)).intValue();
            } else {
                this.fBufferSize = num.intValue();
                XMLParserConfiguration xMLParserConfiguration8 = this.fChildConfig;
                if (xMLParserConfiguration8 != null) {
                    xMLParserConfiguration8.setProperty(BUFFER_SIZE, num);
                }
            }
        } catch (XMLConfigurationException unused9) {
            this.fBufferSize = ((Integer) getPropertyDefault(BUFFER_SIZE)).intValue();
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
                if (xMLComponentManager.getFeature("http://xml.org/sax/features/validation")) {
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

    public boolean sameBaseURIAsIncludeParent() {
        String includeParentBaseURI = getIncludeParentBaseURI();
        return includeParentBaseURI != null && includeParentBaseURI.equals(this.fCurrentBaseURI.getExpandedSystemId());
    }

    public boolean sameLanguageAsIncludeParent() {
        String includeParentLanguage = getIncludeParentLanguage();
        return includeParentLanguage != null && includeParentLanguage.equalsIgnoreCase(this.fCurrentLanguage);
    }

    public void saveBaseURI() {
        this.fBaseURIScope.push(this.fDepth);
        this.fBaseURI.push(this.fCurrentBaseURI.getBaseSystemId());
        this.fLiteralSystemID.push(this.fCurrentBaseURI.getLiteralSystemId());
        this.fExpandedSystemID.push(this.fCurrentBaseURI.getExpandedSystemId());
    }

    public void saveLanguage(String str) {
        this.fLanguageScope.push(this.fDepth);
        this.fLanguageStack.push(str);
    }

    public boolean searchForRecursiveIncludes(XMLLocator xMLLocator) {
        String expandedSystemId = xMLLocator.getExpandedSystemId();
        if (expandedSystemId == null) {
            try {
                expandedSystemId = XMLEntityManager.expandSystemId(xMLLocator.getLiteralSystemId(), xMLLocator.getBaseSystemId(), false);
            } catch (URI.MalformedURIException unused) {
                reportFatalError("ExpandedSystemId");
            }
        }
        if (expandedSystemId.equals(this.fCurrentBaseURI.getExpandedSystemId())) {
            return true;
        }
        XIncludeHandler xIncludeHandler = this.fParentXIncludeHandler;
        if (xIncludeHandler == null) {
            return false;
        }
        return xIncludeHandler.searchForRecursiveIncludes(xMLLocator);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource
    public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
        this.fDTDHandler = xMLDTDHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void setDTDSource(XMLDTDSource xMLDTDSource) {
        this.fDTDSource = xMLDTDSource;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
        this.fDocumentSource = xMLDocumentSource;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if (str.equals(ALLOW_UE_AND_NOTATION_EVENTS)) {
            this.fSendUEAndNotationEvents = z;
        }
        ParserConfigurationSettings parserConfigurationSettings = this.fSettings;
        if (parserConfigurationSettings != null) {
            this.fNeedCopyFeatures = true;
            parserConfigurationSettings.setFeature(str, z);
        }
    }

    public void setParent(XIncludeHandler xIncludeHandler) {
        this.fParentXIncludeHandler = xIncludeHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
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
            setErrorReporter((XMLErrorReporter) obj);
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
        if (str.equals(BUFFER_SIZE)) {
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
        boolean[] zArr = this.fSawFallback;
        if (i >= zArr.length) {
            boolean[] zArr2 = new boolean[i * 2];
            System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
            this.fSawFallback = zArr2;
        }
        this.fSawFallback[i] = z;
    }

    public void setSawInclude(int i, boolean z) {
        boolean[] zArr = this.fSawInclude;
        if (i >= zArr.length) {
            boolean[] zArr2 = new boolean[i * 2];
            System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
            this.fSawInclude = zArr2;
        }
        this.fSawInclude[i] = z;
    }

    public void setState(int i) {
        int i2 = this.fDepth;
        int[] iArr = this.fState;
        if (i2 >= iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.fState = iArr2;
        }
        this.fState[this.fDepth] = i;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startAttlist(String str, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startAttlist(str, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1 || this.fResultDepth == 0) {
            return;
        }
        this.fDocumentHandler.startCDATA(augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startConditional(short s, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startConditional(s, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
        this.fInDTD = true;
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startDTD(xMLLocator, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        this.fErrorReporter.setDocumentLocator(xMLLocator);
        if (!isRootDocument() && this.fParentXIncludeHandler.searchForRecursiveIncludes(xMLLocator)) {
            reportFatalError("RecursiveInclude", new Object[]{xMLLocator.getExpandedSystemId()});
        }
        if (!(namespaceContext instanceof XIncludeNamespaceSupport)) {
            reportFatalError("IncompatibleNamespaceContext");
        }
        this.fNamespaceContext = (XIncludeNamespaceSupport) namespaceContext;
        this.fDocLocation = xMLLocator;
        this.fCurrentBaseURI.setBaseSystemId(xMLLocator.getBaseSystemId());
        this.fCurrentBaseURI.setExpandedSystemId(xMLLocator.getExpandedSystemId());
        this.fCurrentBaseURI.setLiteralSystemId(xMLLocator.getLiteralSystemId());
        saveBaseURI();
        if (augmentations == null) {
            augmentations = new AugmentationsImpl();
        }
        augmentations.putItem("currentBaseURI", this.fCurrentBaseURI);
        String str2 = XMLSymbols.EMPTY_STRING;
        this.fCurrentLanguage = str2;
        saveLanguage(str2);
        if (!isRootDocument() || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        xMLDocumentHandler.startDocument(xMLLocator, str, namespaceContext, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        int i = this.fDepth + 1;
        this.fDepth = i;
        int state = getState(i - 1);
        if (state == 3 && getState(this.fDepth - 2) == 3) {
            setState(2);
        } else {
            setState(state);
        }
        processXMLBaseAttributes(xMLAttributes);
        if (this.fFixupLanguage) {
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
        if (!hasXIncludeNamespace(qName)) {
            if (getState() == 1) {
                int i2 = this.fResultDepth;
                this.fResultDepth = i2 + 1;
                if (i2 == 0) {
                    checkMultipleRootElements();
                }
                if (this.fDocumentHandler != null) {
                    Augmentations modifyAugmentations = modifyAugmentations(augmentations);
                    this.fDocumentHandler.startElement(qName, processAttributes(xMLAttributes), modifyAugmentations);
                    return;
                }
                return;
            }
            return;
        }
        if (getSawInclude(this.fDepth - 1)) {
            reportFatalError("IncludeChild", new Object[]{qName.rawname});
        }
        if (getSawFallback(this.fDepth - 1)) {
            reportFatalError("FallbackChild", new Object[]{qName.rawname});
        }
        if (getState() == 1) {
            int i3 = this.fResultDepth;
            this.fResultDepth = i3 + 1;
            if (i3 == 0) {
                checkMultipleRootElements();
            }
            if (this.fDocumentHandler != null) {
                Augmentations modifyAugmentations2 = modifyAugmentations(augmentations);
                this.fDocumentHandler.startElement(qName, processAttributes(xMLAttributes), modifyAugmentations2);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startExternalSubset(xMLResourceIdentifier, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (getState() == 1) {
            if (this.fResultDepth == 0) {
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

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startParameterEntity(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        if (this.fDocumentHandler == null || getState() != 1) {
            return;
        }
        this.fDocumentHandler.textDecl(str, str2, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        addUnparsedEntity(str, xMLResourceIdentifier, str2, augmentations);
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.unparsedEntityDecl(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler;
        this.fIsXML11 = SerializerConstants.XMLVERSION11.equals(str);
        if (!isRootDocument() || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        xMLDocumentHandler.xmlDecl(str, str2, str3, augmentations);
    }

    public int getState() {
        return this.fState[this.fDepth];
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
        reportError(str, objArr, (short) 2);
    }

    public void reportResourceError(String str, Object[] objArr) {
        reportError(str, objArr, (short) 0);
    }

    private void copyFeatures1(Enumeration enumeration, String str, XMLComponentManager xMLComponentManager, XMLParserConfiguration xMLParserConfiguration) {
        while (enumeration.hasMoreElements()) {
            String str2 = str + ((String) enumeration.nextElement());
            try {
                xMLParserConfiguration.setFeature(str2, xMLComponentManager.getFeature(str2));
            } catch (XMLConfigurationException unused) {
            }
        }
    }

    public void copyFeatures(XMLComponentManager xMLComponentManager, XMLParserConfiguration xMLParserConfiguration) {
        copyFeatures1(com.sun.org.apache.xerces.internal.impl.Constants.getXercesFeatures(), "http://apache.org/xml/features/", xMLComponentManager, xMLParserConfiguration);
        copyFeatures1(com.sun.org.apache.xerces.internal.impl.Constants.getSAXFeatures(), "http://xml.org/sax/features/", xMLComponentManager, xMLParserConfiguration);
    }
}
