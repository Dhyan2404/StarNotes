package org.xmlresolver;

import java.net.URI;

/* loaded from: classes16.dex */
public interface XMLCatalogResolver {
    URI lookupDoctype(String str, String str2, String str3);

    URI lookupDocument();

    URI lookupEntity(String str, String str2, String str3);

    URI lookupNotation(String str, String str2, String str3);

    URI lookupPublic(String str, String str2);

    URI lookupSystem(String str);

    URI lookupURI(String str);
}
