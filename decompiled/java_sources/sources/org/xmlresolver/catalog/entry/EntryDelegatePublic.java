package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class EntryDelegatePublic extends Entry {
    public final URI catalog;
    public final boolean preferPublic;
    public final String publicIdStart;

    public EntryDelegatePublic(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3, boolean z) {
        super(resolverConfiguration, uri, str);
        this.publicIdStart = str2;
        this.catalog = URIUtils.resolve(uri, str3);
        this.preferPublic = z;
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.DELEGATE_PUBLIC;
    }

    public String toString() {
        return "delegatePublic " + this.publicIdStart + Entry.rarr + this.catalog;
    }
}
