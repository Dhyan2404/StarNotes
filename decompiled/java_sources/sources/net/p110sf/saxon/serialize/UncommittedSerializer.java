package net.p110sf.saxon.serialize;

import java.util.Properties;
import javax.xml.transform.Result;
import net.p110sf.saxon.event.EventBuffer;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.lib.SerializerFactory;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class UncommittedSerializer extends ProxyReceiver {

    /* renamed from: e */
    public boolean f101609e;

    /* renamed from: f */
    public EventBuffer f101610f;

    /* renamed from: g */
    public final Result f101611g;

    /* renamed from: h */
    public final SerializationProperties f101612h;

    public UncommittedSerializer(Result result, Receiver receiver, SerializationProperties serializationProperties) {
        super(receiver);
        this.f101609e = false;
        this.f101610f = null;
        this.f101611g = result;
        this.f101612h = serializationProperties;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62486h(Item item, Location location, int i) throws XPathException {
        if (item instanceof NodeInfo) {
            ((NodeInfo) item).copy(this, 2, location);
            return;
        }
        if (!this.f101609e) {
            m63853c("xml");
        }
        getNextReceiver().append(item);
    }

    /* renamed from: c */
    public final void m63853c(String str) throws XPathException {
        Properties properties = new Properties(this.f101612h.getProperties());
        properties.setProperty("method", str);
        SerializerFactory serializerFactory = getConfiguration().getSerializerFactory();
        SerializationProperties serializationProperties = new SerializationProperties(properties, this.f101612h.getCharacterMapIndex());
        serializationProperties.setValidationFactory(this.f101612h.getValidationFactory());
        Receiver receiver = serializerFactory.getReceiver(this.f101611g, serializationProperties, getPipelineConfiguration());
        this.f101609e = true;
        receiver.open();
        EventBuffer eventBuffer = this.f101610f;
        if (eventBuffer != null) {
            eventBuffer.replay(receiver);
            this.f101610f = null;
        }
        setUnderlyingReceiver(receiver);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101609e) {
            getNextReceiver().characters(unicodeString, location, i);
            return;
        }
        if (this.f101610f == null) {
            this.f101610f = new EventBuffer(getPipelineConfiguration());
        }
        this.f101610f.characters(unicodeString, location, i);
        if (Whitespace.isAllWhite(unicodeString)) {
            return;
        }
        m63853c("xml");
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        if (!this.f101609e) {
            m63853c("xml");
        }
        getNextReceiver().close();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101609e) {
            getNextReceiver().comment(unicodeString, location, i);
            return;
        }
        if (this.f101610f == null) {
            this.f101610f = new EventBuffer(getPipelineConfiguration());
        }
        this.f101610f.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        if (!this.f101609e) {
            m63853c("xml");
        }
        getNextReceiver().endDocument();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f101609e = false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101609e) {
            getNextReceiver().processingInstruction(str, unicodeString, location, i);
            return;
        }
        if (this.f101610f == null) {
            this.f101610f = new EventBuffer(getPipelineConfiguration());
        }
        this.f101610f.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        if (this.f101609e) {
            getNextReceiver().startDocument(i);
            return;
        }
        if (this.f101610f == null) {
            this.f101610f = new EventBuffer(getPipelineConfiguration());
        }
        this.f101610f.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        if (!this.f101609e) {
            String localPart = nodeName.getLocalPart();
            String uri = nodeName.getURI();
            if (localPart.equalsIgnoreCase("html") && uri.isEmpty()) {
                m63853c("html");
            } else if (!localPart.equals("html") || !uri.equals("http://www.w3.org/1999/xhtml")) {
                m63853c("xml");
            } else if ("10".equals(this.f101612h.getProperties().getProperty(SaxonOutputKeys.STYLESHEET_VERSION))) {
                m63853c("xml");
            } else {
                m63853c("xhtml");
            }
        }
        getNextReceiver().startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
