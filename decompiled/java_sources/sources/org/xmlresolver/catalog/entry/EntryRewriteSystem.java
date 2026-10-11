package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class EntryRewriteSystem extends Entry {
    public final URI rewritePrefix;
    public final String systemIdStart;

    public EntryRewriteSystem(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str);
        if (str2.startsWith("classpath:/")) {
            this.systemIdStart = "classpath:" + str2.substring(11);
        } else {
            this.systemIdStart = str2;
        }
        this.rewritePrefix = URIUtils.resolve(uri, str3);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.REWRITE_SYSTEM;
    }

    public String toString() {
        return "rewriteSystem " + this.systemIdStart + Entry.rarr + this.rewritePrefix;
    }
}
