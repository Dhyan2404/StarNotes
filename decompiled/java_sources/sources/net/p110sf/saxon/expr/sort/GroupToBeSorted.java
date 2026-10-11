package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.MemoSequence;

/* loaded from: classes11.dex */
public class GroupToBeSorted extends ObjectToBeSorted {
    public MemoSequence currentGroup;
    public AtomicSequence currentGroupingKey;

    public GroupToBeSorted(int i) {
        super(i);
    }
}
