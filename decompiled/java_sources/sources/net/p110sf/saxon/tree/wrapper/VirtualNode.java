package net.p110sf.saxon.tree.wrapper;

import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public interface VirtualNode extends NodeInfo {
    Object getRealNode();

    Object getUnderlyingNode();
}
