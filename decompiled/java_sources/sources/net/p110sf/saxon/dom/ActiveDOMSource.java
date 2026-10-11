package net.p110sf.saxon.dom;

import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.trans.XPathException;
import org.w3c.dom.Node;

/* loaded from: classes11.dex */
public class ActiveDOMSource extends DOMSource implements ActiveSource {
    public ActiveDOMSource(Node node, String str) {
        super(node, str);
    }

    @Override // net.p110sf.saxon.lib.ActiveSource
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        DOMObjectModel.sendDOMSource(this, receiver);
    }

    public ActiveDOMSource(DOMSource dOMSource) {
        setNode(dOMSource.getNode());
        setSystemId(dOMSource.getSystemId());
    }
}
