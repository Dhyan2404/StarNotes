package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryPublic extends EntryResource {
    public final boolean preferPublic;
    public final String publicId;

    public EntryPublic(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3, boolean z) {
        super(resolverConfiguration, uri, str, str3);
        this.publicId = str2;
        this.preferPublic = z;
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.PUBLIC;
    }

    public String toString() {
        return "public " + this.publicId + Entry.rarr + this.uri;
    }
}
