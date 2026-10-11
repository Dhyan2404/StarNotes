package net.p110sf.saxon.s9api;

import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.StreamWriterToReceiver;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class BuildingStreamWriterImpl extends StreamWriterToReceiver implements BuildingStreamWriter {

    /* renamed from: p */
    public Builder f101329p;

    public BuildingStreamWriterImpl(Receiver receiver, Builder builder) {
        super(receiver);
        this.f101329p = builder;
        builder.open();
    }

    @Override // net.p110sf.saxon.s9api.BuildingStreamWriter
    public XdmNode getDocumentNode() throws SaxonApiException {
        try {
            this.f101329p.close();
            return new XdmNode(this.f101329p.getCurrentRoot());
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }
}
