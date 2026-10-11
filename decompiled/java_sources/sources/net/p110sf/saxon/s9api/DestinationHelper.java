package net.p110sf.saxon.s9api;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes11.dex */
public class DestinationHelper {

    /* renamed from: a */
    public final Destination f101331a;

    /* renamed from: b */
    public final List<Action> f101332b = new ArrayList();

    public DestinationHelper(Destination destination) {
        this.f101331a = destination;
    }

    public void closeAndNotify() throws SaxonApiException {
        this.f101331a.close();
        Iterator<Action> it2 = this.f101332b.iterator();
        while (it2.hasNext()) {
            it2.next().act();
        }
    }

    public List<Action> getListeners() {
        return this.f101332b;
    }

    public final void onClose(Action action) {
        this.f101332b.add(action);
    }
}
