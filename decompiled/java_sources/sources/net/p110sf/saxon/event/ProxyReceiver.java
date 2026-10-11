package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class ProxyReceiver extends SequenceReceiver {
    protected Receiver nextReceiver;

    public ProxyReceiver(Receiver receiver) {
        super(receiver.getPipelineConfiguration());
        setUnderlyingReceiver(receiver);
        setPipelineConfiguration(receiver.getPipelineConfiguration());
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        this.nextReceiver.m62516b(item, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.nextReceiver.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        this.nextReceiver.close();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.nextReceiver.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.nextReceiver.endDocument();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.nextReceiver.endElement();
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver
    public NamePool getNamePool() {
        return this.pipelineConfiguration.getConfiguration().getNamePool();
    }

    public Receiver getNextReceiver() {
        return this.nextReceiver;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.nextReceiver.open();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.nextReceiver.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        if (this.pipelineConfiguration != pipelineConfiguration) {
            this.pipelineConfiguration = pipelineConfiguration;
            if (this.nextReceiver.getPipelineConfiguration() != pipelineConfiguration) {
                this.nextReceiver.setPipelineConfiguration(pipelineConfiguration);
            }
        }
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, javax.xml.transform.Result
    public void setSystemId(String str) {
        if (str != this.systemId) {
            this.systemId = str;
            this.nextReceiver.setSystemId(str);
        }
    }

    public void setUnderlyingReceiver(Receiver receiver) {
        this.nextReceiver = receiver;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
        this.nextReceiver.setUnparsedEntity(str, str2, str3);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.nextReceiver.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return this.nextReceiver.usesTypeAnnotations();
    }
}
