package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.CodedName;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class NamePoolConverter extends ProxyReceiver {

    /* renamed from: e */
    public NamePool f98998e;

    /* renamed from: f */
    public NamePool f98999f;

    public NamePoolConverter(Receiver receiver, NamePool namePool, NamePool namePool2) {
        super(receiver);
        this.f98998e = namePool;
        this.f98999f = namePool2;
    }

    /* renamed from: c */
    public final void m62495c(SchemaType schemaType) {
        if ((schemaType.getFingerprint() & NamePool.USER_DEFINED_MASK) != 0) {
            throw new UnsupportedOperationException("Cannot convert a user-typed node to a different name pool");
        }
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m62495c(schemaType);
        CodedName codedName = new CodedName(this.f98999f.allocateFingerprint(nodeName.getURI(), nodeName.getLocalPart()), nodeName.getPrefix(), this.f98999f);
        EmptyAttributeMap emptyAttributeMap = EmptyAttributeMap.getInstance();
        AttributeMap attributeMap2 = emptyAttributeMap;
        for (AttributeInfo attributeInfo : attributeMap) {
            m62495c(attributeInfo.getType());
            attributeMap2 = attributeMap2.put(new AttributeInfo(new CodedName(this.f98999f.allocateFingerprint(attributeInfo.getNodeName().getURI(), attributeInfo.getNodeName().getLocalPart()), attributeInfo.getNodeName().getPrefix(), this.f98999f), attributeInfo.getType(), attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties()));
        }
        this.nextReceiver.startElement(codedName, schemaType, attributeMap2, namespaceMap, location, i);
    }
}
