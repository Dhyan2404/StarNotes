package net.p110sf.saxon.tree.linked;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class CommentImpl extends NodeImpl {

    /* renamed from: h */
    public UnicodeString f102490h;

    /* renamed from: i */
    public String f102491i;

    /* renamed from: j */
    public int f102492j = -1;

    /* renamed from: k */
    public int f102493k = -1;

    public CommentImpl(UnicodeString unicodeString) {
        this.f102490h = unicodeString;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() {
        return new StringValue(getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.comment(this.f102490h, location, 0);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.f102493k;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f102492j;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 8;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f102491i;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public final UnicodeString getUnicodeStringValue() {
        return this.f102490h;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replaceStringValue(UnicodeString unicodeString) {
        this.f102490h = unicodeString;
    }

    public void setLocation(String str, int i, int i2) {
        this.f102491i = str;
        this.f102492j = i;
        this.f102493k = i2;
    }
}
