package net.p110sf.saxon.event;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Action;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public abstract class SequenceNormalizer extends ProxyReceiver {

    /* renamed from: e */
    public List<Action> f99097e;

    /* renamed from: f */
    public boolean f99098f;
    protected int level;

    public SequenceNormalizer(Receiver receiver) {
        super(receiver);
        this.level = 0;
        this.f99098f = false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        try {
            super.characters(unicodeString, location, i);
            this.previousAtomic = false;
        } catch (XPathException e) {
            this.f99098f = true;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        if (this.f99098f) {
            super.close();
            return;
        }
        getNextReceiver().endDocument();
        super.close();
        try {
            List<Action> list = this.f99097e;
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

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        try {
            super.comment(unicodeString, location, i);
            this.previousAtomic = false;
        } catch (XPathException e) {
            this.f99098f = true;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.level--;
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        try {
            this.level--;
            super.endElement();
            this.previousAtomic = false;
        } catch (XPathException e) {
            this.f99098f = true;
            throw e;
        }
    }

    public void onClose(List<Action> list) {
        this.f99097e = list;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.level = 0;
        this.previousAtomic = false;
        super.open();
        getNextReceiver().startDocument(0);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        try {
            super.processingInstruction(str, unicodeString, location, i);
            this.previousAtomic = false;
        } catch (XPathException e) {
            this.f99098f = true;
            throw e;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.level++;
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        try {
            this.level++;
            super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
            this.previousAtomic = false;
        } catch (XPathException e) {
            this.f99098f = true;
            throw e;
        }
    }

    public void onClose(Action action) {
        if (this.f99097e == null) {
            this.f99097e = new ArrayList();
        }
        this.f99097e.add(action);
    }
}
