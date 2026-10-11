package org.jsoup.nodes;

import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.jsoup.select.NodeFilter;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;

/* loaded from: classes13.dex */
public abstract class Node implements Cloneable {
    public static boolean DEBUG_POS = false;
    public static final String XPATH_SEPARATOR = "/";

    /* renamed from: l */
    public static final String f114100l = "";

    /* renamed from: e */
    public Node f114101e;

    /* renamed from: f */
    public int f114102f;

    /* renamed from: g */
    public int f114103g = Integer.MIN_VALUE;

    /* renamed from: h */
    public Object f114104h;

    /* renamed from: i */
    public int f114105i;

    /* renamed from: j */
    public int f114106j;

    /* renamed from: k */
    public int f114107k;

    /* renamed from: org.jsoup.nodes.Node$a */
    /* loaded from: classes13.dex */
    public static class C20251a implements NodeVisitor {

        /* renamed from: a */
        public Appendable f114108a;

        /* renamed from: b */
        public Document.OutputSettings f114109b;

        public C20251a(Appendable appendable, Document.OutputSettings outputSettings) {
            this.f114108a = appendable;
            this.f114109b = outputSettings;
            outputSettings.m71122b();
        }

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            try {
                node.mo71115f(this.f114108a, i, this.f114109b);
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
            if (node.nodeName().equals(PsuedoNames.PSEUDONAME_TEXT)) {
                return;
            }
            try {
                node.mo71116g(this.f114108a, i, this.f114109b);
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }
    }

    /* renamed from: a */
    public final Element m71153a(Element element) {
        Elements children = element.children();
        return children.size() > 0 ? m71153a(children.get(0)) : element;
    }

    public String absUrl(String str) {
        Validate.notEmpty(str);
        return !hasAttr(str) ? "" : StringUtil.resolve(baseUri(), attr(str));
    }

    public void addChildren(int i, Node... nodeArr) {
        Validate.notNull(nodeArr);
        if (nodeArr.length == 0) {
            return;
        }
        List<Node> ensureChildNodes = ensureChildNodes();
        Node parent = nodeArr[0].parent();
        if (parent == null || parent.childNodeSize() != nodeArr.length) {
            Validate.noNullElements(nodeArr);
            for (Node node : nodeArr) {
                reparentChild(node);
            }
            ensureChildNodes.addAll(i, Arrays.asList(nodeArr));
            m71155c(i);
            return;
        }
        List<Node> childNodes = parent.childNodes();
        int length = nodeArr.length;
        while (true) {
            int i2 = length - 1;
            if (length <= 0 || nodeArr[i2] != childNodes.get(i2)) {
                break;
            } else {
                length = i2;
            }
        }
        parent.empty();
        ensureChildNodes.addAll(i, Arrays.asList(nodeArr));
        int length2 = nodeArr.length;
        while (true) {
            int i3 = length2 - 1;
            if (length2 <= 0) {
                m71155c(i);
                return;
            } else {
                nodeArr[i3].f114101e = this;
                length2 = i3;
            }
        }
    }

    public Node after(String str) {
        m71156d(this.f114102f + 1, str);
        return this;
    }

    public String attr(String str) {
        Validate.notNull(str);
        if (!hasAttributes()) {
            return "";
        }
        String ignoreCase = attributes().getIgnoreCase(str);
        return ignoreCase.length() > 0 ? ignoreCase : str.startsWith("abs:") ? absUrl(str.substring(4)) : "";
    }

    public abstract Attributes attributes();

    /* renamed from: b */
    public final void m71154b() {
        Node node = this.f114101e;
        if (node != null) {
            this.f114103g = node.getXPathCode();
        }
        String str = this.f114102f + "/";
        int i = this.f114103g;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i = (i * 31) + str.charAt(i2);
        }
        setXPathCode(i);
    }

    public abstract String baseUri();

    public Node before(String str) {
        m71156d(this.f114102f, str);
        return this;
    }

    public int byteEndPos() {
        return this.f114106j;
    }

    public int byteStartPos() {
        return this.f114105i;
    }

    /* renamed from: c */
    public final void m71155c(int i) {
        List<Node> ensureChildNodes = ensureChildNodes();
        while (i < ensureChildNodes.size()) {
            ensureChildNodes.get(i).setSiblingIndex(i);
            i++;
        }
    }

    public Node childNode(int i) {
        return ensureChildNodes().get(i);
    }

    public abstract int childNodeSize();

    public List<Node> childNodes() {
        return Collections.unmodifiableList(ensureChildNodes());
    }

