package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryNull extends Entry {
    public EntryNull(ResolverConfiguration resolverConfiguration) {
        super(resolverConfiguration, URI.create("http://xmlresolver.org/irrelevant"), null);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.NULL;
    }

    public String toString() {
        return "null entry (not a catalog element)";
    }
}
