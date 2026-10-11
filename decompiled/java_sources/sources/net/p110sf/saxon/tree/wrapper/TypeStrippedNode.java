package net.p110sf.saxon.tree.wrapper;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class TypeStrippedNode extends AbstractVirtualNode implements WrappingFunction {
    public TypeStrippedNode() {
    }

    public static TypeStrippedNode makeWrapper(NodeInfo nodeInfo, TypeStrippedDocument typeStrippedDocument, TypeStrippedNode typeStrippedNode) {
        TypeStrippedNode typeStrippedNode2 = new TypeStrippedNode(nodeInfo, typeStrippedNode);
        typeStrippedNode2.docWrapper = typeStrippedDocument;
        return typeStrippedNode2;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        return StringValue.makeUntypedAtomic(getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        return nodeInfo instanceof TypeStrippedNode ? this.node.compareOrder(((TypeStrippedNode) nodeInfo).node) : this.node.compareOrder(nodeInfo);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        this.node.copy(receiver, i & (-5), location);
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        return obj instanceof TypeStrippedNode ? this.node.equals(((TypeStrippedNode) obj).node) : this.node.equals(obj);
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public NodeInfo getParent() {
        NodeInfo parent;
        if (this.parent == null && (parent = this.node.getParent()) != null) {
            this.parent = makeWrapper(parent, (TypeStrippedDocument) this.docWrapper, null);
        }
        return this.parent;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return getNodeKind() == 1 ? Untyped.getInstance() : BuiltInAtomicType.UNTYPED_ATOMIC;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return this.node.hashCode();
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public boolean isNilled() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        return new WrappingIterator(this.node.iterateAxis(i), this, null);
    }

    public TypeStrippedNode(NodeInfo nodeInfo, TypeStrippedNode typeStrippedNode) {
        this.node = nodeInfo;
        this.parent = typeStrippedNode;
    }

    @Override // net.p110sf.saxon.tree.wrapper.WrappingFunction
    public VirtualNode makeWrapper(NodeInfo nodeInfo, VirtualNode virtualNode) {
        TypeStrippedNode typeStrippedNode = new TypeStrippedNode(nodeInfo, (TypeStrippedNode) virtualNode);
        typeStrippedNode.docWrapper = this.docWrapper;
        return typeStrippedNode;
    }
}
