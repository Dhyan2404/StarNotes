package org.jsoup.nodes;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.apache.commons.collections4.IteratorUtils;
import org.jsoup.helper.ChangeNotifyingArrayList;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Tag;
import org.jsoup.select.Collector;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.NodeFilter;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.QueryParser;
import org.jsoup.select.Selector;

/* loaded from: classes13.dex */
public class Element extends Node {

    /* renamed from: q */
    public static final List<Node> f114076q = Collections.emptyList();

    /* renamed from: r */
    public static final Pattern f114077r = Pattern.compile("\\s+");

    /* renamed from: s */
    public static final String f114078s = Attributes.m71104o("baseUri");

    /* renamed from: m */
    public Tag f114079m;

    /* renamed from: n */
    public WeakReference<List<Element>> f114080n;

    /* renamed from: o */
    public List<Node> f114081o;

    /* renamed from: p */
    public Attributes f114082p;

    /* renamed from: org.jsoup.nodes.Element$a */
    /* loaded from: classes13.dex */
    public static final class C20249a extends ChangeNotifyingArrayList<Node> {

        /* renamed from: a */
        private final Element f114083a;

        public C20249a(Element element, int i) {
            super(i);
            this.f114083a = element;
        }

        @Override // org.jsoup.helper.ChangeNotifyingArrayList
        public void onContentsChanged() {
            this.f114083a.mo71133e();
        }
    }

    public Element(String str) {
        this(Tag.valueOf(str), "", null);
    }

