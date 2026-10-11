package net.p110sf.saxon.s9api.streams;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;
import net.p110sf.saxon.s9api.XdmAtomicValue;
import net.p110sf.saxon.s9api.XdmItem;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.streams.XdmCollectors;

/* loaded from: classes11.dex */
public class XdmCollectors {

    /* loaded from: classes11.dex */
    public static class MultipleItemException extends RuntimeException {
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$a */
    /* loaded from: classes11.dex */
    public static class C18497a extends AbstractC18506j<XdmValue, XdmItem> {
        public C18497a() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public XdmValue mo63764j(List<XdmItem> list) {
            return new XdmValue(list);
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$b */
    /* loaded from: classes11.dex */
    public static class C18498b extends AbstractC18506j<XdmNode, XdmNode> {
        public C18498b() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: k */
        public void mo63767k() {
            throw new NoSuchElementException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: l */
        public void mo63768l() {
            throw new MultipleItemException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public XdmNode mo63766e(XdmItem xdmItem) {
            return (XdmNode) xdmItem;
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public XdmNode mo63764j(List<XdmNode> list) {
            return list.get(0);
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$c */
    /* loaded from: classes11.dex */
    public static class C18499c extends AbstractC18506j<Optional<XdmNode>, XdmNode> {
        public C18499c() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: k */
        public void mo63767k() {
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: l */
        public void mo63768l() {
            throw new MultipleItemException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public XdmNode mo63766e(XdmItem xdmItem) {
            return (XdmNode) xdmItem;
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public Optional<XdmNode> mo63764j(List<XdmNode> list) {
            return list.isEmpty() ? Optional.empty() : Optional.of(list.get(0));
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$d */
    /* loaded from: classes11.dex */
    public static class C18500d extends AbstractC18506j<List<XdmNode>, XdmNode> {
        public C18500d() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: k */
        public void mo63767k() {
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: l */
        public void mo63768l() {
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public XdmNode mo63766e(XdmItem xdmItem) {
            return (XdmNode) xdmItem;
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public List<XdmNode> mo63764j(List<XdmNode> list) {
            return list;
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$e */
    /* loaded from: classes11.dex */
    public static class C18501e extends AbstractC18506j<List<XdmAtomicValue>, XdmAtomicValue> {
        public C18501e() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: k */
        public void mo63767k() {
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: l */
        public void mo63768l() {
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public XdmAtomicValue mo63766e(XdmItem xdmItem) {
            return (XdmAtomicValue) xdmItem;
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public List<XdmAtomicValue> mo63764j(List<XdmAtomicValue> list) {
            return list;
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$f */
    /* loaded from: classes11.dex */
    public static class C18502f extends AbstractC18506j<Optional<XdmAtomicValue>, XdmAtomicValue> {
        public C18502f() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: k */
        public void mo63767k() {
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: l */
        public void mo63768l() {
            throw new MultipleItemException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public XdmAtomicValue mo63766e(XdmItem xdmItem) {
            return (XdmAtomicValue) xdmItem;
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public Optional<XdmAtomicValue> mo63764j(List<XdmAtomicValue> list) {
            return list.isEmpty() ? Optional.empty() : Optional.of(list.get(0));
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$g */
    /* loaded from: classes11.dex */
    public static class C18503g extends AbstractC18506j<XdmAtomicValue, XdmAtomicValue> {
        public C18503g() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: k */
        public void mo63767k() {
            throw new NoSuchElementException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: l */
        public void mo63768l() {
            throw new MultipleItemException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public XdmAtomicValue mo63766e(XdmItem xdmItem) {
            return (XdmAtomicValue) xdmItem;
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public XdmAtomicValue mo63764j(List<XdmAtomicValue> list) {
            return list.get(0);
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$h */
    /* loaded from: classes11.dex */
    public static class C18504h extends AbstractC18506j<Optional<String>, XdmItem> {
        public C18504h() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: l */
        public void mo63768l() {
            throw new MultipleItemException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public Optional<String> mo63764j(List<XdmItem> list) {
            return list.isEmpty() ? Optional.empty() : Optional.of(list.get(0).getStringValue());
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$i */
    /* loaded from: classes11.dex */
    public static class C18505i extends AbstractC18506j<String, XdmItem> {
        public C18505i() {
            super(null);
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: k */
        public void mo63767k() {
            throw new NoSuchElementException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: l */
        public void mo63768l() {
            throw new MultipleItemException();
        }

        @Override // net.p110sf.saxon.s9api.streams.XdmCollectors.AbstractC18506j
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public String mo63764j(List<XdmItem> list) {
            return list.get(0).getStringValue();
        }
    }

    /* renamed from: net.sf.saxon.s9api.streams.XdmCollectors$j */
    /* loaded from: classes11.dex */
    public static abstract class AbstractC18506j<R, I extends XdmItem> implements Collector<XdmItem, List<I>, R> {
        public AbstractC18506j() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m63787f(List list, XdmItem xdmItem) {
            I mo63766e = mo63766e(xdmItem);
            if (!list.isEmpty()) {
                mo63768l();
            }
            list.add(mo63766e);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ List m63788g(List list, List list2) {
            list.addAll(list2);
            if (list.size() > 1) {
                mo63768l();
            }
            return list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ Object m63789h(List list) {
            if (list.isEmpty()) {
                mo63767k();
            }
            return mo63764j(list);
        }

        /* renamed from: i */
        public static /* synthetic */ List m63790i() {
            return new ArrayList();
        }

        @Override // java.util.stream.Collector
        public BiConsumer<List<I>, XdmItem> accumulator() {
            return new BiConsumer() { // from class: com.sunia.HTREnginev2.xuo
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    XdmCollectors.AbstractC18506j.this.m63787f((List) obj, (XdmItem) obj2);
                }
            };
        }

        @Override // java.util.stream.Collector
        public Set<Collector.Characteristics> characteristics() {
            return Collections.emptySet();
        }

        @Override // java.util.stream.Collector
        public BinaryOperator<List<I>> combiner() {
            return new BinaryOperator() { // from class: com.sunia.HTREnginev2.wuo
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    List m63788g;
                    m63788g = XdmCollectors.AbstractC18506j.this.m63788g((List) obj, (List) obj2);
                    return m63788g;
                }
            };
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: e */
        public I mo63766e(XdmItem xdmItem) {
            return xdmItem;
        }

        @Override // java.util.stream.Collector
        public Function<List<I>, R> finisher() {
            return new Function() { // from class: com.sunia.HTREnginev2.yuo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Object m63789h;
                    m63789h = XdmCollectors.AbstractC18506j.this.m63789h((List) obj);
                    return m63789h;
                }
            };
        }

        /* renamed from: j */
        public abstract R mo63764j(List<I> list);

        /* renamed from: k */
        public void mo63767k() {
        }

        /* renamed from: l */
        public void mo63768l() {
        }

        @Override // java.util.stream.Collector
        public Supplier<List<I>> supplier() {
            return new Supplier() { // from class: com.sunia.HTREnginev2.zuo
                @Override // java.util.function.Supplier
                public final Object get() {
                    List m63790i;
                    m63790i = XdmCollectors.AbstractC18506j.m63790i();
                    return m63790i;
                }
            };
        }

        public /* synthetic */ AbstractC18506j(C18497a c18497a) {
            this();
        }
    }

    public static AbstractC18506j<XdmAtomicValue, XdmAtomicValue> asAtomic() {
        return new C18503g();
    }

    public static AbstractC18506j<List<XdmAtomicValue>, XdmAtomicValue> asListOfAtomic() {
        return new C18501e();
    }

    public static AbstractC18506j<List<XdmNode>, XdmNode> asListOfNodes() {
        return new C18500d();
    }

    public static AbstractC18506j<XdmNode, XdmNode> asNode() {
        return new C18498b();
    }

    public static AbstractC18506j<Optional<XdmAtomicValue>, XdmAtomicValue> asOptionalAtomic() {
        return new C18502f();
    }

    public static AbstractC18506j<Optional<XdmNode>, XdmNode> asOptionalNode() {
        return new C18499c();
    }

    public static AbstractC18506j<Optional<String>, XdmItem> asOptionalString() {
        return new C18504h();
    }

    public static AbstractC18506j<String, XdmItem> asString() {
        return new C18505i();
    }

    public static AbstractC18506j<XdmValue, XdmItem> asXdmValue() {
        return new C18497a();
    }
}
