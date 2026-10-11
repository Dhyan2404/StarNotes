package net.p110sf.saxon.tree.linked;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class TextImpl extends NodeImpl {

    /* renamed from: h */
    public UnicodeString f102544h;

    public TextImpl(UnicodeString unicodeString) {
        this.f102544h = unicodeString;
    }

    public void appendStringValue(UnicodeString unicodeString) {
        this.f102544h = this.f102544h.concat(unicodeString);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.characters(this.f102544h, location, 0);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 3;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return this.f102544h;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replaceStringValue(UnicodeString unicodeString) {
        if (unicodeString.isEmpty()) {
            delete();
        } else {
            this.f102544h = unicodeString;
        }
    }
}
