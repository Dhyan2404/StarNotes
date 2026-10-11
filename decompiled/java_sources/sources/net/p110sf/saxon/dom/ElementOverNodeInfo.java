package net.p110sf.saxon.dom;

import com.sunia.HTREnginev2.oqe;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.TypeInfo;

/* loaded from: classes11.dex */
public class ElementOverNodeInfo extends NodeOverNodeInfo implements Element {

    /* renamed from: e */
    public oqe f98918e = null;

    @Override // org.w3c.dom.Element
    public String getAttribute(String str) {
        NodeInfo next;
        if (str.startsWith("xmlns")) {
            Node namedItem = getAttributes().getNamedItem(str);
            return namedItem == null ? "" : namedItem.getNodeValue();
        }
        AxisIterator iterateAxis = this.node.iterateAxis(2);
        do {
            next = iterateAxis.next();
            if (next == null) {
                return "";
            }
        } while (!next.getDisplayName().equals(str));
        String stringValue = next.getStringValue();
        return stringValue == null ? "" : stringValue;
    }

    @Override // org.w3c.dom.Element
    public String getAttributeNS(String str, String str2) {
        if ("http://www.w3.org/2000/xmlns/".equals(str)) {
            Node namedItemNS = getAttributes().getNamedItemNS(str, str2);
            return namedItemNS == null ? "" : namedItemNS.getNodeValue();
        }
        if (str == null) {
            str = "";
        }
        String attributeValue = this.node.getAttributeValue(str, str2);
        return attributeValue == null ? "" : attributeValue;
    }

    @Override // org.w3c.dom.Element
    public Attr getAttributeNode(String str) {
        NodeInfo next;
        AxisIterator iterateAxis = this.node.iterateAxis(2);
        do {
            next = iterateAxis.next();
            if (next == null) {
                return null;
            }
        } while (!next.getDisplayName().equals(str));
        return (AttrOverNodeInfo) NodeOverNodeInfo.wrap(next);
    }

    @Override // org.w3c.dom.Element
    public Attr getAttributeNodeNS(String str, String str2) {
        return (Attr) NodeOverNodeInfo.wrap(this.node.iterateAxis(2, new NameTest(2, str, str2, this.node.getConfiguration().getNamePool())).next());
    }

    @Override // net.p110sf.saxon.dom.NodeOverNodeInfo, org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        if (this.f98918e == null) {
            this.f98918e = new oqe(this.node);
        }
        return this.f98918e;
    }

    @Override // org.w3c.dom.Element
    public NodeList getElementsByTagName(String str) {
        return DocumentOverNodeInfo.getElementsByTagName(this.node, str);
    }

    @Override // org.w3c.dom.Element
    public NodeList getElementsByTagNameNS(String str, String str2) throws DOMException {
        return DocumentOverNodeInfo.getElementsByTagNameNS(this.node, str, str2);
    }

    @Override // org.w3c.dom.Element
    public TypeInfo getSchemaTypeInfo() {
        SchemaType schemaType = this.node.getSchemaType();
        if (schemaType == null || Untyped.getInstance().equals(schemaType) || BuiltInAtomicType.UNTYPED_ATOMIC.equals(schemaType)) {
            return null;
        }
        return new TypeInfoImpl(this.node.getConfiguration(), schemaType);
    }

    @Override // org.w3c.dom.Element
    public String getTagName() {
        return this.node.getDisplayName();
    }

    @Override // org.w3c.dom.Element
    public boolean hasAttribute(String str) {
        NodeInfo next;
        if (str.startsWith("xmlns")) {
            return getAttributes().getNamedItem(str) != null;
        }
        AxisIterator iterateAxis = this.node.iterateAxis(2);
        do {
            next = iterateAxis.next();
            if (next == null) {
                return false;
            }
        } while (!next.getDisplayName().equals(str));
        return true;
    }

    @Override // org.w3c.dom.Element
    public boolean hasAttributeNS(String str, String str2) {
        if ("http://www.w3.org/2000/xmlns/".equals(str)) {
            return getAttributes().getNamedItemNS(str, str2) != null;
        }
        if (str == null) {
            str = "";
        }
        return this.node.getAttributeValue(str, str2) != null;
    }

    @Override // org.w3c.dom.Element
    public void removeAttribute(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Element
    public void removeAttributeNS(String str, String str2) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Element
    public Attr removeAttributeNode(Attr attr) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Element
    public void setAttribute(String str, String str2) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Element
    public void setAttributeNS(String str, String str2, String str3) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Element
    public Attr setAttributeNode(Attr attr) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Element
    public Attr setAttributeNodeNS(Attr attr) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.Element
    public void setIdAttribute(String str, boolean z) throws UnsupportedOperationException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Element
    public void setIdAttributeNS(String str, String str2, boolean z) throws UnsupportedOperationException {
        NodeOverNodeInfo.disallowUpdate();
    }

    @Override // org.w3c.dom.Element
    public void setIdAttributeNode(Attr attr, boolean z) throws UnsupportedOperationException {
        NodeOverNodeInfo.disallowUpdate();
    }
}
