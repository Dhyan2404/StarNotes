package net.p110sf.saxon.s9api.streams;

import java.util.function.Predicate;
import java.util.regex.Pattern;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.s9api.ItemType;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.XdmArray;
import net.p110sf.saxon.s9api.XdmAtomicValue;
import net.p110sf.saxon.s9api.XdmFunctionItem;
import net.p110sf.saxon.s9api.XdmItem;
import net.p110sf.saxon.s9api.XdmMap;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmNodeKind;
import net.p110sf.saxon.s9api.streams.Predicates;
import net.p110sf.saxon.s9api.streams.Step;

/* loaded from: classes11.dex */
public class Predicates {
    /* renamed from: A */
    public static /* synthetic */ boolean m63698A(String str, String str2, XdmNode xdmNode) {
        QName nodeName = xdmNode.getNodeName();
        return nodeName != null && nodeName.getLocalName().equals(str) && nodeName.getNamespaceURI().equals(str2);
    }

    /* renamed from: B */
    public static /* synthetic */ boolean m63699B(String str, XdmNode xdmNode) {
        QName nodeName = xdmNode.getNodeName();
        return nodeName != null && nodeName.getNamespaceURI().equals(str);
    }

    /* renamed from: C */
    public static /* synthetic */ boolean m63700C(XdmItem xdmItem) {
        return xdmItem instanceof XdmArray;
    }

    /* renamed from: D */
    public static /* synthetic */ boolean m63701D(XdmItem xdmItem) {
        return xdmItem instanceof XdmAtomicValue;
    }

    /* renamed from: E */
    public static /* synthetic */ boolean m63702E(XdmItem xdmItem) {
        return xdmItem instanceof XdmFunctionItem;
    }

    /* renamed from: F */
    public static /* synthetic */ boolean m63703F(XdmItem xdmItem) {
        return xdmItem instanceof XdmMap;
    }

    /* renamed from: G */
    public static /* synthetic */ boolean m63704G(XdmItem xdmItem) {
        return xdmItem instanceof XdmNode;
    }

    /* renamed from: H */
    public static /* synthetic */ boolean m63705H(Pattern pattern, XdmItem xdmItem) {
        return pattern.matcher(xdmItem.getStringValue()).find();
    }

    /* renamed from: I */
    public static /* synthetic */ boolean m63706I(XdmNodeKind xdmNodeKind, XdmItem xdmItem) {
        return (xdmItem instanceof XdmNode) && ((XdmNode) xdmItem).getNodeKind() == xdmNodeKind;
    }

    /* renamed from: J */
    public static /* synthetic */ boolean m63707J(Step step, Predicate predicate, XdmItem xdmItem) {
        return step.apply(xdmItem).anyMatch(predicate);
    }

