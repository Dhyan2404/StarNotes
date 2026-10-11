package net.p110sf.saxon.expr;

import java.util.Set;
import net.p110sf.saxon.om.MutableNodeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface PendingUpdateList {
    void addPutAction(NodeInfo nodeInfo, String str, Expression expression) throws XPathException;

    void apply(XPathContext xPathContext, int i) throws XPathException;

    Set<MutableNodeInfo> getAffectedTrees();
}
