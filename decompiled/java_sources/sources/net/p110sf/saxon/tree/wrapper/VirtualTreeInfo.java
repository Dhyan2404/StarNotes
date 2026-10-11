package net.p110sf.saxon.tree.wrapper;

import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.om.GenericTreeInfo;

/* loaded from: classes11.dex */
public class VirtualTreeInfo extends GenericTreeInfo {

    /* renamed from: j */
    public boolean f102730j;

    public VirtualTreeInfo(Configuration configuration) {
        super(configuration);
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public String[] getUnparsedEntity(String str) {
        return ((VirtualCopy) getRootNode()).getOriginalNode().getTreeInfo().getUnparsedEntity(str);
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public Iterator<String> getUnparsedEntityNames() {
        return ((VirtualCopy) getRootNode()).getOriginalNode().getTreeInfo().getUnparsedEntityNames();
    }

    public boolean isCopyAccumulators() {
        return this.f102730j;
    }

    public void setCopyAccumulators(boolean z) {
        this.f102730j = z;
    }

    public VirtualTreeInfo(Configuration configuration, VirtualCopy virtualCopy) {
        super(configuration, virtualCopy);
    }
}
