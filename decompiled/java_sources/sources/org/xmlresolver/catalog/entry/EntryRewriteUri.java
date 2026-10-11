package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class EntryRewriteUri extends Entry {
    public final URI rewritePrefix;
    public final String uriStart;

    public EntryRewriteUri(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str);
        if (str2.startsWith("classpath:/")) {
            this.uriStart = "classpath:" + str2.substring(11);
        } else {
            this.uriStart = str2;
        }
        this.rewritePrefix = URIUtils.resolve(uri, str3);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.REWRITE_URI;
    }

    public String toString() {
        return "rewriteURI " + this.uriStart + Entry.rarr + this.rewritePrefix;
    }
}
