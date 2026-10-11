package org.xmlresolver;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.function.Supplier;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.apache.commons.collections4.MapUtils;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xmlresolver.XMLResolverConfiguration;
import org.xmlresolver.cache.ResourceCache;
import org.xmlresolver.logging.AbstractLogger;
import org.xmlresolver.logging.DefaultLogger;
import org.xmlresolver.logging.ResolverLogger;
import org.xmlresolver.logging.SystemLogger;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class XMLResolverConfiguration implements ResolverConfiguration {

    /* renamed from: C */
    public static final ResolverFeature<?>[] f116108C = {ResolverFeature.CATALOG_FILES, ResolverFeature.PREFER_PUBLIC, ResolverFeature.PREFER_PROPERTY_FILE, ResolverFeature.ALLOW_CATALOG_PI, ResolverFeature.CATALOG_ADDITIONS, ResolverFeature.CACHE_DIRECTORY, ResolverFeature.CACHE_UNDER_HOME, ResolverFeature.CACHE_ENABLED, ResolverFeature.CACHE, ResolverFeature.MERGE_HTTPS, ResolverFeature.MASK_JAR_URIS, ResolverFeature.CATALOG_MANAGER, ResolverFeature.URI_FOR_SYSTEM, ResolverFeature.CATALOG_LOADER_CLASS, ResolverFeature.PARSE_RDDL, ResolverFeature.CLASSPATH_CATALOGS, ResolverFeature.CLASSLOADER, ResolverFeature.ARCHIVED_CATALOGS, ResolverFeature.THROW_URI_EXCEPTIONS, ResolverFeature.RESOLVER_LOGGER_CLASS, ResolverFeature.RESOLVER_LOGGER, ResolverFeature.DEFAULT_LOGGER_LOG_LEVEL, ResolverFeature.ACCESS_EXTERNAL_ENTITY, ResolverFeature.ACCESS_EXTERNAL_DOCUMENT, ResolverFeature.SAXPARSERFACTORY_CLASS, ResolverFeature.XMLREADER_SUPPLIER, ResolverFeature.FIX_WINDOWS_SYSTEM_IDENTIFIERS};

    /* renamed from: D */
    public static List<String> f116109D = null;

    /* renamed from: E */
    public static final /* synthetic */ boolean f116110E = false;

    /* renamed from: A */
    public Boolean f116111A;

    /* renamed from: B */
    public ResolverLogger f116112B;

    /* renamed from: a */
    public final List<String> f116113a;

    /* renamed from: b */
    public final List<String> f116114b;

    /* renamed from: c */
    public Boolean f116115c;

    /* renamed from: d */
    public Boolean f116116d;

    /* renamed from: e */
    public Boolean f116117e;

    /* renamed from: f */
    public String f116118f;

    /* renamed from: g */
    public Boolean f116119g;

    /* renamed from: h */
    public Boolean f116120h;

    /* renamed from: i */
    public ResourceCache f116121i;

    /* renamed from: j */
    public CatalogManager f116122j;

    /* renamed from: k */
    public Boolean f116123k;

    /* renamed from: l */
    public Boolean f116124l;

    /* renamed from: m */
    public Boolean f116125m;

    /* renamed from: n */
    public String f116126n;

    /* renamed from: o */
    public Boolean f116127o;

    /* renamed from: p */
    public Boolean f116128p;

    /* renamed from: q */
    public ClassLoader f116129q;

    /* renamed from: r */
    public Boolean f116130r;

    /* renamed from: s */
    public Boolean f116131s;

    /* renamed from: t */
    public Boolean f116132t;

    /* renamed from: u */
    public String f116133u;

    /* renamed from: v */
    public String f116134v;

    /* renamed from: w */
    public String f116135w;

    /* renamed from: x */
    public String f116136x;

    /* renamed from: y */
    public String f116137y;

    /* renamed from: z */
    public Supplier<XMLReader> f116138z;

    /* renamed from: org.xmlresolver.XMLResolverConfiguration$b */
    /* loaded from: classes16.dex */
    public static class C20488b extends AbstractLogger {

        /* renamed from: a */
        public final ArrayList<a> f116139a;

        /* renamed from: b */
        public final String f116140b;

        /* renamed from: org.xmlresolver.XMLResolverConfiguration$b$a */
        /* loaded from: classes16.dex */
        public static class a {

            /* renamed from: a */
            public final String f116141a;

            /* renamed from: b */
            public final String f116142b;

            /* renamed from: c */
            public final Object[] f116143c;

            public a(String str, String str2, Object... objArr) {
                this.f116141a = str;
                this.f116142b = str2;
                this.f116143c = objArr;
            }
        }

        public C20488b() {
            this.f116139a = new ArrayList<>();
            this.f116140b = System.getProperty("xml.catalog.FallbackLoggerLogLevel");
        }

        /* renamed from: b */
        public void m71986b(ResolverLogger resolverLogger) {
            Iterator<a> it2 = this.f116139a.iterator();
            while (it2.hasNext()) {
                a next = it2.next();
                resolverLogger.log(next.f116141a, next.f116142b, next.f116143c);
            }
            this.f116139a.clear();
        }

        @Override // org.xmlresolver.logging.ResolverLogger
        public void debug(String str) {
        }

        @Override // org.xmlresolver.logging.ResolverLogger
        public void info(String str) {
        }

        @Override // org.xmlresolver.logging.AbstractLogger, org.xmlresolver.logging.ResolverLogger
        public void log(String str, String str2, Object... objArr) {
            this.f116139a.add(new a(str, str2, objArr));
            if (this.f116140b != null) {
                System.err.println(logMessage(str, str2, objArr));
            }
        }

        @Override // org.xmlresolver.logging.ResolverLogger
        public void warn(String str) {
        }
    }

    public XMLResolverConfiguration() {
        this(null, null);
    }

    /* renamed from: c */
    public static boolean m71977c(String str) {
        if (str == null) {
            return false;
        }
        return "true".equalsIgnoreCase(str) || "yes".equalsIgnoreCase(str) || "1".equalsIgnoreCase(str);
    }

    /* renamed from: d */
    public static /* synthetic */ XMLReader m71978d(SAXParserFactory sAXParserFactory) {
        try {
            return sAXParserFactory.newSAXParser().getXMLReader();
        } catch (ParserConfigurationException | SAXException unused) {
            return null;
        }
    }

    public void addCatalog(String str) {
        if (str != null) {
            synchronized (this.f116113a) {
                this.f116113a.add(str);
            }
        }
    }

    /* renamed from: b */
    public final List<String> m71979b() {
        if (f116109D == null) {
            this.f116112B.log(AbstractLogger.CONFIG, "Searching for catalogs on classpath:", new Object[0]);
            try {
                for (URL url : ((URLClassLoader) XMLResolverConfiguration.class.getClassLoader()).getURLs()) {
                    this.f116112B.log(AbstractLogger.CONFIG, MapUtils.f104930a + url.toString(), new Object[0]);
                }
            } catch (ClassCastException unused) {
                this.f116112B.log(AbstractLogger.CONFIG, "    Unknown: cannot determine class path in JDK9+", new Object[0]);
            }
            ArrayList arrayList = new ArrayList();
            try {
                Enumeration<URL> resources = XMLResolverConfiguration.class.getClassLoader().getResources("org/xmlresolver/catalog.xml");
                while (resources.hasMoreElements()) {
                    URL nextElement = resources.nextElement();
                    this.f116112B.log(AbstractLogger.CONFIG, "Catalog: " + nextElement.toString(), new Object[0]);
                    arrayList.add(nextElement.toString());
                }
            } catch (IOException unused2) {
            }
            f116109D = Collections.unmodifiableList(arrayList);
        }
        return f116109D;
    }

    /* renamed from: e */
    public final void m71980e(List<URL> list, List<String> list2) {
        URL url;
        InputStream openStream;
        m71982g();
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            String property = System.getProperty("xmlresolver.properties");
            if (property == null) {
                property = System.getenv("XMLRESOLVER_PROPERTIES");
            }
            if (property == null || "".equals(property)) {
                URL resource = XMLResolverConfiguration.class.getResource("/xmlresolver.properties");
                if (resource != null) {
                    arrayList.add(resource);
                }
            } else {
                URI cwd = URIUtils.cwd();
                for (String str : property.split("\\s*;\\s*")) {
                    try {
                        arrayList.add(cwd.resolve(str).toURL());
                    } catch (MalformedURLException unused) {
                    }
                }
            }
        } else {
            arrayList.addAll(list);
        }
        Properties properties = new Properties();
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                url = null;
                break;
            }
            url = (URL) it2.next();
            try {
                openStream = url.openStream();
            } catch (IOException unused2) {
            }
            if (openStream != null) {
                properties.load(openStream);
                break;
            }
            continue;
        }
        if (url != null) {
            m71981f(url, properties);
            if (!this.f116116d.booleanValue()) {
                m71982g();
            }
        }
        if (list2 != null) {
            this.f116113a.clear();
            for (String str2 : list2) {
                if (!"".equals(str2.trim())) {
                    this.f116113a.add(str2);
                }
            }
        } else if (this.f116113a.isEmpty()) {
            this.f116113a.add("./catalog.xml");
        }
        String str3 = this.f116137y;
        if (str3 != null) {
            setFeature(ResolverFeature.SAXPARSERFACTORY_CLASS, str3);
        }
        m71983h();
        this.f116132t = Boolean.TRUE;
    }

    /* renamed from: f */
    public final void m71981f(URL url, Properties properties) {
        String property = properties.getProperty("catalog-logging");
        if (property != null && System.getProperty("xml.catalog.logging") == null) {
            System.setProperty("xml.catalog.logging", property);
        }
        String property2 = properties.getProperty("relative-catalogs");
        boolean m71977c = property2 != null ? m71977c(property2) : true;
        m71985j("Relative catalogs: %s", Boolean.valueOf(m71977c));
        String property3 = properties.getProperty("catalogs");
        if (property3 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property3, AndroidTreeView.f47214k);
            this.f116113a.clear();
            m71984i("Catalog list cleared");
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (!"".equals(nextToken.trim())) {
                    if (m71977c && url != null) {
                        try {
                            nextToken = new URL(url, nextToken).toString();
                        } catch (MalformedURLException unused) {
                            this.f116112B.log("error", "Cannot make absolute: " + nextToken, new Object[0]);
                        }
                    }
                    m71985j("Catalog: %s", nextToken);
                    this.f116113a.add(nextToken);
                }
            }
        }
        String property4 = properties.getProperty("catalog-additions");
        if (property4 != null) {
            StringTokenizer stringTokenizer2 = new StringTokenizer(property4, AndroidTreeView.f47214k);
            while (stringTokenizer2.hasMoreTokens()) {
                String nextToken2 = stringTokenizer2.nextToken();
                if (!"".equals(nextToken2.trim())) {
                    if (m71977c && url != null) {
                        try {
                            nextToken2 = new URL(url, nextToken2).toURI().toString();
                        } catch (MalformedURLException | URISyntaxException unused2) {
                            this.f116112B.log("error", "Cannot make absolute: " + nextToken2, new Object[0]);
                        }
                    }
                    m71985j("Catalog: %s", nextToken2);
                    this.f116113a.add(nextToken2);
                }
            }
        }
        Object property5 = properties.getProperty("prefer");
        if (property5 != null) {
            m71985j("Prefer public: %s", property5);
            this.f116115c = Boolean.valueOf("public".equals(property5));
        }
        String property6 = properties.getProperty("prefer-property-file");
        if (property6 != null) {
            m71985j("Prefer propertyFile: %s", property6);
            this.f116116d = Boolean.valueOf(m71977c(property6));
        }
        String property7 = properties.getProperty("allow-oasis-xml-catalog-pi");
        if (property7 != null) {
            m71985j("Allow catalog PI: %s", property7);
            this.f116117e = Boolean.valueOf(m71977c(property7));
        }
        String property8 = properties.getProperty("cache");
        if (property8 != null) {
            m71985j("Cache directory: %s", property8);
            this.f116118f = property8;
        }
        String property9 = properties.getProperty("cache-under-home");
        if (property9 == null) {
            property9 = properties.getProperty("cacheUnderHome");
        }
        if (property9 != null) {
            m71985j("Cache under home: %s", property9);
            this.f116119g = Boolean.valueOf(m71977c(property9));
        }
        String property10 = properties.getProperty("cache-enabled");
        if (property10 != null) {
            m71985j("Cache enabled: %s", property10);
            this.f116120h = Boolean.valueOf(m71977c(property10));
        }
        String property11 = properties.getProperty("uri-for-system");
        if (property11 != null) {
            m71985j("URI-for-system: %s", property11);
            this.f116123k = Boolean.valueOf(m71977c(property11));
        }
        String property12 = properties.getProperty("merge-https");
        if (property12 != null) {
            m71985j("Merge-https: %s", property12);
            this.f116124l = Boolean.valueOf(m71977c(property12));
        }
        String property13 = properties.getProperty("mask-jar-uris");
        if (property13 != null) {
            m71985j("Mask-jar-URIs: %s", property13);
            this.f116125m = Boolean.valueOf(m71977c(property13));
        }
        String property14 = properties.getProperty("catalog-loader-class");
        if (property14 != null) {
            m71985j("Catalog loader: %s", property14);
            this.f116126n = property14;
        }
        String property15 = properties.getProperty("parse-rddl");
        if (property15 != null) {
            m71985j("Parse RDDL: %s", property15);
            this.f116127o = Boolean.valueOf(m71977c(property15));
        }
        String property16 = properties.getProperty("classpath-catalogs");
        if (property16 != null) {
            m71985j("Classpath catalogs: %s", property16);
            this.f116128p = Boolean.valueOf(m71977c(property16));
        }
        String property17 = properties.getProperty("archived-catalogs");
        if (property17 != null) {
            m71985j("Archived catalogs: %s", property17);
            this.f116130r = Boolean.valueOf(m71977c(property17));
        }
        String property18 = properties.getProperty("throw-uri-exceptions");
        if (property18 != null) {
            m71985j("Throw URI exceptions: %s", property18);
            this.f116131s = Boolean.valueOf(m71977c(property18));
        }
        String property19 = properties.getProperty("resolver-logger-class");
        if (property19 != null) {
            m71985j("Resolver logger class: %s", property19);
            this.f116133u = property19;
        }
        String property20 = properties.getProperty("default-logger-log-level");
        if (property20 != null) {
            m71985j("Default logger log level: %s", property20);
            this.f116134v = property20;
        }
        String property21 = properties.getProperty("access-external-entity");
        if (property21 != null) {
            m71985j("Access external entity: %s", property21);
            this.f116135w = property21;
        }
        String property22 = properties.getProperty("access-external-document");
        if (property22 != null) {
            m71985j("Access external document: %s", property22);
            this.f116136x = property22;
        }
        String property23 = properties.getProperty("saxparserfactory-class");
        if (property23 != null) {
            m71985j("SAXParserFactory class: %s", property23);
            this.f116137y = property23;
        }
        String property24 = properties.getProperty("fix-windows-system-identifiers");
        if (property24 != null) {
            m71985j("Fix windows system identifiers: %s", property24);
            this.f116111A = Boolean.valueOf(m71977c(property24));
        }
    }

    /* renamed from: g */
    public final void m71982g() {
        String property = System.getProperty("xml.catalog.files");
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, AndroidTreeView.f47214k);
            m71984i("Catalog list cleared");
            this.f116113a.clear();
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (!"".equals(nextToken.trim())) {
                    m71985j("Catalog: %s", nextToken);
                    this.f116113a.add(nextToken);
                }
            }
        }
        String property2 = System.getProperty("xml.catalog.additions");
        if (property2 != null) {
            StringTokenizer stringTokenizer2 = new StringTokenizer(property2, AndroidTreeView.f47214k);
            while (stringTokenizer2.hasMoreTokens()) {
                String nextToken2 = stringTokenizer2.nextToken();
                if (!"".equals(nextToken2.trim())) {
                    m71985j("Catalog: %s", nextToken2);
                    this.f116113a.add(nextToken2);
                }
            }
        }
        Object property3 = System.getProperty("xml.catalog.prefer");
        if (property3 != null) {
            m71985j("Prefer public: %s", property3);
            this.f116115c = Boolean.valueOf("public".equals(property3));
        }
        String property4 = System.getProperty("xml.catalog.preferPropertyFile");
        if (property4 != null) {
            m71985j("Prefer propertyFile: %s", property4);
            this.f116116d = Boolean.valueOf(m71977c(property4));
        }
        String property5 = System.getProperty("xml.catalog.allowPI");
        if (property5 != null) {
            m71985j("Allow catalog PI: %s", property5);
            this.f116117e = Boolean.valueOf(m71977c(property5));
        }
        String property6 = System.getProperty("xml.catalog.cache");
        if (property6 != null) {
            m71985j("Cache directory: %s", property6);
            this.f116118f = property6;
        }
        String property7 = System.getProperty("xml.catalog.cacheUnderHome");
        if (property7 != null) {
            m71985j("Cache under home: %s", property7);
            this.f116119g = Boolean.valueOf(m71977c(property7));
        }
        String property8 = System.getProperty("xml.catalog.cacheEnabled");
        if (property8 != null) {
            m71985j("Cache enabled: %s", property8);
            this.f116120h = Boolean.valueOf(m71977c(property8));
        }
        String property9 = System.getProperty("xml.catalog.uriForSystem");
        if (property9 != null) {
            m71985j("URI-for-system: %s", property9);
            this.f116123k = Boolean.valueOf(m71977c(property9));
        }
        String property10 = System.getProperty("xml.catalog.mergeHttps");
        if (property10 != null) {
            m71985j("Merge-https: %s", property10);
            this.f116124l = Boolean.valueOf(m71977c(property10));
        }
        String property11 = System.getProperty("xml.catalog.maskJarUris");
        if (property11 != null) {
            m71985j("Mask-jar-URIs: %s", property11);
            this.f116125m = Boolean.valueOf(m71977c(property11));
        }
        String property12 = System.getProperty("xml.catalog.catalogLoaderClass");
        if (property12 != null) {
            m71985j("Catalog loader: %s", property12);
            this.f116126n = property12;
        }
        String property13 = System.getProperty("xml.catalog.parseRddl");
        if (property13 != null) {
            m71985j("Use RDDL: %s", property13);
            this.f116127o = Boolean.valueOf(m71977c(property13));
        }
        String property14 = System.getProperty("xml.catalog.classpathCatalogs");
        if (property14 != null) {
            m71985j("Classpath catalogs: %s", property14);
            this.f116128p = Boolean.valueOf(m71977c(property14));
        }
        String property15 = System.getProperty("xml.catalog.archivedCatalogs");
        if (property15 != null) {
            m71985j("Archived catalogs: %s", property15);
            this.f116130r = Boolean.valueOf(m71977c(property15));
        }
        String property16 = System.getProperty("xml.catalog.throwUriExceptions");
        if (property16 != null) {
            m71985j("Throw URI exceptions: %s", property16);
            this.f116131s = Boolean.valueOf(m71977c(property16));
        }
        String property17 = System.getProperty("xml.catalog.resolverLoggerClass");
        if (property17 != null) {
            m71985j("Resolver logger class: %s", property17);
            this.f116133u = property17;
        }
        String property18 = System.getProperty("xml.catalog.defaultLoggerLogLevel");
        if (property18 != null) {
            m71985j("Default logger log level: %s", property18);
            this.f116134v = property18;
        }
        String property19 = System.getProperty("xml.catalog.accessExternalEntity");
        if (property19 != null) {
            m71985j("Access external entity: %s", property19);
            this.f116135w = property19;
        }
        String property20 = System.getProperty("xml.catalog.accessExternalDocument");
        if (property20 != null) {
            m71985j("Access external document: %s", property20);
            this.f116136x = property20;
        }
        String property21 = System.getProperty("xml.catalog.saxParserFactoryClass");
        if (property21 != null) {
            m71985j("SAXParserFactory class: %s", property21);
            this.f116137y = property21;
        }
        String property22 = System.getProperty("xml.catalog.fixWindowsSystemIdentifiers");
        if (property22 != null) {
            m71985j("Fix windows system identifiers: %s", property22);
            this.f116111A = Boolean.valueOf(m71977c(property22));
        }
    }

    /* JADX WARN: Type inference failed for: r4v17, types: [java.util.List, T, java.util.ArrayList] */
    @Override // org.xmlresolver.ResolverConfiguration
    public <T> T getFeature(ResolverFeature<T> resolverFeature) {
        T t;
        ?? r4;
        if (resolverFeature == ResolverFeature.CATALOG_MANAGER) {
            if (this.f116122j == null) {
                this.f116122j = new CatalogManager(this);
            }
            return (T) this.f116122j;
        }
        if (resolverFeature == ResolverFeature.CATALOG_FILES) {
            synchronized (this.f116113a) {
                r4 = (T) new ArrayList(this.f116113a);
                r4.addAll(this.f116114b);
            }
            if (this.f116128p.booleanValue()) {
                r4.addAll(m71979b());
            }
            return r4;
        }
        if (resolverFeature == ResolverFeature.CATALOG_ADDITIONS) {
            synchronized (this.f116113a) {
                t = (T) new ArrayList(this.f116114b);
            }
            return t;
        }
        if (resolverFeature == ResolverFeature.PREFER_PUBLIC) {
            return (T) this.f116115c;
        }
        if (resolverFeature == ResolverFeature.PREFER_PROPERTY_FILE) {
            return (T) this.f116116d;
        }
        if (resolverFeature == ResolverFeature.ALLOW_CATALOG_PI) {
            return (T) this.f116117e;
        }
        if (resolverFeature == ResolverFeature.CACHE_DIRECTORY) {
            return (T) this.f116118f;
        }
        if (resolverFeature == ResolverFeature.URI_FOR_SYSTEM) {
            return (T) this.f116123k;
        }
        if (resolverFeature == ResolverFeature.MERGE_HTTPS) {
            return (T) this.f116124l;
        }
        if (resolverFeature == ResolverFeature.MASK_JAR_URIS) {
            return (T) this.f116125m;
        }
        if (resolverFeature == ResolverFeature.CATALOG_LOADER_CLASS) {
            return (T) this.f116126n;
        }
        if (resolverFeature == ResolverFeature.PARSE_RDDL) {
            return (T) this.f116127o;
        }
        if (resolverFeature == ResolverFeature.CLASSPATH_CATALOGS) {
            return (T) this.f116128p;
        }
        if (resolverFeature == ResolverFeature.CACHE) {
            if (this.f116121i == null) {
                this.f116121i = new ResourceCache(this);
            }
            return (T) this.f116121i;
        }
        if (resolverFeature == ResolverFeature.CACHE_UNDER_HOME) {
            return (T) this.f116119g;
        }
        if (resolverFeature == ResolverFeature.CACHE_ENABLED) {
            return (T) this.f116120h;
        }
        if (resolverFeature == ResolverFeature.CLASSLOADER) {
            return (T) this.f116129q;
        }
        if (resolverFeature == ResolverFeature.ARCHIVED_CATALOGS) {
            return (T) this.f116130r;
        }
        if (resolverFeature == ResolverFeature.THROW_URI_EXCEPTIONS) {
            return (T) this.f116131s;
        }
        if (resolverFeature == ResolverFeature.RESOLVER_LOGGER_CLASS) {
            return (T) this.f116133u;
        }
        if (resolverFeature == ResolverFeature.DEFAULT_LOGGER_LOG_LEVEL) {
            return (T) this.f116134v;
        }
        if (resolverFeature != ResolverFeature.RESOLVER_LOGGER) {
            if (resolverFeature == ResolverFeature.ACCESS_EXTERNAL_ENTITY) {
                return (T) this.f116135w;
            }
            if (resolverFeature == ResolverFeature.ACCESS_EXTERNAL_DOCUMENT) {
                return (T) this.f116136x;
            }
            if (resolverFeature == ResolverFeature.SAXPARSERFACTORY_CLASS) {
                return (T) this.f116137y;
            }
            if (resolverFeature == ResolverFeature.XMLREADER_SUPPLIER) {
                return (T) this.f116138z;
            }
            if (resolverFeature == ResolverFeature.FIX_WINDOWS_SYSTEM_IDENTIFIERS) {
                return (T) this.f116111A;
            }
            this.f116112B.log("error", "Ignoring unknown feature: %s", resolverFeature.getName());
            return null;
        }
        if (this.f116112B == null) {
            String str = this.f116133u;
            str.hashCode();
            if (str.equals("org.xmlresolver.logging.SystemLogger")) {
                this.f116112B = new SystemLogger(this);
            } else if (str.equals("org.xmlresolver.logging.DefaultLogger")) {
                this.f116112B = new DefaultLogger(this);
            } else {
                try {
                    this.f116112B = (ResolverLogger) Class.forName(this.f116133u).getConstructor(ResolverConfiguration.class).newInstance(this);
                } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                    throw new IllegalArgumentException("Failed to instantiate logger: " + this.f116133u + ": " + e.getMessage());
                }
            }
        }
        return (T) this.f116112B;
    }

    @Override // org.xmlresolver.ResolverConfiguration
    public Iterator<ResolverFeature<?>> getFeatures() {
        return Arrays.stream(f116108C).iterator();
    }

    /* renamed from: h */
    public final void m71983h() {
        this.f116112B.log(AbstractLogger.CONFIG, "Logging: %s", System.getProperty("xml.catalog.logging"));
        this.f116112B.log(AbstractLogger.CONFIG, "Prefer public: %s", this.f116115c);
        this.f116112B.log(AbstractLogger.CONFIG, "Prefer property file: %s", this.f116116d);
        this.f116112B.log(AbstractLogger.CONFIG, "Allow catalog PI: %s", this.f116117e);
        this.f116112B.log(AbstractLogger.CONFIG, "Parse RDDL: %s", this.f116127o);
        this.f116112B.log(AbstractLogger.CONFIG, "URI for system: %s", this.f116123k);
        this.f116112B.log(AbstractLogger.CONFIG, "Merge http/https: %s", this.f116124l);
        this.f116112B.log(AbstractLogger.CONFIG, "Mask jar URIs: %s", this.f116125m);
        this.f116112B.log(AbstractLogger.CONFIG, "Cache under home: %s", this.f116119g);
        this.f116112B.log(AbstractLogger.CONFIG, "Cache directory: %s", this.f116118f);
        this.f116112B.log(AbstractLogger.CONFIG, "Cache enabled: %s", this.f116120h);
        this.f116112B.log(AbstractLogger.CONFIG, "Catalog loader: %s", this.f116126n);
        this.f116112B.log(AbstractLogger.CONFIG, "Classpath catalogs: %s", this.f116128p);
        this.f116112B.log(AbstractLogger.CONFIG, "Archived catalogs: %s", this.f116130r);
        this.f116112B.log(AbstractLogger.CONFIG, "Throw URI exceptions: %s", this.f116131s);
        this.f116112B.log(AbstractLogger.CONFIG, "Class loader: %s", this.f116129q);
        this.f116112B.log(AbstractLogger.CONFIG, "Logger class: %s", this.f116133u);
        this.f116112B.log(AbstractLogger.CONFIG, "Access external entity: %s", this.f116135w);
        this.f116112B.log(AbstractLogger.CONFIG, "Access external document: %s", this.f116136x);
        this.f116112B.log(AbstractLogger.CONFIG, "SAXParserFactory class: %s", this.f116137y);
        this.f116112B.log(AbstractLogger.CONFIG, "XMLReader supplier: %s", this.f116138z);
        this.f116112B.log(AbstractLogger.CONFIG, "Fix Windows system identifiers: %s", this.f116111A);
        this.f116112B.log(AbstractLogger.CONFIG, "Default logger log level: %s", this.f116134v);
        Iterator<String> it2 = this.f116113a.iterator();
        while (it2.hasNext()) {
            this.f116112B.log(AbstractLogger.CONFIG, "Catalog: %s", it2.next());
        }
        if (this.f116128p.booleanValue()) {
            Iterator<String> it3 = m71979b().iterator();
            while (it3.hasNext()) {
                this.f116112B.log(AbstractLogger.CONFIG, "Catalog: %s", it3.next());
            }
        }
    }

    /* renamed from: i */
    public final void m71984i(String str) {
        if (this.f116132t.booleanValue()) {
            this.f116112B.log(AbstractLogger.CONFIG, str, new Object[0]);
        }
    }

    /* renamed from: j */
    public final void m71985j(String str, Object obj) {
        if (this.f116132t.booleanValue()) {
            if (obj == null) {
                this.f116112B.log(AbstractLogger.CONFIG, str, "null");
            } else {
                this.f116112B.log(AbstractLogger.CONFIG, str, obj.toString());
            }
        }
    }

    public boolean removeCatalog(String str) {
        boolean remove;
        synchronized (this.f116113a) {
            remove = this.f116113a.remove(str);
        }
        return remove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.xmlresolver.ResolverConfiguration
    public <T> void setFeature(ResolverFeature<T> resolverFeature, T t) {
        if (resolverFeature == ResolverFeature.CATALOG_FILES) {
            synchronized (this.f116113a) {
                m71984i("Catalog list cleared");
                this.f116113a.clear();
                if (t != 0) {
                    for (String str : (List) t) {
                        if (!"".equals(str.trim()) && !this.f116113a.contains(str.trim())) {
                            m71985j("Catalog: %s", str.trim());
                            this.f116113a.add(str.trim());
                        }
                    }
                }
            }
            return;
        }
        if (resolverFeature == ResolverFeature.CATALOG_ADDITIONS) {
            synchronized (this.f116113a) {
                if (t == 0) {
                    this.f116114b.clear();
                } else {
                    for (String str2 : (List) t) {
                        if (!"".equals(str2.trim()) && !this.f116114b.contains(str2.trim())) {
                            m71985j("Catalog: %s", str2.trim());
                            this.f116114b.add(str2.trim());
                        }
                    }
                }
            }
            return;
        }
        if (resolverFeature == ResolverFeature.CLASSLOADER) {
            ClassLoader classLoader = (ClassLoader) t;
            this.f116129q = classLoader;
            if (classLoader == null) {
                this.f116129q = getClass().getClassLoader();
            }
            m71985j("Catalog loader: %s", this.f116129q);
            return;
        }
        if (resolverFeature == ResolverFeature.CACHE_DIRECTORY) {
            String str3 = (String) t;
            this.f116118f = str3;
            m71985j("Cache directory: %s", str3);
            ResourceCache resourceCache = this.f116121i;
            if (resourceCache == null) {
                this.f116121i = new ResourceCache(this);
                return;
            } else {
                resourceCache.reset();
                return;
            }
        }
        if (resolverFeature == ResolverFeature.CACHE) {
            ResourceCache resourceCache2 = (ResourceCache) t;
            this.f116121i = resourceCache2;
            m71985j("Cache: %s", resourceCache2);
            return;
        }
        if (t == 0) {
            throw new NullPointerException(resolverFeature.getName() + " must not be null");
        }
        if (resolverFeature == ResolverFeature.PREFER_PUBLIC) {
            Boolean bool = (Boolean) t;
            this.f116115c = bool;
            m71985j("Prefer public: %s", bool);
            return;
        }
        if (resolverFeature == ResolverFeature.PREFER_PROPERTY_FILE) {
            Boolean bool2 = (Boolean) t;
            this.f116116d = bool2;
            m71985j("Prefer propertyFile: %s", bool2);
            return;
        }
        if (resolverFeature == ResolverFeature.ALLOW_CATALOG_PI) {
            Boolean bool3 = (Boolean) t;
            this.f116117e = bool3;
            m71985j("Allow catalog PI: %s", bool3);
            return;
        }
        if (resolverFeature == ResolverFeature.CACHE_UNDER_HOME) {
            Boolean bool4 = (Boolean) t;
            this.f116119g = bool4;
            m71985j("Cache under home: %s", bool4);
            ResourceCache resourceCache3 = this.f116121i;
            if (resourceCache3 == null) {
                this.f116121i = new ResourceCache(this);
                return;
            } else {
                resourceCache3.reset();
                return;
            }
        }
        if (resolverFeature == ResolverFeature.CACHE_ENABLED) {
            Boolean bool5 = (Boolean) t;
            this.f116120h = bool5;
            m71985j("Cache enabled: %s", bool5);
            ResourceCache resourceCache4 = this.f116121i;
            if (resourceCache4 == null) {
                this.f116121i = new ResourceCache(this);
                return;
            } else {
                resourceCache4.reset();
                return;
            }
        }
        if (resolverFeature == ResolverFeature.CATALOG_MANAGER) {
            CatalogManager catalogManager = (CatalogManager) t;
            this.f116122j = catalogManager;
            this.f116112B.log(AbstractLogger.CONFIG, "Catalog manager: %s", catalogManager.toString());
            return;
        }
        if (resolverFeature == ResolverFeature.URI_FOR_SYSTEM) {
            Boolean bool6 = (Boolean) t;
            this.f116123k = bool6;
            m71985j("URI-for-system: %s", bool6);
            return;
        }
        if (resolverFeature == ResolverFeature.MERGE_HTTPS) {
            Boolean bool7 = (Boolean) t;
            this.f116124l = bool7;
            m71985j("Merge-https: %s", bool7);
            return;
        }
        if (resolverFeature == ResolverFeature.MASK_JAR_URIS) {
            Boolean bool8 = (Boolean) t;
            this.f116125m = bool8;
            m71985j("Mask-jar-URIs: %s", bool8);
            return;
        }
        if (resolverFeature == ResolverFeature.CATALOG_LOADER_CLASS) {
            String str4 = (String) t;
            this.f116126n = str4;
            m71985j("Catalog loader: %s", str4);
            return;
        }
        if (resolverFeature == ResolverFeature.PARSE_RDDL) {
            Boolean bool9 = (Boolean) t;
            this.f116127o = bool9;
            m71985j("Use RDDL: %s", bool9);
            return;
        }
        if (resolverFeature == ResolverFeature.CLASSPATH_CATALOGS) {
            Boolean bool10 = (Boolean) t;
            this.f116128p = bool10;
            m71985j("Classpath catalogs: %s", bool10);
            return;
        }
        if (resolverFeature == ResolverFeature.ARCHIVED_CATALOGS) {
            Boolean bool11 = (Boolean) t;
            this.f116130r = bool11;
            m71985j("Archived catalogs: %s", bool11);
            return;
        }
        if (resolverFeature == ResolverFeature.THROW_URI_EXCEPTIONS) {
            Boolean bool12 = (Boolean) t;
            this.f116131s = bool12;
            m71985j("Throw URI exceptions: %s", bool12);
            return;
        }
        if (resolverFeature == ResolverFeature.RESOLVER_LOGGER_CLASS) {
            String str5 = (String) t;
            this.f116133u = str5;
            m71985j("Resolver logger class: %s", str5);
            this.f116112B = null;
            this.f116112B = (ResolverLogger) getFeature(ResolverFeature.RESOLVER_LOGGER);
            return;
        }
        if (resolverFeature == ResolverFeature.DEFAULT_LOGGER_LOG_LEVEL) {
            String str6 = (String) t;
            this.f116134v = str6;
            m71985j("Default logger log level: %s", str6);
            return;
        }
        if (resolverFeature == ResolverFeature.RESOLVER_LOGGER) {
            ResolverLogger resolverLogger = (ResolverLogger) t;
            this.f116112B = resolverLogger;
            m71985j("Resolver logger: %s", resolverLogger);
            return;
        }
        if (resolverFeature == ResolverFeature.ACCESS_EXTERNAL_ENTITY) {
            String str7 = (String) t;
            this.f116135w = str7;
            m71985j("Access external entity: %s", str7);
            return;
        }
        if (resolverFeature == ResolverFeature.ACCESS_EXTERNAL_DOCUMENT) {
            String str8 = (String) t;
            this.f116136x = str8;
            m71985j("Access external document: %s", str8);
            return;
        }
        if (resolverFeature == ResolverFeature.SAXPARSERFACTORY_CLASS) {
            try {
                final SAXParserFactory sAXParserFactory = (SAXParserFactory) Class.forName((String) t).getConstructor(new Class[0]).newInstance(new Object[0]);
                sAXParserFactory.setNamespaceAware(true);
                sAXParserFactory.setValidating(false);
                sAXParserFactory.setXIncludeAware(false);
                sAXParserFactory.newSAXParser().getXMLReader();
                this.f116138z = new Supplier() { // from class: com.sunia.HTREnginev2.rlo
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        XMLReader m71978d;
                        m71978d = XMLResolverConfiguration.m71978d(SAXParserFactory.this);
                        return m71978d;
                    }
                };
                String str9 = (String) t;
                this.f116137y = str9;
                m71985j("SAXParserFactory class: %s", str9);
                return;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        if (resolverFeature == ResolverFeature.XMLREADER_SUPPLIER) {
            this.f116137y = null;
            Supplier<XMLReader> supplier = (Supplier) t;
            this.f116138z = supplier;
            m71985j("XMLReader supplier: %s", supplier);
            return;
        }
        if (resolverFeature != ResolverFeature.FIX_WINDOWS_SYSTEM_IDENTIFIERS) {
            this.f116112B.log("error", "Ignoring unknown feature: %s", resolverFeature.getName());
            return;
        }
        Boolean bool13 = (Boolean) t;
        this.f116111A = bool13;
        m71985j("Fix windows system identifiers: %s", bool13);
    }

    public XMLResolverConfiguration(String str) {
        this(null, Arrays.asList(str.split("\\s*;\\s*")));
    }

    public XMLResolverConfiguration(List<String> list) {
        this(null, list);
    }

    public XMLResolverConfiguration(List<URL> list, List<String> list2) {
        this.f116115c = ResolverFeature.PREFER_PUBLIC.getDefaultValue();
        this.f116116d = ResolverFeature.PREFER_PROPERTY_FILE.getDefaultValue();
        this.f116117e = ResolverFeature.ALLOW_CATALOG_PI.getDefaultValue();
        this.f116118f = ResolverFeature.CACHE_DIRECTORY.getDefaultValue();
        this.f116119g = ResolverFeature.CACHE_UNDER_HOME.getDefaultValue();
        this.f116120h = ResolverFeature.CACHE_ENABLED.getDefaultValue();
        this.f116121i = ResolverFeature.CACHE.getDefaultValue();
        this.f116122j = ResolverFeature.CATALOG_MANAGER.getDefaultValue();
        this.f116123k = ResolverFeature.URI_FOR_SYSTEM.getDefaultValue();
        this.f116124l = ResolverFeature.MERGE_HTTPS.getDefaultValue();
        this.f116125m = ResolverFeature.MASK_JAR_URIS.getDefaultValue();
        this.f116126n = ResolverFeature.CATALOG_LOADER_CLASS.getDefaultValue();
        this.f116127o = ResolverFeature.PARSE_RDDL.getDefaultValue();
        this.f116128p = ResolverFeature.CLASSPATH_CATALOGS.getDefaultValue();
        this.f116129q = ResolverFeature.CLASSLOADER.getDefaultValue();
        this.f116130r = ResolverFeature.ARCHIVED_CATALOGS.getDefaultValue();
        this.f116131s = ResolverFeature.THROW_URI_EXCEPTIONS.getDefaultValue();
        Boolean bool = Boolean.FALSE;
        this.f116132t = bool;
        this.f116133u = ResolverFeature.RESOLVER_LOGGER_CLASS.getDefaultValue();
        this.f116134v = ResolverFeature.DEFAULT_LOGGER_LOG_LEVEL.getDefaultValue();
        this.f116135w = ResolverFeature.ACCESS_EXTERNAL_ENTITY.getDefaultValue();
        this.f116136x = ResolverFeature.ACCESS_EXTERNAL_DOCUMENT.getDefaultValue();
        this.f116137y = ResolverFeature.SAXPARSERFACTORY_CLASS.getDefaultValue();
        this.f116138z = ResolverFeature.XMLREADER_SUPPLIER.getDefaultValue();
        this.f116111A = ResolverFeature.FIX_WINDOWS_SYSTEM_IDENTIFIERS.getDefaultValue();
        this.f116112B = null;
        if (this.f116129q == null) {
            this.f116129q = getClass().getClassLoader();
        }
        this.f116132t = bool;
        this.f116113a = new ArrayList();
        this.f116114b = new ArrayList();
        C20488b c20488b = new C20488b();
        this.f116112B = c20488b;
        m71980e(list, list2);
        this.f116112B = null;
        ResolverLogger resolverLogger = (ResolverLogger) getFeature(ResolverFeature.RESOLVER_LOGGER);
        this.f116112B = resolverLogger;
        c20488b.m71986b(resolverLogger);
        this.f116132t = Boolean.TRUE;
    }

    public void addCatalog(URI uri, InputSource inputSource) {
        if (uri == null) {
            throw new NullPointerException("null provided for catalog URI");
        }
        if (inputSource != null) {
            URI resolve = URIUtils.cwd().resolve(uri);
            synchronized (this.f116113a) {
                this.f116113a.add(resolve.toString());
                if (this.f116122j == null) {
                    this.f116122j = (CatalogManager) getFeature(ResolverFeature.CATALOG_MANAGER);
                }
                this.f116122j.loadCatalog(resolve, inputSource);
            }
            return;
        }
        throw new NullPointerException("null provided for catalog data");
    }

    public XMLResolverConfiguration(XMLResolverConfiguration xMLResolverConfiguration) {
        this.f116115c = ResolverFeature.PREFER_PUBLIC.getDefaultValue();
        this.f116116d = ResolverFeature.PREFER_PROPERTY_FILE.getDefaultValue();
        this.f116117e = ResolverFeature.ALLOW_CATALOG_PI.getDefaultValue();
        this.f116118f = ResolverFeature.CACHE_DIRECTORY.getDefaultValue();
        this.f116119g = ResolverFeature.CACHE_UNDER_HOME.getDefaultValue();
        this.f116120h = ResolverFeature.CACHE_ENABLED.getDefaultValue();
        this.f116121i = ResolverFeature.CACHE.getDefaultValue();
        this.f116122j = ResolverFeature.CATALOG_MANAGER.getDefaultValue();
        this.f116123k = ResolverFeature.URI_FOR_SYSTEM.getDefaultValue();
        this.f116124l = ResolverFeature.MERGE_HTTPS.getDefaultValue();
        this.f116125m = ResolverFeature.MASK_JAR_URIS.getDefaultValue();
        this.f116126n = ResolverFeature.CATALOG_LOADER_CLASS.getDefaultValue();
        this.f116127o = ResolverFeature.PARSE_RDDL.getDefaultValue();
        this.f116128p = ResolverFeature.CLASSPATH_CATALOGS.getDefaultValue();
        this.f116129q = ResolverFeature.CLASSLOADER.getDefaultValue();
        this.f116130r = ResolverFeature.ARCHIVED_CATALOGS.getDefaultValue();
        this.f116131s = ResolverFeature.THROW_URI_EXCEPTIONS.getDefaultValue();
        this.f116132t = Boolean.FALSE;
        this.f116133u = ResolverFeature.RESOLVER_LOGGER_CLASS.getDefaultValue();
        this.f116134v = ResolverFeature.DEFAULT_LOGGER_LOG_LEVEL.getDefaultValue();
        this.f116135w = ResolverFeature.ACCESS_EXTERNAL_ENTITY.getDefaultValue();
        this.f116136x = ResolverFeature.ACCESS_EXTERNAL_DOCUMENT.getDefaultValue();
        this.f116137y = ResolverFeature.SAXPARSERFACTORY_CLASS.getDefaultValue();
        this.f116138z = ResolverFeature.XMLREADER_SUPPLIER.getDefaultValue();
        this.f116111A = ResolverFeature.FIX_WINDOWS_SYSTEM_IDENTIFIERS.getDefaultValue();
        this.f116112B = null;
        this.f116113a = new ArrayList(xMLResolverConfiguration.f116113a);
        this.f116114b = new ArrayList();
        this.f116129q = xMLResolverConfiguration.f116129q;
        this.f116115c = xMLResolverConfiguration.f116115c;
        this.f116116d = xMLResolverConfiguration.f116116d;
        this.f116117e = xMLResolverConfiguration.f116117e;
        this.f116118f = xMLResolverConfiguration.f116118f;
        this.f116119g = xMLResolverConfiguration.f116119g;
        this.f116121i = xMLResolverConfiguration.f116121i;
        this.f116120h = xMLResolverConfiguration.f116120h;
        CatalogManager catalogManager = xMLResolverConfiguration.f116122j;
        if (catalogManager == null) {
            this.f116122j = null;
        } else {
            this.f116122j = new CatalogManager(catalogManager, this);
        }
        this.f116123k = xMLResolverConfiguration.f116123k;
        this.f116124l = xMLResolverConfiguration.f116124l;
        this.f116125m = xMLResolverConfiguration.f116125m;
        this.f116126n = xMLResolverConfiguration.f116126n;
        this.f116127o = xMLResolverConfiguration.f116127o;
        this.f116128p = xMLResolverConfiguration.f116128p;
        this.f116130r = xMLResolverConfiguration.f116130r;
        this.f116131s = xMLResolverConfiguration.f116131s;
        this.f116132t = xMLResolverConfiguration.f116132t;
        this.f116133u = xMLResolverConfiguration.f116133u;
        this.f116112B = xMLResolverConfiguration.f116112B;
        this.f116134v = xMLResolverConfiguration.f116134v;
        this.f116135w = xMLResolverConfiguration.f116135w;
        this.f116136x = xMLResolverConfiguration.f116136x;
        this.f116137y = xMLResolverConfiguration.f116137y;
        this.f116138z = xMLResolverConfiguration.f116138z;
    }
}
