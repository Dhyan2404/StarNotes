package org.xmlresolver;

/* loaded from: classes16.dex */
public interface ResourceResolver {
    ResolverConfiguration getConfiguration();

    ResolvedResource resolveEntity(String str, String str2, String str3, String str4);

    ResolvedResource resolveNamespace(String str, String str2, String str3, String str4);

    ResolvedResource resolveURI(String str, String str2);
}
