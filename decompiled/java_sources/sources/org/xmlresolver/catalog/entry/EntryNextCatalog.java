package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class EntryNextCatalog extends Entry {
    public final URI catalog;

    public EntryNextCatalog(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2) {
        super(resolverConfiguration, uri, str);
        this.catalog = URIUtils.resolve(uri, str2);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.NEXT_CATALOG;
    }

    public String toString() {
        return "nextCatalog " + this.catalog;
    }
}
