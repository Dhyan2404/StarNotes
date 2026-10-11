package org.xmlresolver;

import javax.xml.stream.XMLResolver;
import javax.xml.stream.XMLStreamException;
import org.xmlresolver.logging.AbstractLogger;
import org.xmlresolver.logging.ResolverLogger;

/* loaded from: classes16.dex */
public class StAXResolver implements XMLResolver {

    /* renamed from: a */
    public ResourceResolver f116107a;
    protected final ResolverLogger logger;

    public StAXResolver() {
        this.f116107a = null;
        XMLResolverConfiguration xMLResolverConfiguration = new XMLResolverConfiguration();
        this.f116107a = new CatalogResolver(xMLResolverConfiguration);
        this.logger = (ResolverLogger) xMLResolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    public ResolverConfiguration getConfiguration() {
        return this.f116107a.getConfiguration();
    }

    @Override // javax.xml.stream.XMLResolver
    public Object resolveEntity(String str, String str2, String str3, String str4) throws XMLStreamException {
        this.logger.log(AbstractLogger.REQUEST, "resolveEntity: %s/%s (baseURI: %s, %s)", str2, str4, str3, str);
        ResolvedResource resolveEntity = this.f116107a.resolveEntity(null, str, str2, str3);
        if (resolveEntity == null) {
            this.logger.log(AbstractLogger.RESPONSE, "resolvedEntity: %s/%s (baseURI: %s, %s) → null", str2, str4, str3, str);
            return null;
        }
        this.logger.log(AbstractLogger.RESPONSE, "resolvedEntity: %s/%s (baseURI: %s, %s) → %s", str2, str4, str3, str, resolveEntity.getResolvedURI());
        return resolveEntity.getInputStream();
    }

    public StAXResolver(XMLResolverConfiguration xMLResolverConfiguration) {
        this.f116107a = null;
        this.f116107a = new CatalogResolver(xMLResolverConfiguration);
        this.logger = (ResolverLogger) xMLResolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    public StAXResolver(ResourceResolver resourceResolver) {
        this.f116107a = resourceResolver;
        this.logger = (ResolverLogger) resourceResolver.getConfiguration().getFeature(ResolverFeature.RESOLVER_LOGGER);
    }
}
