package com.sun.org.apache.xerces.internal.impl.p053dv;

/* loaded from: classes10.dex */
public interface ValidationContext {
    void addId(String str);

    void addIdRef(String str);

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
