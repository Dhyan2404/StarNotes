package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class EntryUriSuffix extends Entry {
    public final URI uri;
    public final String uriSuffix;

    public EntryUriSuffix(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str);
        this.uriSuffix = str2;
        this.uri = URIUtils.resolve(uri, str3);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.URI_SUFFIX;
    }

    public String toString() {
        return "uriSuffix " + this.uriSuffix + Entry.rarr + this.uri;
    }
}
