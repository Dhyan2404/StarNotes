package net.p110sf.saxon.tree.wrapper;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class SnapshotNode extends VirtualCopy implements NodeInfo {
    protected NodeInfo pivot;

    public SnapshotNode(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        super(nodeInfo, nodeInfo2.getRoot());
        this.pivot = nodeInfo2;
    }

    public static SnapshotNode makeSnapshot(NodeInfo nodeInfo) {
        SnapshotNode snapshotNode = new SnapshotNode(nodeInfo, nodeInfo);
        Configuration configuration = nodeInfo.getConfiguration();
        VirtualTreeInfo virtualTreeInfo = new VirtualTreeInfo(configuration);
        virtualTreeInfo.setDocumentNumber(configuration.getDocumentNumberAllocator().allocateDocumentNumber());
        virtualTreeInfo.setCopyAccumulators(true);
        snapshotNode.tree = virtualTreeInfo;
        virtualTreeInfo.setRootNode(snapshotNode.getRoot());
        return snapshotNode;
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        int nodeKind = getNodeKind();
        return (nodeKind == 2 || nodeKind == 3 || nodeKind == 7 || nodeKind == 8 || nodeKind == 13) ? this.original.atomize() : Navigator.isAncestorOrSelf(this.pivot, this.original) ? this.original.atomize() : StringValue.makeUntypedAtomic(this.pivot.getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        Navigator.copy(this, receiver, i, location);
    }

    /* renamed from: e */
    public final NodeInfo m64585e() {
        int nodeKind = this.pivot.getNodeKind();
        SnapshotNode wrap = wrap(this.pivot);
        if ((nodeKind == 2 || nodeKind == 13) && wrap.getParent().isSameNodeInfo(this)) {
            return null;
        }
        while (true) {
            SnapshotNode snapshotNode = (SnapshotNode) wrap.getParent();
            if (snapshotNode == null) {
                throw new AssertionError();
            }
            if (snapshotNode.isSameNodeInfo(this)) {
                return wrap;
            }
            wrap = snapshotNode;
        }
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public NodeInfo getParent() {
        if (this.parent == null) {
            NodeInfo parent = this.original.getParent();
            if (parent == null) {
                return null;
            }
            this.parent = wrap(parent);
        }
        return this.parent;
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        NodeInfo nodeInfo = this.original;
        if (nodeInfo != null) {
            return nodeInfo.getPublicId();
        }
        return null;
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        return super.getRoot();
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return Navigator.isAncestorOrSelf(this.original, this.pivot) ? this.pivot.getUnicodeStringValue() : this.original.getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        return this.original.isId();
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        return this.original.isIdref();
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy
    public boolean isIncludedInCopy(NodeInfo nodeInfo) {
        int nodeKind = nodeInfo.getNodeKind();
        return (nodeKind == 2 || nodeKind == 13) ? isIncludedInCopy(nodeInfo.getParent()) : Navigator.isAncestorOrSelf(this.pivot, nodeInfo) || Navigator.isAncestorOrSelf(nodeInfo, this.pivot);
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public boolean isNilled() {
        return this.original.isNilled();
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        int nodeKind = getNodeKind();
        if (nodeKind == 2 || nodeKind == 3 || nodeKind == 7 || nodeKind == 8 || nodeKind == 13) {
            return (i == 3 || i == 4 || i == 5 || i == 6 || i == 7 || i == 10 || i == 11) ? EmptyIterator.ofNodes() : super.iterateAxis(i, nodePredicate);
        }
        if (this.original.isSameNodeInfo(this.pivot) || !Navigator.isAncestorOrSelf(this.original, this.pivot)) {
            return super.iterateAxis(i, nodePredicate);
        }
        if (i == 3) {
            return Navigator.filteredSingleton(m64585e(), nodePredicate);
        }
        if (i != 4 && i != 5) {
            return (i == 6 || i == 7 || i == 10 || i == 11) ? EmptyIterator.ofNodes() : super.iterateAxis(i, nodePredicate);
        }
        Navigator.DescendantEnumeration descendantEnumeration = new Navigator.DescendantEnumeration(this, i == 5, true);
        return !(nodePredicate instanceof AnyNodeTest) ? new Navigator.AxisFilter(descendantEnumeration, nodePredicate) : descendantEnumeration;
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy
    public SnapshotNode wrap(NodeInfo nodeInfo) {
        SnapshotNode snapshotNode = new SnapshotNode(nodeInfo, this.pivot);
        snapshotNode.tree = this.tree;
        return snapshotNode;
    }
}
