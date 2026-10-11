package org.xmlresolver.catalog.entry;

import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.ResolverFeature;
import org.xmlresolver.logging.ResolverLogger;

/* loaded from: classes16.dex */
public abstract class Entry {
    public static final Pattern NCNAME_RE = Pattern.compile("^[A-Za-z0-9_]+$");
    public static String rarr = " → ";
    public final URI baseURI;
    protected final ResolverConfiguration config;
    public final HashMap<String, String> extra = new HashMap<>();

    /* renamed from: id */
    public final String f116179id;
    protected final ResolverLogger logger;

    /* loaded from: classes16.dex */
    public enum Type {
        NULL,
        CATALOG,
        DELEGATE_PUBLIC,
        DELEGATE_SYSTEM,
        DELEGATE_URI,
        DOCTYPE,
        DOCUMENT,
        DTD_DECL,
        ENTITY,
        GROUP,
        LINKTYPE,
        NEXT_CATALOG,
        NOTATION,
        PUBLIC,
        REWRITE_SYSTEM,
        REWRITE_URI,
        SGML_DECL,
        SYSTEM,
        SYSTEM_SUFFIX,
        URI,
        URI_SUFFIX
    }

    public Entry(ResolverConfiguration resolverConfiguration, URI uri, String str) {
        this.f116179id = str;
        if (uri.isAbsolute()) {
            this.baseURI = uri;
            this.config = resolverConfiguration;
            this.logger = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
        } else {
            throw new IllegalArgumentException("Base URI of catalog entry must be absolute: " + uri);
        }
    }

    public Map<String, String> getProperties() {
        return this.extra;
    }

    public String getProperty(String str) {
        return this.extra.get(str);
    }

    public abstract Type getType();

    public void setProperties(Map<String, String> map) {
        for (String str : map.keySet()) {
            setProperty(str, map.get(str));
        }
    }

    public void setProperty(String str, String str2) {
        if (NCNAME_RE.matcher(str).matches()) {
            this.extra.put(str, str2);
            return;
        }
        this.logger.log("error", "Property name invalid: " + str, new Object[0]);
    }
}
