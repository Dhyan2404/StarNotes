package net.p110sf.saxon.s9api;

import java.net.URI;

/* loaded from: classes11.dex */
public abstract class AbstractDestination implements Destination {

    /* renamed from: e */
    public URI f101319e;
    protected DestinationHelper helper = new DestinationHelper(this);

    @Override // net.p110sf.saxon.s9api.Destination
    public void closeAndNotify() throws SaxonApiException {
        this.helper.closeAndNotify();
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public URI getDestinationBaseURI() {
        return this.f101319e;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public final void onClose(Action action) {
        this.helper.onClose(action);
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void setDestinationBaseURI(URI uri) {
        this.f101319e = uri;
    }
}
