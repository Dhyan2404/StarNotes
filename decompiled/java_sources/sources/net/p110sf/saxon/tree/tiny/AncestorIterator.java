package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public final class AncestorIterator implements AxisIterator {

    /* renamed from: e */
    public final NodeInfo f102545e;

    /* renamed from: f */
    public NodeInfo f102546f;

    /* renamed from: g */
    public final NodeTest f102547g;

    public AncestorIterator(NodeInfo nodeInfo, NodeTest nodeTest) {
        this.f102547g = nodeTest;
        this.f102545e = nodeInfo;
        this.f102546f = nodeInfo;
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        NodeInfo nodeInfo = this.f102546f;
        if (nodeInfo == null) {
            return null;
        }
        NodeInfo parent = nodeInfo.getParent();
        while (parent != null && !this.f102547g.test(parent)) {
            parent = parent.getParent();
        }
        this.f102546f = parent;
        return parent;
    }
}
