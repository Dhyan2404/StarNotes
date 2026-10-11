package net.p110sf.saxon.s9api;

import net.p110sf.saxon.dom.DOMWriter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.serialize.SerializationProperties;
import org.w3c.dom.Node;

/* loaded from: classes11.dex */
public class DOMDestination extends AbstractDestination {

    /* renamed from: f */
    public final DOMWriter f101330f;

    public DOMDestination(Node node) {
        DOMWriter dOMWriter = new DOMWriter();
        this.f101330f = dOMWriter;
        dOMWriter.setNode(node);
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() throws SaxonApiException {
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) {
        this.f101330f.setPipelineConfiguration(pipelineConfiguration);
        return serializationProperties.makeSequenceNormalizer(this.f101330f);
    }
}
