package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class DocumentValidator extends ProxyReceiver {

    /* renamed from: e */
    public boolean f98964e;

    /* renamed from: f */
    public int f98965f;

    /* renamed from: g */
    public final String f98966g;

    public DocumentValidator(Receiver receiver, String str) {
        super(receiver);
        this.f98964e = false;
        this.f98965f = 0;
        this.f98966g = str;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f98965f != 0) {
            this.nextReceiver.characters(unicodeString, location, i);
        } else {
            if (Whitespace.isAllWhite(unicodeString)) {
                return;
            }
            throw new XPathException("A valid document must contain no text outside the outermost element (found \"" + Err.truncate30(unicodeString.tidy()) + "\")", this.f98966g);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        if (this.f98965f == 0) {
            if (!this.f98964e) {
                throw new XPathException("A valid document must have a child element", this.f98966g);
            }
            this.f98964e = false;
            this.nextReceiver.endDocument();
            this.f98965f = -1;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f98965f--;
        this.nextReceiver.endElement();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        super.setPipelineConfiguration(pipelineConfiguration);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        if (this.f98964e && this.f98965f == 0) {
            throw new XPathException("A valid document must have only one child element", this.f98966g);
        }
        this.f98964e = true;
        this.f98965f++;
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
