package org.xmlresolver;

import org.apache.xerces.impl.XMLEntityDescription;
import org.apache.xerces.impl.p117xs.XSDDescription;
import org.apache.xerces.util.SAXInputSource;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.grammars.XMLDTDDescription;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.scribe.model.ParameterList;
import org.xmlresolver.sources.ResolverInputSource;

/* loaded from: classes16.dex */
public class XercesResolver extends Resolver implements XMLEntityResolver {
    public XercesResolver() {
    }

    /* renamed from: a */
    public final XMLInputSource m71987a(XMLDTDDescription xMLDTDDescription) {
        ResolvedResource resolveEntity = this.resolver.resolveEntity(xMLDTDDescription.getRootName(), xMLDTDDescription.getPublicId(), xMLDTDDescription.getLiteralSystemId(), xMLDTDDescription.getBaseSystemId());
        if (resolveEntity == null) {
            resolveEntity = this.resolver.resolveEntity(xMLDTDDescription.getRootName(), xMLDTDDescription.getPublicId(), xMLDTDDescription.getExpandedSystemId(), xMLDTDDescription.getBaseSystemId());
        }
        if (resolveEntity == null) {
            return null;
        }
        return new SAXInputSource(new ResolverInputSource(resolveEntity.getLocalURI(), resolveEntity.getInputStream()));
    }

    /* renamed from: b */
    public final XMLInputSource m71988b(XMLEntityDescription xMLEntityDescription) {
        String entityName = xMLEntityDescription.getEntityName();
        if (entityName.startsWith("%") || entityName.startsWith(ParameterList.f115951c)) {
            entityName = entityName.substring(1);
        }
        ResolvedResource resolveEntity = this.resolver.resolveEntity(entityName, xMLEntityDescription.getPublicId(), xMLEntityDescription.getLiteralSystemId(), xMLEntityDescription.getBaseSystemId());
        if (resolveEntity == null) {
            resolveEntity = this.resolver.resolveEntity(entityName, xMLEntityDescription.getPublicId(), xMLEntityDescription.getExpandedSystemId(), xMLEntityDescription.getBaseSystemId());
        }
        if (resolveEntity == null) {
            return null;
        }
        return new SAXInputSource(new ResolverInputSource(resolveEntity.getLocalURI(), resolveEntity.getInputStream()));
    }

    /* renamed from: c */
    public final XMLInputSource m71989c(XSDDescription xSDDescription) {
        ResolvedResource resolveURI = xSDDescription.getLiteralSystemId() != null ? this.resolver.resolveURI(xSDDescription.getLiteralSystemId(), xSDDescription.getBaseSystemId()) : this.resolver.resolveNamespace(xSDDescription.getNamespace(), xSDDescription.getBaseSystemId(), "http://www.w3.org/2001/XMLSchema", Resolver.PURPOSE_SCHEMA_VALIDATION);
        if (resolveURI == null) {
            return null;
        }
        ResolverInputSource resolverInputSource = new ResolverInputSource(resolveURI.getLocalURI(), resolveURI.getInputStream());
        resolverInputSource.setSystemId(resolveURI.getLocalURI().toString());
        return new SAXInputSource(resolverInputSource);
    }

    @Override // org.apache.xerces.xni.parser.XMLEntityResolver
    public XMLInputSource resolveEntity(XMLResourceIdentifier xMLResourceIdentifier) {
        ResolvedResource resolvedResource;
        if (xMLResourceIdentifier instanceof XMLDTDDescription) {
            return m71987a((XMLDTDDescription) xMLResourceIdentifier);
        }
        if (xMLResourceIdentifier instanceof XMLEntityDescription) {
            return m71988b((XMLEntityDescription) xMLResourceIdentifier);
        }
        if (xMLResourceIdentifier instanceof XSDDescription) {
            return m71989c((XSDDescription) xMLResourceIdentifier);
        }
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        String baseSystemId = xMLResourceIdentifier.getBaseSystemId();
        String namespace = xMLResourceIdentifier.getNamespace();
        if (namespace == null) {
            resolvedResource = this.resolver.resolveEntity(null, publicId, literalSystemId, baseSystemId);
            if (resolvedResource == null) {
                resolvedResource = this.resolver.resolveEntity(null, publicId, xMLResourceIdentifier.getExpandedSystemId(), baseSystemId);
            }
        } else {
            resolvedResource = null;
        }
        if (resolvedResource == null) {
            resolvedResource = this.resolver.resolveNamespace(namespace, xMLResourceIdentifier.getBaseSystemId(), "http://www.w3.org/2001/XMLSchema", Resolver.PURPOSE_SCHEMA_VALIDATION);
        }
        if (resolvedResource == null) {
            return null;
        }
        return new SAXInputSource(new ResolverInputSource(resolvedResource.getLocalURI(), resolvedResource.getInputStream()));
    }

    public XercesResolver(XMLResolverConfiguration xMLResolverConfiguration) {
        super(xMLResolverConfiguration);
    }

    public XercesResolver(CatalogResolver catalogResolver) {
        super(catalogResolver);
    }
}
