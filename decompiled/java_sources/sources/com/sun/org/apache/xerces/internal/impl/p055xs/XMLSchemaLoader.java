package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.dom.DOMErrorImpl;
import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.org.apache.xerces.internal.dom.DOMStringListImpl;
import com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.CMBuilder;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.CMNodeFactory;
import com.sun.org.apache.xerces.internal.impl.p055xs.traversers.XSDHandler;
import com.sun.org.apache.xerces.internal.p056xs.LSInputList;
import com.sun.org.apache.xerces.internal.p056xs.StringList;
import com.sun.org.apache.xerces.internal.p056xs.XSLoader;
import com.sun.org.apache.xerces.internal.p056xs.XSModel;
import com.sun.org.apache.xerces.internal.util.DOMEntityResolverWrapper;
import com.sun.org.apache.xerces.internal.util.DOMErrorHandlerWrapper;
import com.sun.org.apache.xerces.internal.util.DefaultErrorHandler;
import com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.grammars.XSGrammar;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.util.Hashtable;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.Vector;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.InputSource;

/* loaded from: classes10.dex */
public class XMLSchemaLoader implements XMLGrammarLoader, XMLComponent, XSLoader, DOMConfiguration {
    protected static final String AUGMENT_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String DISALLOW_DOCTYPE = "http://apache.org/xml/features/disallow-doctype-decl";
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    public static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    public static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    public static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    private CMBuilder fCMBuilder;
    private XSDeclarationPool fDeclPool;
    private XMLEntityManager fEntityManager;
    private DOMErrorHandlerWrapper fErrorHandler;
    private XMLErrorReporter fErrorReporter;
    private String fExternalNoNSSchema;
    private String fExternalSchemas;
    private XSGrammarBucket fGrammarBucket;
    private XMLGrammarPool fGrammarPool;
    private boolean fIsCheckedFully;
    private Hashtable fJAXPCache;
    private boolean fJAXPProcessed;
    private Object fJAXPSource;
    private ParserConfigurationSettings fLoaderConfig;
    private Locale fLocale;
    private DOMStringList fRecognizedParameters;
    private DOMEntityResolverWrapper fResourceResolver;
    private XSDHandler fSchemaHandler;
    private boolean fSettingsChanged;
    private SubstitutionGroupHandler fSubGroupHandler;
    private SymbolTable fSymbolTable;
    private XMLEntityResolver fUserEntityResolver;
    private XSDDescription fXSDDescription;
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    private static final String[] RECOGNIZED_FEATURES = {"http://apache.org/xml/features/validation/schema-full-checking", "http://apache.org/xml/features/validation/schema/augment-psvi", "http://apache.org/xml/features/continue-after-fatal-error", ALLOW_JAVA_ENCODINGS, STANDARD_URI_CONFORMANT_FEATURE, "http://apache.org/xml/features/disallow-doctype-decl", "http://apache.org/xml/features/generate-synthetic-annotations", VALIDATE_ANNOTATIONS, HONOUR_ALL_SCHEMALOCATIONS};
    protected static final String SCHEMA_LOCATION = "http://apache.org/xml/properties/schema/external-schemaLocation";
    protected static final String SCHEMA_NONS_LOCATION = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
    private static final String[] RECOGNIZED_PROPERTIES = {"http://apache.org/xml/properties/internal/entity-manager", "http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/error-handler", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/grammar-pool", SCHEMA_LOCATION, SCHEMA_NONS_LOCATION, "http://java.sun.com/xml/jaxp/properties/schemaSource", "http://apache.org/xml/properties/security-manager"};

    /* loaded from: classes10.dex */
    public static class LocationArray {
        int length;
        String[] locations = new String[2];

        public void addLocation(String str) {
            int i = this.length;
            if (i >= this.locations.length) {
                resize(i, Math.max(1, i * 2));
            }
            String[] strArr = this.locations;
            int i2 = this.length;
            this.length = i2 + 1;
            strArr[i2] = str;
        }

        public String getFirstLocation() {
            if (this.length > 0) {
                return this.locations[0];
            }
            return null;
        }

        public int getLength() {
            return this.length;
        }

        public String[] getLocationArray() {
            int i = this.length;
            String[] strArr = this.locations;
            if (i < strArr.length) {
                resize(strArr.length, i);
            }
            return this.locations;
        }

        public void resize(int i, int i2) {
            String[] strArr = new String[i2];
            System.arraycopy(this.locations, 0, strArr, 0, Math.min(i, i2));
            this.locations = strArr;
            this.length = Math.min(i, i2);
        }
    }

    public XMLSchemaLoader() {
        this(new SymbolTable(), null, new XMLEntityManager(), null, null, null);
    }

    private void initGrammarBucket() {
        XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
        if (xMLGrammarPool != null) {
            for (Grammar grammar : xMLGrammarPool.retrieveInitialGrammarSet("http://www.w3.org/2001/XMLSchema")) {
                if (!this.fGrammarBucket.putGrammar((SchemaGrammar) grammar, true)) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "GrammarConflict", null, (short) 0);
                }
            }
        }
    }

    public static void processExternalHints(String str, String str2, Hashtable hashtable, XMLErrorReporter xMLErrorReporter) {
        if (str != null) {
            try {
                SchemaGrammar.SG_XSI.getGlobalAttributeDecl(SchemaSymbols.XSI_SCHEMALOCATION).fType.validate(str, (ValidationContext) null, (ValidatedInfo) null);
                if (!tokenizeSchemaLocationStr(str, hashtable)) {
                    xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "SchemaLocation", new Object[]{str}, (short) 0);
                }
            } catch (InvalidDatatypeValueException e) {
                xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", e.getKey(), e.getArgs(), (short) 0);
            }
        }
        if (str2 != null) {
            try {
                SchemaGrammar.SG_XSI.getGlobalAttributeDecl(SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION).fType.validate(str2, (ValidationContext) null, (ValidatedInfo) null);
                String str3 = XMLSymbols.EMPTY_STRING;
                LocationArray locationArray = (LocationArray) hashtable.get(str3);
                if (locationArray == null) {
                    locationArray = new LocationArray();
                    hashtable.put(str3, locationArray);
                }
                locationArray.addLocation(str2);
            } catch (InvalidDatatypeValueException e2) {
                xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", e2.getKey(), e2.getArgs(), (short) 0);
            }
        }
    }

    private void processJAXPSchemaSource(Hashtable hashtable) throws IOException {
        SchemaGrammar schemaGrammar;
        SchemaGrammar schemaGrammar2;
        this.fJAXPProcessed = true;
        Object obj = this.fJAXPSource;
        if (obj == null) {
            return;
        }
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType == null) {
            Object obj2 = this.fJAXPSource;
            if (((obj2 instanceof InputStream) || (obj2 instanceof InputSource)) && (schemaGrammar2 = (SchemaGrammar) this.fJAXPCache.get(obj2)) != null) {
                this.fGrammarBucket.putGrammar(schemaGrammar2);
                return;
            }
            this.fXSDDescription.reset();
            XMLInputSource xsdToXMLInputSource = xsdToXMLInputSource(this.fJAXPSource);
            String systemId = xsdToXMLInputSource.getSystemId();
            XSDDescription xSDDescription = this.fXSDDescription;
            xSDDescription.fContextType = (short) 3;
            if (systemId != null) {
                xSDDescription.setBaseSystemId(xsdToXMLInputSource.getBaseSystemId());
                this.fXSDDescription.setLiteralSystemId(systemId);
                this.fXSDDescription.setExpandedSystemId(systemId);
                this.fXSDDescription.fLocationHints = new String[]{systemId};
            }
            SchemaGrammar loadSchema = loadSchema(this.fXSDDescription, xsdToXMLInputSource, hashtable);
            if (loadSchema != null) {
                Object obj3 = this.fJAXPSource;
                if ((obj3 instanceof InputStream) || (obj3 instanceof InputSource)) {
                    this.fJAXPCache.put(obj3, loadSchema);
                    if (this.fIsCheckedFully) {
                        XSConstraints.fullSchemaChecking(this.fGrammarBucket, this.fSubGroupHandler, this.fCMBuilder, this.fErrorReporter);
                    }
                }
                this.fGrammarBucket.putGrammar(loadSchema);
                return;
            }
            return;
        }
        if (componentType != Object.class && componentType != String.class && componentType != File.class && componentType != InputStream.class && componentType != InputSource.class) {
            throw new XMLConfigurationException((short) 1, "\"http://java.sun.com/xml/jaxp/properties/schemaSource\" property cannot have an array of type {" + componentType.getName() + "}. Possible types of the array supported are Object, String, File, InputStream, InputSource.");
        }
        Object[] objArr = (Object[]) this.fJAXPSource;
        Vector vector = new Vector();
        for (int i = 0; i < objArr.length; i++) {
            Object obj4 = objArr[i];
            if (((obj4 instanceof InputStream) || (obj4 instanceof InputSource)) && (schemaGrammar = (SchemaGrammar) this.fJAXPCache.get(obj4)) != null) {
                this.fGrammarBucket.putGrammar(schemaGrammar);
            } else {
                this.fXSDDescription.reset();
                XMLInputSource xsdToXMLInputSource2 = xsdToXMLInputSource(objArr[i]);
                String systemId2 = xsdToXMLInputSource2.getSystemId();
                XSDDescription xSDDescription2 = this.fXSDDescription;
                xSDDescription2.fContextType = (short) 3;
                if (systemId2 != null) {
                    xSDDescription2.setBaseSystemId(xsdToXMLInputSource2.getBaseSystemId());
                    this.fXSDDescription.setLiteralSystemId(systemId2);
                    this.fXSDDescription.setExpandedSystemId(systemId2);
                    this.fXSDDescription.fLocationHints = new String[]{systemId2};
                }
                SchemaGrammar parseSchema = this.fSchemaHandler.parseSchema(xsdToXMLInputSource2, this.fXSDDescription, hashtable);
                if (this.fIsCheckedFully) {
                    XSConstraints.fullSchemaChecking(this.fGrammarBucket, this.fSubGroupHandler, this.fCMBuilder, this.fErrorReporter);
                }
                if (parseSchema != null) {
                    String targetNamespace = parseSchema.getTargetNamespace();
                    if (vector.contains(targetNamespace)) {
                        throw new IllegalArgumentException(" When using array of Objects as the value of SCHEMA_SOURCE property , no two Schemas should share the same targetNamespace. ");
                    }
                    vector.add(targetNamespace);
                    Object obj5 = objArr[i];
                    if ((obj5 instanceof InputStream) || (obj5 instanceof InputSource)) {
                        this.fJAXPCache.put(obj5, parseSchema);
                    }
                    this.fGrammarBucket.putGrammar(parseSchema);
                } else {
                    continue;
                }
            }
        }
    }

    public static XMLInputSource resolveDocument(XSDDescription xSDDescription, Hashtable hashtable, XMLEntityResolver xMLEntityResolver) throws IOException {
        String firstLocation;
        String[] locationHints;
        if (xSDDescription.getContextType() == 2 || xSDDescription.fromInstance()) {
            String targetNamespace = xSDDescription.getTargetNamespace();
            if (targetNamespace == null) {
                targetNamespace = XMLSymbols.EMPTY_STRING;
            }
            LocationArray locationArray = (LocationArray) hashtable.get(targetNamespace);
            if (locationArray != null) {
                firstLocation = locationArray.getFirstLocation();
                if (firstLocation == null && (locationHints = xSDDescription.getLocationHints()) != null && locationHints.length > 0) {
                    firstLocation = locationHints[0];
                }
                String expandSystemId = XMLEntityManager.expandSystemId(firstLocation, xSDDescription.getBaseSystemId(), false);
                xSDDescription.setLiteralSystemId(firstLocation);
                xSDDescription.setExpandedSystemId(expandSystemId);
                return xMLEntityResolver.resolveEntity(xSDDescription);
            }
        }
        firstLocation = null;
        if (firstLocation == null) {
            firstLocation = locationHints[0];
        }
        String expandSystemId2 = XMLEntityManager.expandSystemId(firstLocation, xSDDescription.getBaseSystemId(), false);
        xSDDescription.setLiteralSystemId(firstLocation);
        xSDDescription.setExpandedSystemId(expandSystemId2);
        return xMLEntityResolver.resolveEntity(xSDDescription);
    }

    private static XMLInputSource saxToXMLInputSource(InputSource inputSource) {
        String publicId = inputSource.getPublicId();
        String systemId = inputSource.getSystemId();
        Reader characterStream = inputSource.getCharacterStream();
        if (characterStream != null) {
            return new XMLInputSource(publicId, systemId, (String) null, characterStream, (String) null);
        }
        InputStream byteStream = inputSource.getByteStream();
        return byteStream != null ? new XMLInputSource(publicId, systemId, (String) null, byteStream, inputSource.getEncoding()) : new XMLInputSource(publicId, systemId, null);
    }

    public static boolean tokenizeSchemaLocationStr(String str, Hashtable hashtable) {
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
            LocationArray locationArray = (LocationArray) hashtable.get(nextToken);
            if (locationArray == null) {
                locationArray = new LocationArray();
                hashtable.put(nextToken, locationArray);
            }
            locationArray.addLocation(nextToken2);
        }
        return true;
    }

    private XMLInputSource xsdToXMLInputSource(Object obj) {
        BufferedInputStream bufferedInputStream;
        XMLInputSource xMLInputSource;
        if (obj instanceof String) {
            String str = (String) obj;
            this.fXSDDescription.reset();
            this.fXSDDescription.setValues(null, str, null, null);
            try {
                xMLInputSource = this.fEntityManager.resolveEntity(this.fXSDDescription);
            } catch (IOException unused) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "schema_reference.4", new Object[]{str}, (short) 1);
                xMLInputSource = null;
            }
            return xMLInputSource == null ? new XMLInputSource(null, str, null) : xMLInputSource;
        }
        if (obj instanceof InputSource) {
            return saxToXMLInputSource((InputSource) obj);
        }
        if (obj instanceof InputStream) {
            return new XMLInputSource((String) null, (String) null, (String) null, (InputStream) obj, (String) null);
        }
        if (obj instanceof File) {
            File file = (File) obj;
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            } catch (FileNotFoundException unused2) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "schema_reference.4", new Object[]{file.toString()}, (short) 1);
                bufferedInputStream = null;
            }
            return new XMLInputSource((String) null, (String) null, (String) null, bufferedInputStream, (String) null);
        }
        throw new XMLConfigurationException((short) 1, "\"http://java.sun.com/xml/jaxp/properties/schemaSource\" property cannot have a value of type {" + obj.getClass().getName() + "}. Possible types of the value supported are String, File, InputStream, InputSource OR an array of these types.");
    }

    @Override // org.w3c.dom.DOMConfiguration
    public boolean canSetParameter(String str, Object obj) {
        return obj instanceof Boolean ? str.equals("validate") || str.equals("http://apache.org/xml/features/validation/schema-full-checking") || str.equals(VALIDATE_ANNOTATIONS) || str.equals("http://apache.org/xml/features/continue-after-fatal-error") || str.equals(ALLOW_JAVA_ENCODINGS) || str.equals(STANDARD_URI_CONFORMANT_FEATURE) || str.equals("http://apache.org/xml/features/generate-synthetic-annotations") || str.equals(HONOUR_ALL_SCHEMALOCATIONS) : str.equals("error-handler") || str.equals("resource-resolver") || str.equals("http://apache.org/xml/properties/internal/symbol-table") || str.equals("http://apache.org/xml/properties/internal/error-reporter") || str.equals("http://apache.org/xml/properties/internal/error-handler") || str.equals("http://apache.org/xml/properties/internal/entity-resolver") || str.equals("http://apache.org/xml/properties/internal/grammar-pool") || str.equals(SCHEMA_LOCATION) || str.equals(SCHEMA_NONS_LOCATION) || str.equals("http://java.sun.com/xml/jaxp/properties/schemaSource");
    }

    public XMLInputSource dom2xmlInputSource(LSInput lSInput) {
        return lSInput.getCharacterStream() != null ? new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), lSInput.getCharacterStream(), "UTF-16") : lSInput.getByteStream() != null ? new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), lSInput.getByteStream(), lSInput.getEncoding()) : (lSInput.getStringData() == null || lSInput.getStringData().length() == 0) ? new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI()) : new XMLInputSource(lSInput.getPublicId(), lSInput.getSystemId(), lSInput.getBaseURI(), new StringReader(lSInput.getStringData()), "UTF-16");
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSLoader
    public DOMConfiguration getConfig() {
        return this;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public XMLEntityResolver getEntityResolver() {
        return this.fUserEntityResolver;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public XMLErrorHandler getErrorHandler() {
        return this.fErrorReporter.getErrorHandler();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public boolean getFeature(String str) throws XMLConfigurationException {
        return this.fLoaderConfig.getFeature(str);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        if (str.equals("http://apache.org/xml/features/validation/schema/augment-psvi")) {
            return Boolean.TRUE;
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public Locale getLocale() {
        return this.fLocale;
    }

    @Override // org.w3c.dom.DOMConfiguration
    public Object getParameter(String str) throws DOMException {
        if (str.equals("error-handler")) {
            DOMErrorHandlerWrapper dOMErrorHandlerWrapper = this.fErrorHandler;
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
        DOMEntityResolverWrapper dOMEntityResolverWrapper = this.fResourceResolver;
        if (dOMEntityResolverWrapper != null) {
            return dOMEntityResolverWrapper.getEntityResolver();
        }
        return null;
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        if (this.fRecognizedParameters == null) {
            Vector vector = new Vector();
            vector.add("validate");
            vector.add("error-handler");
            vector.add("resource-resolver");
            vector.add("http://apache.org/xml/properties/internal/symbol-table");
            vector.add("http://apache.org/xml/properties/internal/error-reporter");
            vector.add("http://apache.org/xml/properties/internal/error-handler");
            vector.add("http://apache.org/xml/properties/internal/entity-resolver");
            vector.add("http://apache.org/xml/properties/internal/grammar-pool");
            vector.add(SCHEMA_LOCATION);
            vector.add(SCHEMA_NONS_LOCATION);
            vector.add("http://java.sun.com/xml/jaxp/properties/schemaSource");
            vector.add("http://apache.org/xml/features/validation/schema-full-checking");
            vector.add("http://apache.org/xml/features/continue-after-fatal-error");
            vector.add(ALLOW_JAVA_ENCODINGS);
            vector.add(STANDARD_URI_CONFORMANT_FEATURE);
            vector.add(VALIDATE_ANNOTATIONS);
            vector.add("http://apache.org/xml/features/generate-synthetic-annotations");
            vector.add(HONOUR_ALL_SCHEMALOCATIONS);
            this.fRecognizedParameters = new DOMStringListImpl(vector);
        }
        return this.fRecognizedParameters;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public Object getProperty(String str) throws XMLConfigurationException {
        return this.fLoaderConfig.getProperty(str);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) RECOGNIZED_FEATURES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) RECOGNIZED_PROPERTIES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSLoader
    public XSModel load(LSInput lSInput) {
        try {
            return ((XSGrammar) loadGrammar(dom2xmlInputSource(lSInput))).toXSModel();
        } catch (Exception e) {
            this.reportDOMFatalError(e);
            return null;
        }
    }

    public void loadGrammar(XMLInputSource[] xMLInputSourceArr) throws IOException, XNIException {
        for (XMLInputSource xMLInputSource : xMLInputSourceArr) {
            loadGrammar(xMLInputSource);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSLoader
    public XSModel loadInputList(LSInputList lSInputList) {
        int length = lSInputList.getLength();
        if (length == 0) {
            return null;
        }
        SchemaGrammar[] schemaGrammarArr = new SchemaGrammar[length];
        for (int i = 0; i < length; i++) {
            try {
                schemaGrammarArr[i] = (SchemaGrammar) loadGrammar(dom2xmlInputSource(lSInputList.item(i)));
            } catch (Exception e) {
                reportDOMFatalError(e);
                return null;
            }
        }
        return new XSModelImpl(schemaGrammarArr);
    }

    public SchemaGrammar loadSchema(XSDDescription xSDDescription, XMLInputSource xMLInputSource, Hashtable hashtable) throws IOException, XNIException {
        if (!this.fJAXPProcessed) {
            processJAXPSchemaSource(hashtable);
        }
        return this.fSchemaHandler.parseSchema(xMLInputSource, xSDDescription, hashtable);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSLoader
    public XSModel loadURI(String str) {
        try {
            return ((XSGrammar) loadGrammar(new XMLInputSource(null, str, null))).toXSModel();
        } catch (Exception e) {
            this.reportDOMFatalError(e);
            return null;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSLoader
    public XSModel loadURIList(StringList stringList) {
        int length = stringList.getLength();
        if (length == 0) {
            return null;
        }
        SchemaGrammar[] schemaGrammarArr = new SchemaGrammar[length];
        for (int i = 0; i < length; i++) {
            try {
                schemaGrammarArr[i] = (SchemaGrammar) loadGrammar(new XMLInputSource(null, stringList.item(i), null));
            } catch (Exception e) {
                reportDOMFatalError(e);
                return null;
            }
        }
        return new XSModelImpl(schemaGrammarArr);
    }

    public void reportDOMFatalError(Exception exc) {
        if (this.fErrorHandler != null) {
            DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
            dOMErrorImpl.fException = exc;
            dOMErrorImpl.fMessage = exc.getMessage();
            dOMErrorImpl.fSeverity = (short) 3;
            this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        boolean z;
        boolean z2;
        this.fGrammarBucket.reset();
        this.fSubGroupHandler.reset();
        try {
            z = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            z = true;
        }
        if (!z || !this.fSettingsChanged) {
            initGrammarBucket();
            return;
        }
        this.fEntityManager = (XMLEntityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        try {
            z2 = xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema/augment-psvi");
        } catch (XMLConfigurationException unused2) {
            z2 = false;
        }
        if (z2) {
            this.fCMBuilder.setDeclPool(null);
            this.fSchemaHandler.setDeclPool(null);
        } else {
            this.fDeclPool.reset();
            this.fCMBuilder.setDeclPool(this.fDeclPool);
            this.fSchemaHandler.setDeclPool(this.fDeclPool);
        }
        try {
            this.fExternalSchemas = (String) xMLComponentManager.getProperty(SCHEMA_LOCATION);
            this.fExternalNoNSSchema = (String) xMLComponentManager.getProperty(SCHEMA_NONS_LOCATION);
        } catch (XMLConfigurationException unused3) {
            this.fExternalSchemas = null;
            this.fExternalNoNSSchema = null;
        }
        try {
            this.fJAXPSource = xMLComponentManager.getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource");
            this.fJAXPProcessed = false;
        } catch (XMLConfigurationException unused4) {
            this.fJAXPSource = null;
            this.fJAXPProcessed = false;
        }
        try {
            this.fGrammarPool = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused5) {
            this.fGrammarPool = null;
        }
        initGrammarBucket();
        try {
            this.fErrorReporter.setFeature("http://apache.org/xml/features/continue-after-fatal-error", xMLComponentManager.getFeature("http://apache.org/xml/features/continue-after-fatal-error"));
        } catch (XMLConfigurationException unused6) {
        }
        try {
            this.fIsCheckedFully = xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema-full-checking");
        } catch (XMLConfigurationException unused7) {
            this.fIsCheckedFully = false;
        }
        try {
            this.fSchemaHandler.setGenerateSyntheticAnnotations(xMLComponentManager.getFeature("http://apache.org/xml/features/generate-synthetic-annotations"));
        } catch (XMLConfigurationException unused8) {
            this.fSchemaHandler.setGenerateSyntheticAnnotations(false);
        }
        this.fSchemaHandler.reset(xMLComponentManager);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        this.fUserEntityResolver = xMLEntityResolver;
        this.fLoaderConfig.setProperty("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
        this.fEntityManager.setProperty("http://apache.org/xml/properties/internal/entity-resolver", xMLEntityResolver);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public void setErrorHandler(XMLErrorHandler xMLErrorHandler) {
        this.fErrorReporter.setProperty("http://apache.org/xml/properties/internal/error-handler", xMLErrorHandler);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        this.fSettingsChanged = true;
        if (str.equals("http://apache.org/xml/features/continue-after-fatal-error")) {
            this.fErrorReporter.setFeature("http://apache.org/xml/features/continue-after-fatal-error", z);
        } else if (str.equals("http://apache.org/xml/features/generate-synthetic-annotations")) {
            this.fSchemaHandler.setGenerateSyntheticAnnotations(z);
        }
        this.fLoaderConfig.setFeature(str, z);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public void setLocale(Locale locale) {
        this.fLocale = locale;
        this.fErrorReporter.setLocale(locale);
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
                this.fErrorHandler = dOMErrorHandlerWrapper;
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
                this.fResourceResolver = dOMEntityResolverWrapper;
                setEntityResolver(dOMEntityResolverWrapper);
            } catch (XMLConfigurationException unused4) {
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        this.fSettingsChanged = true;
        this.fLoaderConfig.setProperty(str, obj);
        if (str.equals("http://java.sun.com/xml/jaxp/properties/schemaSource")) {
            this.fJAXPSource = obj;
            this.fJAXPProcessed = false;
            return;
        }
        if (str.equals("http://apache.org/xml/properties/internal/grammar-pool")) {
            this.fGrammarPool = (XMLGrammarPool) obj;
            return;
        }
        if (str.equals(SCHEMA_LOCATION)) {
            this.fExternalSchemas = (String) obj;
            return;
        }
        if (str.equals(SCHEMA_NONS_LOCATION)) {
            this.fExternalNoNSSchema = (String) obj;
            return;
        }
        if (str.equals("http://apache.org/xml/properties/internal/entity-resolver")) {
            this.fEntityManager.setProperty("http://apache.org/xml/properties/internal/entity-resolver", obj);
            return;
        }
        if (str.equals("http://apache.org/xml/properties/internal/error-reporter")) {
            XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) obj;
            this.fErrorReporter = xMLErrorReporter;
            if (xMLErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
                this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
            }
        }
    }

    public XMLSchemaLoader(SymbolTable symbolTable) {
        this(symbolTable, null, new XMLEntityManager(), null, null, null);
    }

    public XMLSchemaLoader(XMLErrorReporter xMLErrorReporter, XSGrammarBucket xSGrammarBucket, SubstitutionGroupHandler substitutionGroupHandler, CMBuilder cMBuilder) {
        this(null, xMLErrorReporter, null, xSGrammarBucket, substitutionGroupHandler, cMBuilder);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
    public Grammar loadGrammar(XMLInputSource xMLInputSource) throws IOException, XNIException {
        XMLGrammarPool xMLGrammarPool;
        reset(this.fLoaderConfig);
        this.fSettingsChanged = false;
        XSDDescription xSDDescription = new XSDDescription();
        xSDDescription.fContextType = (short) 3;
        xSDDescription.setBaseSystemId(xMLInputSource.getBaseSystemId());
        xSDDescription.setLiteralSystemId(xMLInputSource.getSystemId());
        Hashtable hashtable = new Hashtable();
        processExternalHints(this.fExternalSchemas, this.fExternalNoNSSchema, hashtable, this.fErrorReporter);
        SchemaGrammar loadSchema = loadSchema(xSDDescription, xMLInputSource, hashtable);
        if (loadSchema != null && (xMLGrammarPool = this.fGrammarPool) != null) {
            xMLGrammarPool.cacheGrammars("http://www.w3.org/2001/XMLSchema", this.fGrammarBucket.getGrammars());
            if (this.fIsCheckedFully && this.fJAXPCache.get(loadSchema) != loadSchema) {
                XSConstraints.fullSchemaChecking(this.fGrammarBucket, this.fSubGroupHandler, this.fCMBuilder, this.fErrorReporter);
            }
        }
        return loadSchema;
    }

    public XMLSchemaLoader(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager, XSGrammarBucket xSGrammarBucket, SubstitutionGroupHandler substitutionGroupHandler, CMBuilder cMBuilder) {
        this.fLoaderConfig = new ParserConfigurationSettings();
        this.fSymbolTable = null;
        this.fErrorReporter = new XMLErrorReporter();
        this.fEntityManager = null;
        this.fUserEntityResolver = null;
        this.fGrammarPool = null;
        this.fExternalSchemas = null;
        this.fExternalNoNSSchema = null;
        this.fJAXPSource = null;
        this.fIsCheckedFully = false;
        this.fJAXPProcessed = false;
        this.fSettingsChanged = true;
        this.fDeclPool = null;
        this.fXSDDescription = new XSDDescription();
        this.fLocale = Locale.getDefault();
        this.fRecognizedParameters = null;
        this.fErrorHandler = null;
        this.fResourceResolver = null;
        this.fLoaderConfig.addRecognizedFeatures(RECOGNIZED_FEATURES);
        this.fLoaderConfig.addRecognizedProperties(RECOGNIZED_PROPERTIES);
        if (symbolTable != null) {
            this.fLoaderConfig.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
        }
        if (xMLErrorReporter == null) {
            xMLErrorReporter = new XMLErrorReporter();
            xMLErrorReporter.setLocale(this.fLocale);
            xMLErrorReporter.setProperty("http://apache.org/xml/properties/internal/error-handler", new DefaultErrorHandler());
        }
        this.fErrorReporter = xMLErrorReporter;
        if (xMLErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
        }
        this.fLoaderConfig.setProperty("http://apache.org/xml/properties/internal/error-reporter", this.fErrorReporter);
        this.fEntityManager = xMLEntityManager;
        if (xMLEntityManager != null) {
            this.fLoaderConfig.setProperty("http://apache.org/xml/properties/internal/entity-manager", xMLEntityManager);
        }
        this.fLoaderConfig.setFeature("http://apache.org/xml/features/validation/schema/augment-psvi", true);
        this.fGrammarBucket = xSGrammarBucket == null ? new XSGrammarBucket() : xSGrammarBucket;
        this.fSubGroupHandler = substitutionGroupHandler == null ? new SubstitutionGroupHandler(this.fGrammarBucket) : substitutionGroupHandler;
        this.fCMBuilder = cMBuilder == null ? new CMBuilder(new CMNodeFactory()) : cMBuilder;
        this.fSchemaHandler = new XSDHandler(this.fGrammarBucket);
        this.fDeclPool = new XSDeclarationPool();
        this.fJAXPCache = new Hashtable();
        this.fSettingsChanged = true;
    }
}
