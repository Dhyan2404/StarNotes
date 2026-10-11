package org.xmlresolver;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.function.Supplier;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xmlresolver.ResolverFeature;
import org.xmlresolver.cache.ResourceCache;
import org.xmlresolver.logging.ResolverLogger;

/* loaded from: classes16.dex */
public class ResolverFeature<T> {
    public static final ResolverFeature<String> ACCESS_EXTERNAL_DOCUMENT;
    public static final ResolverFeature<String> ACCESS_EXTERNAL_ENTITY;
    public static final ResolverFeature<Boolean> ALLOW_CATALOG_PI;
    public static final ResolverFeature<Boolean> ARCHIVED_CATALOGS;
    public static final ResolverFeature<ResourceCache> CACHE;
    public static final ResolverFeature<String> CACHE_DIRECTORY;
    public static final ResolverFeature<Boolean> CACHE_ENABLED;
    public static final ResolverFeature<Boolean> CACHE_UNDER_HOME;
    public static final ResolverFeature<String> CATALOG_LOADER_CLASS;
    public static final ResolverFeature<CatalogManager> CATALOG_MANAGER;
    public static final ResolverFeature<ClassLoader> CLASSLOADER;
    public static final ResolverFeature<Boolean> CLASSPATH_CATALOGS;
    public static final ResolverFeature<String> DEFAULT_LOGGER_LOG_LEVEL;
    public static final ResolverFeature<Boolean> FIX_WINDOWS_SYSTEM_IDENTIFIERS;
    public static final ResolverFeature<Boolean> MASK_JAR_URIS;
    public static final ResolverFeature<Boolean> MERGE_HTTPS;
    public static final ResolverFeature<Boolean> PARSE_RDDL;
    public static final ResolverFeature<Boolean> PREFER_PROPERTY_FILE;
    public static final ResolverFeature<Boolean> PREFER_PUBLIC;
    public static final ResolverFeature<ResolverLogger> RESOLVER_LOGGER;
    public static final ResolverFeature<String> RESOLVER_LOGGER_CLASS;
    public static final ResolverFeature<String> SAXPARSERFACTORY_CLASS;
    public static final ResolverFeature<Boolean> THROW_URI_EXCEPTIONS;
    public static final ResolverFeature<Boolean> URI_FOR_SYSTEM;
    public static final ResolverFeature<Supplier<XMLReader>> XMLREADER_SUPPLIER;

    /* renamed from: a */
    public String f116092a;

    /* renamed from: b */
    public T f116093b;

    /* renamed from: c */
    public static final Map<String, ResolverFeature<?>> f116091c = new TreeMap();
    public static final ResolverFeature<List<String>> CATALOG_FILES = new ResolverFeature<>("http://xmlresolver.org/feature/catalog-files", Collections.unmodifiableList(new ArrayList()));
    public static final ResolverFeature<List<String>> CATALOG_ADDITIONS = new ResolverFeature<>("http://xmlresolver.org/feature/catalog-additions", Collections.unmodifiableList(new ArrayList()));

    static {
        Boolean bool = Boolean.TRUE;
        PREFER_PUBLIC = new ResolverFeature<>("http://xmlresolver.org/feature/prefer-public", bool);
        Boolean bool2 = Boolean.FALSE;
        PREFER_PROPERTY_FILE = new ResolverFeature<>("http://xmlresolver.org/feature/prefer-property-file", bool2);
        ALLOW_CATALOG_PI = new ResolverFeature<>("http://xmlresolver.org/feature/allow-catalog-pi", bool);
        CACHE_DIRECTORY = new ResolverFeature<>("http://xmlresolver.org/feature/cache-directory", null);
        CACHE_UNDER_HOME = new ResolverFeature<>("http://xmlresolver.org/feature/cache-under-home", bool);
        CACHE = new ResolverFeature<>("http://xmlresolver.org/feature/cache", null);
        CATALOG_MANAGER = new ResolverFeature<>("http://xmlresolver.org/feature/catalog-manager", null);
        URI_FOR_SYSTEM = new ResolverFeature<>("http://xmlresolver.org/feature/uri-for-system", bool);
        MERGE_HTTPS = new ResolverFeature<>("http://xmlresolver.org/feature/merge-https", bool);
        MASK_JAR_URIS = new ResolverFeature<>("http://xmlresolver.org/feature/mask-jar-uris", bool);
        CATALOG_LOADER_CLASS = new ResolverFeature<>("http://xmlresolver.org/feature/catalog-loader-class", "org.xmlresolver.loaders.XmlLoader");
        PARSE_RDDL = new ResolverFeature<>("http://xmlresolver.org/feature/rddl", bool);
        CLASSPATH_CATALOGS = new ResolverFeature<>("http://xmlresolver.org/feature/classpath-catalogs", bool);
        CLASSLOADER = new ResolverFeature<>("http://xmlresolver.org/feature/classloader", null);
        ARCHIVED_CATALOGS = new ResolverFeature<>("http://xmlresolver.org/feature/archived-catalogs", bool);
        THROW_URI_EXCEPTIONS = new ResolverFeature<>("http://xmlresolver.org/feature/throw-uri-exceptions", bool2);
        RESOLVER_LOGGER_CLASS = new ResolverFeature<>("http://xmlresolver.org/feature/resolver-logger-class", "org.xmlresolver.logging.DefaultLogger");
        RESOLVER_LOGGER = new ResolverFeature<>("http://xmlresolver.org/feature/resolver-logger", null);
        DEFAULT_LOGGER_LOG_LEVEL = new ResolverFeature<>("http://xmlresolver.org/feature/default-logger-log-level", "warn");
        ACCESS_EXTERNAL_ENTITY = new ResolverFeature<>("http://xmlresolver.org/feature/access-external-entity", "all");
        ACCESS_EXTERNAL_DOCUMENT = new ResolverFeature<>("http://xmlresolver.org/feature/access-external-document", "all");
        CACHE_ENABLED = new ResolverFeature<>("http://xmlresolver.org/feature/cache-enabled", bool);
        SAXPARSERFACTORY_CLASS = new ResolverFeature<>("http://xmlresolver.org/feature/saxparserfactory-class", null);
        XMLREADER_SUPPLIER = new ResolverFeature<>("http://xmlresolver.org/feature/xmlreader-supplier", new Supplier() { // from class: com.sunia.HTREnginev2.oll
            @Override // java.util.function.Supplier
            public final Object get() {
                XMLReader m71974b;
                m71974b = ResolverFeature.m71974b();
                return m71974b;
            }
        });
        FIX_WINDOWS_SYSTEM_IDENTIFIERS = new ResolverFeature<>("http://xmlresolver.org/feature/fix-windows-system-identifiers", bool2);
    }

    public ResolverFeature(String str, T t) {
        this.f116092a = str;
        this.f116093b = t;
        f116091c.put(str, this);
    }

    /* renamed from: b */
    public static /* synthetic */ XMLReader m71974b() {
        try {
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            newInstance.setValidating(false);
            newInstance.setXIncludeAware(false);
            return newInstance.newSAXParser().getXMLReader();
        } catch (ParserConfigurationException | SAXException unused) {
            return null;
        }
    }

    public static ResolverFeature<?> byName(String str) {
        return f116091c.get(str);
    }

    public static Iterator<String> getNames() {
        return f116091c.keySet().iterator();
    }

    public T getDefaultValue() {
        return this.f116093b;
    }

    public String getName() {
        return this.f116092a;
    }
}
