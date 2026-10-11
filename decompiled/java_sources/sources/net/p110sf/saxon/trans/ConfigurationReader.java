package net.p110sf.saxon.trans;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Stack;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.instruct.ResultDocument;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.lib.CatalogResourceResolver;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ExtensionFunctionDefinition;
import net.p110sf.saxon.lib.ExternalObjectModel;
import net.p110sf.saxon.lib.FeatureIndex;
import net.p110sf.saxon.lib.FeatureKeys;
import net.p110sf.saxon.lib.LocalizerFactory;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.StandardErrorReporter;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.trans.packages.PackageDetails;
import net.p110sf.saxon.trans.packages.PackageLibrary;
import net.p110sf.saxon.trans.packages.VersionedPackageName;
import org.xmlresolver.ResolverFeature;

/* loaded from: classes11.dex */
public class ConfigurationReader implements Receiver {

    /* renamed from: k */
    public PackageLibrary f102258k;

    /* renamed from: l */
    public PackageDetails f102259l;

    /* renamed from: m */
    public Configuration f102260m;

    /* renamed from: n */
    public PipelineConfiguration f102261n;
    protected Configuration targetConfig;

    /* renamed from: e */
    public int f102252e = 0;

    /* renamed from: f */
    public String f102253f = null;

    /* renamed from: g */
    public String f102254g = null;

    /* renamed from: h */
    public final StringBuilder f102255h = new StringBuilder(100);

    /* renamed from: i */
    public ClassLoader f102256i = null;

    /* renamed from: j */
    public final List<XmlProcessingError> f102257j = new ArrayList();

    /* renamed from: o */
    public final Stack<String> f102262o = new Stack<>();

    /* renamed from: p */
    public String f102263p = null;

    /* renamed from: q */
    public ArrayList<String> f102264q = null;

    /* renamed from: a */
    public final void m64090a(Properties properties, String str, int i, String str2) {
        String property = properties.getProperty(str);
        if (property != null) {
            if (!m64091b(str2)) {
                m64092c(properties.getProperty("#element"), str, property, "Property " + str + " is not available in SaxonCS");
                return;
            }
            try {
                this.targetConfig.setConfigurationProperty(FeatureIndex.getData(i).uri, property);
            } catch (IllegalArgumentException e) {
                String message = e.getMessage();
                if (message.startsWith(str)) {
                    message = message.replace(str, "Value");
                }
                if (message.startsWith("Unknown configuration property")) {
                    message = "Property " + str + " is not available in Saxon-" + this.targetConfig.getEditionCode();
                }
                m64092c(properties.getProperty("#element"), str, property, message);
            }
        }
    }

    /* renamed from: b */
    public final boolean m64091b(String str) {
        return str.contains("J");
    }

