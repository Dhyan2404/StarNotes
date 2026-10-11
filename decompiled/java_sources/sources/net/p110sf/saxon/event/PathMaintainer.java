package net.p110sf.saxon.event;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Stack;
import net.p110sf.saxon.om.AbsolutePath;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class PathMaintainer extends ProxyReceiver {

    /* renamed from: e */
    public final Stack<AbsolutePath.PathElement> f99048e;

    /* renamed from: f */
    public final Stack<HashMap<NodeName, Integer>> f99049f;

    public PathMaintainer(Receiver receiver) {
        super(receiver);
        this.f99048e = new Stack<>();
        Stack<HashMap<NodeName, Integer>> stack = new Stack<>();
        this.f99049f = stack;
        stack.push(new HashMap<>());
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.nextReceiver.endElement();
        this.f99049f.pop();
        this.f99048e.pop();
    }

    public AbsolutePath getAbsolutePath() {
        return new AbsolutePath(this.f99048e);
    }

    public String getPath(boolean z) {
        StringBuilder sb = new StringBuilder(256);
        Iterator<AbsolutePath.PathElement> it2 = this.f99048e.iterator();
        while (it2.hasNext()) {
            AbsolutePath.PathElement next = it2.next();
            sb.append('/');
            if (z) {
                String uri = next.getName().getURI();
                if (!uri.isEmpty()) {
                    sb.append('\"');
                    sb.append(uri);
                    sb.append('\"');
                }
            } else {
                String prefix = next.getName().getPrefix();
                if (!prefix.isEmpty()) {
                    sb.append(prefix);
                    sb.append(':');
                }
            }
            sb.append(next.getName().getLocalPart());
            sb.append('[');
            sb.append(next.getIndex() + "");
            sb.append(']');
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        HashMap<NodeName, Integer> peek = this.f99049f.peek();
        int intValue = peek.getOrDefault(nodeName, 0).intValue() + 1;
        peek.put(nodeName, Integer.valueOf(intValue));
        this.f99048e.push(new AbsolutePath.PathElement(1, nodeName, intValue));
        this.f99049f.push(new HashMap<>());
    }
}
