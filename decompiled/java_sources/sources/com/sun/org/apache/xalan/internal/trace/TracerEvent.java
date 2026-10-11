package com.sun.org.apache.xalan.internal.trace;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.QName;
import java.util.EventListener;
import org.apache.commons.collections4.IteratorUtils;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class TracerEvent implements EventListener {
    public final QName m_mode;
    public final TransformerImpl m_processor;
    public final Node m_sourceNode;
    public final ElemTemplateElement m_styleNode;

    public TracerEvent(TransformerImpl transformerImpl, Node node, QName qName, ElemTemplateElement elemTemplateElement) {
        this.m_processor = transformerImpl;
        this.m_sourceNode = node;
        this.m_mode = qName;
        this.m_styleNode = elemTemplateElement;
    }

    public static String printNode(Node node) {
        String str = node.hashCode() + " ";
        if (!(node instanceof Element)) {
            if (!(node instanceof Attr)) {
                return str + node.getNodeName();
            }
            return str + node.getNodeName() + "=" + node.getNodeValue();
        }
        String str2 = str + "<" + node.getNodeName();
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof Attr) {
                str2 = str2 + printNode(firstChild) + " ";
            }
        }
        return str2 + ">";
    }

    public static String printNodeList(NodeList nodeList) {
        Node item;
        String str = nodeList.hashCode() + IteratorUtils.f104923a;
        int length = nodeList.getLength() - 1;
        int i = 0;
        while (i < length) {
            Node item2 = nodeList.item(i);
            if (item2 != null) {
                str = str + printNode(item2) + ", ";
            }
            i++;
        }
        if (i == length && (item = nodeList.item(length)) != null) {
            str = str + printNode(item);
        }
        return str + IteratorUtils.f104924b;
    }
}
