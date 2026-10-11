package com.sun.org.apache.xml.internal.utils;

import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public interface PrefixResolver {
    String getBaseIdentifier();

    String getNamespaceForPrefix(String str);

    String getNamespaceForPrefix(String str, Node node);

    boolean handlesNullPrefixes();
}
