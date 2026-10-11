package net.p110sf.saxon.tree.wrapper;

import java.util.function.Function;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public class RebasedNode extends AbstractVirtualNode implements WrappingFunction {
    public RebasedNode() {
    }

    /* renamed from: a */
    public final Function<NodeInfo, String> m64583a() {
        return ((RebasedDocument) this.docWrapper).getBaseUriMapper();
    }

    /* renamed from: b */
    public final Function<NodeInfo, String> m64584b() {
        return ((RebasedDocument) this.docWrapper).getSystemIdMapper();
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        return nodeInfo instanceof RebasedNode ? this.node.compareOrder(((RebasedNode) nodeInfo).node) : this.node.compareOrder(nodeInfo);
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        return (obj instanceof RebasedNode) && this.node.equals(((RebasedNode) obj).node);
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        return m64583a().apply(this.node);
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public NodeInfo getParent() {
        NodeInfo parent;
        if (this.parent == null && (parent = this.node.getParent()) != null) {
            this.parent = makeWrapper(parent, (RebasedDocument) this.docWrapper, null);
        }
        return this.parent;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return m64584b().apply(this.node);
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return this.node.hashCode();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        return new WrappingIterator(this.node.iterateAxis(i), this, null);
    }

    public RebasedNode(NodeInfo nodeInfo, RebasedNode rebasedNode) {
        this.node = nodeInfo;
        this.parent = rebasedNode;
    }

    public static RebasedNode makeWrapper(NodeInfo nodeInfo, RebasedDocument rebasedDocument, RebasedNode rebasedNode) {
        RebasedNode rebasedNode2 = new RebasedNode(nodeInfo, rebasedNode);
        rebasedNode2.docWrapper = rebasedDocument;
        return rebasedNode2;
    }

    @Override // net.p110sf.saxon.tree.wrapper.WrappingFunction
    public RebasedNode makeWrapper(NodeInfo nodeInfo, VirtualNode virtualNode) {
        RebasedNode rebasedNode = new RebasedNode(nodeInfo, (RebasedNode) virtualNode);
        rebasedNode.docWrapper = this.docWrapper;
        return rebasedNode;
    }
}
