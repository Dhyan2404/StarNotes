package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaNamespaceSupport;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaLoader;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSDDescription;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSDeclarationPool;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSElementDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSGrammarBucket;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSGroupDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSModelGroupImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSParticleDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.opti.ElementImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.opti.SchemaDOM;
import com.sun.org.apache.xerces.internal.impl.p055xs.opti.SchemaDOMParser;
import com.sun.org.apache.xerces.internal.impl.p055xs.opti.SchemaParsingConfig;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.SimpleLocator;
import com.sun.org.apache.xerces.internal.p056xs.XSObject;
import com.sun.org.apache.xerces.internal.p056xs.XSParticle;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.parsers.SAXParser;
import com.sun.org.apache.xerces.internal.parsers.XML11Configuration;
import com.sun.org.apache.xerces.internal.util.DOMInputSource;
import com.sun.org.apache.xerces.internal.util.DOMUtil;
import com.sun.org.apache.xerces.internal.util.DefaultErrorHandler;
import com.sun.org.apache.xerces.internal.util.SAXInputSource;
import com.sun.org.apache.xerces.internal.util.SecurityManager;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.URI;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLSchemaDescription;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;
import java.io.StringReader;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Stack;
import java.util.Vector;
import org.apache.xmlbeans.XmlErrorCodes;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public class XSDHandler {
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    static final int ATTRIBUTEGROUP_TYPE = 2;
    static final int ATTRIBUTE_TYPE = 1;
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final boolean DEBUG_NODE_POOL = false;
    protected static final String DISALLOW_DOCTYPE = "http://apache.org/xml/features/disallow-doctype-decl";
    static final int ELEMENT_TYPE = 3;
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    public static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    static final int GROUP_TYPE = 4;
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    static final int IDENTITYCONSTRAINT_TYPE = 5;
    private static final int INC_KEYREF_STACK_AMOUNT = 2;
    private static final int INC_STACK_SIZE = 10;
    private static final int INIT_KEYREF_STACK = 2;
    private static final int INIT_STACK_SIZE = 30;
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    private static final String NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    static final int NOTATION_TYPE = 6;
    public static final String REDEF_IDENTIFIER = "_fn3dktizrknc9pi";
    private static final String SECURE_PROCESSING = "http://apache.org/xml/properties/security-manager";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String STRING_INTERNING = "http://xml.org/sax/features/string-interning";
    public static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    static final int TYPEDECL_TYPE = 7;
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    public static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String XMLSCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    private int[] fAllContext;
    private Vector fAllTNSs;
    XML11Configuration fAnnotationValidator;
    private XSAttributeChecker fAttributeChecker;
    XSDAttributeGroupTraverser fAttributeGroupTraverser;
    XSDAttributeTraverser fAttributeTraverser;
    XSDComplexTypeTraverser fComplexTypeTraverser;
    protected XSDeclarationPool fDeclPool;
    private Hashtable fDependencyMap;
    private Hashtable fDoc2SystemId;
    private Hashtable fDoc2XSDocumentMap;
    XSDElementTraverser fElementTraverser;
    private XMLEntityResolver fEntityResolver;
    private XMLErrorReporter fErrorReporter;
    private XSGrammarBucket fGrammarBucket;
    XSAnnotationGrammarPool fGrammarBucketAdapter;
    private XMLGrammarPool fGrammarPool;
    XSDGroupTraverser fGroupTraverser;
    private Hashtable fHiddenNodes;
    private boolean fHonourAllSchemaLocations;
    private Hashtable fImportMap;
    private XSElementDecl[] fKeyrefElems;
    private String[][] fKeyrefNamespaceContext;
    private int fKeyrefStackPos;
    XSDKeyrefTraverser fKeyrefTraverser;
    private Element[] fKeyrefs;
    private XSDocumentInfo[] fKeyrefsMapXSDocumentInfo;
    private boolean fLastSchemaWasDuplicate;
    private String[][] fLocalElemNamespaceContext;
    private int fLocalElemStackPos;
    private Element[] fLocalElementDecl;
    private XSDocumentInfo[] fLocalElementDecl_schema;
    private Hashtable fLocationPairs;
    protected Hashtable fNotationRegistry;
    XSDNotationTraverser fNotationTraverser;
    private XSObject[] fParent;
    private XSParticleDecl[] fParticle;
    private Hashtable fRedefine2NSSupport;
    private Hashtable fRedefine2XSDMap;
    private Hashtable fRedefinedRestrictedAttributeGroupRegistry;
    private Hashtable fRedefinedRestrictedGroupRegistry;
    private Vector fReportedTNS;
    private XSDocumentInfo fRoot;
    private XSDDescription fSchemaGrammarDescription;
    SchemaDOMParser fSchemaParser;
    protected SecurityManager fSecureProcessing;
    XSDSimpleTypeTraverser fSimpleTypeTraverser;
    private SymbolTable fSymbolTable;
    private Hashtable fTraversed;
    XSDUniqueOrKeyTraverser fUniqueOrKeyTraverser;
    private Hashtable fUnparsedAttributeGroupRegistry;
    private Hashtable fUnparsedAttributeGroupRegistrySub;
    private Hashtable fUnparsedAttributeRegistry;
    private Hashtable fUnparsedAttributeRegistrySub;
    private Hashtable fUnparsedElementRegistry;
    private Hashtable fUnparsedElementRegistrySub;
    private Hashtable fUnparsedGroupRegistry;
    private Hashtable fUnparsedGroupRegistrySub;
    private Hashtable fUnparsedIdentityConstraintRegistry;
    private Hashtable fUnparsedIdentityConstraintRegistrySub;
    private Hashtable fUnparsedNotationRegistry;
    private Hashtable fUnparsedNotationRegistrySub;
    private Hashtable fUnparsedTypeRegistry;
    private Hashtable fUnparsedTypeRegistrySub;
    private boolean fValidateAnnotations;
    XSDWildcardTraverser fWildCardTraverser;
    SchemaContentHandler fXSContentHandler;
    private Hashtable fXSDocumentInfoRegistry;

    /* renamed from: xl */
    private SimpleLocator f64118xl;
    private static final String[][] NS_ERROR_CODES = {new String[]{"src-include.2.1", "src-include.2.1"}, new String[]{"src-redefine.3.1", "src-redefine.3.1"}, new String[]{"src-import.3.1", "src-import.3.2"}, null, new String[]{"TargetNamespace.1", "TargetNamespace.2"}, new String[]{"TargetNamespace.1", "TargetNamespace.2"}, new String[]{"TargetNamespace.1", "TargetNamespace.2"}, new String[]{"TargetNamespace.1", "TargetNamespace.2"}};
    private static final String[] ELE_ERROR_CODES = {"src-include.1", "src-redefine.2", "src-import.2", "schema_reference.4", "schema_reference.4", "schema_reference.4", "schema_reference.4", "schema_reference.4"};
    private static final String[] COMP_TYPE = {null, "attribute declaration", "attribute group", "element declaration", "group", "identity constraint", "notation", "type definition"};
    private static final String[] CIRCULAR_CODES = {"Internal-Error", "Internal-Error", XmlErrorCodes.SCHEMA_ATTR_GROUP$SELF_REF, "e-props-correct.6", XmlErrorCodes.MODEL_GROUP_PROPERTIES$CIRCULAR, "Internal-Error", "Internal-Error", "st-props-correct.2"};

    /* loaded from: classes10.dex */
    public static class XSAnnotationGrammarPool implements XMLGrammarPool {
        private XSGrammarBucket fGrammarBucket;
        private Grammar[] fInitialGrammarSet;

        private XSAnnotationGrammarPool() {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public void cacheGrammars(String str, Grammar[] grammarArr) {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public void clear() {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public void lockPool() {
        }

        public void refreshGrammars(XSGrammarBucket xSGrammarBucket) {
            this.fGrammarBucket = xSGrammarBucket;
            this.fInitialGrammarSet = null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            SchemaGrammar grammar;
            if (xMLGrammarDescription.getGrammarType() != "http://www.w3.org/2001/XMLSchema") {
                return null;
            }
            String targetNamespace = ((XMLSchemaDescription) xMLGrammarDescription).getTargetNamespace();
            XSGrammarBucket xSGrammarBucket = this.fGrammarBucket;
            if (xSGrammarBucket != null && (grammar = xSGrammarBucket.getGrammar(targetNamespace)) != null) {
                return grammar;
            }
            if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(targetNamespace)) {
                return SchemaGrammar.SG_Schema4Annotations;
            }
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public Grammar[] retrieveInitialGrammarSet(String str) {
            if (str != "http://www.w3.org/2001/XMLSchema") {
                return new Grammar[0];
            }
            if (this.fInitialGrammarSet == null) {
                XSGrammarBucket xSGrammarBucket = this.fGrammarBucket;
                if (xSGrammarBucket == null) {
                    this.fInitialGrammarSet = new Grammar[]{SchemaGrammar.SG_Schema4Annotations};
                } else {
                    SchemaGrammar[] grammars = xSGrammarBucket.getGrammars();
                    for (SchemaGrammar schemaGrammar : grammars) {
                        if (SchemaSymbols.URI_SCHEMAFORSCHEMA.equals(schemaGrammar.getTargetNamespace())) {
                            this.fInitialGrammarSet = grammars;
                            return grammars;
                        }
                    }
                    int length = grammars.length + 1;
                    Grammar[] grammarArr = new Grammar[length];
                    System.arraycopy(grammars, 0, grammarArr, 0, grammars.length);
                    grammarArr[length - 1] = SchemaGrammar.SG_Schema4Annotations;
                    this.fInitialGrammarSet = grammarArr;
                }
            }
            return this.fInitialGrammarSet;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
        public void unlockPool() {
        }
    }

    /* loaded from: classes10.dex */
    public static class XSDKey {
        String referNS;
        short referType;
        String systemId;

        public XSDKey(String str, short s, String str2) {
            this.systemId = str;
            this.referType = s;
            this.referNS = str2;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof XSDKey)) {
                return false;
            }
            XSDKey xSDKey = (XSDKey) obj;
            short s = this.referType;
            return (!(s == 1 || xSDKey.referType == 1) || s == xSDKey.referType) && this.referNS == xSDKey.referNS && (str = this.systemId) != null && str.equals(xSDKey.systemId);
        }

        public int hashCode() {
            String str = this.referNS;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }
    }

    public XSDHandler() {
        this.fNotationRegistry = new Hashtable();
        this.fDeclPool = null;
        this.fSecureProcessing = null;
        this.fUnparsedAttributeRegistry = new Hashtable();
        this.fUnparsedAttributeGroupRegistry = new Hashtable();
        this.fUnparsedElementRegistry = new Hashtable();
        this.fUnparsedGroupRegistry = new Hashtable();
        this.fUnparsedIdentityConstraintRegistry = new Hashtable();
        this.fUnparsedNotationRegistry = new Hashtable();
        this.fUnparsedTypeRegistry = new Hashtable();
        this.fUnparsedAttributeRegistrySub = new Hashtable();
        this.fUnparsedAttributeGroupRegistrySub = new Hashtable();
        this.fUnparsedElementRegistrySub = new Hashtable();
        this.fUnparsedGroupRegistrySub = new Hashtable();
        this.fUnparsedIdentityConstraintRegistrySub = new Hashtable();
        this.fUnparsedNotationRegistrySub = new Hashtable();
        this.fUnparsedTypeRegistrySub = new Hashtable();
        this.fXSDocumentInfoRegistry = new Hashtable();
        this.fDependencyMap = new Hashtable();
        this.fImportMap = new Hashtable();
        this.fAllTNSs = new Vector();
        this.fLocationPairs = null;
        this.fHiddenNodes = null;
        this.fTraversed = new Hashtable();
        this.fDoc2SystemId = new Hashtable();
        this.fRoot = null;
        this.fDoc2XSDocumentMap = new Hashtable();
        this.fRedefine2XSDMap = new Hashtable();
        this.fRedefine2NSSupport = new Hashtable();
        this.fRedefinedRestrictedAttributeGroupRegistry = new Hashtable();
        this.fRedefinedRestrictedGroupRegistry = new Hashtable();
        this.fValidateAnnotations = false;
        this.fHonourAllSchemaLocations = false;
        this.fLocalElemStackPos = 0;
        this.fParticle = new XSParticleDecl[30];
        this.fLocalElementDecl = new Element[30];
        this.fLocalElementDecl_schema = new XSDocumentInfo[30];
        this.fAllContext = new int[30];
        this.fParent = new XSObject[30];
        this.fLocalElemNamespaceContext = (String[][]) Array.newInstance((Class<?>) String.class, 30, 1);
        this.fKeyrefStackPos = 0;
        this.fKeyrefs = new Element[2];
        this.fKeyrefsMapXSDocumentInfo = new XSDocumentInfo[2];
        this.fKeyrefElems = new XSElementDecl[2];
        this.fKeyrefNamespaceContext = (String[][]) Array.newInstance((Class<?>) String.class, 2, 1);
        this.fReportedTNS = null;
        this.f64118xl = new SimpleLocator();
        this.fHiddenNodes = new Hashtable();
        this.fSchemaParser = new SchemaDOMParser(new SchemaParsingConfig());
    }

    private int changeRedefineGroup(String str, String str2, String str3, Element element, XSDocumentInfo xSDocumentInfo) {
        int i = 0;
        for (Element firstChildElement = DOMUtil.getFirstChildElement(element); firstChildElement != null; firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement)) {
            if (DOMUtil.getLocalName(firstChildElement).equals(str2)) {
                String str4 = SchemaSymbols.ATT_REF;
                String attribute = firstChildElement.getAttribute(str4);
                if (attribute.length() != 0 && str.equals(findQName(attribute, xSDocumentInfo))) {
                    String str5 = XMLSymbols.EMPTY_STRING;
                    int indexOf = attribute.indexOf(":");
                    if (indexOf > 0) {
                        firstChildElement.setAttribute(str4, attribute.substring(0, indexOf) + ":" + str3);
                    } else {
                        firstChildElement.setAttribute(str4, str3);
                    }
                    i++;
                    if (str2.equals(SchemaSymbols.ELT_GROUP)) {
                        String attribute2 = firstChildElement.getAttribute(SchemaSymbols.ATT_MINOCCURS);
                        String attribute3 = firstChildElement.getAttribute(SchemaSymbols.ATT_MAXOCCURS);
                        if ((attribute3.length() != 0 && !attribute3.equals("1")) || (attribute2.length() != 0 && !attribute2.equals("1"))) {
                            reportSchemaError(XmlErrorCodes.SCHEMA_REDEFINE$GROUP_SELF_REF_MIN_MAX_1, new Object[]{attribute}, firstChildElement);
                        }
                    }
                }
            } else {
                i += changeRedefineGroup(str, str2, str3, firstChildElement, xSDocumentInfo);
            }
        }
        return i;
    }

    private void createAnnotationValidator() {
        this.fAnnotationValidator = new XML11Configuration();
        this.fGrammarBucketAdapter = new XSAnnotationGrammarPool();
        this.fAnnotationValidator.setFeature("http://xml.org/sax/features/validation", true);
        this.fAnnotationValidator.setFeature("http://apache.org/xml/features/validation/schema", true);
        this.fAnnotationValidator.setProperty("http://apache.org/xml/properties/internal/grammar-pool", this.fGrammarBucketAdapter);
        XMLErrorHandler errorHandler = this.fErrorReporter.getErrorHandler();
        XML11Configuration xML11Configuration = this.fAnnotationValidator;
        if (errorHandler == null) {
            errorHandler = new DefaultErrorHandler();
        }
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/error-handler", errorHandler);
    }

    private void createTraversers() {
        this.fAttributeChecker = new XSAttributeChecker(this);
        this.fAttributeGroupTraverser = new XSDAttributeGroupTraverser(this, this.fAttributeChecker);
        this.fAttributeTraverser = new XSDAttributeTraverser(this, this.fAttributeChecker);
        this.fComplexTypeTraverser = new XSDComplexTypeTraverser(this, this.fAttributeChecker);
        this.fElementTraverser = new XSDElementTraverser(this, this.fAttributeChecker);
        this.fGroupTraverser = new XSDGroupTraverser(this, this.fAttributeChecker);
        this.fKeyrefTraverser = new XSDKeyrefTraverser(this, this.fAttributeChecker);
        this.fNotationTraverser = new XSDNotationTraverser(this, this.fAttributeChecker);
        this.fSimpleTypeTraverser = new XSDSimpleTypeTraverser(this, this.fAttributeChecker);
        this.fUniqueOrKeyTraverser = new XSDUniqueOrKeyTraverser(this, this.fAttributeChecker);
        this.fWildCardTraverser = new XSDWildcardTraverser(this, this.fAttributeChecker);
    }

    private String doc2SystemId(Element element) {
        String documentURI = element.getOwnerDocument() instanceof SchemaDOM ? ((SchemaDOM) element.getOwnerDocument()).getDocumentURI() : null;
        return documentURI != null ? documentURI : (String) this.fDoc2SystemId.get(element);
    }

    private String emptyString2Null(String str) {
        if (str == XMLSymbols.EMPTY_STRING) {
            return null;
        }
        return str;
    }

    private String findQName(String str, XSDocumentInfo xSDocumentInfo) {
        SchemaNamespaceSupport schemaNamespaceSupport = xSDocumentInfo.fNamespaceSupport;
        int indexOf = str.indexOf(58);
        String str2 = XMLSymbols.EMPTY_STRING;
        String substring = indexOf > 0 ? str.substring(0, indexOf) : str2;
        String uri = schemaNamespaceSupport.getURI(this.fSymbolTable.addSymbol(substring));
        if (indexOf != 0) {
            str = str.substring(indexOf + 1);
        }
        if (substring == str2 && uri == null && xSDocumentInfo.fIsChameleonSchema) {
            uri = xSDocumentInfo.fTargetNamespace;
        }
        if (uri == null) {
            return "," + str;
        }
        return uri + "," + str;
    }

    private XSDocumentInfo findXSDocumentForDecl(XSDocumentInfo xSDocumentInfo, Element element, XSDocumentInfo xSDocumentInfo2) {
        if (xSDocumentInfo2 == null) {
            return null;
        }
        return xSDocumentInfo2;
    }

    private Element getSchemaDocument(String str, XMLInputSource xMLInputSource, boolean z, short s, Element element) {
        boolean z2;
        String str2;
        XSDKey xSDKey;
        if (xMLInputSource != null) {
            try {
                if (xMLInputSource.getSystemId() != null || xMLInputSource.getByteStream() != null || xMLInputSource.getCharacterStream() != null) {
                    if (s != 3) {
                        str2 = XMLEntityManager.expandSystemId(xMLInputSource.getSystemId(), xMLInputSource.getBaseSystemId(), false);
                        xSDKey = new XSDKey(str2, s, str);
                        Element element2 = (Element) this.fTraversed.get(xSDKey);
                        if (element2 != null) {
                            this.fLastSchemaWasDuplicate = true;
                            return element2;
                        }
                    } else {
                        str2 = null;
                        xSDKey = null;
                    }
                    this.fSchemaParser.parse(xMLInputSource);
                    Element root = this.fSchemaParser.getDocument2() == null ? null : DOMUtil.getRoot(this.fSchemaParser.getDocument2());
                    if (xSDKey != null) {
                        this.fTraversed.put(xSDKey, root);
                    }
                    if (str2 != null) {
                        this.fDoc2SystemId.put(root, str2);
                    }
                    this.fLastSchemaWasDuplicate = false;
                    return root;
                }
            } catch (IOException unused) {
                z2 = true;
            }
        }
        z2 = false;
        if (z) {
            if (z2) {
                reportSchemaError("schema_reference.4", new Object[]{xMLInputSource.getSystemId()}, element);
            } else {
                Object[] objArr = new Object[1];
                objArr[0] = xMLInputSource == null ? "" : xMLInputSource.getSystemId();
                reportSchemaError("schema_reference.4", objArr, element);
            }
        } else if (z2) {
            reportSchemaWarning("schema_reference.4", new Object[]{xMLInputSource.getSystemId()}, element);
        }
        this.fLastSchemaWasDuplicate = false;
        return null;
    }

    private boolean isExistingGrammar(XSDDescription xSDDescription) {
        SchemaGrammar grammar = this.fGrammarBucket.getGrammar(xSDDescription.getTargetNamespace());
        if (grammar == null) {
            return findGrammar(xSDDescription) != null;
        }
        try {
            return grammar.getDocumentLocations().contains(XMLEntityManager.expandSystemId(xSDDescription.getLiteralSystemId(), xSDDescription.getBaseSystemId(), false));
        } catch (URI.MalformedURIException unused) {
            return false;
        }
    }

    private final boolean needReportTNSError(String str) {
        Vector vector = this.fReportedTNS;
        if (vector == null) {
            this.fReportedTNS = new Vector();
        } else if (vector.contains(str)) {
            return false;
        }
        this.fReportedTNS.addElement(str);
        return true;
    }

    private boolean nonAnnotationContent(Element element) {
        for (Element firstChildElement = DOMUtil.getFirstChildElement(element); firstChildElement != null; firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement)) {
            if (!DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                return true;
            }
        }
        return false;
    }

    private String null2EmptyString(String str) {
        return str == null ? XMLSymbols.EMPTY_STRING : str;
    }

    private boolean removeParticle(XSModelGroupImpl xSModelGroupImpl, XSParticleDecl xSParticleDecl) {
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
                if (xSParticleDecl2.fType == 3 && removeParticle((XSModelGroupImpl) xSParticleDecl2.fValue, xSParticleDecl)) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    private void renameRedefiningComponents(XSDocumentInfo xSDocumentInfo, Element element, String str, String str2, String str3) {
        StringBuilder sb;
        StringBuilder sb2;
        if (str.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
            Element firstChildElement = DOMUtil.getFirstChildElement(element);
            if (firstChildElement == null) {
                reportSchemaError("src-redefine.5.a.a", null, element);
                return;
            }
            if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
            }
            if (firstChildElement == null) {
                reportSchemaError("src-redefine.5.a.a", null, element);
                return;
            }
            String localName = DOMUtil.getLocalName(firstChildElement);
            if (!localName.equals(SchemaSymbols.ELT_RESTRICTION)) {
                reportSchemaError("src-redefine.5.a.b", new Object[]{localName}, element);
                return;
            }
            Object[] checkAttributes = this.fAttributeChecker.checkAttributes(firstChildElement, false, xSDocumentInfo);
            QName qName = (QName) checkAttributes[XSAttributeChecker.ATTIDX_BASE];
            if (qName != null && qName.uri == xSDocumentInfo.fTargetNamespace && qName.localpart.equals(str2)) {
                String str4 = qName.prefix;
                if (str4 == null || str4.length() <= 0) {
                    firstChildElement.setAttribute(SchemaSymbols.ATT_BASE, str3);
                } else {
                    firstChildElement.setAttribute(SchemaSymbols.ATT_BASE, qName.prefix + ":" + str3);
                }
            } else {
                Object[] objArr = new Object[2];
                objArr[0] = localName;
                StringBuilder sb3 = new StringBuilder();
                String str5 = xSDocumentInfo.fTargetNamespace;
                sb3.append(str5 != null ? str5 : "");
                sb3.append(",");
                sb3.append(str2);
                objArr[1] = sb3.toString();
                reportSchemaError("src-redefine.5.a.c", objArr, element);
            }
            this.fAttributeChecker.returnAttrArray(checkAttributes, xSDocumentInfo);
            return;
        }
        if (str.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
            Element firstChildElement2 = DOMUtil.getFirstChildElement(element);
            if (firstChildElement2 == null) {
                reportSchemaError("src-redefine.5.b.a", null, element);
                return;
            }
            String localName2 = DOMUtil.getLocalName(firstChildElement2);
            String str6 = SchemaSymbols.ELT_ANNOTATION;
            if (localName2.equals(str6)) {
                firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
            }
            if (firstChildElement2 == null) {
                reportSchemaError("src-redefine.5.b.a", null, element);
                return;
            }
            Element firstChildElement3 = DOMUtil.getFirstChildElement(firstChildElement2);
            if (firstChildElement3 == null) {
                reportSchemaError("src-redefine.5.b.b", null, firstChildElement2);
                return;
            }
            if (DOMUtil.getLocalName(firstChildElement3).equals(str6)) {
                firstChildElement3 = DOMUtil.getNextSiblingElement(firstChildElement3);
            }
            if (firstChildElement3 == null) {
                reportSchemaError("src-redefine.5.b.b", null, firstChildElement2);
                return;
            }
            String localName3 = DOMUtil.getLocalName(firstChildElement3);
            if (!localName3.equals(SchemaSymbols.ELT_RESTRICTION) && !localName3.equals(SchemaSymbols.ELT_EXTENSION)) {
                reportSchemaError("src-redefine.5.b.c", new Object[]{localName3}, firstChildElement3);
                return;
            }
            QName qName2 = (QName) this.fAttributeChecker.checkAttributes(firstChildElement3, false, xSDocumentInfo)[XSAttributeChecker.ATTIDX_BASE];
            if (qName2 == null || qName2.uri != xSDocumentInfo.fTargetNamespace || !qName2.localpart.equals(str2)) {
                Object[] objArr2 = new Object[2];
                objArr2[0] = localName3;
                StringBuilder sb4 = new StringBuilder();
                String str7 = xSDocumentInfo.fTargetNamespace;
                sb4.append(str7 != null ? str7 : "");
                sb4.append(",");
                sb4.append(str2);
                objArr2[1] = sb4.toString();
                reportSchemaError("src-redefine.5.b.d", objArr2, firstChildElement3);
                return;
            }
            String str8 = qName2.prefix;
            if (str8 == null || str8.length() <= 0) {
                firstChildElement3.setAttribute(SchemaSymbols.ATT_BASE, str3);
                return;
            }
            firstChildElement3.setAttribute(SchemaSymbols.ATT_BASE, qName2.prefix + ":" + str3);
            return;
        }
        if (str.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
            if (xSDocumentInfo.fTargetNamespace == null) {
                sb2 = new StringBuilder();
            } else {
                sb2 = new StringBuilder();
                sb2.append(xSDocumentInfo.fTargetNamespace);
            }
            sb2.append(",");
            sb2.append(str2);
            String sb5 = sb2.toString();
            int changeRedefineGroup = changeRedefineGroup(sb5, str, str3, element, xSDocumentInfo);
            if (changeRedefineGroup > 1) {
                reportSchemaError(XmlErrorCodes.SCHEMA_REDEFINE$ATTR_GROUP_SELF_REF, new Object[]{new Integer(changeRedefineGroup)}, element);
                return;
            }
            if (changeRedefineGroup == 1) {
                return;
            }
            if (xSDocumentInfo.fTargetNamespace == null) {
                this.fRedefinedRestrictedAttributeGroupRegistry.put(sb5, "," + str3);
                return;
            }
            this.fRedefinedRestrictedAttributeGroupRegistry.put(sb5, xSDocumentInfo.fTargetNamespace + "," + str3);
            return;
        }
        if (!str.equals(SchemaSymbols.ELT_GROUP)) {
            reportSchemaError("Internal-Error", new Object[]{"could not handle this particular <redefine>; please submit your schemas and instance document in a bug report!"}, element);
            return;
        }
        if (xSDocumentInfo.fTargetNamespace == null) {
            sb = new StringBuilder();
        } else {
            sb = new StringBuilder();
            sb.append(xSDocumentInfo.fTargetNamespace);
        }
        sb.append(",");
        sb.append(str2);
        String sb6 = sb.toString();
        int changeRedefineGroup2 = changeRedefineGroup(sb6, str, str3, element, xSDocumentInfo);
        if (changeRedefineGroup2 > 1) {
            reportSchemaError(XmlErrorCodes.SCHEMA_REDEFINE$GROUP_SELF_REF, new Object[]{new Integer(changeRedefineGroup2)}, element);
            return;
        }
        if (changeRedefineGroup2 == 1) {
            return;
        }
        if (xSDocumentInfo.fTargetNamespace == null) {
            this.fRedefinedRestrictedGroupRegistry.put(sb6, "," + str3);
            return;
        }
        this.fRedefinedRestrictedGroupRegistry.put(sb6, xSDocumentInfo.fTargetNamespace + "," + str3);
    }

    private Element resolveSchema(XSDDescription xSDDescription, boolean z, Element element) {
        XMLInputSource xMLInputSource;
        boolean z2;
        boolean z3 = false;
        try {
            xMLInputSource = XMLSchemaLoader.resolveDocument(xSDDescription, this.fLocationPairs, this.fEntityResolver);
        } catch (IOException unused) {
            if (z) {
                reportSchemaError("schema_reference.4", new Object[]{xSDDescription.getLocationHints()[0]}, element);
            } else {
                reportSchemaWarning("schema_reference.4", new Object[]{xSDDescription.getLocationHints()[0]}, element);
            }
            xMLInputSource = null;
        }
        if (xMLInputSource instanceof DOMInputSource) {
            this.fHiddenNodes.clear();
            Node node = ((DOMInputSource) xMLInputSource).getNode();
            if (node instanceof Document) {
                return DOMUtil.getRoot((Document) node);
            }
            if (node instanceof Element) {
                return (Element) node;
            }
            return null;
        }
        if (!(xMLInputSource instanceof SAXInputSource)) {
            return getSchemaDocument(xSDDescription.getTargetNamespace(), xMLInputSource, z, xSDDescription.getContextType(), element);
        }
        SAXInputSource sAXInputSource = (SAXInputSource) xMLInputSource;
        XMLReader xMLReader = sAXInputSource.getXMLReader();
        InputSource inputSource = sAXInputSource.getInputSource();
        try {
            if (xMLReader != null) {
                z2 = xMLReader.getFeature("http://xml.org/sax/features/namespace-prefixes");
            } else {
                try {
                    xMLReader = XMLReaderFactory.createXMLReader();
                } catch (SAXException unused2) {
                    xMLReader = new SAXParser();
                }
                xMLReader.setFeature("http://xml.org/sax/features/namespace-prefixes", true);
                z2 = true;
            }
        } catch (SAXException unused3) {
            z2 = false;
        }
        try {
            z3 = xMLReader.getFeature("http://xml.org/sax/features/string-interning");
        } catch (SAXException unused4) {
        }
        if (this.fXSContentHandler == null) {
            this.fXSContentHandler = new SchemaContentHandler();
        }
        this.fXSContentHandler.reset(this.fSchemaParser, this.fSymbolTable, z2, z3);
        xMLReader.setContentHandler(this.fXSContentHandler);
        xMLReader.setErrorHandler(this.fErrorReporter.getSAXErrorHandler());
        try {
            xMLReader.parse(inputSource);
            Document document = this.fXSContentHandler.getDocument();
            if (document == null) {
                return null;
            }
            return DOMUtil.getRoot(document);
        } catch (IOException | SAXException unused5) {
            return null;
        }
    }

    private void setSchemasVisible(XSDocumentInfo xSDocumentInfo) {
        if (DOMUtil.isHidden(xSDocumentInfo.fSchemaElement, this.fHiddenNodes)) {
            DOMUtil.setVisible(xSDocumentInfo.fSchemaElement, this.fHiddenNodes);
            Vector vector = (Vector) this.fDependencyMap.get(xSDocumentInfo);
            for (int i = 0; i < vector.size(); i++) {
                setSchemasVisible((XSDocumentInfo) vector.elementAt(i));
            }
        }
    }

    private void validateAnnotations(ArrayList arrayList) {
        if (this.fAnnotationValidator == null) {
            createAnnotationValidator();
        }
        int size = arrayList.size();
        XMLInputSource xMLInputSource = new XMLInputSource(null, null, null);
        this.fGrammarBucketAdapter.refreshGrammars(this.fGrammarBucket);
        for (int i = 0; i < size; i += 2) {
            xMLInputSource.setSystemId((String) arrayList.get(i));
            for (XSAnnotationInfo xSAnnotationInfo = (XSAnnotationInfo) arrayList.get(i + 1); xSAnnotationInfo != null; xSAnnotationInfo = xSAnnotationInfo.next) {
                xMLInputSource.setCharacterStream(new StringReader(xSAnnotationInfo.fAnnotation));
                try {
                    this.fAnnotationValidator.parse(xMLInputSource);
                } catch (IOException unused) {
                }
            }
        }
    }

    public void buildGlobalNameRegistries() {
        int i;
        Stack stack;
        Element element;
        boolean z;
        StringBuilder sb;
        StringBuilder sb2;
        Stack stack2;
        Element element2;
        boolean z2;
        Stack stack3 = new Stack();
        stack3.push(this.fRoot);
        while (!stack3.empty()) {
            XSDocumentInfo xSDocumentInfo = (XSDocumentInfo) stack3.pop();
            Element element3 = xSDocumentInfo.fSchemaElement;
            if (!DOMUtil.isHidden(element3, this.fHiddenNodes)) {
                Element firstChildElement = DOMUtil.getFirstChildElement(element3);
                boolean z3 = true;
                while (true) {
                    if (firstChildElement == null) {
                        break;
                    }
                    if (!DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_ANNOTATION)) {
                        if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_INCLUDE) || DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_IMPORT)) {
                            stack = stack3;
                            element = element3;
                            z = z3;
                            if (!z) {
                                reportSchemaError("s4s-elt-invalid-content.3", new Object[]{DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
                            }
                            DOMUtil.setHidden(firstChildElement, this.fHiddenNodes);
                            z3 = z;
                            firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
                            stack3 = stack;
                            element3 = element;
                        } else if (DOMUtil.getLocalName(firstChildElement).equals(SchemaSymbols.ELT_REDEFINE)) {
                            if (!z3) {
                                reportSchemaError("s4s-elt-invalid-content.3", new Object[]{DOMUtil.getLocalName(firstChildElement)}, firstChildElement);
                            }
                            Element firstChildElement2 = DOMUtil.getFirstChildElement(firstChildElement);
                            while (firstChildElement2 != null) {
                                String str = SchemaSymbols.ATT_NAME;
                                String attrValue = DOMUtil.getAttrValue(firstChildElement2, str);
                                if (attrValue.length() == 0) {
                                    stack2 = stack3;
                                } else {
                                    if (xSDocumentInfo.fTargetNamespace == null) {
                                        sb2 = new StringBuilder();
                                    } else {
                                        sb2 = new StringBuilder();
                                        sb2.append(xSDocumentInfo.fTargetNamespace);
                                    }
                                    sb2.append(",");
                                    sb2.append(attrValue);
                                    String sb3 = sb2.toString();
                                    String localName = DOMUtil.getLocalName(firstChildElement2);
                                    String str2 = SchemaSymbols.ELT_ATTRIBUTEGROUP;
                                    if (localName.equals(str2)) {
                                        stack2 = stack3;
                                        checkForDuplicateNames(sb3, this.fUnparsedAttributeGroupRegistry, this.fUnparsedAttributeGroupRegistrySub, firstChildElement2, xSDocumentInfo);
                                        renameRedefiningComponents(xSDocumentInfo, firstChildElement2, str2, attrValue, DOMUtil.getAttrValue(firstChildElement2, str) + "_fn3dktizrknc9pi");
                                    } else {
                                        stack2 = stack3;
                                        String str3 = SchemaSymbols.ELT_COMPLEXTYPE;
                                        if (localName.equals(str3) || localName.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                                            element2 = element3;
                                            z2 = z3;
                                            checkForDuplicateNames(sb3, this.fUnparsedTypeRegistry, this.fUnparsedTypeRegistrySub, firstChildElement2, xSDocumentInfo);
                                            String str4 = DOMUtil.getAttrValue(firstChildElement2, str) + "_fn3dktizrknc9pi";
                                            if (localName.equals(str3)) {
                                                renameRedefiningComponents(xSDocumentInfo, firstChildElement2, str3, attrValue, str4);
                                            } else {
                                                renameRedefiningComponents(xSDocumentInfo, firstChildElement2, SchemaSymbols.ELT_SIMPLETYPE, attrValue, str4);
                                            }
                                            firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
                                            stack3 = stack2;
                                            element3 = element2;
                                            z3 = z2;
                                        } else {
                                            String str5 = SchemaSymbols.ELT_GROUP;
                                            if (localName.equals(str5)) {
                                                checkForDuplicateNames(sb3, this.fUnparsedGroupRegistry, this.fUnparsedGroupRegistrySub, firstChildElement2, xSDocumentInfo);
                                                renameRedefiningComponents(xSDocumentInfo, firstChildElement2, str5, attrValue, DOMUtil.getAttrValue(firstChildElement2, str) + "_fn3dktizrknc9pi");
                                            }
                                        }
                                    }
                                }
                                element2 = element3;
                                z2 = z3;
                                firstChildElement2 = DOMUtil.getNextSiblingElement(firstChildElement2);
                                stack3 = stack2;
                                element3 = element2;
                                z3 = z2;
                            }
                        } else {
                            stack = stack3;
                            element = element3;
                            String attrValue2 = DOMUtil.getAttrValue(firstChildElement, SchemaSymbols.ATT_NAME);
                            if (attrValue2.length() != 0) {
                                if (xSDocumentInfo.fTargetNamespace == null) {
                                    sb = new StringBuilder();
                                } else {
                                    sb = new StringBuilder();
                                    sb.append(xSDocumentInfo.fTargetNamespace);
                                }
                                sb.append(",");
                                sb.append(attrValue2);
                                String sb4 = sb.toString();
                                String localName2 = DOMUtil.getLocalName(firstChildElement);
                                if (localName2.equals(SchemaSymbols.ELT_ATTRIBUTE)) {
                                    checkForDuplicateNames(sb4, this.fUnparsedAttributeRegistry, this.fUnparsedAttributeRegistrySub, firstChildElement, xSDocumentInfo);
                                } else if (localName2.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                                    checkForDuplicateNames(sb4, this.fUnparsedAttributeGroupRegistry, this.fUnparsedAttributeGroupRegistrySub, firstChildElement, xSDocumentInfo);
                                } else if (localName2.equals(SchemaSymbols.ELT_COMPLEXTYPE) || localName2.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                                    checkForDuplicateNames(sb4, this.fUnparsedTypeRegistry, this.fUnparsedTypeRegistrySub, firstChildElement, xSDocumentInfo);
                                } else if (localName2.equals(SchemaSymbols.ELT_ELEMENT)) {
                                    checkForDuplicateNames(sb4, this.fUnparsedElementRegistry, this.fUnparsedElementRegistrySub, firstChildElement, xSDocumentInfo);
                                } else if (localName2.equals(SchemaSymbols.ELT_GROUP)) {
                                    checkForDuplicateNames(sb4, this.fUnparsedGroupRegistry, this.fUnparsedGroupRegistrySub, firstChildElement, xSDocumentInfo);
                                } else if (localName2.equals(SchemaSymbols.ELT_NOTATION)) {
                                    checkForDuplicateNames(sb4, this.fUnparsedNotationRegistry, this.fUnparsedNotationRegistrySub, firstChildElement, xSDocumentInfo);
                                }
                            }
                            z3 = false;
                            firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
                            stack3 = stack;
                            element3 = element;
                        }
                    }
                    stack = stack3;
                    element = element3;
                    z = z3;
                    z3 = z;
                    firstChildElement = DOMUtil.getNextSiblingElement(firstChildElement);
                    stack3 = stack;
                    element3 = element;
                }
                Stack stack4 = stack3;
                DOMUtil.setHidden(element3, this.fHiddenNodes);
                Vector vector = (Vector) this.fDependencyMap.get(xSDocumentInfo);
                for (i = 0; i < vector.size(); i++) {
                    stack4.push(vector.elementAt(i));
                }
                stack3 = stack4;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkForDuplicateNames(java.lang.String r13, java.util.Hashtable r14, java.util.Hashtable r15, org.w3c.dom.Element r16, com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo r17) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDHandler.checkForDuplicateNames(java.lang.String, java.util.Hashtable, java.util.Hashtable, org.w3c.dom.Element, com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x018a, code lost:
    
        if (r21.fHonourAllSchemaLocations == false) goto L76;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0191  */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8, types: [short] */
    /* JADX WARN: Type inference failed for: r6v17, types: [com.sun.org.apache.xerces.internal.impl.xs.XSDDescription] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDocumentInfo constructTrees(org.w3c.dom.Element r22, java.lang.String r23, com.sun.org.apache.xerces.internal.impl.p055xs.XSDDescription r24) {
        /*
            Method dump skipped, instructions count: 891
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDHandler.constructTrees(org.w3c.dom.Element, java.lang.String, com.sun.org.apache.xerces.internal.impl.xs.XSDDescription):com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo");
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

    public void fillInLocalElemInfo(Element element, XSDocumentInfo xSDocumentInfo, int i, XSObject xSObject, XSParticleDecl xSParticleDecl) {
        XSParticleDecl[] xSParticleDeclArr = this.fParticle;
        int length = xSParticleDeclArr.length;
        int i2 = this.fLocalElemStackPos;
        if (length == i2) {
            XSParticleDecl[] xSParticleDeclArr2 = new XSParticleDecl[i2 + 10];
            System.arraycopy(xSParticleDeclArr, 0, xSParticleDeclArr2, 0, i2);
            this.fParticle = xSParticleDeclArr2;
            int i3 = this.fLocalElemStackPos;
            Element[] elementArr = new Element[i3 + 10];
            System.arraycopy(this.fLocalElementDecl, 0, elementArr, 0, i3);
            this.fLocalElementDecl = elementArr;
            int i4 = this.fLocalElemStackPos;
            XSDocumentInfo[] xSDocumentInfoArr = new XSDocumentInfo[i4 + 10];
            System.arraycopy(this.fLocalElementDecl_schema, 0, xSDocumentInfoArr, 0, i4);
            this.fLocalElementDecl_schema = xSDocumentInfoArr;
            int i5 = this.fLocalElemStackPos;
            int[] iArr = new int[i5 + 10];
            System.arraycopy(this.fAllContext, 0, iArr, 0, i5);
            this.fAllContext = iArr;
            int i6 = this.fLocalElemStackPos;
            XSObject[] xSObjectArr = new XSObject[i6 + 10];
            System.arraycopy(this.fParent, 0, xSObjectArr, 0, i6);
            this.fParent = xSObjectArr;
            int i7 = this.fLocalElemStackPos;
            String[][] strArr = new String[i7 + 10];
            System.arraycopy(this.fLocalElemNamespaceContext, 0, strArr, 0, i7);
            this.fLocalElemNamespaceContext = strArr;
        }
        XSParticleDecl[] xSParticleDeclArr3 = this.fParticle;
        int i8 = this.fLocalElemStackPos;
        xSParticleDeclArr3[i8] = xSParticleDecl;
        this.fLocalElementDecl[i8] = element;
        this.fLocalElementDecl_schema[i8] = xSDocumentInfo;
        this.fAllContext[i8] = i;
        this.fParent[i8] = xSObject;
        String[][] strArr2 = this.fLocalElemNamespaceContext;
        this.fLocalElemStackPos = i8 + 1;
        strArr2[i8] = xSDocumentInfo.fNamespaceSupport.getEffectiveLocalContext();
    }

    public SchemaGrammar findGrammar(XSDDescription xSDDescription) {
        XMLGrammarPool xMLGrammarPool;
        SchemaGrammar grammar = this.fGrammarBucket.getGrammar(xSDDescription.getTargetNamespace());
        if (grammar != null || (xMLGrammarPool = this.fGrammarPool) == null) {
            return grammar;
        }
        SchemaGrammar schemaGrammar = (SchemaGrammar) xMLGrammarPool.retrieveGrammar(xSDDescription);
        if (schemaGrammar == null || this.fGrammarBucket.putGrammar(schemaGrammar, true)) {
            return schemaGrammar;
        }
        reportSchemaWarning("GrammarConflict", null, null);
        return null;
    }

    public Object getGlobalDecl(XSDocumentInfo xSDocumentInfo, int i, QName qName, Element element) {
        Object globalAttributeDecl;
        StringBuilder sb;
        Element element2;
        XSDocumentInfo xSDocumentInfo2;
        XSTypeDefinition globalTypeDecl;
        String str = qName.uri;
        if (str != null && str == SchemaSymbols.URI_SCHEMAFORSCHEMA && i == 7 && (globalTypeDecl = SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(qName.localpart)) != null) {
            return globalTypeDecl;
        }
        Object obj = null;
        if (!xSDocumentInfo.isAllowedNS(qName.uri)) {
            if (xSDocumentInfo.needReportTNSError(qName.uri)) {
                reportSchemaError(qName.uri != null ? "src-resolve.4.2" : "src-resolve.4.1", new Object[]{this.fDoc2SystemId.get(xSDocumentInfo.fSchemaElement), qName.uri, qName.rawname}, element);
            }
            return null;
        }
        SchemaGrammar grammar = this.fGrammarBucket.getGrammar(qName.uri);
        if (grammar == null) {
            if (needReportTNSError(qName.uri)) {
                reportSchemaError(XmlErrorCodes.SCHEMA_QNAME_RESOLVE, new Object[]{qName.rawname, COMP_TYPE[i]}, element);
            }
            return null;
        }
        switch (i) {
            case 1:
                globalAttributeDecl = grammar.getGlobalAttributeDecl(qName.localpart);
                break;
            case 2:
                globalAttributeDecl = grammar.getGlobalAttributeGroupDecl(qName.localpart);
                break;
            case 3:
                globalAttributeDecl = grammar.getGlobalElementDecl(qName.localpart);
                break;
            case 4:
                globalAttributeDecl = grammar.getGlobalGroupDecl(qName.localpart);
                break;
            case 5:
                globalAttributeDecl = grammar.getIDConstraintDecl(qName.localpart);
                break;
            case 6:
                globalAttributeDecl = grammar.getGlobalNotationDecl(qName.localpart);
                break;
            case 7:
                globalAttributeDecl = grammar.getGlobalTypeDecl(qName.localpart);
                break;
            default:
                globalAttributeDecl = null;
                break;
        }
        if (globalAttributeDecl != null) {
            return globalAttributeDecl;
        }
        if (qName.uri == null) {
            sb = new StringBuilder();
        } else {
            sb = new StringBuilder();
            sb.append(qName.uri);
        }
        sb.append(",");
        sb.append(qName.localpart);
        String sb2 = sb.toString();
        switch (i) {
            case 1:
                element2 = (Element) this.fUnparsedAttributeRegistry.get(sb2);
                xSDocumentInfo2 = (XSDocumentInfo) this.fUnparsedAttributeRegistrySub.get(sb2);
                break;
            case 2:
                element2 = (Element) this.fUnparsedAttributeGroupRegistry.get(sb2);
                xSDocumentInfo2 = (XSDocumentInfo) this.fUnparsedAttributeGroupRegistrySub.get(sb2);
                break;
            case 3:
                element2 = (Element) this.fUnparsedElementRegistry.get(sb2);
                xSDocumentInfo2 = (XSDocumentInfo) this.fUnparsedElementRegistrySub.get(sb2);
                break;
            case 4:
                element2 = (Element) this.fUnparsedGroupRegistry.get(sb2);
                xSDocumentInfo2 = (XSDocumentInfo) this.fUnparsedGroupRegistrySub.get(sb2);
                break;
            case 5:
                element2 = (Element) this.fUnparsedIdentityConstraintRegistry.get(sb2);
                xSDocumentInfo2 = (XSDocumentInfo) this.fUnparsedIdentityConstraintRegistrySub.get(sb2);
                break;
            case 6:
                element2 = (Element) this.fUnparsedNotationRegistry.get(sb2);
                xSDocumentInfo2 = (XSDocumentInfo) this.fUnparsedNotationRegistrySub.get(sb2);
                break;
            case 7:
                element2 = (Element) this.fUnparsedTypeRegistry.get(sb2);
                xSDocumentInfo2 = (XSDocumentInfo) this.fUnparsedTypeRegistrySub.get(sb2);
                break;
            default:
                reportSchemaError("Internal-Error", new Object[]{"XSDHandler asked to locate component of type " + i + "; it does not recognize this type!"}, element);
                xSDocumentInfo2 = null;
                element2 = null;
                break;
        }
        if (element2 == null) {
            reportSchemaError(XmlErrorCodes.SCHEMA_QNAME_RESOLVE, new Object[]{qName.rawname, COMP_TYPE[i]}, element);
            return null;
        }
        XSDocumentInfo findXSDocumentForDecl = findXSDocumentForDecl(xSDocumentInfo, element2, xSDocumentInfo2);
        if (findXSDocumentForDecl == null) {
            reportSchemaError(qName.uri != null ? "src-resolve.4.2" : "src-resolve.4.1", new Object[]{this.fDoc2SystemId.get(xSDocumentInfo.fSchemaElement), qName.uri, qName.rawname}, element);
            return null;
        }
        if (DOMUtil.isHidden(element2, this.fHiddenNodes)) {
            String str2 = CIRCULAR_CODES[i];
            if (i == 7 && SchemaSymbols.ELT_COMPLEXTYPE.equals(DOMUtil.getLocalName(element2))) {
                str2 = "ct-props-correct.3";
            }
            reportSchemaError(str2, new Object[]{qName.prefix + ":" + qName.localpart}, element);
            return null;
        }
        DOMUtil.setHidden(element2, this.fHiddenNodes);
        Element parent = DOMUtil.getParent(element2);
        findXSDocumentForDecl.backupNSSupport(DOMUtil.getLocalName(parent).equals(SchemaSymbols.ELT_REDEFINE) ? (SchemaNamespaceSupport) this.fRedefine2NSSupport.get(parent) : null);
        switch (i) {
            case 1:
                obj = this.fAttributeTraverser.traverseGlobal(element2, findXSDocumentForDecl, grammar);
                break;
            case 2:
                obj = this.fAttributeGroupTraverser.traverseGlobal(element2, findXSDocumentForDecl, grammar);
                break;
            case 3:
                obj = this.fElementTraverser.traverseGlobal(element2, findXSDocumentForDecl, grammar);
                break;
            case 4:
                obj = this.fGroupTraverser.traverseGlobal(element2, findXSDocumentForDecl, grammar);
                break;
            case 5:
                break;
            case 6:
                obj = this.fNotationTraverser.traverse(element2, findXSDocumentForDecl, grammar);
                break;
            case 7:
                if (!DOMUtil.getLocalName(element2).equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                    obj = this.fSimpleTypeTraverser.traverseGlobal(element2, findXSDocumentForDecl, grammar);
                    break;
                } else {
                    obj = this.fComplexTypeTraverser.traverseGlobal(element2, findXSDocumentForDecl, grammar);
                    break;
                }
            default:
                obj = globalAttributeDecl;
                break;
        }
        findXSDocumentForDecl.restoreNSSupport();
        return obj;
    }

    public SchemaGrammar getGrammar(String str) {
        return this.fGrammarBucket.getGrammar(str);
    }

    public Object getGrpOrAttrGrpRedefinedByRestriction(int i, QName qName, XSDocumentInfo xSDocumentInfo, Element element) {
        StringBuilder sb;
        String str;
        if (qName.uri != null) {
            sb = new StringBuilder();
            sb.append(qName.uri);
        } else {
            sb = new StringBuilder();
        }
        sb.append(",");
        sb.append(qName.localpart);
        String sb2 = sb.toString();
        if (i == 2) {
            str = (String) this.fRedefinedRestrictedAttributeGroupRegistry.get(sb2);
        } else {
            if (i != 4) {
                return null;
            }
            str = (String) this.fRedefinedRestrictedGroupRegistry.get(sb2);
        }
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(",");
        Object globalDecl = getGlobalDecl(xSDocumentInfo, i, new QName(XMLSymbols.EMPTY_STRING, str.substring(indexOf + 1), str.substring(indexOf), indexOf == 0 ? null : str.substring(0, indexOf)), element);
        if (globalDecl != null) {
            return globalDecl;
        }
        if (i == 2) {
            reportSchemaError("src-redefine.7.2.1", new Object[]{qName.localpart}, element);
        } else if (i == 4) {
            reportSchemaError("src-redefine.6.2.1", new Object[]{qName.localpart}, element);
        }
        return null;
    }

    public Hashtable getIDRegistry() {
        return this.fUnparsedIdentityConstraintRegistry;
    }

    public Hashtable getIDRegistry_sub() {
        return this.fUnparsedIdentityConstraintRegistrySub;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:83:0x007f
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    public com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar parseSchema(com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource r12, com.sun.org.apache.xerces.internal.impl.p055xs.XSDDescription r13, java.util.Hashtable r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDHandler.parseSchema(com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource, com.sun.org.apache.xerces.internal.impl.xs.XSDDescription, java.util.Hashtable):com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar");
    }

    public void prepareForParse() {
        this.fTraversed.clear();
        this.fDoc2SystemId.clear();
        this.fHiddenNodes.clear();
        this.fLastSchemaWasDuplicate = false;
    }

    public void prepareForTraverse() {
        this.fUnparsedAttributeRegistry.clear();
        this.fUnparsedAttributeGroupRegistry.clear();
        this.fUnparsedElementRegistry.clear();
        this.fUnparsedGroupRegistry.clear();
        this.fUnparsedIdentityConstraintRegistry.clear();
        this.fUnparsedNotationRegistry.clear();
        this.fUnparsedTypeRegistry.clear();
        this.fUnparsedAttributeRegistrySub.clear();
        this.fUnparsedAttributeGroupRegistrySub.clear();
        this.fUnparsedElementRegistrySub.clear();
        this.fUnparsedGroupRegistrySub.clear();
        this.fUnparsedIdentityConstraintRegistrySub.clear();
        this.fUnparsedNotationRegistrySub.clear();
        this.fUnparsedTypeRegistrySub.clear();
        this.fXSDocumentInfoRegistry.clear();
        this.fDependencyMap.clear();
        this.fDoc2XSDocumentMap.clear();
        this.fRedefine2XSDMap.clear();
        this.fRedefine2NSSupport.clear();
        this.fAllTNSs.removeAllElements();
        this.fImportMap.clear();
        this.fRoot = null;
        for (int i = 0; i < this.fLocalElemStackPos; i++) {
            this.fParticle[i] = null;
            this.fLocalElementDecl[i] = null;
            this.fLocalElementDecl_schema[i] = null;
            this.fLocalElemNamespaceContext[i] = null;
        }
        this.fLocalElemStackPos = 0;
        for (int i2 = 0; i2 < this.fKeyrefStackPos; i2++) {
            this.fKeyrefs[i2] = null;
            this.fKeyrefElems[i2] = null;
            this.fKeyrefNamespaceContext[i2] = null;
            this.fKeyrefsMapXSDocumentInfo[i2] = null;
        }
        this.fKeyrefStackPos = 0;
        if (this.fAttributeChecker == null) {
            createTraversers();
        }
        this.fAttributeChecker.reset(this.fSymbolTable);
        this.fAttributeGroupTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fAttributeTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fComplexTypeTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fElementTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fGroupTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fKeyrefTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fNotationTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fSimpleTypeTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fUniqueOrKeyTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fWildCardTraverser.reset(this.fSymbolTable, this.fValidateAnnotations);
        this.fRedefinedRestrictedAttributeGroupRegistry.clear();
        this.fRedefinedRestrictedGroupRegistry.clear();
    }

    public void reportSchemaError(String str, Object[] objArr, Element element) {
        if (element2Locator(element, this.f64118xl)) {
            this.fErrorReporter.reportError(this.f64118xl, "http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1);
        } else {
            this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1);
        }
    }

    public void reportSchemaWarning(String str, Object[] objArr, Element element) {
        if (element2Locator(element, this.f64118xl)) {
            this.fErrorReporter.reportError(this.f64118xl, "http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 0);
        } else {
            this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 0);
        }
    }

    public void reset(XMLComponentManager xMLComponentManager) {
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fSecureProcessing = null;
        try {
            this.fSecureProcessing = (SecurityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
        } catch (XMLConfigurationException unused) {
        }
        this.fEntityResolver = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        XMLEntityResolver xMLEntityResolver = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-resolver");
        if (xMLEntityResolver != null) {
            this.fSchemaParser.setEntityResolver(xMLEntityResolver);
        }
        XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fErrorReporter = xMLErrorReporter;
        try {
            XMLErrorHandler errorHandler = xMLErrorReporter.getErrorHandler();
            if (errorHandler != this.fSchemaParser.getProperty("http://apache.org/xml/properties/internal/error-handler")) {
                this.fSchemaParser.setProperty("http://apache.org/xml/properties/internal/error-handler", errorHandler != null ? errorHandler : new DefaultErrorHandler());
                XML11Configuration xML11Configuration = this.fAnnotationValidator;
                if (xML11Configuration != null) {
                    if (errorHandler == null) {
                        errorHandler = new DefaultErrorHandler();
                    }
                    xML11Configuration.setProperty("http://apache.org/xml/properties/internal/error-handler", errorHandler);
                }
            }
        } catch (XMLConfigurationException unused2) {
        }
        try {
            this.fValidateAnnotations = xMLComponentManager.getFeature(VALIDATE_ANNOTATIONS);
        } catch (XMLConfigurationException unused3) {
            this.fValidateAnnotations = false;
        }
        try {
            this.fHonourAllSchemaLocations = xMLComponentManager.getFeature(HONOUR_ALL_SCHEMALOCATIONS);
        } catch (XMLConfigurationException unused4) {
            this.fHonourAllSchemaLocations = false;
        }
        try {
            this.fSchemaParser.setFeature("http://apache.org/xml/features/continue-after-fatal-error", this.fErrorReporter.getFeature("http://apache.org/xml/features/continue-after-fatal-error"));
        } catch (XMLConfigurationException unused5) {
        }
        try {
            this.fSchemaParser.setFeature(ALLOW_JAVA_ENCODINGS, xMLComponentManager.getFeature(ALLOW_JAVA_ENCODINGS));
        } catch (XMLConfigurationException unused6) {
        }
        try {
            this.fSchemaParser.setFeature(STANDARD_URI_CONFORMANT_FEATURE, xMLComponentManager.getFeature(STANDARD_URI_CONFORMANT_FEATURE));
        } catch (XMLConfigurationException unused7) {
        }
        try {
            this.fGrammarPool = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused8) {
            this.fGrammarPool = null;
        }
        try {
            this.fSchemaParser.setFeature("http://apache.org/xml/features/disallow-doctype-decl", xMLComponentManager.getFeature("http://apache.org/xml/features/disallow-doctype-decl"));
        } catch (XMLConfigurationException unused9) {
        }
        try {
            Object property = xMLComponentManager.getProperty("http://apache.org/xml/properties/security-manager");
            if (property != null) {
                this.fSchemaParser.setProperty("http://apache.org/xml/properties/security-manager", property);
            }
        } catch (XMLConfigurationException unused10) {
        }
    }

    public void resolveKeyRefs() {
        for (int i = 0; i < this.fKeyrefStackPos; i++) {
            XSDocumentInfo xSDocumentInfo = this.fKeyrefsMapXSDocumentInfo[i];
            xSDocumentInfo.fNamespaceSupport.makeGlobal();
            xSDocumentInfo.fNamespaceSupport.setEffectiveContext(this.fKeyrefNamespaceContext[i]);
            SchemaGrammar grammar = this.fGrammarBucket.getGrammar(xSDocumentInfo.fTargetNamespace);
            DOMUtil.setHidden(this.fKeyrefs[i], this.fHiddenNodes);
            this.fKeyrefTraverser.traverse(this.fKeyrefs[i], this.fKeyrefElems[i], xSDocumentInfo, grammar);
        }
    }

    public void setDeclPool(XSDeclarationPool xSDeclarationPool) {
        this.fDeclPool = xSDeclarationPool;
    }

    public void setGenerateSyntheticAnnotations(boolean z) {
        this.fSchemaParser.setFeature("http://apache.org/xml/features/generate-synthetic-annotations", z);
    }

    public void storeKeyRef(Element element, XSDocumentInfo xSDocumentInfo, XSElementDecl xSElementDecl) {
        StringBuilder sb;
        String attrValue = DOMUtil.getAttrValue(element, SchemaSymbols.ATT_NAME);
        if (attrValue.length() != 0) {
            if (xSDocumentInfo.fTargetNamespace == null) {
                sb = new StringBuilder();
            } else {
                sb = new StringBuilder();
                sb.append(xSDocumentInfo.fTargetNamespace);
            }
            sb.append(",");
            sb.append(attrValue);
            checkForDuplicateNames(sb.toString(), this.fUnparsedIdentityConstraintRegistry, this.fUnparsedIdentityConstraintRegistrySub, element, xSDocumentInfo);
        }
        int i = this.fKeyrefStackPos;
        Element[] elementArr = this.fKeyrefs;
        if (i == elementArr.length) {
            Element[] elementArr2 = new Element[i + 2];
            System.arraycopy(elementArr, 0, elementArr2, 0, i);
            this.fKeyrefs = elementArr2;
            int i2 = this.fKeyrefStackPos;
            XSElementDecl[] xSElementDeclArr = new XSElementDecl[i2 + 2];
            System.arraycopy(this.fKeyrefElems, 0, xSElementDeclArr, 0, i2);
            this.fKeyrefElems = xSElementDeclArr;
            int i3 = this.fKeyrefStackPos;
            String[][] strArr = new String[i3 + 2];
            System.arraycopy(this.fKeyrefNamespaceContext, 0, strArr, 0, i3);
            this.fKeyrefNamespaceContext = strArr;
            int i4 = this.fKeyrefStackPos;
            XSDocumentInfo[] xSDocumentInfoArr = new XSDocumentInfo[i4 + 2];
            System.arraycopy(this.fKeyrefsMapXSDocumentInfo, 0, xSDocumentInfoArr, 0, i4);
            this.fKeyrefsMapXSDocumentInfo = xSDocumentInfoArr;
        }
        Element[] elementArr3 = this.fKeyrefs;
        int i5 = this.fKeyrefStackPos;
        elementArr3[i5] = element;
        this.fKeyrefElems[i5] = xSElementDecl;
        this.fKeyrefNamespaceContext[i5] = xSDocumentInfo.fNamespaceSupport.getEffectiveLocalContext();
        XSDocumentInfo[] xSDocumentInfoArr2 = this.fKeyrefsMapXSDocumentInfo;
        int i6 = this.fKeyrefStackPos;
        this.fKeyrefStackPos = i6 + 1;
        xSDocumentInfoArr2[i6] = xSDocumentInfo;
    }

    public void traverseLocalElements() {
        XSModelGroupImpl xSModelGroupImpl;
        this.fElementTraverser.fDeferTraversingLocalElements = false;
        for (int i = 0; i < this.fLocalElemStackPos; i++) {
            Element element = this.fLocalElementDecl[i];
            XSDocumentInfo xSDocumentInfo = this.fLocalElementDecl_schema[i];
            this.fElementTraverser.traverseLocal(this.fParticle[i], element, xSDocumentInfo, this.fGrammarBucket.getGrammar(xSDocumentInfo.fTargetNamespace), this.fAllContext[i], this.fParent[i], this.fLocalElemNamespaceContext[i]);
            if (this.fParticle[i].fType == 0) {
                XSObject xSObject = this.fParent[i];
                if (xSObject instanceof XSComplexTypeDecl) {
                    XSParticle particle = ((XSComplexTypeDecl) xSObject).getParticle();
                    xSModelGroupImpl = particle != null ? (XSModelGroupImpl) particle.getTerm() : null;
                } else {
                    xSModelGroupImpl = ((XSGroupDecl) xSObject).fModelGroup;
                }
                if (xSModelGroupImpl != null) {
                    removeParticle(xSModelGroupImpl, this.fParticle[i]);
                }
            }
        }
    }

    public void traverseSchemas(ArrayList arrayList) {
        XSAnnotationInfo annotations;
        String syntheticAnnotation;
        setSchemasVisible(this.fRoot);
        Stack stack = new Stack();
        stack.push(this.fRoot);
        while (!stack.empty()) {
            XSDocumentInfo xSDocumentInfo = (XSDocumentInfo) stack.pop();
            Element element = xSDocumentInfo.fSchemaElement;
            SchemaGrammar grammar = this.fGrammarBucket.getGrammar(xSDocumentInfo.fTargetNamespace);
            if (!DOMUtil.isHidden(element, this.fHiddenNodes)) {
                Element firstVisibleChildElement = DOMUtil.getFirstVisibleChildElement(element, this.fHiddenNodes);
                boolean z = false;
                while (firstVisibleChildElement != null) {
                    DOMUtil.setHidden(firstVisibleChildElement, this.fHiddenNodes);
                    String localName = DOMUtil.getLocalName(firstVisibleChildElement);
                    if (DOMUtil.getLocalName(firstVisibleChildElement).equals(SchemaSymbols.ELT_REDEFINE)) {
                        xSDocumentInfo.backupNSSupport((SchemaNamespaceSupport) this.fRedefine2NSSupport.get(firstVisibleChildElement));
                        Element firstVisibleChildElement2 = DOMUtil.getFirstVisibleChildElement(firstVisibleChildElement, this.fHiddenNodes);
                        while (firstVisibleChildElement2 != null) {
                            String localName2 = DOMUtil.getLocalName(firstVisibleChildElement2);
                            DOMUtil.setHidden(firstVisibleChildElement2, this.fHiddenNodes);
                            if (localName2.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                                this.fAttributeGroupTraverser.traverseGlobal(firstVisibleChildElement2, xSDocumentInfo, grammar);
                            } else if (localName2.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                                this.fComplexTypeTraverser.traverseGlobal(firstVisibleChildElement2, xSDocumentInfo, grammar);
                            } else if (localName2.equals(SchemaSymbols.ELT_GROUP)) {
                                this.fGroupTraverser.traverseGlobal(firstVisibleChildElement2, xSDocumentInfo, grammar);
                            } else if (localName2.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                                this.fSimpleTypeTraverser.traverseGlobal(firstVisibleChildElement2, xSDocumentInfo, grammar);
                            } else {
                                reportSchemaError("s4s-elt-must-match.1", new Object[]{DOMUtil.getLocalName(firstVisibleChildElement), "(annotation | (simpleType | complexType | group | attributeGroup))*", localName2}, firstVisibleChildElement2);
                            }
                            firstVisibleChildElement2 = DOMUtil.getNextVisibleSiblingElement(firstVisibleChildElement2, this.fHiddenNodes);
                        }
                        xSDocumentInfo.restoreNSSupport();
                    } else if (localName.equals(SchemaSymbols.ELT_ATTRIBUTE)) {
                        this.fAttributeTraverser.traverseGlobal(firstVisibleChildElement, xSDocumentInfo, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_ATTRIBUTEGROUP)) {
                        this.fAttributeGroupTraverser.traverseGlobal(firstVisibleChildElement, xSDocumentInfo, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_COMPLEXTYPE)) {
                        this.fComplexTypeTraverser.traverseGlobal(firstVisibleChildElement, xSDocumentInfo, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_ELEMENT)) {
                        this.fElementTraverser.traverseGlobal(firstVisibleChildElement, xSDocumentInfo, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_GROUP)) {
                        this.fGroupTraverser.traverseGlobal(firstVisibleChildElement, xSDocumentInfo, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_NOTATION)) {
                        this.fNotationTraverser.traverse(firstVisibleChildElement, xSDocumentInfo, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_SIMPLETYPE)) {
                        this.fSimpleTypeTraverser.traverseGlobal(firstVisibleChildElement, xSDocumentInfo, grammar);
                    } else if (localName.equals(SchemaSymbols.ELT_ANNOTATION)) {
                        grammar.addAnnotation(this.fElementTraverser.traverseAnnotationDecl(firstVisibleChildElement, xSDocumentInfo.getSchemaAttrs(), true, xSDocumentInfo));
                        z = true;
                    } else {
                        reportSchemaError("s4s-elt-invalid-content.1", new Object[]{SchemaSymbols.ELT_SCHEMA, DOMUtil.getLocalName(firstVisibleChildElement)}, firstVisibleChildElement);
                    }
                    firstVisibleChildElement = DOMUtil.getNextVisibleSiblingElement(firstVisibleChildElement, this.fHiddenNodes);
                }
                if (!z && (syntheticAnnotation = DOMUtil.getSyntheticAnnotation(element)) != null) {
                    grammar.addAnnotation(this.fElementTraverser.traverseSyntheticAnnotation(element, syntheticAnnotation, xSDocumentInfo.getSchemaAttrs(), true, xSDocumentInfo));
                }
                if (arrayList != null && (annotations = xSDocumentInfo.getAnnotations()) != null) {
                    arrayList.add(doc2SystemId(element));
                    arrayList.add(annotations);
                }
                xSDocumentInfo.returnSchemaAttrs();
                DOMUtil.setHidden(element, this.fHiddenNodes);
                Vector vector = (Vector) this.fDependencyMap.get(xSDocumentInfo);
                for (int i = 0; i < vector.size(); i++) {
                    stack.push(vector.elementAt(i));
                }
            }
        }
    }

    public boolean element2Locator(Element element, SimpleLocator simpleLocator) {
        if (simpleLocator == null || !(element instanceof ElementImpl)) {
            return false;
        }
        ElementImpl elementImpl = (ElementImpl) element;
        String str = (String) this.fDoc2SystemId.get(DOMUtil.getRoot(elementImpl.getOwnerDocument()));
        simpleLocator.setValues(str, str, elementImpl.getLineNumber(), elementImpl.getColumnNumber(), elementImpl.getCharacterOffset());
        return true;
    }

    public XSDHandler(XSGrammarBucket xSGrammarBucket) {
        this();
        this.fGrammarBucket = xSGrammarBucket;
        this.fSchemaGrammarDescription = new XSDDescription();
    }
}
