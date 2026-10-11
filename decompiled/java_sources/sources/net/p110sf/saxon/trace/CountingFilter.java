package net.p110sf.saxon.trace;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.io.PrintStream;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceReceiver;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class CountingFilter extends ProxyReceiver {

    /* renamed from: f */
    public static int f102179f;

    /* renamed from: e */
    public final int f102180e;

    public CountingFilter(Receiver receiver) {
        super(receiver);
        int i = f102179f;
        f102179f = i + 1;
        this.f102180e = i;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        m64076c(RequestParameters.SUBRESOURCE_APPEND);
        Receiver receiver = this.nextReceiver;
        if (receiver instanceof SequenceReceiver) {
            receiver.m62516b(item, location, i);
        } else {
            super.m62516b(item, location, i);
        }
    }

    /* renamed from: c */
    public final void m64076c(String str) {
        Instrumentation.count("Filter " + this.f102180e + " " + str);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m64076c("characters");
        this.nextReceiver.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        m64076c("close");
        this.nextReceiver.close();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m64076c("comment");
        this.nextReceiver.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        m64076c("endDocument");
        this.nextReceiver.endDocument();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        m64076c("endElement");
        this.nextReceiver.endElement();
    }

    public int getId() {
        return this.f102180e;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        m64076c("open");
        this.nextReceiver.open();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        m64076c("processingInstruction");
        this.nextReceiver.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        m64076c("startDocument");
        this.nextReceiver.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m64076c("startElement");
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    public CountingFilter(Receiver receiver, PrintStream printStream) {
        super(receiver);
        int i = f102179f;
        f102179f = i + 1;
        this.f102180e = i;
    }
}
