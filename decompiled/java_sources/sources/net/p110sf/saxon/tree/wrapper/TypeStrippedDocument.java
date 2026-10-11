package net.p110sf.saxon.tree.wrapper;

import net.p110sf.saxon.om.GenericTreeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;

/* loaded from: classes11.dex */
public class TypeStrippedDocument extends GenericTreeInfo {

    /* renamed from: j */
    public TreeInfo f102727j;

    public TypeStrippedDocument(TreeInfo treeInfo) {
        super(treeInfo.getConfiguration());
        setRootNode(wrap(treeInfo.getRootNode()));
        this.f102727j = treeInfo;
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public NodeInfo selectID(String str, boolean z) {
        NodeInfo selectID = this.f102727j.selectID(str, false);
        if (selectID == null) {
            return null;
        }
        return wrap(selectID);
    }

    public TypeStrippedNode wrap(NodeInfo nodeInfo) {
        return TypeStrippedNode.makeWrapper(nodeInfo, this, null);
    }
}
