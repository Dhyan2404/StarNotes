package net.p110sf.saxon.pull;

import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.transform.stax.StAXSource;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ActiveStAXSource implements ActiveSource {

    /* renamed from: e */
    public StAXSource f100940e;

    public ActiveStAXSource(StAXSource stAXSource) {
        this.f100940e = stAXSource;
    }

    public static ActiveStAXSource fromStAXSource(StAXSource stAXSource) throws XMLStreamException {
        if (stAXSource.getXMLStreamReader() != null) {
            return new ActiveStAXSource(stAXSource);
        }
        throw new XMLStreamException("Saxon can only handle a StAXSource that wraps an XMLStreamReader");
    }

    @Override // net.p110sf.saxon.lib.ActiveSource
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        XMLStreamReader xMLStreamReader = this.f100940e.getXMLStreamReader();
        if (xMLStreamReader == null) {
            throw new XPathException("Saxon can only handle a StAXSource that wraps an XMLStreamReader");
        }
        StaxBridge staxBridge = new StaxBridge();
        staxBridge.setXMLStreamReader(xMLStreamReader);
        new PullSource(staxBridge).deliver(receiver, parseOptions);
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return this.f100940e.getSystemId();
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f100940e.setSystemId(str);
    }
}
