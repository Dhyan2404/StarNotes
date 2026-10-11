package org.xmlresolver.catalog.entry;

import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntrySystem extends EntryResource {
    public final String systemId;

    public EntrySystem(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3) {
        super(resolverConfiguration, uri, str, str3);
        if (!str2.startsWith("classpath:/")) {
            this.systemId = str2;
            return;
        }
        this.systemId = "classpath:" + str2.substring(11);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.SYSTEM;
    }

    public String toString() {
        return "system " + this.systemId + Entry.rarr + this.uri;
    }
}
