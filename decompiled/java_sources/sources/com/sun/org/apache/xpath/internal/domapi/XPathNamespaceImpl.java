package com.sun.org.apache.xpath.internal.domapi;

import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.UserDataHandler;
import org.w3c.dom.xpath.XPathNamespace;

/* loaded from: classes10.dex */
class XPathNamespaceImpl implements XPathNamespace {
    private final Node m_attributeNode;
    private String textContent;

    public XPathNamespaceImpl(Node node) {
        this.m_attributeNode = node;
    }

    @Override // org.w3c.dom.Node
    public Node appendChild(Node node) throws DOMException {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        throw new DOMException((short) 9, null);
    }

    @Override // org.w3c.dom.Node
    public short compareDocumentPosition(Node node) throws DOMException {
        return (short) 0;
    }

    @Override // org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        return this.m_attributeNode.getAttributes();
    }

    @Override // org.w3c.dom.Node
    public String getBaseURI() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public NodeList getChildNodes() {
        return this.m_attributeNode.getChildNodes();
    }

    @Override // org.w3c.dom.Node
    public Object getFeature(String str, String str2) {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node getFirstChild() {
        return this.m_attributeNode.getFirstChild();
    }

    @Override // org.w3c.dom.Node
    public Node getLastChild() {
        return this.m_attributeNode.getLastChild();
    }

    @Override // org.w3c.dom.Node
    public String getLocalName() {
        return this.m_attributeNode.getPrefix();
    }

    @Override // org.w3c.dom.Node
    public String getNamespaceURI() {
        return this.m_attributeNode.getNodeValue();
    }

    @Override // org.w3c.dom.Node
    public Node getNextSibling() {
        return this.m_attributeNode.getNextSibling();
    }

    @Override // org.w3c.dom.Node
    public String getNodeName() {
        return "#namespace";
    }

    @Override // org.w3c.dom.Node
    public short getNodeType() {
        return (short) 13;
    }

    @Override // org.w3c.dom.Node
    public String getNodeValue() throws DOMException {
        return this.m_attributeNode.getNodeValue();
    }

    @Override // org.w3c.dom.Node
    public Document getOwnerDocument() {
        return this.m_attributeNode.getOwnerDocument();
    }

    @Override // org.w3c.dom.xpath.XPathNamespace
    public Element getOwnerElement() {
        return ((Attr) this.m_attributeNode).getOwnerElement();
    }

    @Override // org.w3c.dom.Node
    public Node getParentNode() {
        return this.m_attributeNode.getParentNode();
    }

    @Override // org.w3c.dom.Node
    public String getPrefix() {
        return this.m_attributeNode.getPrefix();
    }

    @Override // org.w3c.dom.Node
    public Node getPreviousSibling() {
        return this.m_attributeNode.getPreviousSibling();
    }

    @Override // org.w3c.dom.Node
    public String getTextContent() throws DOMException {
        return this.textContent;
    }

    @Override // org.w3c.dom.Node
    public Object getUserData(String str) {
        return null;
    }

    @Override // org.w3c.dom.Node
    public boolean hasAttributes() {
        return this.m_attributeNode.hasAttributes();
    }

    @Override // org.w3c.dom.Node
    public boolean hasChildNodes() {
        return false;
    }

    @Override // org.w3c.dom.Node
    public Node insertBefore(Node node, Node node2) throws DOMException {
        return null;
    }

    @Override // org.w3c.dom.Node
    public boolean isDefaultNamespace(String str) {
        return false;
    }

    @Override // org.w3c.dom.Node
    public boolean isEqualNode(Node node) {
        return false;
    }

    @Override // org.w3c.dom.Node
    public boolean isSameNode(Node node) {
        return false;
    }

    @Override // org.w3c.dom.Node
    public boolean isSupported(String str, String str2) {
        return this.m_attributeNode.isSupported(str, str2);
    }

    @Override // org.w3c.dom.Node
    public String lookupNamespaceURI(String str) {
        return null;
    }

    @Override // org.w3c.dom.Node
    public String lookupPrefix(String str) {
        return "";
    }

    @Override // org.w3c.dom.Node
    public void normalize() {
        this.m_attributeNode.normalize();
    }

    @Override // org.w3c.dom.Node
    public Node removeChild(Node node) throws DOMException {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node replaceChild(Node node, Node node2) throws DOMException {
        return null;
    }

    @Override // org.w3c.dom.Node
    public void setNodeValue(String str) throws DOMException {
    }

    @Override // org.w3c.dom.Node
    public void setPrefix(String str) throws DOMException {
    }

    @Override // org.w3c.dom.Node
    public void setTextContent(String str) throws DOMException {
        this.textContent = str;
    }

    @Override // org.w3c.dom.Node
    public Object setUserData(String str, Object obj, UserDataHandler userDataHandler) {
        return null;
    }
}
