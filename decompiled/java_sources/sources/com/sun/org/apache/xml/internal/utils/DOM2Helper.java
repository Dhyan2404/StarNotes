package com.sun.org.apache.xml.internal.utils;

import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class DOM2Helper extends DOMHelper {
    private Document m_doc;

    public static Node getParentOfNode(Node node) {
        Node parentNode = node.getParentNode();
        return (parentNode == null && 2 == node.getNodeType()) ? ((Attr) node).getOwnerElement() : parentNode;
    }

    public static boolean isNodeAfter(Node node, Node node2) {
        return ((node instanceof DOMOrder) && (node2 instanceof DOMOrder)) ? ((DOMOrder) node).getUid() <= ((DOMOrder) node2).getUid() : DOMHelper.isNodeAfter(node, node2);
    }

    public void checkNode(Node node) throws TransformerException {
    }

    public Document getDocument() {
        return this.m_doc;
    }

    @Override // com.sun.org.apache.xml.internal.utils.DOMHelper
    public Element getElementByID(String str, Document document) {
        return document.getElementById(str);
    }

    @Override // com.sun.org.apache.xml.internal.utils.DOMHelper
    public String getLocalNameOfNode(Node node) {
        String localName = node.getLocalName();
        return localName == null ? super.getLocalNameOfNode(node) : localName;
    }

    @Override // com.sun.org.apache.xml.internal.utils.DOMHelper
    public String getNamespaceOfNode(Node node) {
        return node.getNamespaceURI();
    }

    public void parse(InputSource inputSource) throws TransformerException {
        try {
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            newInstance.setValidating(true);
            DocumentBuilder newDocumentBuilder = newInstance.newDocumentBuilder();
            newDocumentBuilder.setErrorHandler(new DefaultErrorHandler());
            setDocument(newDocumentBuilder.parse(inputSource));
        } catch (IOException e) {
            throw new TransformerException(e);
        } catch (ParserConfigurationException e2) {
            throw new TransformerException(e2);
        } catch (SAXException e3) {
            throw new TransformerException(e3);
        }
    }

    public void setDocument(Document document) {
        this.m_doc = document;
    }

    public boolean supportsSAX() {
        return true;
    }
}
