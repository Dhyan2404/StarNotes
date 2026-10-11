package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.event.BuilderMonitor;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class TinyBuilderMonitor extends BuilderMonitor {

    /* renamed from: e */
    public final TinyBuilder f102568e;

    /* renamed from: f */
    public int f102569f;

    /* renamed from: g */
    public int f102570g;

    /* renamed from: h */
    public final int f102571h;

    /* renamed from: i */
    public final int f102572i;

    public TinyBuilderMonitor(TinyBuilder tinyBuilder) {
        super(tinyBuilder);
        this.f102569f = -1;
        this.f102570g = -1;
        this.f102571h = -1;
        this.f102572i = -1;
        this.f102568e = tinyBuilder;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f102569f == 3) {
            this.f102570g = this.f102568e.getTree().getNumberOfNodes();
        }
        this.f102569f = -1;
        super.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f102569f == 8) {
            this.f102570g = this.f102568e.getTree().getNumberOfNodes();
        }
        this.f102569f = -1;
        super.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.BuilderMonitor
    public NodeInfo getMarkedNode() {
        if (this.f102570g != -1) {
            return this.f102568e.getTree().getNode(this.f102570g);
        }
        return null;
    }

    @Override // net.p110sf.saxon.event.BuilderMonitor
    public void markNextNode(int i) {
        this.f102569f = i;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f102569f == 7) {
            this.f102570g = this.f102568e.getTree().getNumberOfNodes();
        }
        this.f102569f = -1;
        super.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        if (this.f102569f == 9) {
            this.f102570g = this.f102568e.getTree().getNumberOfNodes();
        }
        this.f102569f = -1;
        super.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        if (this.f102569f == 1) {
            this.f102570g = this.f102568e.getTree().getNumberOfNodes();
        }
        this.f102569f = -1;
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
