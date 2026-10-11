package net.p110sf.saxon.s9api;

import net.p110sf.saxon.event.ContentHandlerProxy;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.serialize.SerializationProperties;
import org.xml.sax.ContentHandler;

/* loaded from: classes11.dex */
public class SAXDestination extends AbstractDestination {

    /* renamed from: f */
    public final ContentHandler f101361f;

    public SAXDestination(ContentHandler contentHandler) {
        this.f101361f = contentHandler;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() {
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) {
        ContentHandlerProxy contentHandlerProxy = new ContentHandlerProxy();
        contentHandlerProxy.setUnderlyingContentHandler(this.f101361f);
        contentHandlerProxy.setPipelineConfiguration(pipelineConfiguration);
        return serializationProperties.makeSequenceNormalizer(contentHandlerProxy);
    }
}
