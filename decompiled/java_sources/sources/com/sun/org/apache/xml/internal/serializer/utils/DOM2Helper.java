package com.sun.org.apache.xml.internal.serializer.utils;

import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public final class DOM2Helper {
    private String getLocalNameOfNodeFallback(Node node) {
        String nodeName = node.getNodeName();
        int indexOf = nodeName.indexOf(58);
        return indexOf < 0 ? nodeName : nodeName.substring(indexOf + 1);
    }

    public String getLocalNameOfNode(Node node) {
        String localName = node.getLocalName();
        return localName == null ? getLocalNameOfNodeFallback(node) : localName;
    }

    public String getNamespaceOfNode(Node node) {
        return node.getNamespaceURI();
    }
}
