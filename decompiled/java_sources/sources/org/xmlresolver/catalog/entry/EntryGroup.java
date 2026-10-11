package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryGroup extends Entry {
    public final boolean preferPublic;

    public EntryGroup(ResolverConfiguration resolverConfiguration, URI uri, String str, boolean z) {
        super(resolverConfiguration, uri, str);
        this.preferPublic = z;
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.GROUP;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("group prefer=");
        sb.append(this.preferPublic ? "public" : "system");
        return sb.toString();
    }
}
