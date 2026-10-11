package net.p110sf.saxon.event;

import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.s9api.Action;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CloseNotifier extends ProxyReceiver {

    /* renamed from: e */
    public final List<Action> f98929e;

    public CloseNotifier(Receiver receiver, List<Action> list) {
        super(receiver);
        this.f98929e = list;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        super.close();
        try {
            List<Action> list = this.f98929e;
            if (list != null) {
                Iterator<Action> it2 = list.iterator();
                while (it2.hasNext()) {
                    it2.next().act();
                }
            }
        } catch (SaxonApiException e) {
            throw XPathException.makeXPathException(e);
        }
    }
}