    /* renamed from: K */
    public static Predicate<XdmItem> m63708K(final XdmNodeKind xdmNodeKind) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.o6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63706I;
                m63706I = Predicates.m63706I(XdmNodeKind.this, (XdmItem) obj);
                return m63706I;
            }
        };
    }

    public static Predicate<XdmNode> attributeEq(final String str, final String str2) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.n6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63730s;
                m63730s = Predicates.m63730s(str2, str, (XdmNode) obj);
                return m63730s;
            }
        };
    }

    public static <T extends XdmItem> Predicate<XdmItem> empty(final Step<T> step) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.m6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63731t;
                m63731t = Predicates.m63731t(Step.this, (XdmItem) obj);
                return m63731t;
            }
        };
    }

    /* renamed from: eq */
    public static Predicate<XdmAtomicValue> m63715eq(XdmAtomicValue xdmAtomicValue) {
        final AtomicMatchKey asMapKey = xdmAtomicValue.getUnderlyingValue().asMapKey();
        return new Predicate() { // from class: com.sunia.HTREnginev2.f6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63732u;
                m63732u = Predicates.m63732u(AtomicMatchKey.this, (XdmAtomicValue) obj);
                return m63732u;
            }
        };
    }

    public static <T extends XdmItem> Predicate<XdmItem> every(final Step<T> step, final Predicate<? super XdmItem> predicate) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.q6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63734w;
                m63734w = Predicates.m63734w(Step.this, predicate, (XdmItem) obj);
                return m63734w;
            }
        };
    }

    public static <T extends XdmItem> Predicate<XdmItem> exists(final Step<T> step) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.h6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63735x;
                m63735x = Predicates.m63735x(Step.this, (XdmItem) obj);
                return m63735x;
            }
        };
    }

    public static Predicate<XdmNode> hasAttribute(final String str) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.t6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63736y;
                m63736y = Predicates.m63736y(str, (XdmNode) obj);
                return m63736y;
            }
        };
    }

    public static Predicate<XdmNode> hasLocalName(final String str) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.r6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63737z;
                m63737z = Predicates.m63737z(str, (XdmNode) obj);
                return m63737z;
            }
        };
    }

    public static Predicate<? super XdmNode> hasName(final String str, final String str2) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.p6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63698A;
                m63698A = Predicates.m63698A(str2, str, (XdmNode) obj);
                return m63698A;
            }
        };
    }

    public static Predicate<XdmNode> hasNamespace(final String str) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.c6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63699B;
                m63699B = Predicates.m63699B(str, (XdmNode) obj);
                return m63699B;
            }
        };
    }

    public static Predicate<XdmItem> hasType(final ItemType itemType) {
        itemType.getClass();
        return new Predicate() { // from class: com.sunia.HTREnginev2.k6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ItemType.this.matches((XdmItem) obj);
            }
        };
    }

    public static Predicate<XdmItem> isArray() {
        return new Predicate() { // from class: com.sunia.HTREnginev2.e6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63700C;
                m63700C = Predicates.m63700C((XdmItem) obj);
                return m63700C;
            }
        };
    }

    public static Predicate<XdmItem> isAtomic() {
        return new Predicate() { // from class: com.sunia.HTREnginev2.i6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63701D;
                m63701D = Predicates.m63701D((XdmItem) obj);
                return m63701D;
            }
        };
    }

    public static Predicate<XdmItem> isAttribute() {
        return m63708K(XdmNodeKind.ATTRIBUTE);
    }

    public static Predicate<XdmItem> isComment() {
        return m63708K(XdmNodeKind.COMMENT);
    }

    public static Predicate<XdmItem> isDocument() {
        return m63708K(XdmNodeKind.DOCUMENT);
    }

    public static Predicate<XdmItem> isElement() {
        return m63708K(XdmNodeKind.ELEMENT);
    }

    public static Predicate<XdmItem> isFunction() {
        return new Predicate() { // from class: com.sunia.HTREnginev2.g6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63702E;
                m63702E = Predicates.m63702E((XdmItem) obj);
                return m63702E;
            }
        };
    }

    public static Predicate<XdmItem> isMap() {
        return new Predicate() { // from class: com.sunia.HTREnginev2.u6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63703F;
                m63703F = Predicates.m63703F((XdmItem) obj);
                return m63703F;
            }
        };
    }

    public static Predicate<XdmItem> isNamespace() {
        return m63708K(XdmNodeKind.NAMESPACE);
    }

    public static Predicate<XdmItem> isNode() {
        return new Predicate() { // from class: com.sunia.HTREnginev2.l6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63704G;
                m63704G = Predicates.m63704G((XdmItem) obj);
                return m63704G;
            }
        };
    }

    public static Predicate<XdmItem> isProcessingInstruction() {
        return m63708K(XdmNodeKind.PROCESSING_INSTRUCTION);
    }

    public static Predicate<XdmItem> isText() {
        return m63708K(XdmNodeKind.TEXT);
    }

    public static Predicate<XdmItem> matchesRegex(String str) {
        final Pattern compile = Pattern.compile(str);
        return new Predicate() { // from class: com.sunia.HTREnginev2.d6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63705H;
                m63705H = Predicates.m63705H(compile, (XdmItem) obj);
                return m63705H;
            }
        };
    }

    public static <T> Predicate<T> not(Predicate<T> predicate) {
        return predicate.negate();
    }

    /* renamed from: s */
    public static /* synthetic */ boolean m63730s(String str, String str2, XdmNode xdmNode) {
        return str.equals(xdmNode.attribute(str2));
    }

    public static <T extends XdmItem> Predicate<XdmItem> some(final Step<T> step, final Predicate<? super T> predicate) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.s6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63707J;
                m63707J = Predicates.m63707J(Step.this, predicate, (XdmItem) obj);
                return m63707J;
            }
        };
    }

    /* renamed from: t */
    public static /* synthetic */ boolean m63731t(Step step, XdmItem xdmItem) {
        return !step.apply(xdmItem).findFirst().isPresent();
    }

    /* renamed from: u */
    public static /* synthetic */ boolean m63732u(AtomicMatchKey atomicMatchKey, XdmAtomicValue xdmAtomicValue) {
        return xdmAtomicValue.getUnderlyingValue().asMapKey().equals(atomicMatchKey);
    }

    /* renamed from: v */
    public static /* synthetic */ boolean m63733v(String str, XdmItem xdmItem) {
        return xdmItem.getStringValue().equals(str);
    }

    /* renamed from: w */
    public static /* synthetic */ boolean m63734w(Step step, Predicate predicate, XdmItem xdmItem) {
        return step.apply(xdmItem).allMatch(predicate);
    }

    /* renamed from: x */
    public static /* synthetic */ boolean m63735x(Step step, XdmItem xdmItem) {
        return step.apply(xdmItem).findFirst().isPresent();
    }

    /* renamed from: y */
    public static /* synthetic */ boolean m63736y(String str, XdmNode xdmNode) {
        return xdmNode.attribute(str) != null;
    }

    /* renamed from: z */
    public static /* synthetic */ boolean m63737z(String str, XdmNode xdmNode) {
        QName nodeName = xdmNode.getNodeName();
        return nodeName != null && nodeName.getLocalName().equals(str);
    }

    /* renamed from: eq */
    public static Predicate<XdmItem> m63714eq(final String str) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.j6l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63733v;
                m63733v = Predicates.m63733v(str, (XdmItem) obj);
                return m63733v;
            }
        };
    }

    /* renamed from: eq */
    public static <T extends XdmItem> Predicate<XdmItem> m63716eq(Step<T> step, String str) {
        return some(step, m63714eq(str));
    }
}
