package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public abstract class EntryResource extends Entry {
    public final URI uri;

    public EntryResource(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2) {
        super(resolverConfiguration, uri, str);
        this.uri = URIUtils.resolve(uri, str2);
    }
}
