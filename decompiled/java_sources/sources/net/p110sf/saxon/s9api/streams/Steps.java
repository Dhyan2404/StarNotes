package net.p110sf.saxon.s9api.streams;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.C14047ll;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Stream;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.Axis;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.SaxonApiUncheckedException;
import net.p110sf.saxon.s9api.XdmArray;
import net.p110sf.saxon.s9api.XdmAtomicValue;
import net.p110sf.saxon.s9api.XdmItem;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmNodeKind;
import net.p110sf.saxon.s9api.XdmSequenceIterator;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.streams.Steps;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class Steps {

    /* renamed from: a */
    public static final Step<XdmNode> f101455a = new C14047ll(Axis.ANCESTOR);

    /* renamed from: b */
    public static final Step<XdmNode> f101456b = new C14047ll(Axis.ANCESTOR_OR_SELF);

    /* renamed from: c */
    public static final Step<XdmNode> f101457c = new C14047ll(Axis.ATTRIBUTE);

    /* renamed from: d */
    public static final Step<XdmNode> f101458d = new C14047ll(Axis.CHILD);

    /* renamed from: e */
    public static final Step<XdmNode> f101459e = new C14047ll(Axis.DESCENDANT);

    /* renamed from: f */
    public static final Step<XdmNode> f101460f = new C14047ll(Axis.DESCENDANT_OR_SELF);

    /* renamed from: g */
    public static final Step<XdmNode> f101461g = new C14047ll(Axis.FOLLOWING);

    /* renamed from: h */
    public static final Step<XdmNode> f101462h = new C14047ll(Axis.FOLLOWING_SIBLING);

    /* renamed from: i */
    public static final Step<XdmNode> f101463i = new C14047ll(Axis.NAMESPACE);

    /* renamed from: j */
    public static final Step<XdmNode> f101464j = new C14047ll(Axis.PARENT);

    /* renamed from: k */
    public static final Step<XdmNode> f101465k = new C14047ll(Axis.PRECEDING_SIBLING);

    /* renamed from: l */
    public static final Step<XdmNode> f101466l = new C14047ll(Axis.PRECEDING);

    /* renamed from: m */
    public static final Step<XdmNode> f101467m = new C14047ll(Axis.SELF);

    /* renamed from: net.sf.saxon.s9api.streams.Steps$a */
    /* loaded from: classes11.dex */
    public static class C18491a extends Step<XdmNode> {
        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<XdmNode> apply(XdmItem xdmItem) {
            return xdmItem instanceof XdmNode ? Stream.of(((XdmNode) xdmItem).getRoot()) : Stream.empty();
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.Steps$b */
    /* loaded from: classes11.dex */
    public static class C18492b extends Step<XdmAtomicValue> {
        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<? extends XdmAtomicValue> apply(XdmItem xdmItem) {
            if (xdmItem instanceof XdmAtomicValue) {
                return Stream.of((XdmAtomicValue) xdmItem);
            }
            if (xdmItem instanceof XdmNode) {
                try {
                    return ((XdmNode) xdmItem).getTypedValue().stream();
                } catch (SaxonApiException e) {
                    throw new SaxonApiUncheckedException(e);
                }
            }
            if (!(xdmItem instanceof XdmArray)) {
                throw new SaxonApiUncheckedException(new SaxonApiException("Cannot atomize supplied value"));
            }
            try {
                return XdmValue.wrap(((XdmArray) xdmItem).getUnderlyingValue().atomize()).stream();
            } catch (XPathException e2) {
                throw new SaxonApiUncheckedException(new SaxonApiException(e2));
            }
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.Steps$c */
    /* loaded from: classes11.dex */
    public static class C18493c extends Step<XdmAtomicValue> {

        /* renamed from: e */
        public final /* synthetic */ ConversionRules f101468e;

        /* renamed from: f */
        public final /* synthetic */ ItemType f101469f;

        public C18493c(ConversionRules conversionRules, ItemType itemType) {
            this.f101468e = conversionRules;
            this.f101469f = itemType;
        }

        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<? extends XdmAtomicValue> apply(XdmItem xdmItem) {
            try {
                AtomicValue underlyingValue = ((XdmAtomicValue) xdmItem).getUnderlyingValue();
                return Stream.of((XdmAtomicValue) XdmValue.wrap((AtomicSequence) this.f101468e.getConverter(underlyingValue.getItemType(), (AtomicType) this.f101469f).convert(underlyingValue).asAtomic()));
            } catch (ValidationException e) {
                throw new SaxonApiUncheckedException(new SaxonApiException(e));
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [U] */
    /* renamed from: net.sf.saxon.s9api.streams.Steps$d */
    /* loaded from: classes11.dex */
    public static class C18494d<U> extends Step<U> {
        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<U> apply(XdmItem xdmItem) {
            return Stream.empty();
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.Steps$e */
    /* loaded from: classes11.dex */
    public static class C18495e extends Step<XdmAtomicValue> {
        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<XdmAtomicValue> apply(XdmItem xdmItem) {
            return XdmSequenceIterator.ofAtomicValues(new Whitespace.Tokenizer(xdmItem.getUnderlyingValue().getUnicodeStringValue())).stream();
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.Steps$f */
    /* loaded from: classes11.dex */
    public static class C18496f extends Step<XdmNode> {

        /* renamed from: e */
        public final /* synthetic */ XdmNode f101470e;

        public C18496f(XdmNode xdmNode) {
            this.f101470e = xdmNode;
        }

        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<XdmNode> apply(XdmItem xdmItem) {
            if (this.f101470e.getNodeKind() != XdmNodeKind.DOCUMENT) {
                throw new IllegalArgumentException("id() - argument is not a document node");
            }
            NodeInfo selectID = this.f101470e.getUnderlyingNode().getTreeInfo().selectID(xdmItem.getStringValue(), true);
            return selectID == null ? Stream.empty() : Stream.of((XdmNode) XdmValue.wrap(selectID));
        }
    }

    public static Step<XdmNode> ancestor() {
        return f101455a;
    }

    public static Step<XdmNode> ancestorOrSelf() {
        return f101456b;
    }

    public static Step<XdmAtomicValue> atomize() {
        return new C18492b();
    }

    public static Step<XdmNode> attribute() {
        return f101457c;
    }

    public static Step<XdmAtomicValue> castAs(net.p110sf.saxon.s9api.ItemType itemType) {
        if (!net.p110sf.saxon.s9api.ItemType.ANY_ATOMIC_VALUE.subsumes(itemType)) {
            throw new IllegalArgumentException("Target of castAs must be an atomic type");
        }
        ItemType primitiveItemType = itemType.getUnderlyingItemType().getPrimitiveItemType();
        return atomize().then(new C18493c(itemType.getConversionRules(), primitiveItemType));
    }

    public static Step<XdmNode> child() {
        return f101458d;
    }

    /* renamed from: d */
    public static Predicate<? super XdmNode> m63750d(final String str, final String str2) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.uym
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63751e;
                m63751e = Steps.m63751e(str2, str, (XdmNode) obj);
                return m63751e;
            }
        };
    }

    public static Step<XdmNode> descendant() {
        return f101459e;
    }

    public static Step<XdmNode> descendantOrSelf() {
        return f101460f;
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m63751e(String str, String str2, XdmNode xdmNode) {
        NodeInfo underlyingNode = xdmNode.getUnderlyingNode();
        return underlyingNode.getNodeKind() == 1 && underlyingNode.getLocalPart().equals(str) && underlyingNode.getURI().equals(str2);
    }

    /* renamed from: f */
    public static /* synthetic */ boolean m63752f(String str, XdmNode xdmNode) {
        NodeInfo underlyingNode = xdmNode.getUnderlyingNode();
        return underlyingNode.getNodeKind() == 1 && underlyingNode.getLocalPart().equals(str);
    }

    public static Step<XdmNode> following() {
        return f101461g;
    }

    public static Step<XdmNode> followingSibling() {
        return f101462h;
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m63753g(NodeTest nodeTest, XdmNode xdmNode) {
        return nodeTest.test(xdmNode.getUnderlyingNode());
    }

    /* renamed from: h */
    public static Predicate<? super XdmNode> m63754h(final String str) {
        return "*".equals(str) ? Predicates.isElement() : new Predicate() { // from class: com.sunia.HTREnginev2.tym
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63752f;
                m63752f = Steps.m63752f(str, (XdmNode) obj);
                return m63752f;
            }
        };
    }

    /* renamed from: i */
    public static Predicate<XdmNode> m63755i(final NodeTest nodeTest) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.vym
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63753g;
                m63753g = Steps.m63753g(NodeTest.this, (XdmNode) obj);
                return m63753g;
            }
        };
    }

    /* renamed from: id */
    public static Step<XdmNode> m63756id(XdmNode xdmNode) {
        return new C18496f(xdmNode);
    }

    /* renamed from: j */
    public static Step<? extends XdmNode> m63757j(List<Step<? extends XdmNode>> list) {
        return list.isEmpty() ? nothing() : list.size() == 1 ? list.get(0) : list.get(0).then(m63757j(list.subList(1, list.size())));
    }

    public static Step<XdmNode> namespace() {
        return f101463i;
    }

    public static <U extends XdmItem> Step<U> nothing() {
        return new C18494d();
    }

    public static Step<XdmNode> parent() {
        return f101464j;
    }

    @SafeVarargs
    public static Step<? extends XdmNode> path(Step<? extends XdmNode>... stepArr) {
        return m63757j(Arrays.asList(stepArr));
    }

    public static Step<XdmNode> preceding() {
        return f101466l;
    }

    public static Step<XdmNode> precedingSibling() {
        return f101465k;
    }

    public static Step<XdmNode> root() {
        return new C18491a();
    }

    public static Step<XdmNode> self() {
        return f101467m;
    }

    public static Step<XdmNode> text() {
        return child().where(Predicates.isText());
    }

    public static Step<XdmAtomicValue> tokenize() {
        return new C18495e();
    }

    public static Step<XdmNode> ancestor(String str) {
        return ancestor().where(m63754h(str));
    }

    public static Step<XdmNode> ancestorOrSelf(String str) {
        return ancestorOrSelf().where(m63754h(str));
    }

    public static Step<XdmNode> attribute(String str) {
        return "*".equals(str) ? attribute() : attribute().where(Predicates.hasLocalName(str));
    }

    public static Step<XdmNode> child(String str) {
        return child().where(m63754h(str));
    }

    public static Step<XdmNode> descendant(String str) {
        return descendant().where(m63754h(str));
    }

    public static Step<XdmNode> descendantOrSelf(String str) {
        return descendantOrSelf().where(m63754h(str));
    }

    public static Step<XdmNode> following(String str) {
        return following().where(m63754h(str));
    }

    public static Step<XdmNode> followingSibling(String str) {
        return followingSibling().where(m63754h(str));
    }

    public static Step<XdmNode> namespace(String str) {
        return "*".equals(str) ? namespace() : namespace().where(Predicates.hasLocalName(str));
    }

    public static Step<XdmNode> parent(String str) {
        return parent().where(Predicates.isElement()).where(m63754h(str));
    }

    public static Step<? extends XdmNode> path(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (str.equals("/")) {
                arrayList.add(root().where(Predicates.isDocument()));
            } else if (str.equals(Constants.ATTRVAL_PARENT)) {
                arrayList.add(parent());
            } else if (str.equals("*")) {
                arrayList.add(child(Predicates.isElement()));
            } else if (str.equals("//")) {
                arrayList.add(descendantOrSelf());
            } else if (str.startsWith("@")) {
                String substring = str.substring(1);
                if (NameChecker.isValidNCName(substring)) {
                    arrayList.add(attribute(substring));
                } else {
                    throw new IllegalArgumentException("Invalid attribute name " + substring);
                }
            } else if (NameChecker.isValidNCName(str)) {
                arrayList.add(child(str));
            } else {
                throw new IllegalArgumentException("Invalid element name " + str);
            }
        }
        return m63757j(arrayList);
    }

    public static Step<XdmNode> preceding(String str) {
        return preceding().where(m63754h(str));
    }

    public static Step<XdmNode> precedingSibling(String str) {
        return precedingSibling().where(m63754h(str));
    }

    public static Step<XdmNode> self(String str) {
        return self().where(m63754h(str));
    }

    public static Step<XdmNode> ancestor(String str, String str2) {
        return ancestor().where(m63750d(str, str2));
    }

    public static Step<XdmNode> ancestorOrSelf(String str, String str2) {
        return ancestorOrSelf().where(m63750d(str, str2));
    }

    public static Step<XdmNode> attribute(String str, String str2) {
        return attribute().where(Predicates.hasName(str, str2));
    }

    public static Step<XdmNode> child(String str, String str2) {
        return child().where(m63750d(str, str2));
    }

    public static Step<XdmNode> descendant(String str, String str2) {
        return descendant().where(m63750d(str, str2));
    }

    public static Step<XdmNode> descendantOrSelf(String str, String str2) {
        return descendantOrSelf().where(m63750d(str, str2));
    }

    public static Step<XdmNode> following(String str, String str2) {
        return following().where(m63750d(str, str2));
    }

    public static Step<XdmNode> followingSibling(String str, String str2) {
        return followingSibling().where(m63750d(str, str2));
    }

    public static Step<XdmNode> namespace(Predicate<? super XdmNode> predicate) {
        return namespace().where(predicate);
    }

    public static Step<XdmNode> parent(String str, String str2) {
        return parent().where(m63750d(str, str2));
    }

    public static Step<XdmNode> preceding(String str, String str2) {
        return preceding().where(m63750d(str, str2));
    }

    public static Step<XdmNode> precedingSibling(String str, String str2) {
        return precedingSibling().where(m63750d(str, str2));
    }

    public static Step<XdmNode> self(String str, String str2) {
        return self().where(m63750d(str, str2));
    }

    public static Step<XdmNode> ancestor(Predicate<? super XdmNode> predicate) {
        return ancestor().where(predicate);
    }

    public static Step<XdmNode> ancestorOrSelf(Predicate<? super XdmNode> predicate) {
        return ancestorOrSelf().where(predicate);
    }

    public static Step<XdmNode> attribute(Predicate<? super XdmNode> predicate) {
        return attribute().where(predicate);
    }

    public static Step<XdmNode> child(Predicate<? super XdmNode> predicate) {
        return child().where(predicate);
    }

    public static Step<XdmNode> descendant(Predicate<? super XdmNode> predicate) {
        return descendant().where(predicate);
    }

    public static Step<XdmNode> descendantOrSelf(Predicate<? super XdmNode> predicate) {
        return descendantOrSelf().where(predicate);
    }

    public static Step<XdmNode> following(Predicate<? super XdmNode> predicate) {
        return following().where(predicate);
    }

    public static Step<XdmNode> followingSibling(Predicate<? super XdmNode> predicate) {
        return followingSibling().where(predicate);
    }

    public static Step<XdmNode> parent(Predicate<? super XdmNode> predicate) {
        return parent().where(predicate);
    }

    public static Step<XdmNode> preceding(Predicate<? super XdmNode> predicate) {
        return preceding().where(predicate);
    }

    public static Step<XdmNode> precedingSibling(Predicate<? super XdmNode> predicate) {
        return precedingSibling().where(predicate);
    }

    public static Step<XdmNode> self(Predicate<? super XdmNode> predicate) {
        return self().where(predicate);
    }
}
