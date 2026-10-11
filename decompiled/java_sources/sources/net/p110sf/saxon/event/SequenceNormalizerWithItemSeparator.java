package net.p110sf.saxon.event;

import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class SequenceNormalizerWithItemSeparator extends SequenceNormalizer {

    /* renamed from: g */
    public final UnicodeString f99099g;

    /* renamed from: h */
    public boolean f99100h;

    public SequenceNormalizerWithItemSeparator(Receiver receiver, UnicodeString unicodeString) {
        super(receiver);
        this.f99100h = true;
        this.f99099g = unicodeString;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        if (item instanceof ArrayItem) {
            flatten((ArrayItem) item, location, i);
        } else if (!(item instanceof AtomicValue)) {
            decompose(item, location, i);
        } else {
            m62514c();
            this.nextReceiver.characters(item.getUnicodeStringValue(), location, 0);
        }
    }

    /* renamed from: c */
    public final void m62514c() throws XPathException {
        if (this.level != 0 || this.f99100h) {
            this.f99100h = false;
        } else {
            super.characters(this.f99099g, Loc.NONE, 0);
        }
    }

    @Override // net.p110sf.saxon.event.SequenceNormalizer, net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m62514c();
        super.characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceNormalizer, net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        super.close();
    }

    @Override // net.p110sf.saxon.event.SequenceNormalizer, net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m62514c();
        super.comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceNormalizer, net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        this.f99100h = true;
        super.open();
    }

    @Override // net.p110sf.saxon.event.SequenceNormalizer, net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        m62514c();
        super.processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceNormalizer, net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        m62514c();
        super.startDocument(i);
    }

    @Override // net.p110sf.saxon.event.SequenceNormalizer, net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m62514c();
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
