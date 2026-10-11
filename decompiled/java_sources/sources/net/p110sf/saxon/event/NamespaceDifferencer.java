package net.p110sf.saxon.event;

import java.util.Iterator;
import java.util.Properties;
import java.util.Stack;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceDeltaMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class NamespaceDifferencer extends ProxyReceiver {

    /* renamed from: e */
    public boolean f99000e;

    /* renamed from: f */
    public final Stack<NamespaceMap> f99001f;

    /* renamed from: g */
    public NodeName f99002g;

    public NamespaceDifferencer(Receiver receiver, Properties properties) {
        super(receiver);
        this.f99000e = false;
        Stack<NamespaceMap> stack = new Stack<>();
        this.f99001f = stack;
        this.f99000e = "yes".equals(properties.getProperty(SaxonOutputKeys.UNDECLARE_PREFIXES));
        stack.push(NamespaceMap.emptyMap());
    }

    /* renamed from: c */
    public final NamespaceMap m62496c(NamespaceMap namespaceMap, NamespaceMap namespaceMap2, boolean z) throws XPathException {
        if (namespaceMap == namespaceMap2) {
            return NamespaceMap.emptyMap();
        }
        NamespaceMap emptyMap = NamespaceDeltaMap.emptyMap();
        Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            String uri = namespaceMap2.getURI(next.getPrefix());
            if (uri == null) {
                emptyMap = emptyMap.put(next.getPrefix(), next.getURI());
            } else if (!uri.equals(next.getURI())) {
                emptyMap = emptyMap.put(next.getPrefix(), next.getURI());
            }
        }
        if (!this.f99000e) {
            return (namespaceMap2.getDefaultNamespace().isEmpty() || !namespaceMap.getDefaultNamespace().isEmpty()) ? emptyMap : emptyMap.put("", "");
        }
        Iterator<NamespaceBinding> it3 = namespaceMap2.iterator();
        while (it3.hasNext()) {
            NamespaceBinding next2 = it3.next();
            if (namespaceMap.getURI(next2.getPrefix()) == null) {
                emptyMap = emptyMap.put(next2.getPrefix(), "");
            }
        }
        return emptyMap;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f99001f.pop();
        super.endElement();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f99002g = nodeName;
        NamespaceMap peek = this.f99001f.peek();
        this.f99001f.push(namespaceMap);
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, m62496c(namespaceMap, peek, this.f99002g.hasURI("")), location, i);
    }
}
