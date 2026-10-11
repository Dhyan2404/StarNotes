package net.p110sf.saxon.sapling;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.ma.trie.ImmutableList;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class SaplingNode {
    public abstract void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException;

    public ImmutableList<SaplingNode> emptyNodeList() {
        return ImmutableList.empty();
    }

    public abstract int getNodeKind();
}
