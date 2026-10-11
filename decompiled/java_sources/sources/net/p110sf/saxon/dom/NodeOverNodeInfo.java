package net.p110sf.saxon.dom;

import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.GenericAtomicComparer;
import net.p110sf.saxon.functions.DeepEqual;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import org.scribe.oauth.OAuth20ServiceImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.UserDataHandler;

/* loaded from: classes11.dex */
public abstract class NodeOverNodeInfo implements Node {
    protected NodeInfo node;

    public static void disallowUpdate() throws DOMException {
        throw new DOMException((short) 7, "The Saxon DOM implementation cannot be updated");
    }

    public static NodeOverNodeInfo wrap(NodeInfo nodeInfo) {
        NodeOverNodeInfo elementOverNodeInfo;
        if (nodeInfo == null) {
            return null;
        }
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            elementOverNodeInfo = new ElementOverNodeInfo();
        } else if (nodeKind != 2) {
            if (nodeKind != 3) {
                if (nodeKind == 7) {
                    elementOverNodeInfo = new PIOverNodeInfo();
                } else if (nodeKind != 8) {
                    if (nodeKind == 9) {
                        elementOverNodeInfo = new DocumentOverNodeInfo();
                    } else {
                        if (nodeKind != 13) {
                            return null;
                        }
                        elementOverNodeInfo = new AttrOverNodeInfo();
                    }
                }
            }
            elementOverNodeInfo = new TextOverNodeInfo();
        } else {
            elementOverNodeInfo = new AttrOverNodeInfo();
        }
        elementOverNodeInfo.node = nodeInfo;
        return elementOverNodeInfo;
    }

    @Override // org.w3c.dom.Node
    public Node appendChild(Node node) throws DOMException {
        disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Node
    public short compareDocumentPosition(Node node) throws DOMException {
        if (!(node instanceof NodeOverNodeInfo)) {
            return (short) 1;
        }
        int compareOrder = this.node.compareOrder(((NodeOverNodeInfo) node).node);
        if (compareOrder == 0) {
            return (short) 0;
        }
        if (compareOrder == -1) {
            short compareDocumentPosition = compareDocumentPosition(node.getParentNode());
            if (compareDocumentPosition == 0 || (compareDocumentPosition & 16) != 0) {
                return (short) 20;
            }
            return (short) 4;
        }
        if (compareOrder != 1) {
            throw new AssertionError();
        }
        short compareDocumentPosition2 = getParentNode().compareDocumentPosition(node);
        if (compareDocumentPosition2 == 0 || (compareDocumentPosition2 & 8) != 0) {
            return (short) 10;
        }
        return (short) 2;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Node) && isSameNode((Node) obj);
    }

    @Override // org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public String getBaseURI() {
        return this.node.getBaseURI();
    }

    @Override // org.w3c.dom.Node
    public NodeList getChildNodes() {
        ArrayList arrayList = new ArrayList(10);
        Iterator<? extends NodeInfo> it2 = this.node.children().iterator();
        while (it2.hasNext()) {
            arrayList.add(wrap(it2.next()));
        }
        return new DOMNodeList(arrayList);
    }

    @Override // org.w3c.dom.Node
    public Object getFeature(String str, String str2) {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node getFirstChild() {
        return wrap(this.node.iterateAxis(3).next());
    }

    @Override // org.w3c.dom.Node
    public Node getLastChild() {
        AxisIterator iterateAxis = this.node.iterateAxis(3);
        NodeInfo nodeInfo = null;
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return wrap(nodeInfo);
            }
            nodeInfo = next;
        }
    }

    @Override // org.w3c.dom.Node
    public String getLocalName() {
        int nodeKind = this.node.getNodeKind();
        if (nodeKind == 1 || nodeKind == 2) {
            return this.node.getLocalPart();
        }
        if (nodeKind != 13) {
            return null;
        }
        return this.node.getLocalPart().isEmpty() ? "xmlns" : this.node.getLocalPart();
    }

    @Override // org.w3c.dom.Node
    public String getNamespaceURI() {
        if (this.node.getNodeKind() == 13) {
            return "http://www.w3.org/2000/xmlns/";
        }
        String uri = this.node.getURI();
        if ("".equals(uri)) {
            return null;
        }
        return uri;
    }

    @Override // org.w3c.dom.Node
    public Node getNextSibling() {
        return wrap(this.node.iterateAxis(7).next());
    }

    @Override // org.w3c.dom.Node
    public String getNodeName() {
        int nodeKind = this.node.getNodeKind();
        if (nodeKind != 1 && nodeKind != 2) {
            if (nodeKind == 3) {
                return PsuedoNames.PSEUDONAME_TEXT;
            }
            if (nodeKind == 7) {
                return this.node.getLocalPart();
            }
            if (nodeKind == 8) {
                return PsuedoNames.PSEUDONAME_COMMENT;
            }
            if (nodeKind == 9) {
                return "#document";
            }
            if (nodeKind != 13) {
                return "#unknown";
            }
            if (this.node.getLocalPart().isEmpty()) {
                return "xmlns";
            }
            return "xmlns:" + this.node.getLocalPart();
        }
        return this.node.getDisplayName();
    }

    @Override // org.w3c.dom.Node
    public short getNodeType() {
        short nodeKind = (short) this.node.getNodeKind();
        if (nodeKind == 13) {
            return (short) 2;
        }
        return nodeKind;
    }

    @Override // org.w3c.dom.Node
    public String getNodeValue() {
        int nodeKind = this.node.getNodeKind();
        if (nodeKind == 2 || nodeKind == 3 || nodeKind == 7 || nodeKind == 8 || nodeKind == 13) {
            return this.node.getStringValue();
        }
        return null;
    }

    @Override // org.w3c.dom.Node
    public Document getOwnerDocument() {
        return (Document) wrap(this.node.getRoot());
    }

    @Override // org.w3c.dom.Node
    public Node getParentNode() {
        return wrap(this.node.getParent());
    }

    @Override // org.w3c.dom.Node
    public String getPrefix() {
        if (this.node.getNodeKind() == 13) {
            if (this.node.getLocalPart().isEmpty()) {
                return null;
            }
            return "xmlns";
        }
        String prefix = this.node.getPrefix();
        if ("".equals(prefix)) {
            return null;
        }
        return prefix;
    }

    @Override // org.w3c.dom.Node
    public Node getPreviousSibling() {
        return wrap(this.node.iterateAxis(11).next());
    }

    @Override // org.w3c.dom.Node
    public String getTextContent() throws DOMException {
        if (this.node.getNodeKind() == 9) {
            return null;
        }
        return this.node.getStringValue();
    }

    public NodeInfo getUnderlyingNodeInfo() {
        return this.node;
    }

    @Override // org.w3c.dom.Node
    public Object getUserData(String str) {
        return null;
    }

    @Override // org.w3c.dom.Node
    public boolean hasAttributes() {
        return true;
    }

    @Override // org.w3c.dom.Node
    public boolean hasChildNodes() {
        return this.node.hasChildNodes();
    }

    public int hashCode() {
        return this.node.hashCode();
    }

    @Override // org.w3c.dom.Node
    public Node insertBefore(Node node, Node node2) throws DOMException {
        disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Node
    public boolean isDefaultNamespace(String str) {
        return str.equals(lookupNamespaceURI(""));
    }

    @Override // org.w3c.dom.Node
    public boolean isEqualNode(Node node) {
        if (!(node instanceof NodeOverNodeInfo)) {
            throw new IllegalArgumentException("Other Node must wrap a Saxon NodeInfo");
        }
        try {
            XPathContext conversionContext = this.node.getConfiguration().getConversionContext();
            return DeepEqual.deepEqual(SingletonIterator.makeIterator(this.node), SingletonIterator.makeIterator(((NodeOverNodeInfo) node).node), new GenericAtomicComparer(CodepointCollator.getInstance(), conversionContext), conversionContext, 46);
        } catch (XPathException unused) {
            return false;
        }
    }

    @Override // org.w3c.dom.Node
    public final boolean isSameNode(Node node) {
        return (node instanceof NodeOverNodeInfo) && this.node.equals(((NodeOverNodeInfo) node).node);
    }

    @Override // org.w3c.dom.Node
    public boolean isSupported(String str, String str2) {
        return (str.equalsIgnoreCase("XML") || str.equalsIgnoreCase("Core")) && (str2 == null || str2.isEmpty() || str2.equals(XQueryParser.XQUERY30) || str2.equals(OAuth20ServiceImpl.f115984c) || str2.equals("1.0"));
    }

    @Override // org.w3c.dom.Node
    public String lookupNamespaceURI(String str) {
        NodeInfo next;
        if (this.node.getNodeKind() == 9) {
            return null;
        }
        if (this.node.getNodeKind() != 1) {
            return getParentNode().lookupNamespaceURI(str);
        }
        AxisIterator iterateAxis = this.node.iterateAxis(8);
        do {
            next = iterateAxis.next();
            if (next == null) {
                return null;
            }
        } while (!next.getLocalPart().equals(str));
        return next.getStringValue();
    }

    @Override // org.w3c.dom.Node
    public String lookupPrefix(String str) {
        NodeInfo next;
        if (this.node.getNodeKind() == 9) {
            return null;
        }
        if (this.node.getNodeKind() != 1) {
            return getParentNode().lookupPrefix(str);
        }
        AxisIterator iterateAxis = this.node.iterateAxis(8);
        do {
            next = iterateAxis.next();
            if (next == null) {
                return null;
            }
        } while (!next.getUnicodeStringValue().equals(str));
        return next.getLocalPart();
    }

    @Override // org.w3c.dom.Node
    public void normalize() {
    }

    @Override // org.w3c.dom.Node
    public Node removeChild(Node node) throws DOMException {
        disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node replaceChild(Node node, Node node2) throws DOMException {
        disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Node
    public void setNodeValue(String str) throws DOMException {
        disallowUpdate();
    }

    @Override // org.w3c.dom.Node
    public void setPrefix(String str) throws DOMException {
        disallowUpdate();
    }

    @Override // org.w3c.dom.Node
    public void setTextContent(String str) throws UnsupportedOperationException {
        disallowUpdate();
    }

    @Override // org.w3c.dom.Node
    public Object setUserData(String str, Object obj, UserDataHandler userDataHandler) {
        disallowUpdate();
        return null;
    }
}
