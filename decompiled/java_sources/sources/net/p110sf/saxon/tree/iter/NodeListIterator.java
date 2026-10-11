package net.p110sf.saxon.tree.iter;

import java.util.List;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.tree.iter.ListIterator;

/* loaded from: classes11.dex */
public class NodeListIterator extends ListIterator.C18538Of<NodeInfo> implements AxisIterator {
    public NodeListIterator(List<NodeInfo> list) {
        super(list);
    }

    @Override // net.p110sf.saxon.tree.iter.ListIterator.C18538Of, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        return (NodeInfo) super.next();
    }
}
