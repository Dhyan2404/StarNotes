package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class EntryDelegateUri extends Entry {
    public final URI catalog;
    public final String uriStart;

    public EntryDelegateUri(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str);
        if (str2.startsWith("classpath:/")) {
            this.uriStart = "classpath:" + str2.substring(11);
        } else {
            this.uriStart = str2;
        }
        this.catalog = URIUtils.resolve(uri, str3);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.DELEGATE_URI;
    }

    public String toString() {
        return "delegateURI " + this.uriStart + Entry.rarr + this.catalog;
    }
}
