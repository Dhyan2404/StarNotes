package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class EntryDelegateSystem extends Entry {
    public final URI catalog;
    public final String systemIdStart;

    public EntryDelegateSystem(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str);
        if (str2.startsWith("classpath:/")) {
            this.systemIdStart = "classpath:" + str2.substring(11);
        } else {
            this.systemIdStart = str2;
        }
        this.catalog = URIUtils.resolve(uri, str3);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.DELEGATE_SYSTEM;
    }

    public String toString() {
        return "delegateSystem " + this.systemIdStart + Entry.rarr + this.catalog;
    }
}
