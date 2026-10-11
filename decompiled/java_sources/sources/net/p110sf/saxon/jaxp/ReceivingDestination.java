package net.p110sf.saxon.jaxp;

import com.caverock.androidsvg.SVGParser;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceiverWithOutputProperties;
import net.p110sf.saxon.event.SequenceNormalizer;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.s9api.AbstractDestination;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.serialize.SerializationProperties;

/* loaded from: classes11.dex */
public class ReceivingDestination extends AbstractDestination {

    /* renamed from: f */
    public final Receiver f100452f;

    public ReceivingDestination(Receiver receiver) {
        this.f100452f = receiver;
    }

    public boolean acceptsRawOutput() {
        Receiver receiver = this.f100452f;
        if (receiver instanceof SequenceNormalizer) {
            return true;
        }
        if (receiver instanceof ReceiverWithOutputProperties) {
            return SVGParser.f16048t.equals(((ReceiverWithOutputProperties) receiver).getOutputProperties().getProperty(SaxonOutputKeys.REQUIRE_WELL_FORMED));
        }
        return false;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() throws SaxonApiException {
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) {
        return acceptsRawOutput() ? this.f100452f : serializationProperties.makeSequenceNormalizer(this.f100452f);
    }
}
