package net.p110sf.saxon.tree.wrapper;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class VirtualUntypedCopy extends VirtualCopy {
    public VirtualUntypedCopy(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        super(nodeInfo, nodeInfo2);
    }

    public static VirtualCopy makeVirtualUntypedTree(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        while ((nodeInfo instanceof VirtualUntypedCopy) && nodeInfo.getParent() == null) {
            nodeInfo = ((VirtualUntypedCopy) nodeInfo).original;
            nodeInfo2 = ((VirtualUntypedCopy) nodeInfo2).original;
        }
        VirtualUntypedCopy virtualUntypedCopy = new VirtualUntypedCopy(nodeInfo, nodeInfo2);
        virtualUntypedCopy.tree = new VirtualTreeInfo(nodeInfo.getConfiguration(), virtualUntypedCopy);
        return virtualUntypedCopy;
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        int nodeKind = getNodeKind();
        return (nodeKind == 1 || nodeKind == 2) ? StringValue.makeUntypedAtomic(getUnicodeStringValue()) : super.atomize();
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        super.copy(receiver, i & (-5), location);
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        int nodeKind = getNodeKind();
        return nodeKind != 1 ? nodeKind != 2 ? super.getSchemaType() : BuiltInAtomicType.UNTYPED_ATOMIC : Untyped.getInstance();
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy, net.p110sf.saxon.om.NodeInfo
    public boolean isNilled() {
        return false;
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualCopy
    public VirtualCopy wrap(NodeInfo nodeInfo) {
        VirtualUntypedCopy virtualUntypedCopy = new VirtualUntypedCopy(nodeInfo, this.root);
        virtualUntypedCopy.tree = this.tree;
        return virtualUntypedCopy;
    }
}
