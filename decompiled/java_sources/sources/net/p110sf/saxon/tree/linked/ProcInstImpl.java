package net.p110sf.saxon.tree.linked;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ProcInstImpl extends NodeImpl {

    /* renamed from: h */
    public UnicodeString f102536h;

    /* renamed from: i */
    public String f102537i;

    /* renamed from: j */
    public String f102538j;

    /* renamed from: k */
    public int f102539k = -1;

    /* renamed from: l */
    public int f102540l = -1;

    public ProcInstImpl(String str, UnicodeString unicodeString) {
        this.f102537i = str;
        this.f102536h = unicodeString;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() {
        return new StringValue(getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.processingInstruction(getLocalPart(), this.f102536h, location, 0);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.f102540l;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f102539k;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 7;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public NodeName getNodeName() {
        return new NoNamespaceName(this.f102537i);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f102538j;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return this.f102536h;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void rename(NodeName nodeName, boolean z) {
        this.f102537i = nodeName.getLocalPart();
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replaceStringValue(UnicodeString unicodeString) {
        this.f102536h = unicodeString;
    }

    public void setLocation(String str, int i, int i2) {
        this.f102538j = str;
        this.f102539k = i;
        this.f102540l = i2;
    }
}
