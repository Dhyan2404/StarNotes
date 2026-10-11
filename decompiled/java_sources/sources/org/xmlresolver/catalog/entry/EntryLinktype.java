package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryLinktype extends EntryResource {
    public final String name;

    public EntryLinktype(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str, str3);
        this.name = str2;
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.LINKTYPE;
    }

    public String toString() {
        return "linktype " + this.name + Entry.rarr + this.uri;
    }
}
