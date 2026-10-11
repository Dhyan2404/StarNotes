package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryDocument extends EntryResource {
    public EntryDocument(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2) {
        super(resolverConfiguration, uri, str, str2);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.DOCUMENT;
    }

    public String toString() {
        return "document " + Entry.rarr + this.uri;
    }
}
