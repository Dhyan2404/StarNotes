package com.sun.org.apache.xml.internal.utils;

import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class PrefixResolverDefault implements PrefixResolver {
    Node m_context;

    public PrefixResolverDefault(Node node) {
        this.m_context = node;
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getBaseIdentifier() {
        return null;
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getNamespaceForPrefix(String str) {
        return getNamespaceForPrefix(str, this.m_context);
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public boolean handlesNullPrefixes() {
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
    public String getNamespaceForPrefix(String str, Node node) {
        if (str.equals("xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        String str2 = null;
        while (node != null && str2 == null) {
            short nodeType = node.getNodeType();
            if (nodeType != 1 && nodeType != 5) {
                return str2;
            }
            if (nodeType == 1) {
                if (node.getNodeName().indexOf(str + ":") == 0) {
                    return node.getNamespaceURI();
                }
                NamedNodeMap attributes = node.getAttributes();
                int i = 0;
                while (true) {
                    if (i >= attributes.getLength()) {
                        break;
                    }
                    Node item = attributes.item(i);
                    String nodeName = item.getNodeName();
                    boolean startsWith = nodeName.startsWith("xmlns:");
                    if (startsWith || nodeName.equals("xmlns")) {
                        if ((startsWith ? nodeName.substring(nodeName.indexOf(58) + 1) : "").equals(str)) {
                            str2 = item.getNodeValue();
                            break;
                        }
                    }
                    i++;
                }
            }
            node = node.getParentNode();
        }
        return str2;
    }
}
