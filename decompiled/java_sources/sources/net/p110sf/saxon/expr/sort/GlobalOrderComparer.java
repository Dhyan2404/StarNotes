package net.p110sf.saxon.expr.sort;

import java.util.Comparator;
import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public final class GlobalOrderComparer implements Comparator<NodeInfo> {

    /* renamed from: e */
    public static final GlobalOrderComparer f100038e = new GlobalOrderComparer();

    public static GlobalOrderComparer getInstance() {
        return f100038e;
    }

    @Override // java.util.Comparator
    public int compare(NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        if (nodeInfo == nodeInfo2) {
            return 0;
        }
        long documentNumber = nodeInfo.getTreeInfo().getDocumentNumber();
        long documentNumber2 = nodeInfo2.getTreeInfo().getDocumentNumber();
        if (documentNumber == documentNumber2) {
            return nodeInfo.compareOrder(nodeInfo2);
        }
        return Long.signum(documentNumber - documentNumber2);
    }
}
