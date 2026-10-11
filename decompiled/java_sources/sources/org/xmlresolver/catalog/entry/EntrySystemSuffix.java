package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class EntrySystemSuffix extends Entry {
    public final String systemIdSuffix;
    public final URI uri;

    public EntrySystemSuffix(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str);
        this.systemIdSuffix = str2;
        this.uri = URIUtils.resolve(uri, str3);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.SYSTEM_SUFFIX;
    }

    public String toString() {
        return "systemSuffix " + this.systemIdSuffix + Entry.rarr + this.uri;
    }
}
