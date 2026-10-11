package net.p110sf.saxon.dom;

import java.util.ArrayList;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.TypeInfo;

/* loaded from: classes11.dex */
public class AttrOverNodeInfo extends NodeOverNodeInfo implements Attr {
    @Override // net.p110sf.saxon.dom.NodeOverNodeInfo, org.w3c.dom.Node
    public NodeList getChildNodes() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(getFirstChild());
        return new DOMNodeList(arrayList);
    }

    @Override // net.p110sf.saxon.dom.NodeOverNodeInfo, org.w3c.dom.Node
    public Node getFirstChild() {
        return new TextOverAttrInfo(this);
    }

    @Override // net.p110sf.saxon.dom.NodeOverNodeInfo, org.w3c.dom.Node
    public Node getLastChild() {
        return getFirstChild();
    }

    @Override // org.w3c.dom.Attr
    public String getName() {
        if (this.node.getNodeKind() != 13) {
            return this.node.getDisplayName();
        }
        String localPart = this.node.getLocalPart();
        if (localPart.equals("")) {
            return "xmlns";
        }
        return "xmlns:" + localPart;
    }

    @Override // org.w3c.dom.Attr
    public Element getOwnerElement() {
        if (this.node.getNodeKind() == 2 || this.node.getNodeKind() == 13) {
            return (Element) NodeOverNodeInfo.wrap(this.node.getParent());
        }
        throw new UnsupportedOperationException("This method is defined only on attribute and namespace nodes");
    }

    @Override // org.w3c.dom.Attr
    public TypeInfo getSchemaTypeInfo() {
        SchemaType schemaType = this.node.getSchemaType();
        if (schemaType == null || BuiltInAtomicType.UNTYPED_ATOMIC.equals(schemaType)) {
            return null;
        }
        return new TypeInfoImpl(this.node.getConfiguration(), schemaType);
    }

    @Override // org.w3c.dom.Attr
    public boolean getSpecified() {
        return true;
    }

    @Override // org.w3c.dom.Attr
    public String getValue() {
        return this.node.getStringValue();
    }

    @Override // net.p110sf.saxon.dom.NodeOverNodeInfo, org.w3c.dom.Node
    public boolean hasChildNodes() {
        return true;
    }

    @Override // org.w3c.dom.Attr
    public boolean isId() {
        return this.node.isId();
    }

    @Override // org.w3c.dom.Attr
    public void setValue(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }
}
