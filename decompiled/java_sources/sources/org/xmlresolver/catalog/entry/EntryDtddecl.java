package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryDtddecl extends EntryResource {
    public final String publicId;

    public EntryDtddecl(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str, str3);
        this.publicId = str2;
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.DTD_DECL;
    }

    public String toString() {
        return "dtddecl " + this.publicId + Entry.rarr + this.uri;
    }
}
