package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class IDFilter extends ProxyReceiver {

    /* renamed from: e */
    public final String f98991e;

    /* renamed from: f */
    public int f98992f;

    /* renamed from: g */
    public boolean f98993g;

    public IDFilter(Receiver receiver, String str) {
        super(receiver);
        this.f98992f = 0;
        this.f98993g = false;
        this.f98991e = str;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f98992f > 0) {
            super.characters(unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f98992f > 0) {
            super.comment(unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        if (this.f98992f > 0) {
            this.nextReceiver.endElement();
            this.f98992f--;
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f98992f > 0) {
            super.processingInstruction(str, unicodeString, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f98993g = false;
        int i2 = this.f98992f;
        if (i2 != 0) {
            this.f98992f = i2 + 1;
            super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
            return;
        }
        for (AttributeInfo attributeInfo : attributeMap) {
            if (attributeInfo.getNodeName().equals(StandardNames.XML_ID_NAME) || ReceiverOption.contains(attributeInfo.getProperties(), 2048)) {
                if (attributeInfo.getValue().equals(this.f98991e)) {
                    this.f98993g = true;
                }
            }
        }
        if (this.f98993g) {
            this.f98992f = 1;
            super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return true;
    }
}
