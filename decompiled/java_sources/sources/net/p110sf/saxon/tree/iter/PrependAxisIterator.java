package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public class PrependAxisIterator extends PrependSequenceIterator implements AxisIterator {
    public PrependAxisIterator(NodeInfo nodeInfo, AxisIterator axisIterator) {
        super(nodeInfo, axisIterator);
    }

    @Override // net.p110sf.saxon.tree.iter.PrependSequenceIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        return (NodeInfo) super.next();
    }
}
