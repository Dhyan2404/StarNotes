package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class Valve extends ProxyReceiver {

    /* renamed from: e */
    public boolean f99147e;

    /* renamed from: f */
    public final String f99148f;

    /* renamed from: g */
    public final Receiver f99149g;

    public Valve(String str, Receiver receiver, Receiver receiver2) {
        super(receiver);
        this.f99147e = false;
        this.f99148f = str;
        this.f99149g = receiver2;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        if (!this.f99147e) {
            this.f99147e = true;
            if (nodeName.getURI().equals(this.f99148f)) {
                this.f99149g.open();
                this.f99149g.startDocument(0);
                try {
                    getNextReceiver().close();
                } catch (XPathException unused) {
                }
                setUnderlyingReceiver(this.f99149g);
            }
        }
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    public boolean wasDiverted() {
        return getNextReceiver() == this.f99149g;
    }
}
