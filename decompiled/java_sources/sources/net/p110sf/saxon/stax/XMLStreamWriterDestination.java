package net.p110sf.saxon.stax;

import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.s9api.AbstractDestination;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.serialize.SerializationProperties;

/* loaded from: classes11.dex */
public class XMLStreamWriterDestination extends AbstractDestination {

    /* renamed from: f */
    public final XMLStreamWriter f101655f;

    public XMLStreamWriterDestination(XMLStreamWriter xMLStreamWriter) {
        this.f101655f = xMLStreamWriter;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() throws SaxonApiException {
        try {
            this.f101655f.close();
        } catch (XMLStreamException e) {
            throw new SaxonApiException(e);
        }
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) throws SaxonApiException {
        ReceiverToXMLStreamWriter receiverToXMLStreamWriter = new ReceiverToXMLStreamWriter(this.f101655f);
        receiverToXMLStreamWriter.setPipelineConfiguration(pipelineConfiguration);
        return receiverToXMLStreamWriter;
    }

    public XMLStreamWriter getXMLStreamWriter() {
        return this.f101655f;
    }
}
