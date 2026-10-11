package com.sun.org.apache.xalan.internal.lib;

import com.sun.org.apache.xml.internal.utils.DOMHelper;
import com.sun.org.apache.xpath.internal.NodeSet;
import java.util.Hashtable;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class ExsltSets extends ExsltBase {
    public static NodeList difference(NodeList nodeList, NodeList nodeList2) {
        NodeSet nodeSet = new NodeSet(nodeList);
        NodeSet nodeSet2 = new NodeSet(nodeList2);
        NodeSet nodeSet3 = new NodeSet();
        nodeSet3.setShouldCacheNodes(true);
        for (int i = 0; i < nodeSet.getLength(); i++) {
            Node elementAt = nodeSet.elementAt(i);
            if (!nodeSet2.contains(elementAt)) {
                nodeSet3.addElement(elementAt);
            }
        }
        return nodeSet3;
    }

    public static NodeList distinct(NodeList nodeList) {
        NodeSet nodeSet = new NodeSet();
        nodeSet.setShouldCacheNodes(true);
        Hashtable hashtable = new Hashtable();
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            String exsltBase = ExsltBase.toString(item);
            if (exsltBase == null) {
                nodeSet.addElement(item);
            } else if (!hashtable.containsKey(exsltBase)) {
                hashtable.put(exsltBase, item);
                nodeSet.addElement(item);
            }
        }
        return nodeSet;
    }

    public static boolean hasSameNode(NodeList nodeList, NodeList nodeList2) {
        NodeSet nodeSet = new NodeSet(nodeList);
        NodeSet nodeSet2 = new NodeSet(nodeList2);
        for (int i = 0; i < nodeSet.getLength(); i++) {
            if (nodeSet2.contains(nodeSet.elementAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static NodeList intersection(NodeList nodeList, NodeList nodeList2) {
        NodeSet nodeSet = new NodeSet(nodeList);
        NodeSet nodeSet2 = new NodeSet(nodeList2);
        NodeSet nodeSet3 = new NodeSet();
        nodeSet3.setShouldCacheNodes(true);
        for (int i = 0; i < nodeSet.getLength(); i++) {
            Node elementAt = nodeSet.elementAt(i);
            if (nodeSet2.contains(elementAt)) {
                nodeSet3.addElement(elementAt);
            }
        }
        return nodeSet3;
    }

    public static NodeList leading(NodeList nodeList, NodeList nodeList2) {
        if (nodeList2.getLength() == 0) {
            return nodeList;
        }
        NodeSet nodeSet = new NodeSet(nodeList);
        NodeSet nodeSet2 = new NodeSet();
        Node item = nodeList2.item(0);
        if (!nodeSet.contains(item)) {
            return nodeSet2;
        }
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item2 = nodeList.item(i);
            if (DOMHelper.isNodeAfter(item2, item) && !DOMHelper.isNodeTheSame(item2, item)) {
                nodeSet2.addElement(item2);
            }
        }
        return nodeSet2;
    }

    public static NodeList trailing(NodeList nodeList, NodeList nodeList2) {
        if (nodeList2.getLength() == 0) {
            return nodeList;
        }
        NodeSet nodeSet = new NodeSet(nodeList);
        NodeSet nodeSet2 = new NodeSet();
        Node item = nodeList2.item(0);
        if (!nodeSet.contains(item)) {
            return nodeSet2;
        }
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item2 = nodeList.item(i);
            if (DOMHelper.isNodeAfter(item, item2) && !DOMHelper.isNodeTheSame(item, item2)) {
                nodeSet2.addElement(item2);
            }
        }
        return nodeSet2;
    }
}
