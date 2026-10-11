package net.p110sf.saxon.serialize;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Destination;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class PrincipalOutputGatekeeper extends ProxyReceiver {

    /* renamed from: e */
    public final XsltController f101583e;

    /* renamed from: f */
    public boolean f101584f;

    /* renamed from: g */
    public boolean f101585g;

    /* renamed from: h */
    public boolean f101586h;

    /* renamed from: i */
    public boolean f101587i;

    public PrincipalOutputGatekeeper(XsltController xsltController, Receiver receiver) {
        super(receiver);
        this.f101584f = false;
        this.f101585g = false;
        this.f101586h = false;
        this.f101587i = false;
        this.f101583e = xsltController;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        m63847d();
        this.nextReceiver.m62516b(item, location, i);
    }

    /* renamed from: c */
    public final String m63846c() {
        String baseOutputURI = this.f101583e.getBaseOutputURI();
        return baseOutputURI == null ? "(no URI supplied)" : baseOutputURI;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public synchronized void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m63847d();
        this.nextReceiver.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        this.f101587i = true;
        if (this.f101584f) {
            this.nextReceiver.close();
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m63847d();
        this.nextReceiver.comment(unicodeString, location, i);
    }

    /* renamed from: d */
    public final synchronized void m63847d() throws XPathException {
        if (this.f101587i) {
            XPathException xPathException = new XPathException("Cannot write to the principal output destination as it has already been closed: " + m63846c());
            xPathException.setErrorCode("XTDE1490");
            throw xPathException;
        }
        if (this.f101585g) {
            XPathException xPathException2 = new XPathException("Cannot write to the principal output destination as it has already been used by xsl:result-document: " + m63846c());
            xPathException2.setErrorCode("XTDE1490");
            throw xPathException2;
        }
        this.f101584f = true;
    }

    public Receiver makeReceiver(SerializationProperties serializationProperties) {
        try {
            Destination principalDestination = this.f101583e.getPrincipalDestination();
            if (principalDestination != null) {
                return principalDestination.getReceiver(this.f101583e.makePipelineConfiguration(), serializationProperties);
            }
        } catch (SaxonApiException unused) {
        }
        return null;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        if (!this.f101587i) {
            super.open();
            this.f101586h = true;
            return;
        }
        XPathException xPathException = new XPathException("Cannot write more than one result document to the principal output destination: " + (getSystemId().equals(Controller.ANONYMOUS_PRINCIPAL_OUTPUT_URI) ? "(no URI supplied)" : getSystemId()));
        xPathException.setErrorCode("XTDE1490");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        m63847d();
        this.nextReceiver.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public synchronized void startDocument(int i) throws XPathException {
        if (!this.f101586h) {
            open();
        }
        this.nextReceiver.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m63847d();
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    public synchronized void useAsSecondary() throws XPathException {
        if (this.f101584f) {
            XPathException xPathException = new XPathException("Cannot use xsl:result-document to write to a destination already used for the principal output: " + m63846c());
            xPathException.setErrorCode("XTDE1490");
            throw xPathException;
        }
        if (this.f101585g) {
            XPathException xPathException2 = new XPathException("Cannot write more than one xsl:result-document to the principal output destination: " + m63846c());
            xPathException2.setErrorCode("XTDE1490");
            throw xPathException2;
        }
        this.f101585g = true;
    }
}
