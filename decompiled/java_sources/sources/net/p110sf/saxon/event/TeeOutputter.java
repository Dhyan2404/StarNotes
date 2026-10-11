package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class TeeOutputter extends SequenceReceiver {

    /* renamed from: e */
    public Receiver f99131e;

    /* renamed from: f */
    public Receiver f99132f;

    public TeeOutputter(Receiver receiver, Receiver receiver2) {
        super(receiver.getPipelineConfiguration());
        this.f99131e = receiver;
        this.f99132f = receiver2;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        this.f99131e.m62516b(item, location, i);
        this.f99132f.m62516b(item, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f99131e.characters(unicodeString, location, i);
        this.f99132f.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        this.f99131e.close();
        this.f99132f.close();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f99131e.comment(unicodeString, location, i);
        this.f99132f.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f99131e.endDocument();
        this.f99132f.endDocument();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f99131e.endElement();
        this.f99132f.endElement();
    }

    public Receiver getFirstDestination() {
        return this.f99131e;
    }

    public Receiver getSecondDestination() {
        return this.f99132f;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        super.open();
        this.f99131e.open();
        this.f99132f.open();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f99131e.processingInstruction(str, unicodeString, location, i);
        this.f99132f.processingInstruction(str, unicodeString, location, i);
    }

    public void setFirstDestination(Receiver receiver) {
        this.f99131e = receiver;
    }

    public void setSecondDestination(Receiver receiver) {
        this.f99132f = receiver;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
        this.f99131e.setUnparsedEntity(str, str2, str3);
        this.f99132f.setUnparsedEntity(str, str2, str3);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f99131e.startDocument(i);
        this.f99132f.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f99131e.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        this.f99132f.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return this.f99131e.usesTypeAnnotations() || this.f99132f.usesTypeAnnotations();
    }
}
