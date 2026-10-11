package net.p110sf.saxon.stax;

import java.util.Iterator;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class ReceiverToXMLStreamWriter implements Receiver {
    protected String baseURI;
    protected Configuration config;

    /* renamed from: e */
    public final XMLStreamWriter f101654e;
    protected PipelineConfiguration pipe;
    protected String systemId;

    public ReceiverToXMLStreamWriter(XMLStreamWriter xMLStreamWriter) {
        this.f101654e = xMLStreamWriter;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        try {
            this.f101654e.writeCharacters(unicodeString.toString());
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        try {
            this.f101654e.close();
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        try {
            this.f101654e.writeComment(unicodeString.toString());
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        try {
            this.f101654e.writeEndDocument();
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        try {
            this.f101654e.writeEndElement();
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public PipelineConfiguration getPipelineConfiguration() {
        return this.pipe;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.systemId;
    }

    public XMLStreamWriter getXMLStreamWriter() {
        return this.f101654e;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        try {
            this.f101654e.writeProcessingInstruction(str, unicodeString.toString());
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.pipe = pipelineConfiguration;
        this.config = pipelineConfiguration.getConfiguration();
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.systemId = str;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        try {
            this.f101654e.writeStartDocument();
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        String localPart = nodeName.getLocalPart();
        String uri = nodeName.getURI();
        String prefix = nodeName.getPrefix();
        try {
            if (prefix.equals("") && uri.equals("")) {
                this.f101654e.writeStartElement(localPart);
            } else if (prefix.equals("")) {
                this.f101654e.writeStartElement(prefix, localPart, uri);
            } else {
                this.f101654e.writeStartElement(prefix, localPart, uri);
            }
            Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
            while (it2.hasNext()) {
                NamespaceBinding next = it2.next();
                this.f101654e.writeNamespace(next.getPrefix(), next.getURI());
            }
            for (AttributeInfo attributeInfo : attributeMap) {
                NodeName nodeName2 = attributeInfo.getNodeName();
                String localPart2 = nodeName2.getLocalPart();
                String uri2 = nodeName2.getURI();
                String prefix2 = nodeName2.getPrefix();
                String value = attributeInfo.getValue();
                if (prefix2.equals("") && uri2.equals("")) {
                    this.f101654e.writeAttribute(localPart2, value);
                } else if (prefix2.equals("") && (!uri2.equals(""))) {
                    this.f101654e.writeAttribute(uri2, localPart2, value);
                } else {
                    this.f101654e.writeAttribute(prefix2, uri2, localPart2, value);
                }
            }
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return false;
    }
}
