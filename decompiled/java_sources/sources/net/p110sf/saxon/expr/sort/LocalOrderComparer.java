package net.p110sf.saxon.expr.sort;

import java.util.Comparator;
import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public final class LocalOrderComparer implements Comparator<NodeInfo> {

    /* renamed from: e */
    public static final LocalOrderComparer f100075e = new LocalOrderComparer();

    public static LocalOrderComparer getInstance() {
        return f100075e;
    }

    @Override // java.util.Comparator
    public int compare(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        return nodeInfo.compareOrder(nodeInfo2);
    }
}
