package net.p110sf.saxon.dom;

import com.sunia.HTREnginev2.qqe;
import java.util.ArrayList;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.tree.iter.AxisIterator;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.EntityReference;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

/* loaded from: classes11.dex */
public class DocumentOverNodeInfo extends NodeOverNodeInfo implements Document {
    @Override // org.w3c.dom.Document
    public Node adoptNode(Node node) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public Attr createAttribute(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public Attr createAttributeNS(String str, String str2) throws UnsupportedOperationException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public CDATASection createCDATASection(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public Comment createComment(String str) {
        return null;
    }

    @Override // org.w3c.dom.Document
    public DocumentFragment createDocumentFragment() {
        return null;
    }

    @Override // org.w3c.dom.Document
    public Element createElement(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public Element createElementNS(String str, String str2) throws UnsupportedOperationException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public EntityReference createEntityReference(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public ProcessingInstruction createProcessingInstruction(String str, String str2) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public Text createTextNode(String str) {
        return null;
    }

    @Override // org.w3c.dom.Document
    public DocumentType getDoctype() {
        return null;
    }

    @Override // org.w3c.dom.Document
    public Element getDocumentElement() {
        NodeInfo root = this.node.getRoot();
        if (root == null) {
            return null;
        }
        return (Element) NodeOverNodeInfo.wrap(root.iterateAxis(3, NodeKindTest.ELEMENT).next());
    }

    @Override // org.w3c.dom.Document
    public String getDocumentURI() {
        return this.node.getSystemId();
    }

    @Override // org.w3c.dom.Document
    public DOMConfiguration getDomConfig() {
        return null;
    }

    @Override // org.w3c.dom.Document, org.w3c.dom.html.HTMLDocument
    public Element getElementById(String str) {
        TreeInfo treeInfo = this.node.getTreeInfo();
        if (treeInfo == null) {
            return null;
        }
        return (Element) NodeOverNodeInfo.wrap(treeInfo.selectID(str, false));
    }

    @Override // org.w3c.dom.Document
    public NodeList getElementsByTagName(String str) {
        return getElementsByTagName(this.node, str);
    }

    @Override // org.w3c.dom.Document
    public NodeList getElementsByTagNameNS(String str, String str2) {
        return getElementsByTagNameNS(this.node, str, str2);
    }

    @Override // org.w3c.dom.Document
    public DOMImplementation getImplementation() {
        return new qqe();
    }

    @Override // org.w3c.dom.Document
    public String getInputEncoding() {
        return null;
    }

    @Override // org.w3c.dom.Document
    public boolean getStrictErrorChecking() {
        return false;
    }

    @Override // org.w3c.dom.Document
    public String getXmlEncoding() {
        return null;
    }

    @Override // org.w3c.dom.Document
    public boolean getXmlStandalone() {
        return false;
    }

    @Override // org.w3c.dom.Document
    public String getXmlVersion() {
        return "1.0";
    }

    @Override // org.w3c.dom.Document
    public Node importNode(Node node, boolean z) throws UnsupportedOperationException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public void normalizeDocument() throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Document
    public Node renameNode(Node node, String str, String str2) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Document
    public void setDocumentURI(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Document
    public void setStrictErrorChecking(boolean z) {
    }

    @Override // org.w3c.dom.Document
    public void setXmlStandalone(boolean z) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Document
    public void setXmlVersion(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    public static NodeList getElementsByTagName(NodeInfo nodeInfo, String str) {
        AxisIterator iterateAxis = nodeInfo.iterateAxis(4);
        ArrayList arrayList = new ArrayList(100);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return new DOMNodeList(arrayList);
            }
            if (next.getNodeKind() == 1 && (str.equals("*") || str.equals(next.getDisplayName()))) {
                arrayList.add(NodeOverNodeInfo.wrap(next));
            }
        }
    }

    public static NodeList getElementsByTagNameNS(NodeInfo nodeInfo, String str, String str2) {
        if (str == null) {
            str = "";
        }
        AxisIterator iterateAxis = nodeInfo.iterateAxis(4);
        ArrayList arrayList = new ArrayList(100);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return new DOMNodeList(arrayList);
            }
            if (next.getNodeKind() == 1 && (str.equals("*") || str.equals(next.getURI()))) {
                if (str2.equals("*") || str2.equals(next.getLocalPart())) {
                    arrayList.add(NodeOverNodeInfo.wrap(next));
                }
            }
        }
    }
}
