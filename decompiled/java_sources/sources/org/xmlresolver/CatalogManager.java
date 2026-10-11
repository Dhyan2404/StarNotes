package org.xmlresolver;

import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mortbay.util.URIUtil;
import org.xml.sax.InputSource;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.query.QueryDoctype;
import org.xmlresolver.catalog.query.QueryDocument;
import org.xmlresolver.catalog.query.QueryEntity;
import org.xmlresolver.catalog.query.QueryNotation;
import org.xmlresolver.catalog.query.QueryPublic;
import org.xmlresolver.catalog.query.QuerySystem;
import org.xmlresolver.catalog.query.QueryUri;
import org.xmlresolver.loaders.CatalogLoader;
import org.xmlresolver.logging.ResolverLogger;
import org.xmlresolver.utils.PublicId;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class CatalogManager implements XMLCatalogResolver {
    protected CatalogLoader catalogLoader;
    protected final ResolverLogger logger;
    protected final ResolverConfiguration resolverConfiguration;

    /* renamed from: org.xmlresolver.CatalogManager$b */
    /* loaded from: classes16.dex */
    public static class C20485b {

        /* renamed from: a */
        public final String f116077a;

        /* renamed from: b */
        public final String f116078b;

        public C20485b(String str, String str2) {
            this.f116077a = str;
            this.f116078b = str2;
        }
    }

    public CatalogManager(ResolverConfiguration resolverConfiguration) {
        this.resolverConfiguration = resolverConfiguration;
        ResolverFeature<String> resolverFeature = ResolverFeature.CATALOG_LOADER_CLASS;
        String str = (String) resolverConfiguration.getFeature(resolverFeature);
        str = (str == null || "".equals(str)) ? resolverFeature.getDefaultValue() : str;
        try {
            CatalogLoader catalogLoader = (CatalogLoader) Class.forName(str).getConstructor(ResolverConfiguration.class).newInstance(resolverConfiguration);
            this.catalogLoader = catalogLoader;
            catalogLoader.setPreferPublic(((Boolean) resolverConfiguration.getFeature(ResolverFeature.PREFER_PUBLIC)).booleanValue());
            this.catalogLoader.setArchivedCatalogs(((Boolean) resolverConfiguration.getFeature(ResolverFeature.ARCHIVED_CATALOGS)).booleanValue());
            this.logger = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new IllegalArgumentException("Failed to instantiate catalog loader: " + str + ": " + e.getMessage());
        }
    }

    /* renamed from: a */
    public final String m71963a(String str) {
        return (URIUtils.isWindows() && ((Boolean) this.resolverConfiguration.getFeature(ResolverFeature.FIX_WINDOWS_SYSTEM_IDENTIFIERS)).booleanValue()) ? str.replace("\\", "/") : str;
    }

    /* renamed from: b */
    public final C20485b m71964b(String str, String str2) {
        if (str != null) {
            str = URIUtils.normalizeURI(str);
        }
        if (str2 != null && str2.startsWith("urn:publicid:")) {
            str2 = PublicId.decodeURN(str2);
        }
        if (str != null && str.startsWith("urn:publicid:")) {
            String decodeURN = PublicId.decodeURN(str);
            if (str2 == null || str2.equals(decodeURN)) {
                str2 = decodeURN;
            } else {
                this.logger.log("error", "urn:publicid: system identifier differs from public identifier; using public identifier", new Object[0]);
            }
            str = null;
        }
        return new C20485b(str, str2);
    }

    public List<URI> catalogs() {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = ((List) this.resolverConfiguration.getFeature(ResolverFeature.CATALOG_FILES)).iterator();
        while (it2.hasNext()) {
            arrayList.add(URIUtils.cwd().resolve((String) it2.next()));
        }
        return arrayList;
    }

    public ResolverConfiguration getResolverConfiguration() {
        return this.resolverConfiguration;
    }

    public EntryCatalog loadCatalog(URI uri) {
        return this.catalogLoader.loadCatalog(uri);
    }

    @Override // org.xmlresolver.XMLCatalogResolver
    public URI lookupDoctype(String str, String str2, String str3) {
        C20485b m71964b = m71964b(m71963a(str2), str3);
        return new QueryDoctype(str, m71964b.f116077a, m71964b.f116078b).search(this).uri();
    }

    @Override // org.xmlresolver.XMLCatalogResolver
    public URI lookupDocument() {
        return new QueryDocument().search(this).uri();
    }

    @Override // org.xmlresolver.XMLCatalogResolver
    public URI lookupEntity(String str, String str2, String str3) {
        C20485b m71964b = m71964b(m71963a(str2), str3);
        return new QueryEntity(str, m71964b.f116077a, m71964b.f116078b).search(this).uri();
    }

    public URI lookupNamespaceURI(String str, String str2, String str3) {
        return new QueryUri(str, str2, str3).search(this).uri();
    }

    @Override // org.xmlresolver.XMLCatalogResolver
    public URI lookupNotation(String str, String str2, String str3) {
        C20485b m71964b = m71964b(m71963a(str2), str3);
        return new QueryNotation(str, m71964b.f116077a, m71964b.f116078b).search(this).uri();
    }

    @Override // org.xmlresolver.XMLCatalogResolver
    public URI lookupPublic(String str, String str2) {
        C20485b m71964b = m71964b(m71963a(str), str2);
        return new QueryPublic(m71964b.f116077a, m71964b.f116078b).search(this).uri();
    }

    @Override // org.xmlresolver.XMLCatalogResolver
    public URI lookupSystem(String str) {
        String m71963a = m71963a(str);
        if (m71964b(m71963a, null).f116077a == null) {
            return null;
        }
        return new QuerySystem(m71963a).search(this).uri();
    }

    @Override // org.xmlresolver.XMLCatalogResolver
    public URI lookupURI(String str) {
        return lookupNamespaceURI(str, null, null);
    }

    public String normalizedForComparison(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("classpath:/")) {
            return "classpath:" + str.substring(11);
        }
        if (!((Boolean) this.resolverConfiguration.getFeature(ResolverFeature.MERGE_HTTPS)).booleanValue() || !str.startsWith(URIUtil.HTTP_COLON)) {
            return str;
        }
        return URIUtil.HTTPS_COLON + str.substring(5);
    }

    public EntryCatalog loadCatalog(URI uri, InputSource inputSource) {
        return this.catalogLoader.loadCatalog(uri, inputSource);
    }

    public CatalogManager(CatalogManager catalogManager, ResolverConfiguration resolverConfiguration) {
        this.catalogLoader = catalogManager.catalogLoader;
        this.resolverConfiguration = resolverConfiguration;
        this.logger = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }
}
