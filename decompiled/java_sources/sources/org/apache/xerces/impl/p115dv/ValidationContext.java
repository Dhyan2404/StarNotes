package org.apache.xerces.impl.p115dv;

import java.util.Locale;

/* loaded from: classes13.dex */
public interface ValidationContext {
    void addId(String str);

    void addIdRef(String str);

    Locale getLocale();

    String getSymbol(String str);

    String getURI(String str);

    boolean isEntityDeclared(String str);

    boolean isEntityUnparsed(String str);

    boolean isIdDeclared(String str);

    boolean needExtraChecking();

    boolean needFacetChecking();

    boolean needToNormalize();

    boolean useNamespaces();
}
