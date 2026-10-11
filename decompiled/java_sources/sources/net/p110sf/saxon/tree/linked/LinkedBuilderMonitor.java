package net.p110sf.saxon.tree.linked;

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
public class LinkedBuilderMonitor extends BuilderMonitor {

    /* renamed from: e */
    public final LinkedTreeBuilder f102518e;

    /* renamed from: f */
    public int f102519f;

    /* renamed from: g */
    public NodeInfo f102520g;

    public LinkedBuilderMonitor(LinkedTreeBuilder linkedTreeBuilder) {
        super(linkedTreeBuilder);
        this.f102519f = -1;
        this.f102518e = linkedTreeBuilder;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        super.characters(unicodeString, location, i);
        if (this.f102519f == 3) {
            this.f102520g = this.f102518e.getCurrentLeafNode();
        }
        this.f102519f = -1;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        super.comment(unicodeString, location, i);
        if (this.f102519f == 8) {
            this.f102520g = this.f102518e.getCurrentLeafNode();
        }
        this.f102519f = -1;
    }

    @Override // net.p110sf.saxon.event.BuilderMonitor
    public NodeInfo getMarkedNode() {
        return this.f102520g;
    }

    @Override // net.p110sf.saxon.event.BuilderMonitor
    public void markNextNode(int i) {
        this.f102519f = i;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        super.processingInstruction(str, unicodeString, location, i);
        if (this.f102519f == 7) {
            this.f102520g = this.f102518e.getCurrentLeafNode();
        }
        this.f102519f = -1;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        super.startDocument(i);
        if (this.f102519f == 9) {
            this.f102520g = this.f102518e.getCurrentParentNode();
        }
        this.f102519f = -1;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        if (this.f102519f == 1) {
            this.f102520g = this.f102518e.getCurrentParentNode();
        }
        this.f102519f = -1;
    }
}