    /* renamed from: h */
    public static <E extends Element> int m71125h(Element element, List<E> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) == element) {
                return i;
            }
        }
        return 0;
    }

    /* renamed from: i */
    public static String m71126i(Element element, String str) {
        while (element != null) {
            if (element.hasAttributes() && element.f114082p.hasKey(str)) {
                return element.f114082p.get(str);
            }
            element = element.parent();
        }
        return "";
    }

    /* renamed from: m */
    public static void m71127m(StringBuilder sb, TextNode textNode) {
        String wholeText = textNode.getWholeText();
        if (m71132t(textNode.f114101e) || (textNode instanceof CDataNode)) {
            sb.append(wholeText);
        } else {
            StringUtil.appendNormalisedWhitespace(sb, wholeText, TextNode.m71157j(sb));
        }
    }

    /* renamed from: n */
    public static void m71128n(Element element, StringBuilder sb) {
        if (!element.f114079m.getName().equals("br") || TextNode.m71157j(sb)) {
            return;
        }
        sb.append(" ");
    }

    /* renamed from: o */
    public static void m71129o(Element element, Elements elements) {
        Element parent = element.parent();
        if (parent == null || parent.tagName().equals("#root")) {
            return;
        }
        elements.add(parent);
        m71129o(parent, elements);
    }

    /* renamed from: t */
    public static boolean m71132t(Node node) {
        if (node instanceof Element) {
            Element element = (Element) node;
            int i = 0;
            while (!element.f114079m.preserveWhitespace()) {
                element = element.parent();
                i++;
                if (i < 6 && element != null) {
                }
            }
            return true;
        }
        return false;
    }

    public Element addClass(String str) {
        Validate.notNull(str);
        Set<String> classNames = classNames();
        classNames.add(str);
        classNames(classNames);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element after(String str) {
        return (Element) super.after(str);
    }

    public Element append(String str) {
        Validate.notNull(str);
        addChildren((Node[]) C20256e.m71163b(this).parseFragmentInput(str, this, baseUri()).toArray(new Node[0]));
        return this;
    }

    public Element appendChild(Node node) {
        Validate.notNull(node);
        reparentChild(node);
        ensureChildNodes();
        this.f114081o.add(node);
        node.setSiblingIndex(this.f114081o.size() - 1);
        return this;
    }

    public Element appendElement(String str) {
        Element element = new Element(Tag.valueOf(str, C20256e.m71163b(this).settings()), baseUri());
        appendChild(element);
        return element;
    }

    public Element appendText(String str) {
        Validate.notNull(str);
        appendChild(new TextNode(str));
        return this;
    }

    public Element appendTo(Element element) {
        Validate.notNull(element);
        element.appendChild(this);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element attr(String str, String str2) {
        super.attr(str, str2);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Attributes attributes() {
        if (!hasAttributes()) {
            this.f114082p = new Attributes();
        }
        return this.f114082p;
    }

    @Override // org.jsoup.nodes.Node
    public String baseUri() {
        return m71126i(this, f114078s);
    }

    @Override // org.jsoup.nodes.Node
    public Element before(String str) {
        return (Element) super.before(str);
    }

    public Element child(int i) {
        return m71137j().get(i);
    }

    @Override // org.jsoup.nodes.Node
    public int childNodeSize() {
        return this.f114081o.size();
    }

    public Elements children() {
        return new Elements(m71137j());
    }

    public int childrenSize() {
        return m71137j().size();
    }

    public String className() {
        return attr("class").trim();
    }

    public Set<String> classNames() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(f114077r.split(className())));
        linkedHashSet.remove("");
        return linkedHashSet;
    }

    @Override // org.jsoup.nodes.Node
    public Element clearAttributes() {
        if (this.f114082p != null) {
            super.clearAttributes();
            this.f114082p = null;
        }
        return this;
    }

    public Element closest(String str) {
        return closest(QueryParser.parse(str));
    }

    public String cssSelector() {
        StringBuilder sb;
        String sb2;
        if (m71134id().length() > 0) {
            sb = new StringBuilder();
            sb.append("#");
            sb2 = m71134id();
        } else {
            StringBuilder sb3 = new StringBuilder(tagName().replace(':', '|'));
            String join = StringUtil.join(classNames(), ".");
            if (join.length() > 0) {
                sb3.append('.');
                sb3.append(join);
            }
            if (parent() == null || (parent() instanceof Document)) {
                return sb3.toString();
            }
            sb3.insert(0, CloudStorageConstants.OPERATION_GREATER);
            if (parent().select(sb3.toString()).size() > 1) {
                sb3.append(String.format(":nth-child(%d)", Integer.valueOf(elementSiblingIndex() + 1)));
            }
            sb = new StringBuilder();
            sb.append(parent().cssSelector());
            sb2 = sb3.toString();
        }
        sb.append(sb2);
        return sb.toString();
    }

    public String data() {
        String wholeData;
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        for (Node node : this.f114081o) {
            if (node instanceof DataNode) {
                wholeData = ((DataNode) node).getWholeData();
            } else if (node instanceof Comment) {
                wholeData = ((Comment) node).getData();
            } else if (node instanceof Element) {
                wholeData = ((Element) node).data();
            } else if (node instanceof CDataNode) {
                wholeData = ((CDataNode) node).getWholeText();
            }
            borrowBuilder.append(wholeData);
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public List<DataNode> dataNodes() {
        ArrayList arrayList = new ArrayList();
        for (Node node : this.f114081o) {
            if (node instanceof DataNode) {
                arrayList.add((DataNode) node);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Map<String, String> dataset() {
        return attributes().dataset();
    }

    @Override // org.jsoup.nodes.Node
    public Element doClone(Node node) {
        Element element = (Element) super.doClone(node);
        Attributes attributes = this.f114082p;
        element.f114082p = attributes != null ? attributes.clone() : null;
        C20249a c20249a = new C20249a(element, this.f114081o.size());
        element.f114081o = c20249a;
        c20249a.addAll(this.f114081o);
        element.setBaseUri(baseUri());
        return element;
    }

    @Override // org.jsoup.nodes.Node
    public void doSetBaseUri(String str) {
        attributes().put(f114078s, str);
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: e */
    public void mo71133e() {
        super.mo71133e();
        this.f114080n = null;
    }

    public int elementSiblingIndex() {
        if (parent() == null) {
            return 0;
        }
        return m71125h(this, parent().m71137j());
    }

    @Override // org.jsoup.nodes.Node
    public Element empty() {
        this.f114081o.clear();
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public List<Node> ensureChildNodes() {
        if (this.f114081o == f114076q) {
            this.f114081o = new C20249a(this, 4);
        }
        return this.f114081o;
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: f */
    public void mo71115f(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        if (m71142u(outputSettings) && (!(appendable instanceof StringBuilder) || ((StringBuilder) appendable).length() > 0)) {
            indent(appendable, i, outputSettings);
        }
        appendable.append('<').append(tagName());
        Attributes attributes = this.f114082p;
        if (attributes != null) {
            attributes.m71109m(appendable, outputSettings);
        }
        if (this.f114081o.isEmpty() && this.f114079m.isSelfClosing() && (outputSettings.syntax() != Document.OutputSettings.Syntax.html || !this.f114079m.isEmpty())) {
            appendable.append(" />");
        } else {
            appendable.append('>');
        }
    }

    @Override // org.jsoup.nodes.Node
    public Element filter(NodeFilter nodeFilter) {
        return (Element) super.filter(nodeFilter);
    }

    public Element firstElementSibling() {
        List<Element> m71137j = parent().m71137j();
        if (m71137j.size() > 1) {
            return m71137j.get(0);
        }
        return null;
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: g */
    public void mo71116g(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        if (this.f114081o.isEmpty() && this.f114079m.isSelfClosing()) {
            return;
        }
        if (outputSettings.prettyPrint() && !this.f114081o.isEmpty() && (this.f114079m.formatAsBlock() || (outputSettings.outline() && (this.f114081o.size() > 1 || (this.f114081o.size() == 1 && !(this.f114081o.get(0) instanceof TextNode)))))) {
            indent(appendable, i, outputSettings);
        }
        appendable.append(XMLStreamWriterImpl.OPEN_END_TAG).append(tagName()).append('>');
    }

    public Elements getAllElements() {
        return Collector.collect(new Evaluator.AllElements(), this);
    }

    public Element getElementById(String str) {
        Validate.notEmpty(str);
        Elements collect = Collector.collect(new Evaluator.C20369Id(str), this);
        if (collect.size() > 0) {
            return collect.get(0);
        }
        return null;
    }

    public Elements getElementsByAttribute(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Attribute(str.trim()), this);
    }

    public Elements getElementsByAttributeStarting(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.AttributeStarting(str.trim()), this);
    }

    public Elements getElementsByAttributeValue(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValue(str, str2), this);
    }

    public Elements getElementsByAttributeValueContaining(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueContaining(str, str2), this);
    }

    public Elements getElementsByAttributeValueEnding(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueEnding(str, str2), this);
    }

    public Elements getElementsByAttributeValueMatching(String str, String str2) {
        try {
            return getElementsByAttributeValueMatching(str, Pattern.compile(str2));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str2, e);
        }
    }

    public Elements getElementsByAttributeValueNot(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueNot(str, str2), this);
    }

    public Elements getElementsByAttributeValueStarting(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueStarting(str, str2), this);
    }

    public Elements getElementsByClass(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Class(str), this);
    }

    public Elements getElementsByIndexEquals(int i) {
        return Collector.collect(new Evaluator.IndexEquals(i), this);
    }

    public Elements getElementsByIndexGreaterThan(int i) {
        return Collector.collect(new Evaluator.IndexGreaterThan(i), this);
    }

    public Elements getElementsByIndexLessThan(int i) {
        return Collector.collect(new Evaluator.IndexLessThan(i), this);
    }

    public Elements getElementsByTag(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Tag(Normalizer.normalize(str)), this);
    }

    public Elements getElementsContainingOwnText(String str) {
        return Collector.collect(new Evaluator.ContainsOwnText(str), this);
    }

    public Elements getElementsContainingText(String str) {
        return Collector.collect(new Evaluator.ContainsText(str), this);
    }

    public Elements getElementsMatchingOwnText(String str) {
        try {
            return getElementsMatchingOwnText(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str, e);
        }
    }

    public Elements getElementsMatchingText(String str) {
        try {
            return getElementsMatchingText(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str, e);
        }
    }

    @Override // org.jsoup.nodes.Node
    public int getTagEndPos() {
        if (this.f114107k == 0) {
            int childNodeSize = childNodeSize();
            this.f114107k = childNodeSize == 0 ? this.f114106j : this.f114081o.get(childNodeSize - 1).getTagEndPos();
        }
        return this.f114107k;
    }

    @Override // org.jsoup.nodes.Node
    public boolean hasAttributes() {
        return this.f114082p != null;
    }

    public boolean hasClass(String str) {
        if (!hasAttributes()) {
            return false;
        }
        String ignoreCase = this.f114082p.getIgnoreCase("class");
        int length = ignoreCase.length();
        int length2 = str.length();
        if (length != 0 && length >= length2) {
            if (length == length2) {
                return str.equalsIgnoreCase(ignoreCase);
            }
            boolean z = false;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (Character.isWhitespace(ignoreCase.charAt(i2))) {
                    if (!z) {
                        continue;
                    } else {
                        if (i2 - i == length2 && ignoreCase.regionMatches(true, i, str, 0, length2)) {
                            return true;
                        }
                        z = false;
                    }
                } else if (!z) {
                    i = i2;
                    z = true;
                }
            }
            if (z && length - i == length2) {
                return ignoreCase.regionMatches(true, i, str, 0, length2);
            }
        }
        return false;
    }

    public boolean hasText() {
        for (Node node : this.f114081o) {
            if (node instanceof TextNode) {
                if (!((TextNode) node).isBlank()) {
                    return true;
                }
            } else if ((node instanceof Element) && ((Element) node).hasText()) {
                return true;
            }
        }
        return false;
    }

    @Override // org.jsoup.nodes.Node
    public <T extends Appendable> T html(T t) {
        int size = this.f114081o.size();
        for (int i = 0; i < size; i++) {
            this.f114081o.get(i).outerHtml(t);
        }
        return t;
    }

    /* renamed from: id */
    public String m71134id() {
        return hasAttributes() ? this.f114082p.getIgnoreCase("id") : "";
    }

    public Element insertChildren(int i, Collection<? extends Node> collection) {
        Validate.notNull(collection, "Children collection to be inserted must not be null.");
        int childNodeSize = childNodeSize();
        if (i < 0) {
            i += childNodeSize + 1;
        }
        Validate.isTrue(i >= 0 && i <= childNodeSize, "Insert position out of bounds.");
        addChildren(i, (Node[]) new ArrayList(collection).toArray(new Node[0]));
        return this;
    }

    /* renamed from: is */
    public boolean m71135is(String str) {
        return m71136is(QueryParser.parse(str));
    }

    public boolean isBlock() {
        return this.f114079m.isBlock();
    }

    /* renamed from: j */
    public final List<Element> m71137j() {
        List<Element> list;
        WeakReference<List<Element>> weakReference = this.f114080n;
        if (weakReference != null && (list = weakReference.get()) != null) {
            return list;
        }
        int size = this.f114081o.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            Node node = this.f114081o.get(i);
            if (node instanceof Element) {
                arrayList.add((Element) node);
            }
        }
        this.f114080n = new WeakReference<>(arrayList);
        return arrayList;
    }

    /* renamed from: k */
    public final Elements m71138k(boolean z) {
        Elements elements = new Elements();
        if (this.f114101e == null) {
            return elements;
        }
        elements.add(this);
        return z ? elements.nextAll() : elements.prevAll();
    }

    /* renamed from: l */
    public final void m71139l(StringBuilder sb) {
        for (Node node : this.f114081o) {
            if (node instanceof TextNode) {
                m71127m(sb, (TextNode) node);
            } else if (node instanceof Element) {
                m71128n((Element) node, sb);
            }
        }
    }

    public Element lastElementSibling() {
        List<Element> m71137j = parent().m71137j();
        if (m71137j.size() > 1) {
            return m71137j.get(m71137j.size() - 1);
        }
        return null;
    }

    public Element nextElementSibling() {
        if (this.f114101e == null) {
            return null;
        }
        List<Element> m71137j = parent().m71137j();
        int m71125h = m71125h(this, m71137j) + 1;
        if (m71137j.size() > m71125h) {
            return m71137j.get(m71125h);
        }
        return null;
    }

    public Elements nextElementSiblings() {
        return m71138k(true);
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return this.f114079m.getName();
    }

    public String normalName() {
        return this.f114079m.normalName();
    }

    public String ownText() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        m71139l(borrowBuilder);
        return StringUtil.releaseBuilder(borrowBuilder).trim();
    }

    /* renamed from: p */
    public final boolean m71140p(Document.OutputSettings outputSettings) {
        return this.f114079m.formatAsBlock() || (parent() != null && parent().tag().formatAsBlock()) || outputSettings.outline();
    }

    @Override // org.jsoup.nodes.Node
    public final Element parent() {
        return (Element) this.f114101e;
    }

    public Elements parents() {
        Elements elements = new Elements();
        m71129o(this, elements);
        return elements;
    }

    public Element prepend(String str) {
        Validate.notNull(str);
        addChildren(0, (Node[]) C20256e.m71163b(this).parseFragmentInput(str, this, baseUri()).toArray(new Node[0]));
        return this;
    }

    public Element prependChild(Node node) {
        Validate.notNull(node);
        addChildren(0, node);
        return this;
    }

    public Element prependElement(String str) {
        Element element = new Element(Tag.valueOf(str, C20256e.m71163b(this).settings()), baseUri());
        prependChild(element);
        return element;
    }

    public Element prependText(String str) {
        Validate.notNull(str);
        prependChild(new TextNode(str));
        return this;
    }

    public Element previousElementSibling() {
        List<Element> m71137j;
        int m71125h;
        if (this.f114101e != null && (m71125h = m71125h(this, (m71137j = parent().m71137j()))) > 0) {
            return m71137j.get(m71125h - 1);
        }
        return null;
    }

    public Elements previousElementSiblings() {
        return m71138k(false);
    }

    @Override // org.jsoup.nodes.Node
    public Element removeAttr(String str) {
        return (Element) super.removeAttr(str);
    }

    public Element removeClass(String str) {
        Validate.notNull(str);
        Set<String> classNames = classNames();
        classNames.remove(str);
        classNames(classNames);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element root() {
        return (Element) super.root();
    }

    /* renamed from: s */
    public final boolean m71141s(Document.OutputSettings outputSettings) {
        return (!tag().isInline() || tag().isEmpty() || !parent().isBlock() || previousSibling() == null || outputSettings.outline()) ? false : true;
    }

    public Elements select(String str) {
        return Selector.select(str, this);
    }

    public Element selectFirst(String str) {
        return Selector.selectFirst(str, this);
    }

    @Override // org.jsoup.nodes.Node
    public Element shallowClone() {
        Tag tag = this.f114079m;
        String baseUri = baseUri();
        Attributes attributes = this.f114082p;
        return new Element(tag, baseUri, attributes == null ? null : attributes.clone());
    }

    public Elements siblingElements() {
        if (this.f114101e == null) {
            return new Elements(0);
        }
        List<Element> m71137j = parent().m71137j();
        Elements elements = new Elements(m71137j.size() - 1);
        for (Element element : m71137j) {
            if (element != this) {
                elements.add(element);
            }
        }
        return elements;
    }

    public Tag tag() {
        return this.f114079m;
    }

    public String tagName() {
        if (!Node.DEBUG_POS) {
            return this.f114079m.getName();
        }
        return this.f114079m.getName() + IteratorUtils.f104923a + this.f114105i + "," + this.f114107k + IteratorUtils.f104924b;
    }

    public String text() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        NodeTraversor.traverse(new C20253b(this, borrowBuilder), this);
        return StringUtil.releaseBuilder(borrowBuilder).trim();
    }

    public List<TextNode> textNodes() {
        ArrayList arrayList = new ArrayList();
        for (Node node : this.f114081o) {
            if (node instanceof TextNode) {
                arrayList.add((TextNode) node);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Element toggleClass(String str) {
        Validate.notNull(str);
        Set<String> classNames = classNames();
        if (classNames.contains(str)) {
            classNames.remove(str);
        } else {
            classNames.add(str);
        }
        classNames(classNames);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element traverse(NodeVisitor nodeVisitor) {
        return (Element) super.traverse(nodeVisitor);
    }

    /* renamed from: u */
    public boolean m71142u(Document.OutputSettings outputSettings) {
        return outputSettings.prettyPrint() && m71140p(outputSettings) && !m71141s(outputSettings);
    }

    public String val() {
        return normalName().equals("textarea") ? text() : attr("value");
    }

    public String wholeText() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        NodeTraversor.traverse(new C20254c(this, borrowBuilder), this);
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    @Override // org.jsoup.nodes.Node
    public Element wrap(String str) {
        return (Element) super.wrap(str);
    }

    public Element(Tag tag, String str) {
        this(tag, str, null);
    }

    @Override // org.jsoup.nodes.Node
    public Element after(Node node) {
        return (Element) super.after(node);
    }

    public Element attr(String str, boolean z) {
        attributes().put(str, z);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element before(Node node) {
        return (Element) super.before(node);
    }

    public Element classNames(Set<String> set) {
        Validate.notNull(set);
        if (set.isEmpty()) {
            attributes().remove("class");
        } else {
            attributes().put("class", StringUtil.join(set, " "));
        }
        return this;
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Element mo74371clone() {
        return (Element) super.mo74371clone();
    }

    public Element closest(Evaluator evaluator) {
        Validate.notNull(evaluator);
        Element root = root();
        while (!evaluator.matches(root, this)) {
            this = this.parent();
            if (this == null) {
                return null;
            }
        }
        return this;
    }

    public Elements getElementsByAttributeValueMatching(String str, Pattern pattern) {
        return Collector.collect(new Evaluator.AttributeWithValueMatching(str, pattern), this);
    }

    public Elements getElementsMatchingOwnText(Pattern pattern) {
        return Collector.collect(new Evaluator.MatchesOwn(pattern), this);
    }

    public Elements getElementsMatchingText(Pattern pattern) {
        return Collector.collect(new Evaluator.Matches(pattern), this);
    }

    public String html() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        html((Element) borrowBuilder);
        String releaseBuilder = StringUtil.releaseBuilder(borrowBuilder);
        return C20256e.m71162a(this).prettyPrint() ? releaseBuilder.trim() : releaseBuilder;
    }

    public Element insertChildren(int i, Node... nodeArr) {
        Validate.notNull(nodeArr, "Children collection to be inserted must not be null.");
        int childNodeSize = childNodeSize();
        if (i < 0) {
            i += childNodeSize + 1;
        }
        Validate.isTrue(i >= 0 && i <= childNodeSize, "Insert position out of bounds.");
        addChildren(i, nodeArr);
        return this;
    }

    /* renamed from: is */
    public boolean m71136is(Evaluator evaluator) {
        return evaluator.matches(root(), this);
    }

    public Elements select(Evaluator evaluator) {
        return Selector.select(evaluator, this);
    }

    public Element selectFirst(Evaluator evaluator) {
        return Collector.findFirst(evaluator, this);
    }

    public Element tagName(String str) {
        Validate.notEmpty(str, "Tag name must not be empty.");
        this.f114079m = Tag.valueOf(str, C20256e.m71163b(this).settings());
        return this;
    }

    public Element text(String str) {
        Validate.notNull(str);
        empty();
        appendChild(new TextNode(str));
        return this;
    }

    public Element val(String str) {
        if (normalName().equals("textarea")) {
            text(str);
        } else {
            attr("value", str);
        }
        return this;
    }

    public Element(Tag tag, String str, Attributes attributes) {
        Validate.notNull(tag);
        this.f114081o = f114076q;
        this.f114082p = attributes;
        this.f114079m = tag;
        if (str != null) {
            setBaseUri(str);
        }
    }

    public Element html(String str) {
        empty();
        append(str);
        return this;
    }
}
