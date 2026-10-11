package org.xmlresolver.loaders;

import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;
import java.util.function.Supplier;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.jsoup.nodes.DocumentType;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlresolver.Resolver;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.ResolverConstants;
import org.xmlresolver.ResolverFeature;
import org.xmlresolver.Resource;
import org.xmlresolver.XMLResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryNull;
import org.xmlresolver.logging.AbstractLogger;
import org.xmlresolver.logging.ResolverLogger;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class XmlLoader implements CatalogLoader {

    /* renamed from: c */
    public static Resolver f116188c;

    /* renamed from: a */
    public boolean f116189a = true;

    /* renamed from: b */
    public boolean f116190b = true;
    protected final HashMap<URI, EntryCatalog> catalogMap = new HashMap<>();
    protected final ResolverConfiguration config;
    protected final ResolverLogger logger;

    /* renamed from: org.xmlresolver.loaders.XmlLoader$a */
    /* loaded from: classes16.dex */
    public static class C20494a extends DefaultHandler {

        /* renamed from: l */
        public static final HashSet<String> f116191l = new HashSet<>(Arrays.asList("group", "public", "system", "rewriteSystem", "delegatePublic", "delegateSystem", "uri", "rewriteURI", "delegateURI", "nextCatalog", "uriSuffix", "systemSuffix"));

        /* renamed from: m */
        public static final HashSet<String> f116192m = new HashSet<>(Arrays.asList("doctype", "document", "dtddecl", "entity", "linktype", "notation", "sgmldecl"));

        /* renamed from: e */
        public final ResolverLogger f116193e;

        /* renamed from: g */
        public final ResolverConfiguration f116195g;

        /* renamed from: i */
        public final Stack<Boolean> f116197i;

        /* renamed from: j */
        public final Stack<URI> f116198j;

        /* renamed from: k */
        public EntryCatalog f116199k;

        /* renamed from: f */
        public Locator f116194f = null;

        /* renamed from: h */
        public final Stack<Entry> f116196h = new Stack<>();

        public C20494a(ResolverConfiguration resolverConfiguration, URI uri, boolean z) {
            Stack<Boolean> stack = new Stack<>();
            this.f116197i = stack;
            Stack<URI> stack2 = new Stack<>();
            this.f116198j = stack2;
            this.f116199k = null;
            this.f116195g = resolverConfiguration;
            this.f116193e = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
            stack.push(Boolean.valueOf(z));
            stack2.push(uri);
        }

        /* renamed from: a */
        public EntryCatalog m72019a() {
            return this.f116199k;
        }

        /* renamed from: b */
        public final void m72020b(String str, Attributes attributes) {
            int i;
            Entry addRewriteSystem;
            boolean z;
            String value = attributes.getValue("", "id");
            String value2 = attributes.getValue("", "name");
            String value3 = attributes.getValue("", "uri");
            String value4 = attributes.getValue("", "catalog");
            URI peek = this.f116198j.peek();
            if (attributes.getValue("xml:base") != null) {
                peek = URIUtils.resolve(peek, attributes.getValue("xml:base"));
            }
            URI uri = peek;
            boolean booleanValue = this.f116197i.peek().booleanValue();
            EntryNull entryNull = new EntryNull(this.f116195g);
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1813825829:
                    if (str.equals("rewriteSystem")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1298275357:
                    if (str.equals("entity")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1293278691:
                    if (str.equals("sgmldecl")) {
                        c = 2;
                        break;
                    }
                    break;
                case -977423767:
                    if (str.equals("public")) {
                        c = 3;
                        break;
                    }
                    break;
                case -887328209:
                    if (str.equals("system")) {
                        c = 4;
                        break;
                    }
                    break;
                case -687425952:
                    if (str.equals("systemSuffix")) {
                        c = 5;
                        break;
                    }
                    break;
                case -643490752:
                    if (str.equals("rewriteURI")) {
                        c = 6;
                        break;
                    }
                    break;
                case 116076:
                    if (str.equals("uri")) {
                        c = 7;
                        break;
                    }
                    break;
                case 98629247:
                    if (str.equals("group")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 129941927:
                    if (str.equals("delegateURI")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 861720859:
                    if (str.equals("document")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1195160116:
                    if (str.equals("linktype")) {
                        c = 11;
                        break;
                    }
                    break;
                case 1224442958:
                    if (str.equals("delegatePublic")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 1279125469:
                    if (str.equals("uriSuffix")) {
                        c = '\r';
                        break;
                    }
                    break;
                case 1314538516:
                    if (str.equals("delegateSystem")) {
                        c = 14;
                        break;
                    }
                    break;
                case 1578392578:
                    if (str.equals("notation")) {
                        c = 15;
                        break;
                    }
                    break;
                case 1828894834:
                    if (str.equals("doctype")) {
                        c = 16;
                        break;
                    }
                    break;
                case 1907541414:
                    if (str.equals("nextCatalog")) {
                        c = 17;
                        break;
                    }
                    break;
                case 1972467838:
                    if (str.equals("dtddecl")) {
                        c = 18;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    i = 0;
                    addRewriteSystem = this.f116199k.addRewriteSystem(uri, value, attributes.getValue("", "systemIdStartString"), attributes.getValue("", "rewritePrefix"));
                    z = booleanValue;
                    break;
                case 1:
                    i = 0;
                    addRewriteSystem = this.f116199k.addEntity(uri, value, value2, value3);
                    z = booleanValue;
                    break;
                case 2:
                    i = 0;
                    addRewriteSystem = this.f116199k.addSgmlDecl(uri, value, value3);
                    z = booleanValue;
                    break;
                case 3:
                    i = 0;
                    addRewriteSystem = this.f116199k.addPublic(uri, value, attributes.getValue("", DocumentType.f114074q), value3, booleanValue);
                    z = booleanValue;
                    break;
                case 4:
                    i = 0;
                    addRewriteSystem = this.f116199k.addSystem(uri, value, attributes.getValue("", DocumentType.f114075r), value3);
                    z = booleanValue;
                    break;
                case 5:
                    i = 0;
                    addRewriteSystem = this.f116199k.addSystemSuffix(uri, value, attributes.getValue("", "systemIdSuffix"), value3);
                    z = booleanValue;
                    break;
                case 6:
                    i = 0;
                    addRewriteSystem = this.f116199k.addRewriteUri(uri, value, attributes.getValue("", "uriStartString"), attributes.getValue("", "rewritePrefix"));
                    z = booleanValue;
                    break;
                case 7:
                    i = 0;
                    addRewriteSystem = this.f116199k.addUri(uri, value, value2, value3, attributes.getValue(ResolverConstants.RDDL_NS, "nature"), attributes.getValue(ResolverConstants.RDDL_NS, AccountVerifyPurpose.KEY_PURPOSE));
                    z = booleanValue;
                    break;
                case '\b':
                    String value5 = attributes.getValue("", "prefer");
                    if (value5 != null) {
                        boolean equals = "public".equals(value5);
                        if ("public".equals(value5) || "system".equals(value5)) {
                            i = 0;
                        } else {
                            i = 0;
                            this.f116193e.log("error", "Prefer on " + str + " is neither 'system' nor 'public': " + value5, new Object[0]);
                        }
                        z = equals;
                    } else {
                        i = 0;
                        z = booleanValue;
                    }
                    addRewriteSystem = this.f116199k.addGroup(uri, value, z);
                    break;
                case '\t':
                    addRewriteSystem = this.f116199k.addDelegateUri(uri, value, attributes.getValue("", "uriStartString"), value4);
                    z = booleanValue;
                    i = 0;
                    break;
                case '\n':
                    addRewriteSystem = this.f116199k.addDocument(uri, value, value3);
                    z = booleanValue;
                    i = 0;
                    break;
                case 11:
                    addRewriteSystem = this.f116199k.addLinktype(uri, value, value2, value3);
                    z = booleanValue;
                    i = 0;
                    break;
                case '\f':
                    addRewriteSystem = this.f116199k.addDelegatePublic(uri, value, attributes.getValue("", "publicIdStartString"), value4, booleanValue);
                    z = booleanValue;
                    i = 0;
                    break;
                case '\r':
                    addRewriteSystem = this.f116199k.addUriSuffix(uri, value, attributes.getValue("", "uriSuffix"), value3);
                    z = booleanValue;
                    i = 0;
                    break;
                case 14:
                    addRewriteSystem = this.f116199k.addDelegateSystem(uri, value, attributes.getValue("", "systemIdStartString"), value4);
                    z = booleanValue;
                    i = 0;
                    break;
                case 15:
                    addRewriteSystem = this.f116199k.addNotation(uri, value, value2, value3);
                    z = booleanValue;
                    i = 0;
                    break;
                case 16:
                    addRewriteSystem = this.f116199k.addDoctype(uri, value, value2, value3);
                    z = booleanValue;
                    i = 0;
                    break;
                case 17:
                    addRewriteSystem = this.f116199k.addNextCatalog(uri, value, value4);
                    z = booleanValue;
                    i = 0;
                    break;
                case 18:
                    addRewriteSystem = this.f116199k.addDtdDecl(uri, value, attributes.getValue("", DocumentType.f114074q), value3);
                    z = booleanValue;
                    i = 0;
                    break;
                default:
                    z = booleanValue;
                    addRewriteSystem = entryNull;
                    i = 0;
                    break;
            }
            while (i < attributes.getLength()) {
                if (ResolverConstants.XMLRESOURCE_EXT_NS.equals(attributes.getURI(i))) {
                    addRewriteSystem.setProperty(attributes.getLocalName(i), attributes.getValue(i));
                }
                i++;
            }
            this.f116196h.push(addRewriteSystem);
            this.f116198j.push(uri);
            this.f116197i.push(Boolean.valueOf(z));
        }

        /* renamed from: c */
        public final void m72021c() {
            this.f116196h.push(new EntryNull(this.f116195g));
            Stack<URI> stack = this.f116198j;
            stack.push(stack.peek());
            Stack<Boolean> stack2 = this.f116197i;
            stack2.push(stack2.peek());
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            this.f116196h.pop();
            this.f116198j.pop();
            this.f116197i.pop();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
            return XmlLoader.getLoaderResolver().resolveEntity(str, str2);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
            this.f116194f = locator;
            EntryCatalog entryCatalog = this.f116199k;
            if (entryCatalog != null) {
                entryCatalog.setLocator(locator);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            if (!this.f116196h.isEmpty()) {
                if (this.f116196h.peek().getType() == Entry.Type.NULL) {
                    m72021c();
                    return;
                }
                if ("urn:oasis:names:tc:entity:xmlns:xml:catalog".equals(str)) {
                    if (f116191l.contains(str2) || f116192m.contains(str2)) {
                        m72020b(str2, attributes);
                        return;
                    }
                    this.f116193e.log("error", "Unexpected catalog element (ignored): " + str2, new Object[0]);
                    m72021c();
                    return;
                }
                if (!"urn:oasis:names:tc:entity:xmlns:tr9401:catalog".equals(str)) {
                    m72021c();
                    return;
                }
                if (f116192m.contains(str2)) {
                    m72020b(str2, attributes);
                    return;
                }
                this.f116193e.log("error", "Unexpected catalog element (ignored): " + str2, new Object[0]);
                m72021c();
                return;
            }
            if ("urn:oasis:names:tc:entity:xmlns:xml:catalog".equals(str) && "catalog".equals(str2)) {
                String value = attributes.getValue("", "id");
                String value2 = attributes.getValue("", "prefer");
                if (value2 != null) {
                    this.f116197i.push(Boolean.valueOf("public".equals(value2)));
                    if (!"public".equals(value2) && !"system".equals(value2)) {
                        this.f116193e.log("error", "Prefer on " + str2 + " is neither 'system' nor 'public': " + value2, new Object[0]);
                    }
                }
                EntryCatalog entryCatalog = new EntryCatalog(this.f116195g, this.f116198j.peek(), value, this.f116197i.peek().booleanValue());
                this.f116199k = entryCatalog;
                this.f116196h.push(entryCatalog);
                Locator locator = this.f116194f;
                if (locator != null) {
                    this.f116199k.setLocator(locator);
                }
            } else {
                this.f116193e.log("error", "Catalog document is not an XML Catalog (ignored): " + str3, new Object[0]);
                this.f116199k = new EntryCatalog(this.f116195g, this.f116198j.peek(), null, false);
                this.f116196h.push(new EntryNull(this.f116195g));
            }
            URI peek = this.f116198j.peek();
            if (attributes.getValue("xml:base") != null) {
                peek = URIUtils.resolve(peek, attributes.getValue("xml:base"));
            }
            this.f116198j.push(peek);
            Stack<Boolean> stack = this.f116197i;
            stack.push(stack.peek());
        }
    }

    public XmlLoader(ResolverConfiguration resolverConfiguration) {
        this.config = resolverConfiguration;
        this.logger = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    public static synchronized Resolver getLoaderResolver() {
        Resolver resolver;
        synchronized (XmlLoader.class) {
            if (f116188c == null) {
                XMLResolverConfiguration xMLResolverConfiguration = new XMLResolverConfiguration(Collections.emptyList(), Collections.emptyList());
                xMLResolverConfiguration.setFeature(ResolverFeature.PREFER_PUBLIC, Boolean.TRUE);
                xMLResolverConfiguration.setFeature(ResolverFeature.CATALOG_FILES, Collections.singletonList("classpath:/org/xmlresolver/catalog.xml"));
                xMLResolverConfiguration.setFeature(ResolverFeature.CACHE_DIRECTORY, null);
                ResolverFeature<Boolean> resolverFeature = ResolverFeature.CACHE_UNDER_HOME;
                Boolean bool = Boolean.FALSE;
                xMLResolverConfiguration.setFeature(resolverFeature, bool);
                xMLResolverConfiguration.setFeature(ResolverFeature.ALLOW_CATALOG_PI, bool);
                xMLResolverConfiguration.setFeature(ResolverFeature.CLASSPATH_CATALOGS, bool);
                f116188c = new Resolver(xMLResolverConfiguration);
            }
            resolver = f116188c;
        }
        return resolver;
    }

    /* renamed from: a */
    public final URI m72018a(URI uri) {
        String str;
        int indexOf;
        if (!"file".equals(uri.getScheme())) {
            return null;
        }
        HashSet hashSet = new HashSet();
        try {
            ZipInputStream zipInputStream = new ZipInputStream(uri.toURL().openConnection().getInputStream());
            boolean z = true;
            String str2 = null;
            for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                if (z) {
                    int indexOf2 = nextEntry.getName().indexOf("/");
                    if (indexOf2 >= 0) {
                        str2 = nextEntry.getName().substring(0, indexOf2);
                    }
                    z = false;
                } else if (str2 != null && ((indexOf = nextEntry.getName().indexOf("/")) < 0 || !str2.equals(nextEntry.getName().substring(0, indexOf)))) {
                    str2 = null;
                }
                if (!nextEntry.isDirectory() && nextEntry.getName().endsWith("catalog.xml")) {
                    hashSet.add(nextEntry.getName());
                }
            }
            zipInputStream.close();
            str = "/org/xmlresolver/catalog.xml";
            String str3 = "/catalog.xml";
            if (str2 != null) {
                str3 = hashSet.contains(str2 + "/catalog.xml") ? "/" + str2 + "/catalog.xml" : null;
                if (hashSet.contains(str2 + "/org/xmlresolver/catalog.xml")) {
                    str = "/" + str2 + "/org/xmlresolver/catalog.xml";
                }
                str = str3;
            } else {
                if (!hashSet.contains("catalog.xml")) {
                    str3 = null;
                }
                if (hashSet.contains("org/xmlresolver/catalog.xml")) {
                }
                str = str3;
            }
        } catch (IOException | URISyntaxException e) {
            this.logger.log("error", "Failed to load archived catalog: " + uri + ": " + e.getMessage(), new Object[0]);
        }
        if (str != null) {
            return new URI("jar:file://" + uri.getPath() + "!" + str);
        }
        this.logger.log("error", "Failed to find catalog in archived catalog: " + uri, new Object[0]);
        return null;
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public boolean getArchivedCatalogs() {
        return this.f116190b;
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public boolean getPreferPublic() {
        return this.f116189a;
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public EntryCatalog loadCatalog(URI uri) {
        if (this.catalogMap.containsKey(uri)) {
            return this.catalogMap.get(uri);
        }
        try {
            InputSource inputSource = new InputSource(new Resource(uri.toString()).body());
            inputSource.setSystemId(uri.toString());
            return loadCatalog(uri, inputSource);
        } catch (FileNotFoundException e) {
            this.logger.log(AbstractLogger.WARNING, "Failed to load catalog: %s: %s", uri, e.getMessage());
            this.catalogMap.put(uri, new EntryCatalog(this.config, uri, null, false));
            return this.catalogMap.get(uri);
        } catch (IOException | URISyntaxException e2) {
            this.logger.log("error", "Failed to load catalog: %s: %s", uri, e2.getMessage());
            this.catalogMap.put(uri, new EntryCatalog(this.config, uri, null, false));
            return this.catalogMap.get(uri);
        }
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public void setArchivedCatalogs(boolean z) {
        this.f116190b = z;
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public void setPreferPublic(boolean z) {
        this.f116189a = z;
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public EntryCatalog loadCatalog(URI uri, InputSource inputSource) {
        URI uri2;
        if (this.catalogMap.containsKey(uri)) {
            return this.catalogMap.get(uri);
        }
        if (uri.isAbsolute()) {
            synchronized (this.catalogMap) {
                uri2 = null;
                try {
                    C20494a c20494a = new C20494a(this.config, uri, this.f116189a);
                    Supplier supplier = (Supplier) this.config.getFeature(ResolverFeature.XMLREADER_SUPPLIER);
                    if (supplier != null) {
                        XMLReader xMLReader = (XMLReader) supplier.get();
                        xMLReader.setContentHandler(c20494a);
                        xMLReader.parse(inputSource);
                    } else {
                        SAXParserFactory newInstance = SAXParserFactory.newInstance();
                        newInstance.setNamespaceAware(true);
                        newInstance.setValidating(false);
                        newInstance.setXIncludeAware(false);
                        newInstance.newSAXParser().parse(inputSource, c20494a);
                    }
                    this.catalogMap.put(uri, c20494a.m72019a());
                } catch (IOException | ParserConfigurationException | SAXException e) {
                    this.logger.log("error", "Failed to load catalog: " + uri + ": " + e.getMessage(), new Object[0]);
                    this.catalogMap.put(uri, new EntryCatalog(this.config, uri, null, false));
                    if (this.f116190b) {
                        uri2 = m72018a(uri);
                    }
                }
            }
            if (uri2 != null) {
                this.catalogMap.put(uri, loadCatalog(uri2));
            }
            return this.catalogMap.get(uri);
        }
        throw new IllegalArgumentException("Catalog URIs must be absolute: " + uri);
    }
}
