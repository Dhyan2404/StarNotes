package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public interface NodeVectorTree {
    int getFingerprint(int i);

    int[] getNameCodeArray();

    NodeInfo getNode(int i);

    int getNodeKind(int i);

    byte[] getNodeKindArray();

    boolean isTyped();
}
