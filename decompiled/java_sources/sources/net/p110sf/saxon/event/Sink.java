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
public class Sink extends SequenceReceiver {
    public Sink(PipelineConfiguration pipelineConfiguration) {
        super(pipelineConfiguration);
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() {
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) {
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return false;
    }
}
