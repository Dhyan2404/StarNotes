package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public interface NodeWrappingFunction<B, T extends NodeInfo> {
    T wrap(B b);
}
