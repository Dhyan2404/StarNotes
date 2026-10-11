package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryNotation extends EntryResource {
    public final String name;

    public EntryNotation(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str, str3);
        this.name = str2;
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.NOTATION;
    }

    public String toString() {
        return "notation " + this.name + Entry.rarr + this.uri;
    }
}
