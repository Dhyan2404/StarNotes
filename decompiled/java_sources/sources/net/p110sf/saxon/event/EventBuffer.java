package net.p110sf.saxon.event;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.Event;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class EventBuffer extends SequenceReceiver {

    /* renamed from: e */
    public final List<Event> f98987e;

    public EventBuffer(PipelineConfiguration pipelineConfiguration) {
        super(pipelineConfiguration);
        this.f98987e = new ArrayList();
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        this.f98987e.add(new Event.Append(item, location, i));
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98987e.add(new Event.Text(unicodeString, location, i));
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98987e.add(new Event.Comment(unicodeString, location, i));
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f98987e.add(new Event.EndDocument());
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f98987e.add(new Event.EndElement());
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98987e.add(new Event.ProcessingInstruction(str, unicodeString, location, i));
    }

    public void replay(Receiver receiver) throws XPathException {
        Iterator<Event> it2 = this.f98987e.iterator();
        while (it2.hasNext()) {
            it2.next().replay(receiver);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f98987e.add(new Event.StartDocument(i));
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f98987e.add(new Event.StartElement(nodeName, schemaType, attributeMap, namespaceMap, location, i));
    }
}
