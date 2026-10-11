package net.p110sf.saxon.serialize;

import java.util.Iterator;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class XHTMLPrefixRemover extends ProxyReceiver {
    public XHTMLPrefixRemover(Receiver receiver) {
        super(receiver);
    }

    /* renamed from: c */
    public final boolean m63858c(String str) {
        return str.equals("http://www.w3.org/1999/xhtml") || str.equals("http://www.w3.org/2000/svg") || str.equals(NamespaceConstant.MATHML);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            if (m63858c(next.getURI())) {
                namespaceMap = namespaceMap.remove(next.getPrefix());
            }
        }
        if (m63858c(nodeName.getURI())) {
            String uri = nodeName.getURI();
            if (!nodeName.getPrefix().isEmpty()) {
                nodeName = new FingerprintedQName("", uri, nodeName.getLocalPart());
            }
            namespaceMap = namespaceMap.put("", uri);
        }
        NodeName nodeName2 = nodeName;
        NamespaceMap namespaceMap2 = namespaceMap;
        for (AttributeInfo attributeInfo : attributeMap) {
            if (m63858c(attributeInfo.getNodeName().getURI())) {
                namespaceMap2 = namespaceMap2.put(attributeInfo.getNodeName().getPrefix(), attributeInfo.getNodeName().getURI());
            }
        }
        this.nextReceiver.startElement(nodeName2, schemaType, attributeMap, namespaceMap2, location, i);
    }
}
