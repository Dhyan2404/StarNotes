package com.sunia.HTREnginev2;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyNodeImpl;
import net.p110sf.saxon.tree.tiny.TinyTree;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class tin extends TinyNodeImpl {
    public tin(TinyTree tinyTree, int i) {
        this.tree = tinyTree;
        this.nodeNr = i;
    }

    /* renamed from: a */
    public UnicodeString m57376a() {
        return getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() {
        return new StringValue(getUnicodeStringValue());
    }

    /* renamed from: b */
    public String m57377b() {
        return getDisplayName();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.processingInstruction(getDisplayName(), getUnicodeStringValue(), location, 0);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        return Navigator.getBaseURI(this);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 7;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        TinyTree tinyTree = this.tree;
        int[] iArr = tinyTree.f102596o;
        int i = this.nodeNr;
        int i2 = iArr[i];
        return tinyTree.f102597p[i] == 0 ? EmptyUnicodeString.getInstance() : tinyTree.f102591k.substring(i2, i2 + r6);
    }
}
