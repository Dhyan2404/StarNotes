package net.p110sf.saxon.dom;

import java.util.ArrayList;
import java.util.Arrays;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.tree.util.SteppingNavigator;
import net.p110sf.saxon.tree.util.SteppingNode;
import net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper;
import net.p110sf.saxon.tree.wrapper.SiblingCountingNode;
import net.p110sf.saxon.type.UType;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes11.dex */
public class DOMNodeWrapper extends AbstractNodeWrapper implements SiblingCountingNode, SteppingNode {
    protected DocumentWrapper docWrapper;

    /* renamed from: e */
    public DOMNodeWrapper f98877e;
    protected int index;
    protected Node node;
    protected short nodeKind;
    protected int span = 1;

    /* renamed from: f */
    public NamespaceBinding[] f98878f = null;

    /* renamed from: g */
    public NamespaceMap f98879g = null;

    /* renamed from: net.sf.saxon.dom.DOMNodeWrapper$a */
    /* loaded from: classes11.dex */
    public final class C18264a implements AxisIterator, LookaheadIterator {

        /* renamed from: e */
        public final ArrayList<Node> f98880e = new ArrayList<>(10);

        /* renamed from: f */
        public int f98881f;

        /* renamed from: g */
        public final DOMNodeWrapper f98882g;

        /* renamed from: h */
        public DOMNodeWrapper f98883h;

        public C18264a(DOMNodeWrapper dOMNodeWrapper) {
            this.f98881f = 0;
            synchronized (dOMNodeWrapper.docWrapper.docNode) {
                this.f98882g = dOMNodeWrapper;
                NamedNodeMap attributes = dOMNodeWrapper.node.getAttributes();
                if (attributes != null) {
                    int length = attributes.getLength();
                    for (int i = 0; i < length; i++) {
                        String nodeName = attributes.item(i).getNodeName();
                        if (!nodeName.startsWith("xmlns") || (nodeName.length() != 5 && nodeName.charAt(5) != ':')) {
                            this.f98880e.add(attributes.item(i));
                        }
                    }
                }
                this.f98881f = 0;
            }
        }

        @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
        public boolean hasNext() {
            return this.f98881f < this.f98880e.size();
        }

