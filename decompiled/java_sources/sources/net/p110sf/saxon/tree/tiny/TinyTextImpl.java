package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class TinyTextImpl extends TinyNodeImpl {
    public TinyTextImpl(TinyTree tinyTree, int i) {
        this.tree = tinyTree;
        this.nodeNr = i;
    }

    public static UnicodeString getStringValue(TinyTree tinyTree, int i) {
        int i2 = tinyTree.f102596o[i];
        return tinyTree.f102590j.substring(i2, tinyTree.f102597p[i] + i2);
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() {
        return StringValue.makeUntypedAtomic(getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.characters(getUnicodeStringValue(), location, 0);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 3;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return getStringValue(this.tree, this.nodeNr);
    }
}
