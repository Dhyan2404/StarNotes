package net.p110sf.saxon.s9api;

import net.p110sf.saxon.event.CloseNotifier;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceCollector;
import net.p110sf.saxon.s9api.RawDestination;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class RawDestination extends AbstractDestination {

    /* renamed from: f */
    public SequenceCollector f101359f;

    /* renamed from: g */
    public boolean f101360g = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m63662b() throws SaxonApiException {
        this.f101360g = true;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() throws SaxonApiException {
        try {
            this.f101359f.close();
            this.f101360g = true;
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) {
        this.f101359f = new SequenceCollector(pipelineConfiguration);
        this.f101360g = false;
        this.helper.onClose(new Action() { // from class: com.sunia.HTREnginev2.scl
            @Override // net.p110sf.saxon.s9api.Action
            public final void act() {
                RawDestination.this.m63662b();
            }
        });
        return new CloseNotifier(this.f101359f, this.helper.getListeners());
    }

    public XdmValue getXdmValue() {
        if (this.f101360g) {
            return XdmValue.wrap(this.f101359f.getSequence());
        }
        throw new IllegalStateException("The result sequence has not yet been closed");
    }
}
