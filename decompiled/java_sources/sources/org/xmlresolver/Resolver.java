package org.xmlresolver;

import java.io.IOException;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.EntityResolver2;
import org.xmlresolver.logging.AbstractLogger;
import org.xmlresolver.logging.ResolverLogger;
import org.xmlresolver.sources.ResolverInputSource;
import org.xmlresolver.sources.ResolverLSInput;
import org.xmlresolver.sources.ResolverSAXSource;

/* loaded from: classes16.dex */
public class Resolver implements URIResolver, EntityResolver, EntityResolver2, NamespaceResolver, LSResourceResolver {
    public static final String NATURE_RELAX_NG = "http://relaxng.org/ns/structure/1.0";
    public static final String NATURE_XML_SCHEMA = "http://www.w3.org/2001/XMLSchema";
    public static final String NATURE_XML_SCHEMA_1_1 = "http://www.w3.org/2001/XMLSchema/v1.1";
    public static final String PURPOSE_SCHEMA_VALIDATION = "http://www.rddl.org/purposes#schema-validation";
    protected final XMLResolverConfiguration config;

    /* renamed from: e */
    public final ResolverLogger f116090e;
    protected final CatalogResolver resolver;

    public Resolver() {
        XMLResolverConfiguration xMLResolverConfiguration = new XMLResolverConfiguration();
        this.config = xMLResolverConfiguration;
        this.resolver = new CatalogResolver(xMLResolverConfiguration);
        this.f116090e = (ResolverLogger) xMLResolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    public static String version() {
        return BuildConfig.VERSION;
    }

    public CatalogResolver getCatalogResolver() {
        return this.resolver;
    }

    public XMLResolverConfiguration getConfiguration() {
        return this.resolver.getConfiguration();
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource getExternalSubset(String str, String str2) throws SAXException, IOException {
        ResolvedResource resolveEntity = this.resolver.resolveEntity(str, null, null, str2);
        if (resolveEntity == null) {
            return null;
        }
        ResolverInputSource resolverInputSource = new ResolverInputSource(resolveEntity.getLocalURI(), resolveEntity.getInputStream());
        resolverInputSource.setSystemId(resolveEntity.getResolvedURI().toString());
        return resolverInputSource;
    }

    @Override // javax.xml.transform.URIResolver
    public Source resolve(String str, String str2) throws TransformerException {
        ResolvedResource resolveURI = this.resolver.resolveURI(str, str2);
        if (resolveURI == null) {
            return null;
        }
        ResolverSAXSource resolverSAXSource = new ResolverSAXSource(resolveURI.getLocalURI(), new InputSource(resolveURI.getInputStream()));
        resolverSAXSource.setSystemId(resolveURI.getResolvedURI().toString());
        return resolverSAXSource;
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource resolveEntity(String str, String str2, String str3, String str4) throws SAXException, IOException {
        ResolvedResource resolveEntity = this.resolver.resolveEntity(str, str2, str4, str3);
        if (resolveEntity == null) {
            return null;
        }
        ResolverInputSource resolverInputSource = new ResolverInputSource(resolveEntity.getLocalURI(), resolveEntity.getInputStream());
        resolverInputSource.setSystemId(resolveEntity.getResolvedURI().toString());
        return resolverInputSource;
    }

    @Override // org.xmlresolver.NamespaceResolver
    public Source resolveNamespace(String str, String str2, String str3) throws TransformerException {
        ResolvedResource resolveNamespace = this.resolver.resolveNamespace(str, null, str2, str3);
        if (resolveNamespace == null) {
            return null;
        }
        ResolverSAXSource resolverSAXSource = new ResolverSAXSource(resolveNamespace.getLocalURI(), new InputSource(resolveNamespace.getInputStream()));
        resolverSAXSource.setSystemId(resolveNamespace.getResolvedURI().toString());
        return resolverSAXSource;
    }

    @Override // org.w3c.dom.ls.LSResourceResolver
    public LSInput resolveResource(String str, String str2, String str3, String str4, String str5) {
        ResolvedResource resolveEntity;
        if (str == null || "http://www.w3.org/TR/REC-xml".equals(str)) {
            this.f116090e.log(AbstractLogger.REQUEST, "resolveResource: XML: %s (baseURI: %s, publicId: %s)", str4, str5, str3);
            resolveEntity = this.resolver.resolveEntity(null, str3, str4, str5);
        } else {
            this.f116090e.log(AbstractLogger.REQUEST, "resolveResource: %s, %s (namespace: %s, baseURI: %s, publicId: %s)", str, str4, str2, str5, str3);
            resolveEntity = str4 != null ? this.resolver.resolveNamespace(str4, str5, str, ("http://www.w3.org/2001/XMLSchema".equals(str) || NATURE_XML_SCHEMA_1_1.equals(str) || "http://relaxng.org/ns/structure/1.0".equals(str)) ? PURPOSE_SCHEMA_VALIDATION : null) : null;
        }
        if (resolveEntity == null) {
            return null;
        }
        return new ResolverLSInput(resolveEntity, str3);
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        ResolvedResource resolveEntity = this.resolver.resolveEntity(null, str, str2, null);
        if (resolveEntity == null) {
            return null;
        }
        ResolverInputSource resolverInputSource = new ResolverInputSource(resolveEntity.getLocalURI(), resolveEntity.getInputStream());
        resolverInputSource.setSystemId(resolveEntity.getResolvedURI().toString());
        return resolverInputSource;
    }

    public Resolver(XMLResolverConfiguration xMLResolverConfiguration) {
        this.config = xMLResolverConfiguration;
        this.resolver = new CatalogResolver(xMLResolverConfiguration);
        this.f116090e = (ResolverLogger) xMLResolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    public Resolver(CatalogResolver catalogResolver) {
        XMLResolverConfiguration configuration = catalogResolver.getConfiguration();
        this.config = configuration;
        this.resolver = catalogResolver;
        this.f116090e = (ResolverLogger) configuration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }
}
