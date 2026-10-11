package org.xmlresolver.catalog.entry;

import com.google.android.material.motion.MotionUtils;
import java.net.URI;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryUri extends EntryResource {
    public final String name;
    public final String nature;
    public final String purpose;

    public EntryUri(ResolverConfiguration resolverConfiguration, URI uri, String str, String str2, String str3, String str4, String str5) {
        super(resolverConfiguration, uri, str, str3);
        if (str2.startsWith("classpath:/")) {
            this.name = "classpath:" + str2.substring(11);
        } else {
            this.name = str2;
        }
        this.nature = str4;
        this.purpose = str5;
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.URI;
    }

    public String toString() {
        String str = "uri " + this.name + Entry.rarr + this.uri;
        if (this.nature == null && this.purpose == null) {
            return str;
        }
        String str2 = str + " (";
        if (this.nature != null) {
            str2 = str2 + "nature=" + this.nature;
        }
        if (this.nature != null && this.purpose != null) {
            str2 = str2 + "; ";
        }
        if (this.purpose != null) {
            str2 = str2 + "purpose=" + this.purpose;
        }
        return str2 + MotionUtils.f31762d;
    }
}