        @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
        public boolean supportsHasNext() {
            return true;
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            if (this.f98881f >= this.f98880e.size()) {
                return null;
            }
            DOMNodeWrapper makeWrapper = DOMNodeWrapper.makeWrapper(this.f98880e.get(this.f98881f), DOMNodeWrapper.this.docWrapper, this.f98882g, this.f98881f);
            this.f98883h = makeWrapper;
            this.f98881f++;
            return makeWrapper;
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMNodeWrapper$b */
    /* loaded from: classes11.dex */
    public final class C18265b implements AxisIterator, LookaheadIterator {

        /* renamed from: e */
        public final DOMNodeWrapper f98885e;

        /* renamed from: f */
        public final DOMNodeWrapper f98886f;

        /* renamed from: g */
        public final boolean f98887g;

        /* renamed from: h */
        public final boolean f98888h;

        /* renamed from: i */
        public final boolean f98889i;

        /* renamed from: j */
        public NodeList f98890j;

        /* renamed from: k */
        public final int f98891k;

        /* renamed from: l */
        public int f98892l;

        /* renamed from: m */
        public int f98893m;

        public C18265b(DOMNodeWrapper dOMNodeWrapper, boolean z, boolean z2, boolean z3) {
            synchronized (dOMNodeWrapper.docWrapper.docNode) {
                this.f98885e = dOMNodeWrapper;
                this.f98887g = z;
                this.f98888h = z2;
                this.f98889i = z3;
                this.f98893m = 1;
                if (z) {
                    this.f98886f = dOMNodeWrapper;
                } else {
                    this.f98886f = dOMNodeWrapper.getParent();
                }
                NodeList childNodes = this.f98886f.node.getChildNodes();
                this.f98890j = childNodes;
                int length = childNodes.getLength();
                this.f98891k = length;
                if (z) {
                    this.f98893m = 1;
                    if (z2) {
                        this.f98892l = -1;
                    } else {
                        this.f98892l = length;
                    }
                } else {
                    this.f98892l = dOMNodeWrapper.getSiblingPosition();
                    this.f98893m = dOMNodeWrapper.span;
                }
            }
        }

        /* renamed from: f */
        public final int m62465f() {
            int i = this.f98892l;
            int i2 = this.f98891k;
            int i3 = 0;
            while (i < i2) {
                short nodeType = this.f98890j.item(i).getNodeType();
                if (nodeType != 3 && nodeType != 4) {
                    break;
                }
                i++;
                i3++;
            }
            if (i3 == 0) {
                return 1;
            }
            return i3;
        }

        @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
        public boolean hasNext() {
            return this.f98888h ? this.f98892l + this.f98893m < this.f98891k : this.f98892l > 0;
        }

        /* renamed from: j */
        public final int m62466j() {
            short nodeType;
            int i = 0;
            while (true) {
                int i2 = this.f98892l;
                if (i2 < i || !((nodeType = this.f98890j.item(i2 - i).getNodeType()) == 3 || nodeType == 4)) {
                    break;
                }
                i++;
            }
            if (i == 0) {
                return 1;
            }
            return i;
        }

        @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
        public boolean supportsHasNext() {
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
        
            r1 = net.p110sf.saxon.dom.DOMNodeWrapper.makeWrapper(r1, r6.f98894n.docWrapper, r6.f98886f, r6.f98892l);
            r1.span = r6.f98893m;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0083, code lost:
        
            return r1;
         */
        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public net.p110sf.saxon.om.NodeInfo next() {
            /*
                r6 = this;
                net.sf.saxon.dom.DOMNodeWrapper r0 = r6.f98885e
                net.sf.saxon.dom.DocumentWrapper r0 = r0.docWrapper
                org.w3c.dom.Node r0 = r0.docNode
                monitor-enter(r0)
            L7:
                boolean r1 = r6.f98888h     // Catch: java.lang.Throwable -> L84
                r2 = 10
                r3 = 0
                r4 = 1
                if (r1 == 0) goto L49
                int r1 = r6.f98892l     // Catch: java.lang.Throwable -> L84
                int r5 = r6.f98893m     // Catch: java.lang.Throwable -> L84
                int r1 = r1 + r5
                r6.f98892l = r1     // Catch: java.lang.Throwable -> L84
                int r5 = r6.f98891k     // Catch: java.lang.Throwable -> L84
                if (r1 < r5) goto L1c
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L84
                return r3
            L1c:
                int r1 = r6.m62465f()     // Catch: java.lang.Throwable -> L84
                r6.f98893m = r1     // Catch: java.lang.Throwable -> L84
                org.w3c.dom.NodeList r1 = r6.f98890j     // Catch: java.lang.Throwable -> L84
                int r3 = r6.f98892l     // Catch: java.lang.Throwable -> L84
                org.w3c.dom.Node r1 = r1.item(r3)     // Catch: java.lang.Throwable -> L84
                short r3 = r1.getNodeType()     // Catch: java.lang.Throwable -> L84
                if (r3 == r4) goto L37
                if (r3 == r2) goto L7
                boolean r2 = r6.f98889i     // Catch: java.lang.Throwable -> L84
                if (r2 == 0) goto L37
                goto L7
            L37:
                net.sf.saxon.dom.DOMNodeWrapper r2 = net.p110sf.saxon.dom.DOMNodeWrapper.this     // Catch: java.lang.Throwable -> L84
                net.sf.saxon.dom.DocumentWrapper r2 = r2.docWrapper     // Catch: java.lang.Throwable -> L84
                net.sf.saxon.dom.DOMNodeWrapper r3 = r6.f98886f     // Catch: java.lang.Throwable -> L84
                int r4 = r6.f98892l     // Catch: java.lang.Throwable -> L84
                net.sf.saxon.dom.DOMNodeWrapper r1 = net.p110sf.saxon.dom.DOMNodeWrapper.makeWrapper(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L84
                int r6 = r6.f98893m     // Catch: java.lang.Throwable -> L84
                r1.span = r6     // Catch: java.lang.Throwable -> L84
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L84
                return r1
            L49:
                int r1 = r6.f98892l     // Catch: java.lang.Throwable -> L84
                int r1 = r1 - r4
                r6.f98892l = r1     // Catch: java.lang.Throwable -> L84
                if (r1 >= 0) goto L52
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L84
                return r3
            L52:
                int r1 = r6.m62466j()     // Catch: java.lang.Throwable -> L84
                r6.f98893m = r1     // Catch: java.lang.Throwable -> L84
                int r3 = r6.f98892l     // Catch: java.lang.Throwable -> L84
                int r1 = r1 + (-1)
                int r3 = r3 - r1
                r6.f98892l = r3     // Catch: java.lang.Throwable -> L84
                org.w3c.dom.NodeList r1 = r6.f98890j     // Catch: java.lang.Throwable -> L84
                org.w3c.dom.Node r1 = r1.item(r3)     // Catch: java.lang.Throwable -> L84
                short r3 = r1.getNodeType()     // Catch: java.lang.Throwable -> L84
                if (r3 == r4) goto L72
                if (r3 == r2) goto L7
                boolean r2 = r6.f98889i     // Catch: java.lang.Throwable -> L84
                if (r2 == 0) goto L72
                goto L7
            L72:
                net.sf.saxon.dom.DOMNodeWrapper r2 = net.p110sf.saxon.dom.DOMNodeWrapper.this     // Catch: java.lang.Throwable -> L84
                net.sf.saxon.dom.DocumentWrapper r2 = r2.docWrapper     // Catch: java.lang.Throwable -> L84
                net.sf.saxon.dom.DOMNodeWrapper r3 = r6.f98886f     // Catch: java.lang.Throwable -> L84
                int r4 = r6.f98892l     // Catch: java.lang.Throwable -> L84
                net.sf.saxon.dom.DOMNodeWrapper r1 = net.p110sf.saxon.dom.DOMNodeWrapper.makeWrapper(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L84
                int r6 = r6.f98893m     // Catch: java.lang.Throwable -> L84
                r1.span = r6     // Catch: java.lang.Throwable -> L84
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L84
                return r1
            L84:
                r6 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L84
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.dom.DOMNodeWrapper.C18265b.next():net.sf.saxon.om.NodeInfo");
        }
    }

    public DOMNodeWrapper(Node node, DocumentWrapper documentWrapper, DOMNodeWrapper dOMNodeWrapper, int i) {
        this.node = node;
        this.f98877e = dOMNodeWrapper;
        this.index = i;
        this.docWrapper = documentWrapper;
    }

    /* renamed from: a */
    public static UnicodeString m62458a(String str) {
        return str == null ? EmptyUnicodeString.getInstance() : StringView.m63901of(str);
    }

    /* renamed from: c */
    public static String m62459c(Attr attr) {
        String namespaceURI = attr.getNamespaceURI();
        if (namespaceURI != null) {
            return namespaceURI;
        }
        String nodeName = attr.getNodeName();
        int indexOf = nodeName.indexOf(58);
        if (indexOf < 0) {
            return "";
        }
        String str = "xmlns:" + nodeName.substring(0, indexOf);
        if (str.equals("xmlns:xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        Node ownerElement = attr.getOwnerElement();
        do {
            Element element = (Element) ownerElement;
            if (!element.hasAttribute(str)) {
                ownerElement = ownerElement.getParentNode();
                if (ownerElement == null) {
                    break;
                }
            } else {
                return element.getAttribute(str);
            }
        } while (ownerElement.getNodeType() == 1);
        throw new IllegalStateException("Undeclared namespace prefix in attribute name " + nodeName + " in DOM input");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.w3c.dom.Element, org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r5v3, types: [org.w3c.dom.Node] */
    /* renamed from: d */
    public static String m62460d(Element element) {
        String str;
        String namespaceURI = element.getNamespaceURI();
        if (namespaceURI != null) {
            return namespaceURI;
        }
        String nodeName = element.getNodeName();
        int indexOf = nodeName.indexOf(58);
        if (indexOf < 0) {
            str = "xmlns";
        } else {
            str = "xmlns:" + nodeName.substring(0, indexOf);
        }
        if (str.equals("xmlns:xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        do {
            Element element2 = element;
            if (!element2.hasAttribute(str)) {
                element = element.getParentNode();
                if (element == 0) {
                    break;
                }
            } else {
                return element2.getAttribute(str);
            }
        } while (element.getNodeType() == 1);
        if (indexOf < 0) {
            return "";
        }
        throw new IllegalStateException("Undeclared namespace prefix in element name " + nodeName + " in DOM input");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002a, code lost:
    
        return null;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.w3c.dom.Node m62461e(org.w3c.dom.Node r2, org.w3c.dom.Node r3) {
        /*
            boolean r0 = r2.hasChildNodes()
            if (r0 == 0) goto Lb
            org.w3c.dom.Node r2 = r2.getFirstChild()
            return r2
        Lb:
            r0 = 0
            if (r3 == 0) goto L15
            boolean r1 = r2.isSameNode(r3)
            if (r1 == 0) goto L15
            return r0
        L15:
            org.w3c.dom.Node r1 = r2.getNextSibling()
            if (r1 == 0) goto L1c
            return r1
        L1c:
            org.w3c.dom.Node r2 = r2.getParentNode()
            if (r2 == 0) goto L2a
            if (r3 == 0) goto L15
            boolean r1 = r2.isSameNode(r3)
            if (r1 == 0) goto L15
        L2a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.dom.DOMNodeWrapper.m62461e(org.w3c.dom.Node, org.w3c.dom.Node):org.w3c.dom.Node");
    }

    public static void expandStringValue(NodeList nodeList, UnicodeBuilder unicodeBuilder) {
        int length = nodeList.getLength();
        for (int i = 0; i < length; i++) {
            Node item = nodeList.item(i);
            short nodeType = item.getNodeType();
            if (nodeType == 1) {
                expandStringValue(item.getChildNodes(), unicodeBuilder);
            } else if (nodeType != 10 && nodeType != 7 && nodeType != 8) {
                unicodeBuilder.accept(m62458a(item.getNodeValue()));
            }
        }
    }

    public static String getLocalName(Node node) {
        String localName = node.getLocalName();
        if (localName != null) {
            return localName;
        }
        String nodeName = node.getNodeName();
        int indexOf = nodeName.indexOf(58);
        return indexOf >= 0 ? nodeName.substring(indexOf + 1) : nodeName;
    }

    public static DOMNodeWrapper makeWrapper(Node node, DocumentWrapper documentWrapper) {
        if (node == null) {
            throw new NullPointerException("NodeWrapper#makeWrapper: Node must not be null");
        }
        if (documentWrapper != null) {
            return makeWrapper(node, documentWrapper, null, -1);
        }
        throw new NullPointerException("NodeWrapper#makeWrapper: DocumentWrapper must not be null");
    }

    /* renamed from: b */
    public final boolean m62462b(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        if ((nodeInfo instanceof DOMNodeWrapper) && this.docWrapper.domLevel3) {
            if (equals(nodeInfo)) {
                return 0;
            }
            try {
                synchronized (this.docWrapper.docNode) {
                    short compareDocumentPosition = this.node.compareDocumentPosition(((DOMNodeWrapper) nodeInfo).node);
                    if ((compareDocumentPosition & 10) != 0) {
                        return 1;
                    }
                    if ((compareDocumentPosition & 20) != 0) {
                        return -1;
                    }
                }
            } catch (DOMException unused) {
            }
        }
        return nodeInfo instanceof SiblingCountingNode ? Navigator.compareOrder(this, (SiblingCountingNode) nodeInfo) : -nodeInfo.compareOrder(this);
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper, net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        boolean isSameNode;
        if (!(obj instanceof DOMNodeWrapper)) {
            return false;
        }
        DocumentWrapper documentWrapper = this.docWrapper;
        if (!documentWrapper.domLevel3) {
            DOMNodeWrapper dOMNodeWrapper = (DOMNodeWrapper) obj;
            return getNodeKind() == dOMNodeWrapper.getNodeKind() && m62462b(getLocalPart(), dOMNodeWrapper.getLocalPart()) && getSiblingPosition() == dOMNodeWrapper.getSiblingPosition() && getParent().equals(dOMNodeWrapper.getParent());
        }
        synchronized (documentWrapper.docNode) {
            isSameNode = this.node.isSameNode(((DOMNodeWrapper) obj).node);
        }
        return isSameNode;
    }

    /* renamed from: f */
    public final boolean m62463f(NodeTest nodeTest) {
        return nodeTest.getUType() == UType.ELEMENT;
    }

    /* renamed from: g */
    public final DOMNodeWrapper m62464g(Node node) {
        int i = 1;
        Node node2 = node;
        while (true) {
            node2 = node2.getNextSibling();
            if (node2 == null || !(node2.getNodeType() == 3 || node2.getNodeType() == 4)) {
                break;
            }
            i++;
        }
        DOMNodeWrapper makeWrapper = makeWrapper(node, this.docWrapper);
        makeWrapper.span = i;
        return makeWrapper;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        Navigator.appendSequentialKey(this, sb, true);
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper, net.p110sf.saxon.om.NodeInfo
    public NamespaceMap getAllNamespaces() {
        if (getNodeKind() != 1) {
            return null;
        }
        NamespaceMap namespaceMap = this.f98879g;
        if (namespaceMap != null) {
            return namespaceMap;
        }
        DOMNodeWrapper parent = getParent();
        NamespaceMap emptyMap = (parent == null || parent.getNodeKind() != 1) ? NamespaceMap.emptyMap() : parent.getAllNamespaces();
        NamedNodeMap attributes = ((Element) this.node).getAttributes();
        if (attributes != null) {
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                Attr attr = (Attr) attributes.item(i);
                String name = attr.getName();
                if (name.startsWith("xmlns")) {
                    if (name.length() == 5) {
                        emptyMap = emptyMap.bind("", attr.getValue());
                    } else if (name.charAt(5) == ':') {
                        emptyMap = emptyMap.bind(name.substring(6), attr.getValue());
                    }
                }
            }
        }
        this.f98879g = emptyMap;
        return emptyMap;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper, net.p110sf.saxon.om.NodeInfo
    public String getAttributeValue(String str, String str2) {
        NodeInfo next = iterateAxis(2, new NameTest(2, str, str2, getNamePool())).next();
        if (next == null) {
            return null;
        }
        return next.getStringValue();
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper, net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        int i;
        int i2;
        synchronized (this.docWrapper.docNode) {
            if (this.node.getNodeType() != 1) {
                return null;
            }
            NamespaceBinding[] namespaceBindingArr2 = this.f98878f;
            if (namespaceBindingArr2 != null) {
                return namespaceBindingArr2;
            }
            NamedNodeMap attributes = ((Element) this.node).getAttributes();
            if (attributes == null) {
                NamespaceBinding[] namespaceBindingArr3 = NamespaceBinding.EMPTY_ARRAY;
                this.f98878f = namespaceBindingArr3;
                return namespaceBindingArr3;
            }
            int length = attributes.getLength();
            int i3 = 0;
            for (0; i < length; i + 1) {
                String name = ((Attr) attributes.item(i)).getName();
                i = (name.equals("xmlns") || name.startsWith("xmlns:")) ? 0 : i + 1;
                i3++;
            }
            if (i3 == 0) {
                NamespaceBinding[] namespaceBindingArr4 = NamespaceBinding.EMPTY_ARRAY;
                this.f98878f = namespaceBindingArr4;
                return namespaceBindingArr4;
            }
            if (namespaceBindingArr == null || i3 > namespaceBindingArr.length) {
                namespaceBindingArr = new NamespaceBinding[i3];
            }
            int i4 = 0;
            for (int i5 = 0; i5 < length; i5++) {
                Attr attr = (Attr) attributes.item(i5);
                String name2 = attr.getName();
                if (name2.equals("xmlns")) {
                    i2 = i4 + 1;
                    namespaceBindingArr[i4] = new NamespaceBinding("", attr.getValue());
                } else if (name2.startsWith("xmlns:")) {
                    i2 = i4 + 1;
                    namespaceBindingArr[i4] = new NamespaceBinding(name2.substring(6), attr.getValue());
                }
                i4 = i2;
            }
            if (i3 < namespaceBindingArr.length) {
                namespaceBindingArr[i3] = null;
            }
            this.f98878f = (NamespaceBinding[]) Arrays.copyOf(namespaceBindingArr, namespaceBindingArr.length);
            return namespaceBindingArr;
        }
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper, net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        String nodeName;
        short s = this.nodeKind;
        if (s != 1 && s != 2 && s != 7) {
            return "";
        }
        synchronized (this.docWrapper.docNode) {
            nodeName = this.node.getNodeName();
        }
        return nodeName;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        synchronized (this.docWrapper.docNode) {
            int nodeKind = getNodeKind();
            if (nodeKind == 1 || nodeKind == 2) {
                return getLocalName(this.node);
            }
            if (nodeKind != 7) {
                return "";
            }
            return this.node.getNodeName();
        }
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getNodeKind() {
        return this.nodeKind;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        synchronized (this.docWrapper.docNode) {
            int nodeKind = getNodeKind();
            if (nodeKind != 1 && nodeKind != 2) {
                return "";
            }
            String nodeName = this.node.getNodeName();
            int indexOf = nodeName.indexOf(58);
            if (indexOf < 0) {
                return "";
            }
            return nodeName.substring(0, indexOf);
        }
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper, net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        return this.docWrapper.getRootNode();
    }

    @Override // net.p110sf.saxon.tree.wrapper.SiblingCountingNode
    public int getSiblingPosition() {
        int i = this.index;
        if (i != -1) {
            return i;
        }
        synchronized (this.docWrapper.docNode) {
            short s = this.nodeKind;
            int i2 = 0;
            if (s != 1) {
                if (s == 2) {
                    AxisIterator iterateAxis = this.f98877e.iterateAxis(2);
                    while (true) {
                        NodeInfo next = iterateAxis.next();
                        if (next == null || Navigator.haveSameName(this, next)) {
                            break;
                        }
                        i2++;
                    }
                    this.index = i2;
                    return i2;
                }
                if (s != 3 && s != 7 && s != 8) {
                    if (s != 13) {
                        this.index = 0;
                        return 0;
                    }
                    AxisIterator iterateAxis2 = this.f98877e.iterateAxis(8);
                    while (true) {
                        NodeInfo next2 = iterateAxis2.next();
                        if (next2 == null || Navigator.haveSameName(this, next2)) {
                            break;
                        }
                        i2++;
                    }
                    this.index = i2;
                    return i2;
                }
            }
            Node node = this.node;
            while (true) {
                node = node.getPreviousSibling();
                if (node == null) {
                    this.index = i2;
                    return i2;
                }
                i2++;
            }
        }
    }

    @Override // net.p110sf.saxon.tree.util.SteppingNode
    public SteppingNode getSuccessorElement(SteppingNode steppingNode, String str, String str2) {
        synchronized (this.docWrapper.docNode) {
            Node node = steppingNode == null ? null : ((DOMNodeWrapper) steppingNode).node;
            Node node2 = this.node;
            while (true) {
                node2 = m62461e(node2, node);
                if (node2 != null) {
                    if (node2.getNodeType() == 1 && (str2 == null || str2.equals(getLocalName(node2)))) {
                        if (str == null || str.equals(m62460d((Element) node2))) {
                            break;
                        }
                    }
                } else {
                    break;
                }
            }
            if (node2 == null) {
                return null;
            }
            return makeWrapper(node2, this.docWrapper);
        }
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        synchronized (this.docWrapper.docNode) {
            short s = this.nodeKind;
            if (s == 1) {
                return m62460d((Element) this.node);
            }
            if (s != 2) {
                return "";
            }
            return m62459c((Attr) this.node);
        }
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        synchronized (this.docWrapper.docNode) {
            short s = this.nodeKind;
            if (s != 1) {
                if (s == 2) {
                    return m62458a(((Attr) this.node).getValue()).tidy();
                }
                if (s == 3) {
                    if (this.span == 1) {
                        return m62458a(this.node.getNodeValue()).tidy();
                    }
                    UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
                    Node node = this.node;
                    for (int i = 0; i < this.span; i++) {
                        unicodeBuilder.accept(m62458a(node.getNodeValue()));
                        node = node.getNextSibling();
                    }
                    return unicodeBuilder.toUnicodeString();
                }
                if (s == 7 || s == 8) {
                    return m62458a(this.node.getNodeValue()).tidy();
                }
                if (s != 9) {
                    return EmptyUnicodeString.getInstance();
                }
            }
            NodeList childNodes = this.node.getChildNodes();
            UnicodeBuilder unicodeBuilder2 = new UnicodeBuilder();
            expandStringValue(childNodes, unicodeBuilder2);
            return unicodeBuilder2.toUnicodeString();
        }
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper, net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        boolean z;
        synchronized (this.docWrapper.docNode) {
            z = this.node.getNodeType() != 2 && this.node.hasChildNodes();
        }
        return z;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        boolean z;
        synchronized (this.docWrapper.docNode) {
            Node node = this.node;
            z = (node instanceof Attr) && ((Attr) node).isId();
        }
        return z;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper
    public AxisIterator iterateAttributes(NodeTest nodeTest) {
        C18264a c18264a = new C18264a(this);
        return nodeTest != AnyNodeTest.getInstance() ? new Navigator.AxisFilter(c18264a, nodeTest) : c18264a;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper
    public AxisIterator iterateChildren(NodeTest nodeTest) {
        Navigator.EmptyTextFilter emptyTextFilter = new Navigator.EmptyTextFilter(new C18265b(this, true, true, m62463f(nodeTest)));
        return nodeTest != AnyNodeTest.getInstance() ? new Navigator.AxisFilter(emptyTextFilter, nodeTest) : emptyTextFilter;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper
    public AxisIterator iterateDescendants(NodeTest nodeTest, boolean z) {
        return new SteppingNavigator.DescendantAxisIterator(this, z, nodeTest);
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper
    public AxisIterator iterateSiblings(NodeTest nodeTest, boolean z) {
        Navigator.EmptyTextFilter emptyTextFilter = new Navigator.EmptyTextFilter(new C18265b(this, false, z, m62463f(nodeTest)));
        return nodeTest != AnyNodeTest.getInstance() ? new Navigator.AxisFilter(emptyTextFilter, nodeTest) : emptyTextFilter;
    }

    @Override // net.p110sf.saxon.tree.util.SteppingNode
    public DOMNodeWrapper getFirstChild() {
        synchronized (this.docWrapper.docNode) {
            Node firstChild = this.node.getFirstChild();
            if (firstChild == null) {
                return null;
            }
            if (firstChild.getNodeType() == 10) {
                firstChild = firstChild.getNextSibling();
            }
            if (firstChild.getNodeType() != 3 && firstChild.getNodeType() != 4) {
                return makeWrapper(firstChild, this.docWrapper);
            }
            return m62464g(firstChild);
        }
    }

    @Override // net.p110sf.saxon.tree.util.SteppingNode
    public DOMNodeWrapper getNextSibling() {
        synchronized (this.docWrapper.docNode) {
            Node node = this.node;
            for (int i = 0; i < this.span; i++) {
                node = node.getNextSibling();
            }
            if (node == null) {
                return null;
            }
            short nodeType = node.getNodeType();
            if (nodeType == 10) {
                node = node.getNextSibling();
            } else {
                if (nodeType != 3) {
                    if (nodeType == 4) {
                    }
                }
                return m62464g(node);
            }
            return makeWrapper(node, this.docWrapper);
        }
    }

    @Override // net.p110sf.saxon.tree.util.SteppingNode
    public DOMNodeWrapper getPreviousSibling() {
        synchronized (this.docWrapper.docNode) {
            Node previousSibling = this.node.getPreviousSibling();
            if (previousSibling == null) {
                return null;
            }
            short nodeType = previousSibling.getNodeType();
            if (nodeType == 10) {
                return null;
            }
            if (nodeType != 3 && nodeType != 4) {
                return makeWrapper(previousSibling, this.docWrapper);
            }
            int i = 1;
            while (true) {
                Node previousSibling2 = previousSibling.getPreviousSibling();
                if (previousSibling2 == null || !(previousSibling2.getNodeType() == 3 || previousSibling2.getNodeType() == 4)) {
                    break;
                }
                i++;
                previousSibling = previousSibling2;
            }
            DOMNodeWrapper makeWrapper = makeWrapper(previousSibling, this.docWrapper);
            makeWrapper.span = i;
            return makeWrapper;
        }
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractNodeWrapper, net.p110sf.saxon.om.NodeInfo
    public DocumentWrapper getTreeInfo() {
        return (DocumentWrapper) this.treeInfo;
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualNode
    public Node getUnderlyingNode() {
        return this.node;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public DOMNodeWrapper getParent() {
        if (this.f98877e == null) {
            synchronized (this.docWrapper.docNode) {
                if (getNodeKind() != 2) {
                    Node parentNode = this.node.getParentNode();
                    if (parentNode == null) {
                        return null;
                    }
                    this.f98877e = makeWrapper(parentNode, this.docWrapper);
                } else {
                    this.f98877e = makeWrapper(((Attr) this.node).getOwnerElement(), this.docWrapper);
                }
            }
        }
        return this.f98877e;
    }

    public static DOMNodeWrapper makeWrapper(Node node, DocumentWrapper documentWrapper, DOMNodeWrapper dOMNodeWrapper, int i) {
        DOMNodeWrapper dOMNodeWrapper2;
        switch (node.getNodeType()) {
            case 1:
                dOMNodeWrapper2 = new DOMNodeWrapper(node, documentWrapper, dOMNodeWrapper, i);
                dOMNodeWrapper2.nodeKind = (short) 1;
                break;
            case 2:
                dOMNodeWrapper2 = new DOMNodeWrapper(node, documentWrapper, dOMNodeWrapper, i);
                dOMNodeWrapper2.nodeKind = (short) 2;
                break;
            case 3:
                dOMNodeWrapper2 = new DOMNodeWrapper(node, documentWrapper, dOMNodeWrapper, i);
                dOMNodeWrapper2.nodeKind = (short) 3;
                break;
            case 4:
                dOMNodeWrapper2 = new DOMNodeWrapper(node, documentWrapper, dOMNodeWrapper, i);
                dOMNodeWrapper2.nodeKind = (short) 3;
                break;
            case 5:
                throw new IllegalStateException("DOM contains entity reference nodes, which Saxon does not support. The DOM should be built using the expandEntityReferences() option");
            case 6:
            case 10:
            default:
                throw new IllegalArgumentException("Unsupported node type in DOM! " + ((int) node.getNodeType()) + " instance " + node);
            case 7:
                dOMNodeWrapper2 = new DOMNodeWrapper(node, documentWrapper, dOMNodeWrapper, i);
                dOMNodeWrapper2.nodeKind = (short) 7;
                break;
            case 8:
                dOMNodeWrapper2 = new DOMNodeWrapper(node, documentWrapper, dOMNodeWrapper, i);
                dOMNodeWrapper2.nodeKind = (short) 8;
                break;
            case 9:
            case 11:
                dOMNodeWrapper2 = (DOMNodeWrapper) documentWrapper.getRootNode();
                if (dOMNodeWrapper2 == null) {
                    dOMNodeWrapper2 = new DOMNodeWrapper(node, documentWrapper, dOMNodeWrapper, i);
                    dOMNodeWrapper2.nodeKind = (short) 9;
                    break;
                }
                break;
        }
        dOMNodeWrapper2.treeInfo = documentWrapper;
        return dOMNodeWrapper2;
    }
}
