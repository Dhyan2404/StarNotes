package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class ProxyOutputter extends Outputter {

    /* renamed from: e */
    public final Outputter f99057e;

    public ProxyOutputter(Outputter outputter) {
        this.f99057e = outputter;
        setPipelineConfiguration(outputter.getPipelineConfiguration());
        setSystemId(outputter.getSystemId());
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        this.f99057e.m62516b(item, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException {
        this.f99057e.attribute(nodeName, simpleType, str, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f99057e.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        this.f99057e.close();
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f99057e.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f99057e.endDocument();
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f99057e.endElement();
    }

    public Outputter getNextOutputter() {
        return this.f99057e;
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void namespace(String str, String str2, int i) throws XPathException {
        this.f99057e.namespace(str, str2, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f99057e.open();
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f99057e.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
        this.f99057e.setUnparsedEntity(str, str2, str3);
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startContent() throws XPathException {
        this.f99057e.startContent();
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f99057e.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) throws XPathException {
        this.f99057e.startElement(nodeName, schemaType, location, i);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return this.f99057e.usesTypeAnnotations();
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void append(Item item) throws XPathException {
        this.f99057e.append(item);
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f99057e.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
