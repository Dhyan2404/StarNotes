package net.p110sf.saxon.tree.linked;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class AttributeImpl extends NodeImpl {
    public AttributeImpl(ElementImpl elementImpl, int i) {
        setRawParent(elementImpl);
        setSiblingPosition(i);
    }

    /* renamed from: b */
    public final AttributeInfo m64515b() {
        return getRawParent().attributes().itemAt(getSiblingPosition());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        throw new IllegalArgumentException();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void delete() {
        if (isDeleted()) {
            return;
        }
        if (getRawParent() != null) {
            getRawParent().removeAttribute(this);
        }
        setRawParent(null);
        setSiblingPosition(-1);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        if (!(obj instanceof AttributeImpl)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        AttributeImpl attributeImpl = (AttributeImpl) obj;
        return getRawParent().equals(attributeImpl.getRawParent()) && getSiblingPosition() == attributeImpl.getSiblingPosition();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        getParent().generateId(sb);
        sb.append('a');
        sb.append(getSiblingPosition());
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        if (getRawParent() == null || getSiblingPosition() == -1) {
            return -1;
        }
        return getNodeName().obtainFingerprint(getNamePool());
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public NodeImpl getNextInDocument(NodeImpl nodeImpl) {
        if (nodeImpl == this) {
            return null;
        }
        return getParent().getNextInDocument(nodeImpl);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.tree.util.SteppingNode
    public NodeImpl getNextSibling() {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 2;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public NodeName getNodeName() {
        if (getRawParent() == null || getSiblingPosition() == -1) {
            return null;
        }
        return m64515b().getNodeName();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public NodeImpl getPreviousInDocument() {
        return getParent();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.tree.util.SteppingNode
    public NodeImpl getPreviousSibling() {
        return null;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return m64515b().getType();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public long getSequenceNumber() {
        long sequenceNumber = getRawParent().getSequenceNumber();
        return sequenceNumber == -1 ? sequenceNumber : sequenceNumber + 32768 + getSiblingPosition();
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String getStringValue() {
        return m64515b().getValue();
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return StringView.tidy(m64515b().getValue());
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return (getSiblingPosition() << 16) ^ getRawParent().hashCode();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public boolean isDeleted() {
        return getRawParent() == null || (m64515b() instanceof AttributeInfo.Deleted) || getRawParent().isDeleted();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        return m64515b().isId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        if (ReceiverOption.contains(m64515b().getProperties(), 4096)) {
            return true;
        }
        return ElementImpl.isIdRefNode(this);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void removeTypeAnnotation() {
        ElementImpl elementImpl = (ElementImpl) getRawParent();
        if (elementImpl == null || isDeleted()) {
            return;
        }
        AttributeInfo m64515b = m64515b();
        elementImpl.setAttributeInfo(getSiblingPosition(), new AttributeInfo(m64515b.getNodeName(), BuiltInAtomicType.UNTYPED_ATOMIC, m64515b.getValue(), m64515b.getLocation(), m64515b.getProperties()));
        elementImpl.removeTypeAnnotation();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void rename(NodeName nodeName, boolean z) {
        ElementImpl elementImpl = (ElementImpl) getRawParent();
        if (elementImpl == null || isDeleted()) {
            return;
        }
        AttributeInfo m64515b = m64515b();
        elementImpl.setAttributeInfo(getSiblingPosition(), new AttributeInfo(nodeName, BuiltInAtomicType.UNTYPED_ATOMIC, m64515b.getValue(), m64515b.getLocation(), m64515b.getProperties()));
        String uri = nodeName.getURI();
        if (uri.isEmpty()) {
            return;
        }
        String prefix = nodeName.getPrefix();
        NamespaceBinding namespaceBinding = new NamespaceBinding(prefix, uri);
        String uRIForPrefix = ((ElementImpl) getRawParent()).getURIForPrefix(prefix, false);
        if (uRIForPrefix == null) {
            elementImpl.addNamespace(namespaceBinding, z);
        } else if (!uRIForPrefix.equals(uri)) {
            throw new IllegalArgumentException("Namespace binding of new name conflicts with existing namespace binding");
        }
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void replace(NodeInfo[] nodeInfoArr, boolean z) {
        if (isDeleted()) {
            throw new IllegalStateException("Cannot replace a deleted node");
        }
        if (getParent() == null) {
            throw new IllegalStateException("Cannot replace a parentless node");
        }
        ParentNodeImpl rawParent = getRawParent();
        delete();
        for (NodeInfo nodeInfo : nodeInfoArr) {
            if (nodeInfo.getNodeKind() != 2) {
                throw new IllegalArgumentException("Replacement nodes must be attributes");
            }
            rawParent.addAttribute(NameOfNode.makeName(nodeInfo), BuiltInAtomicType.UNTYPED_ATOMIC, nodeInfo.getStringValue(), 0, z);
        }
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replaceStringValue(UnicodeString unicodeString) {
        ElementImpl elementImpl = (ElementImpl) getRawParent();
        if (elementImpl == null || isDeleted()) {
            return;
        }
        AttributeInfo m64515b = m64515b();
        elementImpl.setAttributeInfo(getSiblingPosition(), new AttributeInfo(m64515b.getNodeName(), m64515b.getType(), unicodeString.toString(), m64515b.getLocation(), m64515b.getProperties()));
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void setTypeAnnotation(SchemaType schemaType) {
        if (!(schemaType instanceof SimpleType)) {
            throw new IllegalArgumentException("Attribute type must be a simple type");
        }
        ElementImpl elementImpl = (ElementImpl) getRawParent();
        if (elementImpl == null || isDeleted()) {
            return;
        }
        AttributeInfo m64515b = m64515b();
        elementImpl.setAttributeInfo(getSiblingPosition(), new AttributeInfo(m64515b.getNodeName(), (SimpleType) schemaType, m64515b.getValue(), m64515b.getLocation(), m64515b.getProperties()));
        elementImpl.removeTypeAnnotation();
    }
}