    public Node[] childNodesAsArray() {
        return (Node[]) ensureChildNodes().toArray(new Node[0]);
    }

    public List<Node> childNodesCopy() {
        List<Node> ensureChildNodes = ensureChildNodes();
        ArrayList arrayList = new ArrayList(ensureChildNodes.size());
        Iterator<Node> it2 = ensureChildNodes.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().mo74371clone());
        }
        return arrayList;
    }

    public Node clearAttributes() {
        Iterator<Attribute> it2 = attributes().iterator();
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
        return this;
    }

    /* renamed from: d */
    public final void m71156d(int i, String str) {
        Validate.notNull(str);
        Validate.notNull(this.f114101e);
        this.f114101e.addChildren(i, (Node[]) C20256e.m71163b(this).parseFragmentInput(str, parent() instanceof Element ? (Element) parent() : null, baseUri()).toArray(new Node[0]));
    }

    public Node doClone(Node node) {
        try {
            Node node2 = (Node) super.clone();
            node2.f114101e = node;
            node2.f114102f = node == null ? 0 : this.f114102f;
            return node2;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public abstract void doSetBaseUri(String str);

    /* renamed from: e */
    public void mo71133e() {
    }

    public abstract Node empty();

    public abstract List<Node> ensureChildNodes();

    public boolean equals(Object obj) {
        return this == obj;
    }

    /* renamed from: f */
    public abstract void mo71115f(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException;

    public Node filter(NodeFilter nodeFilter) {
        Validate.notNull(nodeFilter);
        NodeTraversor.filter(nodeFilter, this);
        return this;
    }

    /* renamed from: g */
    public abstract void mo71116g(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException;

    public Object getStyle() {
        return this.f114104h;
    }

    public int getTagEndPos() {
        return this.f114107k;
    }

    public String getXPath() {
        String str = this.f114102f + "/";
        do {
            this = this.f114101e;
            if (this == null) {
                break;
            }
            str = this.f114102f + "/" + str;
        } while (!this.nodeName().equals("html"));
        return str;
    }

    public int getXPathCode() {
        if (this.f114103g == Integer.MIN_VALUE) {
            m71154b();
        }
        return this.f114103g;
    }

    public boolean hasAttr(String str) {
        Validate.notNull(str);
        if (str.startsWith("abs:")) {
            String substring = str.substring(4);
            if (attributes().hasKeyIgnoreCase(substring) && !absUrl(substring).equals("")) {
                return true;
            }
        }
        return attributes().hasKeyIgnoreCase(str);
    }

    public abstract boolean hasAttributes();

    public boolean hasParent() {
        return this.f114101e != null;
    }

    public boolean hasSameValue(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return outerHtml().equals(((Node) obj).outerHtml());
    }

    public <T extends Appendable> T html(T t) {
        outerHtml(t);
        return t;
    }

    public void indent(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        appendable.append('\n').append(StringUtil.padding(i * outputSettings.indentAmount()));
    }

    public Node nextSibling() {
        Node node = this.f114101e;
        if (node == null) {
            return null;
        }
        List<Node> ensureChildNodes = node.ensureChildNodes();
        int i = this.f114102f + 1;
        if (ensureChildNodes.size() > i) {
            return ensureChildNodes.get(i);
        }
        return null;
    }

    public abstract String nodeName();

    public String outerHtml() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        outerHtml(borrowBuilder);
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public Document ownerDocument() {
        Node root = root();
        if (root instanceof Document) {
            return (Document) root;
        }
        return null;
    }

    public Node parent() {
        return this.f114101e;
    }

    public final Node parentNode() {
        return this.f114101e;
    }

    public Node previousSibling() {
        Node node = this.f114101e;
        if (node != null && this.f114102f > 0) {
            return node.ensureChildNodes().get(this.f114102f - 1);
        }
        return null;
    }

    public void remove() {
        Validate.notNull(this.f114101e);
        this.f114101e.removeChild(this);
    }

    public Node removeAttr(String str) {
        Validate.notNull(str);
        attributes().removeIgnoreCase(str);
        return this;
    }

    public void removeChild(Node node) {
        Validate.isTrue(node.f114101e == this);
        int i = node.f114102f;
        ensureChildNodes().remove(i);
        m71155c(i);
        node.f114101e = null;
    }

    public void reparentChild(Node node) {
        node.setParentNode(this);
    }

    public void replaceChild(Node node, Node node2) {
        Validate.isTrue(node.f114101e == this);
        Validate.notNull(node2);
        Node node3 = node2.f114101e;
        if (node3 != null) {
            node3.removeChild(node2);
        }
        int i = node.f114102f;
        ensureChildNodes().set(i, node2);
        node2.f114101e = this;
        node2.setSiblingIndex(i);
        node.f114101e = null;
    }

    public void replaceWith(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.f114101e);
        this.f114101e.replaceChild(this, node);
    }

    public Node root() {
        while (true) {
            Node node = this.f114101e;
            if (node == null) {
                return this;
            }
            this = node;
        }
    }

    public void setBaseUri(String str) {
        Validate.notNull(str);
        doSetBaseUri(str);
    }

    public void setByteEndPos(int i) {
        this.f114106j = i;
    }

    public void setByteStartPos(int i) {
        this.f114105i = i;
    }

    public void setParentNode(Node node) {
        Validate.notNull(node);
        Node node2 = this.f114101e;
        if (node2 != null) {
            node2.removeChild(this);
        }
        this.f114101e = node;
    }

    public void setSiblingIndex(int i) {
        this.f114102f = i;
    }

    public void setStyle(Object obj) {
        this.f114104h = obj;
    }

    public void setTagEndPos(int i) {
        this.f114107k = i;
    }

    public void setXPathCode(int i) {
        this.f114103g = i;
    }

    public Node shallowClone() {
        return doClone(null);
    }

    public int siblingIndex() {
        return this.f114102f;
    }

    public List<Node> siblingNodes() {
        Node node = this.f114101e;
        if (node == null) {
            return Collections.emptyList();
        }
        List<Node> ensureChildNodes = node.ensureChildNodes();
        ArrayList arrayList = new ArrayList(ensureChildNodes.size() - 1);
        for (Node node2 : ensureChildNodes) {
            if (node2 != this) {
                arrayList.add(node2);
            }
        }
        return arrayList;
    }

    public String toString() {
        return outerHtml();
    }

    public Node traverse(NodeVisitor nodeVisitor) {
        Validate.notNull(nodeVisitor);
        NodeTraversor.traverse(nodeVisitor, this);
        return this;
    }

    public Node unwrap() {
        Validate.notNull(this.f114101e);
        List<Node> ensureChildNodes = ensureChildNodes();
        Node node = ensureChildNodes.size() > 0 ? ensureChildNodes.get(0) : null;
        this.f114101e.addChildren(this.f114102f, childNodesAsArray());
        remove();
        return node;
    }

    public Node wrap(String str) {
        Validate.notEmpty(str);
        List<Node> parseFragmentInput = C20256e.m71163b(this).parseFragmentInput(str, parent() instanceof Element ? (Element) parent() : null, baseUri());
        Node node = parseFragmentInput.get(0);
        if (!(node instanceof Element)) {
            return null;
        }
        Element element = (Element) node;
        Element m71153a = m71153a(element);
        this.f114101e.replaceChild(this, element);
        m71153a.addChildren(this);
        if (parseFragmentInput.size() > 0) {
            for (int i = 0; i < parseFragmentInput.size(); i++) {
                Node node2 = parseFragmentInput.get(i);
                node2.f114101e.removeChild(node2);
                element.appendChild(node2);
            }
        }
        return this;
    }

    public void addChildren(Node... nodeArr) {
        List<Node> ensureChildNodes = ensureChildNodes();
        for (Node node : nodeArr) {
            reparentChild(node);
            ensureChildNodes.add(node);
            node.setSiblingIndex(ensureChildNodes.size() - 1);
        }
    }

    public Node after(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.f114101e);
        this.f114101e.addChildren(this.f114102f + 1, node);
        return this;
    }

    public Node attr(String str, String str2) {
        attributes().m71111p(C20256e.m71163b(this).settings().normalizeAttribute(str), str2);
        return this;
    }

    public Node before(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.f114101e);
        this.f114101e.addChildren(this.f114102f, node);
        return this;
    }

    @Override // 
    /* renamed from: clone */
    public Node mo74371clone() {
        Node doClone = doClone(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(doClone);
        while (!linkedList.isEmpty()) {
            Node node = (Node) linkedList.remove();
            int childNodeSize = node.childNodeSize();
            for (int i = 0; i < childNodeSize; i++) {
                List<Node> ensureChildNodes = node.ensureChildNodes();
                Node doClone2 = ensureChildNodes.get(i).doClone(node);
                ensureChildNodes.set(i, doClone2);
                linkedList.add(doClone2);
            }
        }
        return doClone;
    }

    public void outerHtml(Appendable appendable) {
        NodeTraversor.traverse(new C20251a(appendable, C20256e.m71162a(this)), this);
    }
}
