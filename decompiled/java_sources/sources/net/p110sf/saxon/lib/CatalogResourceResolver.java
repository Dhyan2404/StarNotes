package net.p110sf.saxon.lib;

import java.io.IOException;
import java.util.Collections;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import net.p110sf.saxon.resource.TypedStreamSource;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.ext.EntityResolver2;
import org.xmlresolver.CatalogResolver;
import org.xmlresolver.ResolvedResource;
import org.xmlresolver.Resolver;
import org.xmlresolver.ResolverFeature;
import org.xmlresolver.XMLResolverConfiguration;

/* loaded from: classes11.dex */
public class CatalogResourceResolver implements ResourceResolver, ConfigurableResourceResolver, EntityResolver, EntityResolver2 {

    /* renamed from: e */
    public Resolver f100482e;

    public CatalogResourceResolver() {
        Resolver resolver = new Resolver(new XMLResolverConfiguration(null, Collections.emptyList()));
        this.f100482e = resolver;
        resolver.getConfiguration().setFeature(ResolverFeature.THROW_URI_EXCEPTIONS, Boolean.TRUE);
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource getExternalSubset(String str, String str2) throws SAXException, IOException {
        Resolver resolver = this.f100482e;
        if (resolver != null) {
            return resolver.getExternalSubset(str, str2);
        }
        return null;
    }

    @Override // net.p110sf.saxon.lib.ConfigurableResourceResolver
    public <T> T getFeature(ResolverFeature<T> resolverFeature) {
        Resolver resolver = this.f100482e;
        if (resolver == null) {
            return null;
        }
        return (T) resolver.getConfiguration().getFeature(resolverFeature);
    }

    @Override // net.p110sf.saxon.lib.ResourceResolver
    public Source resolve(ResourceRequest resourceRequest) throws XPathException {
        ResolvedResource resolveNamespace;
        Resolver resolver = this.f100482e;
        if (resolver != null) {
            CatalogResolver catalogResolver = resolver.getCatalogResolver();
            if (resourceRequest.uriIsNamespace) {
                try {
                    resolveNamespace = catalogResolver.resolveNamespace(resourceRequest.uri, resourceRequest.baseUri, resourceRequest.nature, resourceRequest.purpose);
                    if (resolveNamespace == null) {
                        return null;
                    }
                } catch (IllegalArgumentException e) {
                    throw new XPathException("Exception from catalog resolver resolveNamespace(): ", e);
                }
            } else {
                if (ResourceRequest.DTD_NATURE.equals(resourceRequest.nature)) {
                    return null;
                }
                if (ResourceRequest.EXTERNAL_ENTITY_NATURE.equals(resourceRequest.nature)) {
                    try {
                        resolveNamespace = catalogResolver.resolveEntity(resourceRequest.entityName, resourceRequest.publicId, resourceRequest.baseUri, resourceRequest.uri);
                    } catch (IllegalArgumentException e2) {
                        throw new XPathException("Exception from catalog resolver resolveEntity():", e2);
                    }
                } else {
                    String str = resourceRequest.relativeUri;
                    if (str == null) {
                        str = resourceRequest.uri;
                    }
                    String str2 = resourceRequest.baseUri;
                    if (str2 == null) {
                        str2 = resourceRequest.uri;
                    }
                    try {
                        resolveNamespace = catalogResolver.resolveURI(str, str2);
                    } catch (IllegalArgumentException e3) {
                        throw new XPathException("Exception from catalog resolver resolverURI()", e3);
                    }
                }
            }
            if (resolveNamespace != null) {
                TypedStreamSource typedStreamSource = new TypedStreamSource();
                typedStreamSource.setSystemId(resolveNamespace.getResolvedURI().toString());
                typedStreamSource.setInputStream(resolveNamespace.getInputStream());
                typedStreamSource.setContentType(resolveNamespace.getContentType());
                return typedStreamSource;
            }
        }
        return null;
    }

    @Override // org.xml.sax.ext.EntityResolver2
    public InputSource resolveEntity(String str, String str2, String str3, String str4) throws SAXException, IOException {
        try {
            Resolver resolver = this.f100482e;
            if (resolver != null) {
                return resolver.resolveEntity(str, str2, str3, str4);
            }
            return null;
        } catch (IllegalArgumentException e) {
            if (e.getCause() instanceof IOException) {
                throw ((IOException) e.getCause());
            }
            throw new SAXException(e);
        }
    }

    public Source resolveNamespace(String str, String str2, String str3) throws TransformerException {
        Resolver resolver = this.f100482e;
        if (resolver != null) {
            return resolver.resolveNamespace(str, str2, str3);
        }
        return null;
    }

    @Override // net.p110sf.saxon.lib.ConfigurableResourceResolver
    public <T> void setFeature(ResolverFeature<T> resolverFeature, T t) {
        Resolver resolver = this.f100482e;
        resolver.getClass();
        resolver.getConfiguration().setFeature(resolverFeature, t);
    }

    public CatalogResourceResolver(Resolver resolver) {
        this.f100482e = resolver;
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        Resolver resolver = this.f100482e;
        if (resolver != null) {
            return resolver.resolveEntity(str, str2);
        }
        return null;
    }
}
