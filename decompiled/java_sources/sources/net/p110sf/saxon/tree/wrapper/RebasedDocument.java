package net.p110sf.saxon.tree.wrapper;

import java.util.function.Function;
import net.p110sf.saxon.om.GenericTreeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;

/* loaded from: classes11.dex */
public class RebasedDocument extends GenericTreeInfo {

    /* renamed from: j */
    public final TreeInfo f102715j;

    /* renamed from: k */
    public final Function<NodeInfo, String> f102716k;

    /* renamed from: l */
    public final Function<NodeInfo, String> f102717l;

    public RebasedDocument(TreeInfo treeInfo, Function<NodeInfo, String> function, Function<NodeInfo, String> function2) {
        super(treeInfo.getConfiguration());
        this.f102716k = function;
        this.f102717l = function2;
        setRootNode(wrap(treeInfo.getRootNode()));
        this.f102715j = treeInfo;
    }

    public Function<NodeInfo, String> getBaseUriMapper() {
        return this.f102716k;
    }

    public Function<NodeInfo, String> getSystemIdMapper() {
        return this.f102717l;
    }

    public TreeInfo getUnderlyingTree() {
        return this.f102715j;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public boolean isTyped() {
        return this.f102715j.isTyped();
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public NodeInfo selectID(String str, boolean z) {
        NodeInfo selectID = this.f102715j.selectID(str, false);
        if (selectID == null) {
            return null;
        }
        return wrap(selectID);
    }

    public RebasedNode wrap(NodeInfo nodeInfo) {
        return RebasedNode.makeWrapper(nodeInfo, this, null);
    }
}
