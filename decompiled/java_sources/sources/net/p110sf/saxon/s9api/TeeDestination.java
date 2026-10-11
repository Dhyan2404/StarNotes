package net.p110sf.saxon.s9api;

import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.TeeOutputter;
import net.p110sf.saxon.serialize.SerializationProperties;

/* loaded from: classes11.dex */
public class TeeDestination extends AbstractDestination {

    /* renamed from: f */
    public final Destination f101372f;

    /* renamed from: g */
    public final Destination f101373g;

    public TeeDestination(Destination destination, Destination destination2) {
        this.f101372f = destination;
        this.f101373g = destination2;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() throws SaxonApiException {
        this.f101372f.close();
        this.f101373g.close();
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) throws SaxonApiException {
        return new TeeOutputter(this.f101372f.getReceiver(pipelineConfiguration, serializationProperties), this.f101373g.getReceiver(pipelineConfiguration, serializationProperties));
    }
}
