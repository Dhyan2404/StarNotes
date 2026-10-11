package com.sunia.HTREnginev2;

import java.util.function.Predicate;
import net.p110sf.saxon.dom.NodeOverNodeInfo;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodeSelector;
import net.p110sf.saxon.tree.NamespaceNode;
import net.p110sf.saxon.tree.iter.AxisIterator;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes11.dex */
public class oqe implements NamedNodeMap {

    /* renamed from: e */
    public final NodeInfo f80042e;

    /* renamed from: f */
    public NamespaceBinding[] f80043f;

    /* renamed from: g */
    public boolean f80044g;

    public oqe(NodeInfo nodeInfo) {
        this.f80042e = nodeInfo;
        if (nodeInfo.getConfiguration().getXMLVersion() == 10) {
            this.f80044g = true;
        }
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m56142e(String str, NodeInfo nodeInfo) {
        return nodeInfo.getDisplayName().equals(str);
    }

    /* renamed from: b */
    public final NamespaceBinding[] m56143b() {
        if (this.f80043f == null) {
            this.f80043f = m56144c();
        }
        return this.f80043f;
    }

    /* renamed from: c */
    public final NamespaceBinding[] m56144c() {
        NamespaceMap allNamespaces = this.f80042e.getAllNamespaces();
        NodeInfo parent = this.f80042e.getParent();
        return (parent == null || parent.getNodeKind() != 1) ? allNamespaces.getNamespaceBindings() : allNamespaces.getDifferences(parent.getAllNamespaces(), !this.f80044g);
    }

    /* renamed from: d */
    public final int m56145d() {
        return m56143b().length;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public int getLength() {
        int i = 0;
        while (this.f80042e.iterateAxis(2).next() != null) {
            i++;
        }
        return m56145d() + i;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItem(final String str) {
        NamespaceBinding namespaceBinding;
        NamespaceBinding namespaceBinding2;
        int i = 0;
        if (str.equals("xmlns")) {
            NamespaceBinding[] m56143b = m56143b();
            while (i < m56143b.length && (namespaceBinding2 = m56143b[i]) != null) {
                if (namespaceBinding2.getPrefix().isEmpty()) {
                    return NodeOverNodeInfo.wrap(new NamespaceNode(this.f80042e, m56143b[i], i + 1));
                }
                i++;
            }
            return null;
        }
        if (!str.startsWith("xmlns:")) {
            NodeInfo next = this.f80042e.iterateAxis(2, NodeSelector.m63449of(new Predicate() { // from class: com.sunia.HTREnginev2.nqe
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m56142e;
                    m56142e = oqe.m56142e(str, (NodeInfo) obj);
                    return m56142e;
                }
            })).next();
            if (next == null) {
                return null;
            }
            return NodeOverNodeInfo.wrap(next);
        }
        String substring = str.substring(6);
        NamespaceBinding[] m56143b2 = m56143b();
        while (i < m56143b2.length && (namespaceBinding = m56143b2[i]) != null) {
            if (substring.equals(namespaceBinding.getPrefix())) {
                return NodeOverNodeInfo.wrap(new NamespaceNode(this.f80042e, m56143b2[i], i + 1));
            }
            i++;
        }
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItemNS(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if ("http://www.w3.org/2000/xmlns/".equals(str)) {
            return getNamedItem("xmlns:" + str2);
        }
        if (str.equals("") && str2.equals("xmlns")) {
            return getNamedItem("xmlns");
        }
        AxisIterator iterateAxis = this.f80042e.iterateAxis(2);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return null;
            }
            if (str.equals(next.getURI()) && str2.equals(next.getLocalPart())) {
                return NodeOverNodeInfo.wrap(next);
            }
        }
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node item(int i) {
        if (i < 0) {
            return null;
        }
        NamespaceBinding[] m56143b = m56143b();
        if (i < m56143b.length) {
            return NodeOverNodeInfo.wrap(new NamespaceNode(this.f80042e, m56143b[i], i));
        }
        int length = i - m56143b.length;
        AxisIterator iterateAxis = this.f80042e.iterateAxis(2);
        int i2 = 0;
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return null;
            }
            if (i2 == length) {
                return NodeOverNodeInfo.wrap(next);
            }
            i2++;
        }
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItem(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItemNS(String str, String str2) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItem(Node node) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItemNS(Node node) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
        return null;
    }
}
