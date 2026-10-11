package net.p110sf.saxon.s9api;

import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sink;
import net.p110sf.saxon.serialize.SerializationProperties;

/* loaded from: classes11.dex */
public class NullDestination extends AbstractDestination {
    @Override // net.p110sf.saxon.s9api.Destination
    public void close() {
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) {
        return new Sink(pipelineConfiguration);
    }
}
