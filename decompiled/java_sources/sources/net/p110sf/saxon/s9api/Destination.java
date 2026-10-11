package net.p110sf.saxon.s9api;

import java.net.URI;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.serialize.SerializationProperties;

/* loaded from: classes11.dex */
public interface Destination {
    void close() throws SaxonApiException;

    void closeAndNotify() throws SaxonApiException;

    URI getDestinationBaseURI();

    Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) throws SaxonApiException;

    void onClose(Action action);

    void setDestinationBaseURI(URI uri);
}
