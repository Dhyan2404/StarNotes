package net.p110sf.saxon.event;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.event.OutputterEvent;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public class OutputterEventBuffer extends Outputter {

    /* renamed from: e */
    public List<OutputterEvent> f99040e = new ArrayList();

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) {
        this.f99040e.add(new OutputterEvent.Append(item, location, i));
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) {
        this.f99040e.add(new OutputterEvent.Attribute(nodeName, simpleType, str.toString(), location, i));
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) {
        this.f99040e.add(new OutputterEvent.Text(unicodeString, location, i));
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void close() {
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) {
        this.f99040e.add(new OutputterEvent.Comment(unicodeString, location, i));
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f99040e.add(new OutputterEvent.EndDocument());
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f99040e.add(new OutputterEvent.EndElement());
    }

    public boolean isEmpty() {
        return this.f99040e.isEmpty();
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void namespace(String str, String str2, int i) {
        this.f99040e.add(new OutputterEvent.Namespace(str, str2, i));
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) {
        this.f99040e.add(new OutputterEvent.ProcessingInstruction(str, unicodeString, location, i));
    }

    public void replay(Outputter outputter) throws XPathException {
        Iterator<OutputterEvent> it2 = this.f99040e.iterator();
        while (it2.hasNext()) {
            it2.next().replay(outputter);
        }
    }

    public void reset() {
        this.f99040e.clear();
    }

    public void setBuffer(List<OutputterEvent> list) {
        this.f99040e = list;
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startContent() {
        this.f99040e.add(new OutputterEvent.StartContent());
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.f99040e.add(new OutputterEvent.StartDocument(i));
    }

    @Override // net.p110sf.saxon.event.Outputter
    public void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) {
        this.f99040e.add(new OutputterEvent.StartElement(nodeName, schemaType, location, i));
    }

    @Override // net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f99040e.add(new OutputterEvent.StartElement(nodeName, schemaType, location, i));
        for (AttributeInfo attributeInfo : attributeMap) {
            this.f99040e.add(new OutputterEvent.Attribute(attributeInfo.getNodeName(), attributeInfo.getType(), attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties()));
        }
        Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            this.f99040e.add(new OutputterEvent.Namespace(next.getPrefix(), next.getURI(), i));
        }
        this.f99040e.add(new OutputterEvent.StartContent());
    }
}
