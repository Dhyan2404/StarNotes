package net.p110sf.saxon.event;

import java.util.Iterator;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.om.Action;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class SignificantItemDetector extends ProxyOutputter {

    /* renamed from: f */
    public int f99105f;

    /* renamed from: g */
    public boolean f99106g;

    /* renamed from: h */
    public final Action f99107h;

    public SignificantItemDetector(Outputter outputter, Action action) {
        super(outputter);
        this.f99105f = 0;
        this.f99106g = true;
        this.f99107h = action;
    }

    public static boolean isSignificant(Item item) {
        Item next;
        if (item instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) item;
            if (nodeInfo.getNodeKind() == 3 && nodeInfo.getUnicodeStringValue().isEmpty()) {
                return false;
            }
            return nodeInfo.getNodeKind() != 9 || nodeInfo.hasChildNodes();
        }
        if (item instanceof AtomicValue) {
            return !item.getUnicodeStringValue().isEmpty();
        }
        if (!(item instanceof ArrayItem)) {
            return true;
        }
        ArrayItem arrayItem = (ArrayItem) item;
        if (arrayItem.isEmpty()) {
            return true;
        }
        Iterator<GroundedValue> it2 = arrayItem.members().iterator();
        while (it2.hasNext()) {
            try {
                SequenceIterator iterate = it2.next().iterate();
                do {
                    next = iterate.next();
                    if (next != null) {
                    }
                } while (!isSignificant(next));
            } catch (UncheckedXPathException unused) {
            }
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public final void m62518a() throws XPathException {
        if (this.f99106g) {
            this.f99107h.doAction();
            this.f99106g = false;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        if (isSignificant(item)) {
            m62518a();
        }
        super.m62516b(item, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException {
        m62518a();
        getNextOutputter().attribute(nodeName, simpleType, str, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!unicodeString.isEmpty()) {
            m62518a();
        }
        getNextOutputter().characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        m62518a();
        getNextOutputter().comment(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        int i = this.f99105f - 1;
        this.f99105f = i;
        if (i != 0) {
            getNextOutputter().endDocument();
        }
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f99105f--;
        getNextOutputter().endElement();
    }

    public boolean isEmpty() {
        return this.f99106g;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void namespace(String str, String str2, int i) throws XPathException {
        m62518a();
        getNextOutputter().namespace(str, str2, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        m62518a();
        getNextOutputter().processingInstruction(str, unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void startContent() throws XPathException {
        getNextOutputter().startContent();
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        int i2 = this.f99105f;
        this.f99105f = i2 + 1;
        if (i2 != 0) {
            getNextOutputter().startDocument(i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) throws XPathException {
        m62518a();
        this.f99105f++;
        getNextOutputter().startElement(nodeName, schemaType, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m62518a();
        this.f99105f++;
        getNextOutputter().startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
