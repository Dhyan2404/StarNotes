package net.p110sf.saxon.java;

import com.sun.org.apache.xerces.internal.jaxp.SAXParserFactoryImpl;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.text.Collator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.function.Consumer;
import javax.xml.namespace.NamespaceContext;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stax.StAXSource;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Platform;
import net.p110sf.saxon.dom.DOMEnvelope;
import net.p110sf.saxon.dom.DOMObjectModel;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.sort.AlphanumericCollator;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.CollationMatchKey;
import net.p110sf.saxon.expr.sort.SimpleCollation;
import net.p110sf.saxon.expr.sort.UcaCollatorUsingJava;
import net.p110sf.saxon.functions.FunctionLibraryList;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.IDynamicLoader;
import net.p110sf.saxon.lib.ModuleURIResolver;
import net.p110sf.saxon.lib.StandardEntityResolver;
import net.p110sf.saxon.lib.StandardModuleURIResolver;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.pull.ActiveStAXSource;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.regex.JavaRegularExpression;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.resource.ActiveSAXSource;
import net.p110sf.saxon.resource.ActiveStreamSource;
import net.p110sf.saxon.resource.StandardCollectionFinder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.DynamicLoader;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ExternalObjectType;
import net.p110sf.saxon.xpath.JAXPXPathStaticContext;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public class JavaPlatform implements Platform {

    /* renamed from: a */
    public static boolean f100438a = true;

    /* renamed from: net.sf.saxon.java.JavaPlatform$a */
    /* loaded from: classes11.dex */
    public class C18391a implements NamespaceResolver {

        /* renamed from: e */
        public final /* synthetic */ NamespaceContext f100439e;

        public C18391a(NamespaceContext namespaceContext) {
            this.f100439e = namespaceContext;
        }

        @Override // net.p110sf.saxon.om.NamespaceResolver
        public String getURIForPrefix(String str, boolean z) {
            return this.f100439e.getNamespaceURI(str);
        }

        @Override // net.p110sf.saxon.om.NamespaceResolver
        public Iterator<String> iteratePrefixes() {
            throw new UnsupportedOperationException();
        }
    }

    @Override // net.p110sf.saxon.Platform
    public boolean JAXPStaticContextCheck(RetainedStaticContext retainedStaticContext, StaticContext staticContext) {
        if (!(staticContext instanceof JAXPXPathStaticContext)) {
            return false;
        }
        JAXPXPathStaticContext jAXPXPathStaticContext = (JAXPXPathStaticContext) staticContext;
        if (jAXPXPathStaticContext.getNamespaceContext() instanceof NamespaceResolver) {
            return false;
        }
        m63252a(retainedStaticContext, jAXPXPathStaticContext);
        return true;
    }

    /* renamed from: a */
    public final void m63252a(RetainedStaticContext retainedStaticContext, JAXPXPathStaticContext jAXPXPathStaticContext) {
        retainedStaticContext.setNamespaces(new C18391a(jAXPXPathStaticContext.getNamespaceContext()));
    }

    public void addFunctionLibraries(FunctionLibraryList functionLibraryList, Configuration configuration, int i) {
    }

    @Override // net.p110sf.saxon.Platform
    public boolean canReturnCollationKeys(StringCollator stringCollator) {
        return !(stringCollator instanceof SimpleCollation) || (((SimpleCollation) stringCollator).getComparator() instanceof Collator);
    }

    @Override // net.p110sf.saxon.Platform
    public RegularExpression compileRegularExpression(Configuration configuration, UnicodeString unicodeString, String str, String str2, List<String> list) throws XPathException {
        boolean z;
        boolean z2;
        if (str.contains("!")) {
            return new JavaRegularExpression(unicodeString, str.replace("!", ""));
        }
        int indexOf = str.indexOf(59);
        if (indexOf >= 0) {
            z = str.indexOf(106, indexOf) >= 0;
            z2 = str.indexOf(115, indexOf) >= 0;
        } else {
            z = false;
            z2 = false;
        }
        return (!"J".equals(configuration.getDefaultRegexEngine()) || z2) ? z : true ? new JavaRegularExpression(unicodeString, str.substring(0, indexOf)) : new ARegularExpression(unicodeString, str, str2, list, configuration);
    }

    @Override // net.p110sf.saxon.Platform
    public AtomicMatchKey getCollationKey(SimpleCollation simpleCollation, String str) {
        return new CollationMatchKey(((Collator) simpleCollation.getComparator()).getCollationKey(str));
    }

    @Override // net.p110sf.saxon.Platform
    public String getDefaultCountry() {
        return Locale.getDefault().getCountry();
    }

    @Override // net.p110sf.saxon.Platform
    public IDynamicLoader getDefaultDynamicLoader() {
        return new DynamicLoader();
    }

    @Override // net.p110sf.saxon.Platform
    public String getDefaultLanguage() {
        return Locale.getDefault().getLanguage();
    }

    @Override // net.p110sf.saxon.Platform
    public ExternalObjectType getExternalObjectType(Configuration configuration, String str, String str2) {
        throw new UnsupportedOperationException("getExternalObjectType for Java");
    }

    @Override // net.p110sf.saxon.Platform
    public String getInstallationDirectory(String str, Configuration configuration) {
        try {
            return System.getenv("SAXON_HOME");
        } catch (SecurityException unused) {
            return null;
        }
    }

    @Override // net.p110sf.saxon.Platform
    public String getPlatformSuffix() {
        return "J";
    }

    @Override // net.p110sf.saxon.Platform
    public String getPlatformVersion() {
        return "Java version " + System.getProperty("java.version");
    }

    @Override // net.p110sf.saxon.Platform
    public boolean hasICUCollator() {
        return false;
    }

    @Override // net.p110sf.saxon.Platform
    public boolean hasICUNumberer() {
        return false;
    }

    @Override // net.p110sf.saxon.Platform
    public void initialize(Configuration configuration) {
        configuration.registerExternalObjectModel(DOMEnvelope.getInstance());
        configuration.registerExternalObjectModel(DOMObjectModel.getInstance());
        configuration.setCollectionFinder(new StandardCollectionFinder());
    }

    @Override // net.p110sf.saxon.Platform
    public boolean isDotNet() {
        return false;
    }

    @Override // net.p110sf.saxon.Platform
    public boolean isJava() {
        return true;
    }

    @Override // net.p110sf.saxon.Platform
    public XMLReader loadParser() {
        try {
            return SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        } catch (ParserConfigurationException | SAXException e) {
            throw new TransformerFactoryConfigurationError(e);
        }
    }

    @Override // net.p110sf.saxon.Platform
    public XMLReader loadParserForXmlFragments() {
        SAXParserFactory sAXParserFactory = null;
        if (f100438a) {
            try {
                sAXParserFactory = (SAXParserFactory) SAXParserFactory.class.getMethod("newDefaultInstance", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
                f100438a = false;
            }
        }
        if (sAXParserFactory == null) {
            try {
                sAXParserFactory = (SAXParserFactory) SAXParserFactoryImpl.class.newInstance();
            } catch (Exception unused2) {
            }
        }
        if (sAXParserFactory != null) {
            try {
                return sAXParserFactory.newSAXParser().getXMLReader();
            } catch (Exception unused3) {
            }
        }
        return this.loadParser();
    }

    @Override // net.p110sf.saxon.Platform
    public InputStream locateResource(String str, List<String> list) {
        ClassLoader classLoader;
        InputStream inputStream;
        URL systemResource;
        ClassLoader classLoader2;
        String str2 = "net/sf/saxon/data/" + str;
        try {
            classLoader = Thread.currentThread().getContextClassLoader();
        } catch (Exception unused) {
            list.add("Failed to getContextClassLoader() - continuing\n");
            classLoader = null;
        }
        if (classLoader != null) {
            classLoader.getResource(str2);
            inputStream = classLoader.getResourceAsStream(str2);
            if (inputStream == null) {
                list.add("Cannot read " + str2 + " file located using ClassLoader " + classLoader + " - continuing\n");
            }
        } else {
            inputStream = null;
        }
        if (inputStream == null && (classLoader2 = Configuration.class.getClassLoader()) != null && (inputStream = classLoader2.getResourceAsStream(str2)) == null) {
            list.add("Cannot read " + str2 + " file located using ClassLoader " + classLoader2 + " - continuing\n");
        }
        if (inputStream != null || (systemResource = ClassLoader.getSystemResource(str2)) == null) {
            return inputStream;
        }
        try {
            return systemResource.openStream();
        } catch (IOException e) {
            list.add("IO error " + e.getMessage() + " reading " + str2 + " located using getSystemResource(): using defaults");
            return null;
        }
    }

    @Override // net.p110sf.saxon.Platform
    public StringCollator makeCollation(Configuration configuration, Properties properties, String str) throws XPathException {
        return JavaCollationFactory.makeCollation(configuration, str, properties);
    }

    @Override // net.p110sf.saxon.Platform
    public ModuleURIResolver makeStandardModuleURIResolver(Configuration configuration) {
        return new StandardModuleURIResolver(configuration);
    }

    @Override // net.p110sf.saxon.Platform
    public StringCollator makeUcaCollator(String str, Configuration configuration) throws XPathException {
        UcaCollatorUsingJava ucaCollatorUsingJava = new UcaCollatorUsingJava(str);
        return "yes".equals(ucaCollatorUsingJava.getProperties().getProperty("numeric")) ? new AlphanumericCollator(ucaCollatorUsingJava) : ucaCollatorUsingJava;
    }

    @Override // net.p110sf.saxon.Platform
    public void registerAllBuiltInObjectModels(Configuration configuration) {
    }

    @Override // net.p110sf.saxon.Platform
    public ActiveSource resolveSource(Source source, final Configuration configuration) throws XPathException {
        if (source instanceof ActiveSource) {
            return (ActiveSource) source;
        }
        if (!(source instanceof SAXSource)) {
            if (source instanceof StreamSource) {
                return new ActiveStreamSource((StreamSource) source);
            }
            if (!(source instanceof StAXSource)) {
                return null;
            }
            try {
                return ActiveStAXSource.fromStAXSource((StAXSource) source);
            } catch (XMLStreamException e) {
                throw new XPathException(e);
            }
        }
        SAXSource sAXSource = (SAXSource) source;
        if (sAXSource.getXMLReader() != null) {
            return new ActiveSAXSource(sAXSource);
        }
        XMLReader sourceParser = configuration.getSourceParser();
        if (sourceParser.getEntityResolver() == null) {
            sourceParser.setEntityResolver(new StandardEntityResolver(configuration));
        }
        sAXSource.setXMLReader(sourceParser);
        ActiveSAXSource activeSAXSource = new ActiveSAXSource(sAXSource);
        activeSAXSource.setParserPool(new Consumer() { // from class: com.sunia.HTREnginev2.kri
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Configuration.this.reuseSourceParser((XMLReader) obj);
            }
        });
        return activeSAXSource;
    }

    @Override // net.p110sf.saxon.Platform
    public void setDefaultSAXParserFactory(Configuration configuration) {
    }
}
