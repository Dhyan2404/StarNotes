package net.p110sf.saxon.tree.util;

import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public interface SteppingNode extends NodeInfo {
    SteppingNode getFirstChild();

    SteppingNode getNextSibling();

    @Override // 
    SteppingNode getParent();

    SteppingNode getPreviousSibling();

    SteppingNode getSuccessorElement(SteppingNode steppingNode, String str, String str2);
}
