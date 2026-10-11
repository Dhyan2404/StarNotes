package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntrySgmldecl extends EntryResource {
    public EntrySgmldecl(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2) {
        super(resolverConfiguration, uri, str, str2);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.SGML_DECL;
    }

    public String toString() {
        return "sgmldecl " + this.uri;
    }
}
