package com.thegrizzlylabs.sardineandroid.util;

import javax.xml.namespace.QName;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
public class ElementConverter {
    public static Element read(InputNode inputNode) throws Exception {
        Element createElement = SardineUtil.createElement(new QName(inputNode.getReference(), inputNode.getName(), inputNode.getPrefix()));
        createElement.setTextContent(inputNode.getValue());
        return createElement;
    }

    public static void write(OutputNode outputNode, Element element) throws Exception {
        OutputNode child = outputNode.getChild(element.getNodeName());
        child.getNamespaces().setReference(element.getNamespaceURI(), element.getPrefix());
        child.setValue(element.getTextContent());
        child.commit();
    }
}
