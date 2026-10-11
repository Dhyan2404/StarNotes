package org.apache.commons.collections4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.collections4.functors.EqualPredicate;
import org.apache.commons.collections4.iterators.LazyIteratorChain;
import org.apache.commons.collections4.iterators.ReverseListIterator;
import org.apache.commons.collections4.iterators.UniqueFilterIterator;

/* loaded from: classes11.dex */
public class IterableUtils {

    /* renamed from: a */
    public static final FluentIterable f104898a = new C18700e();

    /* JADX INFO: Add missing generic type declarations: [O] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$a */
    /* loaded from: classes11.dex */
    public static class C18696a<O> extends FluentIterable<O> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104899f;

        /* renamed from: g */
        public final /* synthetic */ Transformer f104900g;

        public C18696a(Iterable iterable, Transformer transformer) {
            this.f104899f = iterable;
            this.f104900g = transformer;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<O> iterator() {
            return IteratorUtils.transformedIterator(this.f104899f.iterator(), this.f104900g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$b */
    /* loaded from: classes11.dex */
    public static class C18697b<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104901f;

        public C18697b(Iterable iterable) {
            this.f104901f = iterable;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return new UniqueFilterIterator(this.f104901f.iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$c */
    /* loaded from: classes11.dex */
    public static class C18698c<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104902f;

        /* renamed from: g */
        public final /* synthetic */ Iterable f104903g;

        public C18698c(Iterable iterable, Iterable iterable2) {
            this.f104902f = iterable;
            this.f104903g = iterable2;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return IteratorUtils.zippingIterator(this.f104902f.iterator(), this.f104903g.iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$d */
    /* loaded from: classes11.dex */
    public static class C18699d<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable[] f104904f;

        /* renamed from: g */
        public final /* synthetic */ Iterable f104905g;

        public C18699d(Iterable[] iterableArr, Iterable iterable) {
            this.f104904f = iterableArr;
            this.f104905g = iterable;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            Iterator[] itArr = new Iterator[this.f104904f.length + 1];
            int i = 0;
            itArr[0] = this.f104905g.iterator();
            while (true) {
                Iterable[] iterableArr = this.f104904f;
                if (i >= iterableArr.length) {
                    return IteratorUtils.zippingIterator(itArr);
                }
                int i2 = i + 1;
                itArr[i2] = iterableArr[i].iterator();
                i = i2;
            }
        }
    }

    /* renamed from: org.apache.commons.collections4.IterableUtils$e */
    /* loaded from: classes11.dex */
    public static class C18700e extends FluentIterable<Object> {
        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<Object> iterator() {
            return IteratorUtils.emptyIterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$f */
    /* loaded from: classes11.dex */
    public static class C18701f<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable[] f104906f;

        /* renamed from: org.apache.commons.collections4.IterableUtils$f$a */
        /* loaded from: classes11.dex */
        public class a extends LazyIteratorChain<E> {
            public a() {
            }

            @Override // org.apache.commons.collections4.iterators.LazyIteratorChain
            public Iterator<? extends E> nextIterator(int i) {
                Iterable[] iterableArr = C18701f.this.f104906f;
                if (i > iterableArr.length) {
                    return null;
                }
                return iterableArr[i - 1].iterator();
            }
        }

        public C18701f(Iterable[] iterableArr) {
            this.f104906f = iterableArr;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return new a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$g */
    /* loaded from: classes11.dex */
    public static class C18702g<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104908f;

        /* renamed from: g */
        public final /* synthetic */ Iterable f104909g;

        public C18702g(Iterable iterable, Iterable iterable2) {
            this.f104908f = iterable;
            this.f104909g = iterable2;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return IteratorUtils.collatedIterator(null, this.f104908f.iterator(), this.f104909g.iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$h */
    /* loaded from: classes11.dex */
    public static class C18703h<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Comparator f104910f;

        /* renamed from: g */
        public final /* synthetic */ Iterable f104911g;

        /* renamed from: h */
        public final /* synthetic */ Iterable f104912h;

        public C18703h(Comparator comparator, Iterable iterable, Iterable iterable2) {
            this.f104910f = comparator;
            this.f104911g = iterable;
            this.f104912h = iterable2;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return IteratorUtils.collatedIterator(this.f104910f, this.f104911g.iterator(), this.f104912h.iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$i */
    /* loaded from: classes11.dex */
    public static class C18704i<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104913f;

        /* renamed from: g */
        public final /* synthetic */ Predicate f104914g;

        public C18704i(Iterable iterable, Predicate predicate) {
            this.f104913f = iterable;
            this.f104914g = predicate;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return IteratorUtils.filteredIterator(IterableUtils.m65884d(this.f104913f), this.f104914g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$j */
    /* loaded from: classes11.dex */
    public static class C18705j<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104915f;

        /* renamed from: g */
        public final /* synthetic */ long f104916g;

        public C18705j(Iterable iterable, long j) {
            this.f104915f = iterable;
            this.f104916g = j;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return IteratorUtils.boundedIterator(this.f104915f.iterator(), this.f104916g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$k */
    /* loaded from: classes11.dex */
    public static class C18706k<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104917f;

        /* renamed from: org.apache.commons.collections4.IterableUtils$k$a */
        /* loaded from: classes11.dex */
        public class a extends LazyIteratorChain<E> {
            public a() {
            }

            @Override // org.apache.commons.collections4.iterators.LazyIteratorChain
            public Iterator<? extends E> nextIterator(int i) {
                if (IterableUtils.isEmpty(C18706k.this.f104917f)) {
                    return null;
                }
                return C18706k.this.f104917f.iterator();
            }
        }

        public C18706k(Iterable iterable) {
            this.f104917f = iterable;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return new a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$l */
    /* loaded from: classes11.dex */
    public static class C18707l<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104919f;

        public C18707l(Iterable iterable) {
            this.f104919f = iterable;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            Iterable iterable = this.f104919f;
            return new ReverseListIterator(iterable instanceof List ? (List) iterable : IteratorUtils.toList(iterable.iterator()));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.IterableUtils$m */
    /* loaded from: classes11.dex */
    public static class C18708m<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f104920f;

        /* renamed from: g */
        public final /* synthetic */ long f104921g;

        public C18708m(Iterable iterable, long j) {
            this.f104920f = iterable;
            this.f104921g = j;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return IteratorUtils.skippingIterator(this.f104920f.iterator(), this.f104921g);
        }
    }

    /* renamed from: org.apache.commons.collections4.IterableUtils$n */
    /* loaded from: classes11.dex */
    public static final class C18709n<E> extends FluentIterable<E> {

        /* renamed from: f */
        public final Iterable<E> f104922f;

        public C18709n(Iterable<E> iterable) {
            this.f104922f = iterable;
        }

        @Override // org.apache.commons.collections4.FluentIterable, java.lang.Iterable
        public Iterator<E> iterator() {
            return IteratorUtils.unmodifiableIterator(this.f104922f.iterator());
        }
    }

    /* renamed from: b */
    public static void m65882b(Iterable<?> iterable) {
        if (iterable == null) {
            throw new NullPointerException("Iterable must not be null.");
        }
    }

    public static <E> Iterable<E> boundedIterable(Iterable<E> iterable, long j) {
        m65882b(iterable);
        if (j >= 0) {
            return new C18705j(iterable, j);
        }
        throw new IllegalArgumentException("MaxSize parameter must not be negative.");
    }

    /* renamed from: c */
    public static void m65883c(Iterable<?>... iterableArr) {
        if (iterableArr == null) {
            throw new NullPointerException("Iterables must not be null.");
        }
        for (Iterable<?> iterable : iterableArr) {
            m65882b(iterable);
        }
    }

    public static <E> Iterable<E> chainedIterable(Iterable<? extends E> iterable, Iterable<? extends E> iterable2) {
        return chainedIterable(iterable, iterable2);
    }

    public static <E> Iterable<E> collatedIterable(Iterable<? extends E> iterable, Iterable<? extends E> iterable2) {
        m65883c(iterable, iterable2);
        return new C18702g(iterable, iterable2);
    }

    public static <E> boolean contains(Iterable<E> iterable, Object obj) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        return IteratorUtils.contains(m65884d(iterable), obj);
    }

    public static <E> long countMatches(Iterable<E> iterable, Predicate<? super E> predicate) {
        if (predicate != null) {
            return size(filteredIterable(emptyIfNull(iterable), predicate));
        }
        throw new NullPointerException("Predicate must not be null.");
    }

    /* renamed from: d */
    public static <E> Iterator<E> m65884d(Iterable<E> iterable) {
        return iterable != null ? iterable.iterator() : IteratorUtils.emptyIterator();
    }

    public static <E> Iterable<E> emptyIfNull(Iterable<E> iterable) {
        return iterable == null ? emptyIterable() : iterable;
    }

    public static <E> Iterable<E> emptyIterable() {
        return f104898a;
    }

    public static <E> Iterable<E> filteredIterable(Iterable<E> iterable, Predicate<? super E> predicate) {
        m65882b(iterable);
        if (predicate != null) {
            return new C18704i(iterable, predicate);
        }
        throw new NullPointerException("Predicate must not be null.");
    }

    public static <E> E find(Iterable<E> iterable, Predicate<? super E> predicate) {
        return (E) IteratorUtils.find(m65884d(iterable), predicate);
    }

    public static <T> T first(Iterable<T> iterable) {
        return (T) get(iterable, 0);
    }

    public static <E> void forEach(Iterable<E> iterable, Closure<? super E> closure) {
        IteratorUtils.forEach(m65884d(iterable), closure);
    }

    public static <E> E forEachButLast(Iterable<E> iterable, Closure<? super E> closure) {
        return (E) IteratorUtils.forEachButLast(m65884d(iterable), closure);
    }

    public static <E, T extends E> int frequency(Iterable<E> iterable, T t) {
        return iterable instanceof Set ? ((Set) iterable).contains(t) ? 1 : 0 : iterable instanceof Bag ? ((Bag) iterable).getCount(t) : size(filteredIterable(emptyIfNull(iterable), EqualPredicate.equalPredicate(t)));
    }

    public static <T> T get(Iterable<T> iterable, int i) {
        CollectionUtils.m65866a(i);
        return iterable instanceof List ? (T) ((List) iterable).get(i) : (T) IteratorUtils.get(m65884d(iterable), i);
    }

    public static <E> int indexOf(Iterable<E> iterable, Predicate<? super E> predicate) {
        return IteratorUtils.indexOf(m65884d(iterable), predicate);
    }

    public static boolean isEmpty(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : IteratorUtils.isEmpty(m65884d(iterable));
    }

    public static <E> Iterable<E> loopingIterable(Iterable<E> iterable) {
        m65882b(iterable);
        return new C18706k(iterable);
    }

    public static <E> boolean matchesAll(Iterable<E> iterable, Predicate<? super E> predicate) {
        return IteratorUtils.matchesAll(m65884d(iterable), predicate);
    }

    public static <E> boolean matchesAny(Iterable<E> iterable, Predicate<? super E> predicate) {
        return IteratorUtils.matchesAny(m65884d(iterable), predicate);
    }

    public static <O> List<List<O>> partition(Iterable<? extends O> iterable, Predicate<? super O> predicate) {
        if (predicate != null) {
            return partition(iterable, FactoryUtils.instantiateFactory(ArrayList.class), predicate);
        }
        throw new NullPointerException("Predicate must not be null.");
    }

    public static <E> Iterable<E> reversedIterable(Iterable<E> iterable) {
        m65882b(iterable);
        return new C18707l(iterable);
    }

    public static int size(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).size() : IteratorUtils.size(m65884d(iterable));
    }

    public static <E> Iterable<E> skippingIterable(Iterable<E> iterable, long j) {
        m65882b(iterable);
        if (j >= 0) {
            return new C18708m(iterable, j);
        }
        throw new IllegalArgumentException("ElementsToSkip parameter must not be negative.");
    }

    public static <E> List<E> toList(Iterable<E> iterable) {
        return IteratorUtils.toList(m65884d(iterable));
    }

    public static <E> String toString(Iterable<E> iterable) {
        return IteratorUtils.toString(m65884d(iterable));
    }

    public static <I, O> Iterable<O> transformedIterable(Iterable<I> iterable, Transformer<? super I, ? extends O> transformer) {
        m65882b(iterable);
        if (transformer != null) {
            return new C18696a(iterable, transformer);
        }
        throw new NullPointerException("Transformer must not be null.");
    }

    public static <E> Iterable<E> uniqueIterable(Iterable<E> iterable) {
        m65882b(iterable);
        return new C18697b(iterable);
    }

    public static <E> Iterable<E> unmodifiableIterable(Iterable<E> iterable) {
        m65882b(iterable);
        return iterable instanceof C18709n ? iterable : new C18709n(iterable);
    }

    public static <E> Iterable<E> zippingIterable(Iterable<? extends E> iterable, Iterable<? extends E> iterable2) {
        m65882b(iterable);
        m65882b(iterable2);
        return new C18698c(iterable, iterable2);
    }

    public static <E> Iterable<E> chainedIterable(Iterable<? extends E> iterable, Iterable<? extends E> iterable2, Iterable<? extends E> iterable3) {
        return chainedIterable(iterable, iterable2, iterable3);
    }

    public static <E> String toString(Iterable<E> iterable, Transformer<? super E, String> transformer) {
        if (transformer != null) {
            return IteratorUtils.toString(m65884d(iterable), transformer);
        }
        throw new NullPointerException("Transformer must not be null.");
    }

    public static <E> Iterable<E> chainedIterable(Iterable<? extends E> iterable, Iterable<? extends E> iterable2, Iterable<? extends E> iterable3, Iterable<? extends E> iterable4) {
        return chainedIterable(iterable, iterable2, iterable3, iterable4);
    }

    public static <E> Iterable<E> collatedIterable(Comparator<? super E> comparator, Iterable<? extends E> iterable, Iterable<? extends E> iterable2) {
        m65883c(iterable, iterable2);
        return new C18703h(comparator, iterable, iterable2);
    }

    public static <E> Iterable<E> chainedIterable(Iterable<? extends E>... iterableArr) {
        m65883c(iterableArr);
        return new C18701f(iterableArr);
    }

    public static <E> boolean contains(Iterable<? extends E> iterable, E e, Equator<? super E> equator) {
        if (equator != null) {
            return matchesAny(iterable, EqualPredicate.equalPredicate(e, equator));
        }
        throw new NullPointerException("Equator must not be null.");
    }

    public static <O> List<List<O>> partition(Iterable<? extends O> iterable, Predicate<? super O>... predicateArr) {
        return partition(iterable, FactoryUtils.instantiateFactory(ArrayList.class), predicateArr);
    }

    public static <E> String toString(Iterable<E> iterable, Transformer<? super E, String> transformer, String str, String str2, String str3) {
        return IteratorUtils.toString(m65884d(iterable), transformer, str, str2, str3);
    }

    public static <E> Iterable<E> zippingIterable(Iterable<? extends E> iterable, Iterable<? extends E>... iterableArr) {
        m65882b(iterable);
        m65883c(iterableArr);
        return new C18699d(iterableArr, iterable);
    }

    public static <O, R extends Collection<O>> List<R> partition(Iterable<? extends O> iterable, Factory<R> factory, Predicate<? super O>... predicateArr) {
        boolean z;
        if (iterable == null) {
            return partition(emptyIterable(), factory, predicateArr);
        }
        if (predicateArr != null) {
            for (Predicate<? super O> predicate : predicateArr) {
                if (predicate == null) {
                    throw new NullPointerException("Predicate must not be null.");
                }
            }
            if (predicateArr.length < 1) {
                R create = factory.create();
                CollectionUtils.addAll(create, iterable);
                return Collections.singletonList(create);
            }
            int length = predicateArr.length;
            int i = length + 1;
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(factory.create());
            }
            for (O o : iterable) {
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z = false;
                        break;
                    }
                    if (predicateArr[i3].evaluate(o)) {
                        ((Collection) arrayList.get(i3)).add(o);
                        z = true;
                        break;
                    }
                    i3++;
                }
                if (!z) {
                    ((Collection) arrayList.get(length)).add(o);
                }
            }
            return arrayList;
        }
        throw new NullPointerException("Predicates must not be null.");
    }
}