    /* renamed from: c */
    public final void m64092c(String str, String str2, String str3, String str4) {
        XmlProcessingIncident xmlProcessingIncident;
        XmlProcessingIncident xmlProcessingIncident2;
        if (str2 == null) {
            xmlProcessingIncident = new XmlProcessingIncident("Invalid configuration element " + str);
        } else {
            if (str3 == null) {
                xmlProcessingIncident2 = new XmlProcessingIncident("Missing configuration property " + str + "/@" + str2);
            } else if (str4.contains("is not available in")) {
                xmlProcessingIncident2 = new XmlProcessingIncident("Configuration property " + str + "/@" + str2 + ": " + str4);
            } else {
                xmlProcessingIncident = new XmlProcessingIncident("Invalid configuration property " + str + "/@" + str2 + ". Supplied value: '" + str3 + "'; required: '" + str4 + CloudStorageConstants.SINGLE_QUOTES);
            }
            xmlProcessingIncident = xmlProcessingIncident2;
        }
        this.f102257j.add(xmlProcessingIncident);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f102255h.append(unicodeString.toString());
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    /* renamed from: d */
    public final Source m64093d(String str) throws XPathException {
        try {
            return new StreamSource(ResolveURI.makeAbsolute(str, getSystemId()).toString());
        } catch (URISyntaxException e) {
            throw new XPathException(e);
        }
    }

    /* renamed from: e */
    public final void m64094e(AttributeMap attributeMap) {
        Properties properties = new Properties();
        StringCollator stringCollator = null;
        String str = null;
        for (AttributeInfo attributeInfo : attributeMap) {
            String uri = attributeInfo.getNodeName().getURI();
            String localPart = attributeInfo.getNodeName().getLocalPart();
            String value = attributeInfo.getValue();
            if (uri.isEmpty() && !value.isEmpty()) {
                if ("uri".equals(localPart)) {
                    str = value;
                } else {
                    properties.setProperty(localPart, value);
                }
            }
        }
        if (str == null) {
            this.f102257j.add(new XmlProcessingIncident("collation specified with no uri"));
        }
        try {
            stringCollator = Version.platform.makeCollation(this.targetConfig, properties, str);
        } catch (XPathException e) {
            this.f102257j.add(new XmlProcessingIncident(e.getMessage()));
        }
        this.targetConfig.registerCollation(str, stringCollator);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() {
        Configuration configuration = this.targetConfig;
        if (configuration != null) {
            configuration.getDefaultXsltCompilerInfo().setPackageLibrary(this.f102258k);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        String pop = this.f102262o.pop();
        if (this.f102252e == 3 && "resources".equals(this.f102253f)) {
            String sb = this.f102255h.toString();
            if (!sb.isEmpty()) {
                if ("externalObjectModel".equals(pop)) {
                    try {
                        this.targetConfig.registerExternalObjectModel((ExternalObjectModel) this.targetConfig.getInstance(sb));
                    } catch (ClassCastException | XPathException e) {
                        errorClass("externalObjectModel", null, sb, ExternalObjectModel.class, e);
                    }
                } else if ("extensionFunction".equals(pop)) {
                    try {
                        this.targetConfig.registerExtensionFunction((ExtensionFunctionDefinition) this.targetConfig.getInstance(sb));
                    } catch (ClassCastException | IllegalArgumentException | XPathException e2) {
                        errorClass("extensionFunction", null, sb, ExtensionFunctionDefinition.class, e2);
                    }
                } else if ("schemaDocument".equals(pop)) {
                    try {
                        this.targetConfig.addSchemaSource(m64093d(sb));
                    } catch (XPathException e3) {
                        this.f102257j.add(new XmlProcessingException(e3));
                    }
                } else if ("schemaComponentModel".equals(pop)) {
                    try {
                        this.targetConfig.importComponents(m64093d(sb));
                    } catch (XPathException e4) {
                        this.f102257j.add(new XmlProcessingException(e4));
                    }
                } else if ("catalogFile".equals(pop)) {
                    this.f102264q.add(URI.create(this.f102263p).resolve(sb).toString());
                } else if (!"fileExtension".equals(pop)) {
                    m64092c(pop, null, null, null);
                }
            }
        }
        if (this.f102252e == 2 && "resources".equals(pop) && this.f102264q.size() != 0 && (this.targetConfig.getResourceResolver() instanceof CatalogResourceResolver)) {
            ((CatalogResourceResolver) this.targetConfig.getResourceResolver()).setFeature(ResolverFeature.CATALOG_FILES, this.f102264q);
        }
        this.f102252e--;
        this.f102255h.setLength(0);
    }

    public void error(XPathException xPathException) {
        this.f102257j.add(new XmlProcessingException(xPathException));
    }

    public void errorClass(String str, String str2, String str3, Class cls, Exception exc) {
        String str4;
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid configuration property ");
        sb.append(str);
        if (str2 == null) {
            str4 = "";
        } else {
            str4 = "/@" + str2;
        }
        sb.append(str4);
        sb.append(". Supplied value '");
        sb.append(str3);
        sb.append("', required value is the name of a class that implements '");
        sb.append(cls.getName());
        sb.append(CloudStorageConstants.SINGLE_QUOTES);
        XmlProcessingIncident xmlProcessingIncident = new XmlProcessingIncident(sb.toString());
        xmlProcessingIncident.setCause(exc);
        this.f102257j.add(xmlProcessingIncident);
    }

    /* renamed from: f */
    public final void m64095f(AttributeMap attributeMap) {
        String value = attributeMap.getValue("extension");
        String value2 = attributeMap.getValue("mediaType");
        if (value == null) {
            m64092c("fileExtension", "extension", null, null);
        }
        if (value2 == null) {
            m64092c("fileExtension", "mediaType", null, null);
        }
        this.targetConfig.registerFileExtension(value, value2);
    }

    /* renamed from: g */
    public final void m64096g(AttributeMap attributeMap) {
        Properties properties = new Properties();
        for (AttributeInfo attributeInfo : attributeMap) {
            String localPart = attributeInfo.getNodeName().getLocalPart();
            String value = attributeInfo.getValue();
            if (!value.isEmpty() && attributeInfo.getNodeName().getURI().isEmpty()) {
                properties.setProperty(localPart, value);
            }
        }
        properties.setProperty("#element", "global");
        m64090a(properties, "allowedProtocols", 124, "JN");
        m64090a(properties, "allowExternalFunctions", 1, "J");
        m64090a(properties, "allowMultiThreading", 2, "JN");
        m64090a(properties, "allowOldJavaUriFormat", 3, "J");
        m64090a(properties, "allowSyntaxExtensions", 4, "JN");
        m64090a(properties, "collationUriResolver", 7, "J");
        m64090a(properties, "collectionFinder", 9, "J");
        m64090a(properties, "compileWithTracing", 12, "JN");
        m64090a(properties, "debugByteCode", 15, "J");
        m64090a(properties, "debugByteCodeDirectory", 16, "J");
        m64090a(properties, "defaultCollation", 17, "JN");
        m64090a(properties, "defaultCollection", 18, "JN");
        m64090a(properties, "defaultRegexEngine", 21, "J");
        m64090a(properties, "displayByteCode", 23, "J");
        m64090a(properties, "dtdValidation", 24, "JN");
        m64090a(properties, "dtdValidationRecoverable", 25, "J");
        m64090a(properties, "eagerEvaluation", 26, "JN");
        m64090a(properties, "entityResolver", 27, "J");
        m64090a(properties, "errorListener", 30, "J");
        m64090a(properties, "environmentVariableResolver", 29, "J");
        m64090a(properties, "expandAttributeDefaults", 31, "JN");
        m64090a(properties, "generateByteCode", 33, "J");
        m64090a(properties, "ignoreSAXSourceParser", 34, "J");
        m64090a(properties, "lineNumbering", 38, "JN");
        m64090a(properties, "markDefaultedAttributes", 39, "J");
        m64090a(properties, "maxCompiledClasses", 40, "J");
        m64090a(properties, "monitorHotSpotByteCode", 44, "J");
        m64090a(properties, "optimizationLevel", 48, "JN");
        m64090a(properties, "parser", 63, "J");
        m64090a(properties, "preEvaluateDoc", 51, "JN");
        m64090a(properties, "recognizeUriQueryParameters", 53, "JN");
        m64090a(properties, "resourceResolver", 129, "J");
        m64090a(properties, "retainNodeForDiagnostics", 125, "JN");
        m64090a(properties, "schemaValidation", 61, "JN");
        m64090a(properties, "serializerFactory", 62, "J");
        m64090a(properties, "sourceResolver", 64, "J");
        m64090a(properties, "stableCollectionUri", 65, "JN");
        m64090a(properties, "stableUnparsedText", 66, "JN");
        m64090a(properties, "standardErrorOutputFile", 67, "JN");
        m64090a(properties, "streamability", 68, "JN");
        m64090a(properties, "streamingFallback", 70, "JN");
        m64090a(properties, Constants.STRIP_SPACE, 71, "JN");
        m64090a(properties, "styleParser", 72, "J");
        m64090a(properties, "suppressEvaluationExpiryWarning", 73, "JN");
        m64090a(properties, "suppressXPathWarnings", 74, "JN");
        m64090a(properties, "suppressXsltNamespaceCheck", 75, "JN");
        m64090a(properties, "thresholdForHotspotByteCode", 123, "J");
        m64090a(properties, "timing", 77, "JN");
        m64090a(properties, "traceExternalFunctions", 78, "JN");
        m64090a(properties, "traceListener", 80, "J");
        m64090a(properties, "traceListenerOutputFile", 81, "JN");
        m64090a(properties, "traceOptimizerDecisions", 82, "JN");
        m64090a(properties, "treeModel", 84, "JN");
        m64090a(properties, "unparsedTextUriResolver", 86, "J");
        m64090a(properties, "uriResolver", 87, "J");
        m64090a(properties, "usePiDisableOutputEscaping", 88, "JN");
        m64090a(properties, "useTypedValueCache", 89, "JN");
        m64090a(properties, "validationComments", 91, "JN");
        m64090a(properties, "validationWarnings", 92, "JN");
        m64090a(properties, "versionOfXml", 95, "J");
        m64090a(properties, "xInclude", 94, "J");
        m64090a(properties, "zipUriPattern", 127, "JN");
    }

    @Override // net.p110sf.saxon.event.Receiver
    public PipelineConfiguration getPipelineConfiguration() {
        return this.f102261n;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.f102263p;
    }

    /* renamed from: h */
    public final void m64097h(AttributeMap attributeMap) {
        LocalizerFactory localizerFactory;
        Properties properties = new Properties();
        String str = null;
        for (AttributeInfo attributeInfo : attributeMap) {
            String uri = attributeInfo.getNodeName().getURI();
            String localPart = attributeInfo.getNodeName().getLocalPart();
            String value = attributeInfo.getValue();
            if (uri.isEmpty()) {
                if ("lang".equals(localPart) && !value.isEmpty()) {
                    str = value;
                } else if (!value.isEmpty()) {
                    properties.setProperty(localPart, value);
                }
            }
        }
        if (str == null || (localizerFactory = this.targetConfig.getLocalizerFactory()) == null) {
            return;
        }
        localizerFactory.setLanguageProperties(str, properties);
    }

    /* renamed from: i */
    public final void m64098i(AttributeMap attributeMap) {
        for (AttributeInfo attributeInfo : attributeMap) {
            String uri = attributeInfo.getNodeName().getURI();
            String localPart = attributeInfo.getNodeName().getLocalPart();
            String value = attributeInfo.getValue();
            if (uri.isEmpty()) {
                if ("defaultLanguage".equals(localPart) && !value.isEmpty()) {
                    this.targetConfig.setConfigurationProperty(FeatureKeys.DEFAULT_LANGUAGE, value);
                }
                if ("defaultCountry".equals(localPart) && !value.isEmpty()) {
                    this.targetConfig.setConfigurationProperty(FeatureKeys.DEFAULT_COUNTRY, value);
                }
            }
        }
    }

    /* renamed from: j */
    public final void m64099j(AttributeMap attributeMap, NamespaceMap namespaceMap) {
        Properties properties = new Properties();
        for (AttributeInfo attributeInfo : attributeMap) {
            String uri = attributeInfo.getNodeName().getURI();
            String localPart = attributeInfo.getNodeName().getLocalPart();
            String value = attributeInfo.getValue();
            if (!value.isEmpty()) {
                try {
                    ResultDocument.setSerializationProperty(properties, uri, localPart, value, namespaceMap, false, this.targetConfig);
                } catch (XPathException e) {
                    this.f102257j.add(new XmlProcessingException(e));
                }
            }
        }
        this.targetConfig.setDefaultSerializationProperties(properties);
    }

    /* renamed from: k */
    public final void m64100k(AttributeMap attributeMap) {
        Properties properties = new Properties();
        for (AttributeInfo attributeInfo : attributeMap) {
            String uri = attributeInfo.getNodeName().getURI();
            String localPart = attributeInfo.getNodeName().getLocalPart();
            String value = attributeInfo.getValue();
            if (!value.isEmpty() && uri.isEmpty()) {
                properties.setProperty(localPart, value);
            }
        }
        properties.setProperty("#element", "xquery");
        m64090a(properties, "allowUpdate", 98, "JN");
        m64090a(properties, "constructionMode", 99, "JN");
        m64090a(properties, "defaultElementNamespace", 100, "JN");
        m64090a(properties, "defaultFunctionNamespace", 101, "JN");
        m64090a(properties, "emptyLeast", 102, "JN");
        m64090a(properties, "inheritNamespaces", 103, "JN");
        m64090a(properties, "moduleUriResolver", 43, "J");
        m64090a(properties, "preserveBoundarySpace", 105, "JN");
        m64090a(properties, "preserveNamespaces", 106, "JN");
        m64090a(properties, "requiredContextItemType", 107, "JN");
        m64090a(properties, "schemaAware", 108, "JN");
        m64090a(properties, "staticErrorListener", 109, "J");
        m64090a(properties, "version", 110, "JN");
    }

    /* renamed from: l */
    public final void m64101l(AttributeMap attributeMap) {
        Properties properties = new Properties();
        for (AttributeInfo attributeInfo : attributeMap) {
            String uri = attributeInfo.getNodeName().getURI();
            String localPart = attributeInfo.getNodeName().getLocalPart();
            String value = attributeInfo.getValue();
            if (!value.isEmpty() && uri.isEmpty()) {
                properties.setProperty(localPart, value);
            }
        }
        properties.setProperty("#element", "xsd");
        m64090a(properties, "assertionsCanSeeComments", 5, "JN");
        m64090a(properties, "implicitSchemaImports", 35, "JN");
        m64090a(properties, "multipleSchemaImports", 45, "JN");
        m64090a(properties, "occurrenceLimits", 47, "JN");
        m64090a(properties, "schemaUriResolver", 59, "J");
        m64090a(properties, "thresholdForCompilingTypes", 76, "JN");
        m64090a(properties, "useXsiSchemaLocation", 90, "JN");
        m64090a(properties, "version", 111, "JN");
    }

    /* renamed from: m */
    public final void m64102m(AttributeMap attributeMap) {
        Properties properties = new Properties();
        for (AttributeInfo attributeInfo : attributeMap) {
            String uri = attributeInfo.getNodeName().getURI();
            String localPart = attributeInfo.getNodeName().getLocalPart();
            String value = attributeInfo.getValue();
            if (!value.isEmpty() && uri.isEmpty()) {
                properties.setProperty(localPart, value);
            }
        }
        properties.setProperty("#element", "xslt");
        m64090a(properties, "disableXslEvaluate", 22, "JN");
        m64090a(properties, "enableAssertions", 112, "JN");
        m64090a(properties, "initialMode", 113, "JN");
        m64090a(properties, "initialTemplate", 114, "JN");
        m64090a(properties, "messageEmitter", 41, "J");
        m64090a(properties, "outputUriResolver", 50, "J");
        m64090a(properties, "recoveryPolicy", 55, "JN");
        m64090a(properties, "resultDocumentThreads", 56, "JN");
        m64090a(properties, "schemaAware", 115, "JN");
        m64090a(properties, "staticErrorListener", 116, "J");
        m64090a(properties, "staticUriResolver", 117, "J");
        m64090a(properties, "strictStreamability", 69, "JN");
        m64090a(properties, "styleParser", 72, "J");
        m64090a(properties, "version", 118, "JN");
    }

    public Configuration makeConfiguration(Source source) throws XPathException {
        Configuration configuration = this.f102260m;
        if (configuration == null) {
            PipelineConfiguration pipelineConfiguration = this.f102261n;
            if (pipelineConfiguration == null) {
                configuration = new Configuration();
                setPipelineConfiguration(configuration.makePipelineConfiguration());
            } else {
                configuration = pipelineConfiguration.getConfiguration();
            }
        } else if (this.f102261n == null) {
            this.f102261n = configuration.makePipelineConfiguration();
        }
        setSystemId(source.getSystemId());
        Version.platform.resolveSource(source, configuration).deliver(this, new ParseOptions());
        if (this.f102257j.isEmpty()) {
            Configuration configuration2 = this.f102260m;
            if (configuration2 != null) {
                this.targetConfig.importLicenseDetails(configuration2);
            }
            return this.targetConfig;
        }
        Configuration configuration3 = this.targetConfig;
        ErrorReporter standardErrorReporter = configuration3 == null ? new StandardErrorReporter() : configuration3.makeErrorReporter();
        Iterator<XmlProcessingError> it2 = this.f102257j.iterator();
        while (it2.hasNext()) {
            standardErrorReporter.report(it2.next().asWarning());
        }
        throw XPathException.fromXmlProcessingError(this.f102257j.get(0));
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
    }

    public void readExtensionElement(AttributeMap attributeMap) {
        this.f102257j.add(new XmlProcessingIncident("Extension elements are not available in Saxon" + Version.getSoftwarePlatform() + "-" + this.targetConfig.getEditionCode()));
    }

    public void readWithParam(AttributeMap attributeMap, NamespaceMap namespaceMap) {
        StructuredQName structuredQName;
        GroundedValue groundedValue = null;
        if (this.f102259l.exportLocation != null) {
            m64092c("withParam", null, null, "Not allowed when @exportLocation exists");
        }
        String value = attributeMap.getValue("name");
        if (value == null) {
            m64092c("withParam", "name", null, null);
        }
        try {
            structuredQName = new QNameParser(namespaceMap).withAcceptEQName(true).parse(value, "");
        } catch (XPathException unused) {
            m64092c("withParam", "name", value, "Requires valid QName");
            structuredQName = null;
        }
        String value2 = attributeMap.getValue("select");
        if (value2 == null) {
            m64092c("withParam", "select", null, null);
        }
        IndependentContext independentContext = new IndependentContext(this.targetConfig);
        independentContext.setNamespaceResolver(namespaceMap);
        try {
            groundedValue = SequenceTool.toGroundedValue(new XPathParser().parse(value2, 0, 0, independentContext).iterate(independentContext.makeEarlyEvaluationContext()));
        } catch (XPathException e) {
            error(e);
        }
        PackageDetails packageDetails = this.f102259l;
        if (packageDetails.staticParams == null) {
            packageDetails.staticParams = new HashMap();
        }
        this.f102259l.staticParams.put(structuredQName, groundedValue);
    }

    public void readXsltPackage(AttributeMap attributeMap) {
        VersionedPackageName versionedPackageName;
        String value = attributeMap.getValue("name");
        String str = "sourceLocation";
        StreamSource streamSource = null;
        URI uri = null;
        streamSource = null;
        if (value == null) {
            String value2 = attributeMap.getValue("exportLocation");
            if (value2 == null) {
                value2 = attributeMap.getValue("sourceLocation");
            } else {
                str = "exportLocation";
            }
            if (value2 == null) {
                m64092c("package", str, null, null);
            }
            try {
                uri = ResolveURI.makeAbsolute(value2, getSystemId());
            } catch (URISyntaxException unused) {
                m64092c("package", str, value2, "Requires a valid URI.");
            }
            try {
                this.f102258k.addPackage(new File(uri));
                return;
            } catch (XPathException e) {
                error(e);
                return;
            }
        }
        String value3 = attributeMap.getValue("version");
        if (value3 == null) {
            value3 = "1";
        }
        PackageDetails packageDetails = new PackageDetails();
        try {
            versionedPackageName = new VersionedPackageName(value, value3);
        } catch (XPathException unused2) {
            m64092c("package", "version", value3, null);
            versionedPackageName = null;
        }
        packageDetails.nameAndVersion = versionedPackageName;
        this.f102259l = packageDetails;
        String value4 = attributeMap.getValue("sourceLocation");
        if (value4 != null) {
            try {
                streamSource = new StreamSource(ResolveURI.makeAbsolute(value4, getSystemId()).toString());
            } catch (URISyntaxException unused3) {
                m64092c("package", "sourceLocation", value4, "Requires a valid URI.");
            }
            packageDetails.sourceLocation = streamSource;
        }
        String value5 = attributeMap.getValue("exportLocation");
        if (value5 != null) {
            try {
                streamSource = new StreamSource(ResolveURI.makeAbsolute(value5, getSystemId()).toString());
            } catch (URISyntaxException unused4) {
                m64092c("package", "exportLocation", value5, "Requires a valid URI.");
            }
            packageDetails.exportLocation = streamSource;
        }
        String value6 = attributeMap.getValue("priority");
        if (value6 != null) {
            try {
                packageDetails.priority = Integer.parseInt(value6);
            } catch (NumberFormatException unused5) {
                m64092c("package", "priority", value6, "Requires an integer.");
            }
        }
        packageDetails.baseName = attributeMap.getValue(gon.f71271X);
        packageDetails.shortName = attributeMap.getValue("shortName");
        this.f102258k.addPackage(packageDetails);
    }

    public void setBaseConfiguration(Configuration configuration) {
        this.f102260m = configuration;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.f102256i = classLoader;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.f102261n = pipelineConfiguration;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.f102263p = str;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01c2, code lost:
    
        if (r0.equals("xslt") == false) goto L85;
     */
    @Override // net.p110sf.saxon.event.Receiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(net.p110sf.saxon.om.NodeName r17, net.p110sf.saxon.type.SchemaType r18, net.p110sf.saxon.om.AttributeMap r19, net.p110sf.saxon.om.NamespaceMap r20, net.p110sf.saxon.s9api.Location r21, int r22) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.trans.ConfigurationReader.startElement(net.sf.saxon.om.NodeName, net.sf.saxon.type.SchemaType, net.sf.saxon.om.AttributeMap, net.sf.saxon.om.NamespaceMap, net.sf.saxon.s9api.Location, int):void");
    }
}
