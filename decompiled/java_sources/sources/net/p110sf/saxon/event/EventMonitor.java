package net.p110sf.saxon.event;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class EventMonitor extends Outputter {

    /* renamed from: e */
    public boolean f98988e = false;

    /* renamed from: f */
    public final Outputter f98989f;

    public EventMonitor(Outputter outputter) {
        this.f98989f = outputter;
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        this.f98988e = true;
        this.f98989f.m62516b(item, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException {
        this.f98988e = true;
        this.f98989f.attribute(nodeName, simpleType, str, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98988e = true;
        this.f98989f.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98988e = true;
        this.f98989f.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f98988e = true;
        this.f98989f.endDocument();
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f98988e = true;
        this.f98989f.endElement();
    }

    public boolean hasBeenWrittenTo() {
        return this.f98988e;
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void namespace(String str, String str2, int i) throws XPathException {
        this.f98988e = true;
        this.f98989f.namespace(str, str2, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98988e = true;
        this.f98989f.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startContent() throws XPathException {
        this.f98988e = true;
        this.f98989f.startContent();
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f98988e = true;
        this.f98989f.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) throws XPathException {
        this.f98988e = true;
        this.f98989f.startElement(nodeName, schemaType, location, i);
    }
}
