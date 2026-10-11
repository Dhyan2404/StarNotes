package org.apache.commons.collections4;

import com.sunia.HTREnginev2.C14452tf;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.bag.HashBag;
import org.apache.commons.collections4.collection.PredicatedCollection;
import org.apache.commons.collections4.collection.SynchronizedCollection;
import org.apache.commons.collections4.collection.TransformedCollection;
import org.apache.commons.collections4.collection.UnmodifiableBoundedCollection;
import org.apache.commons.collections4.collection.UnmodifiableCollection;
import org.apache.commons.collections4.functors.TruePredicate;
import org.apache.commons.collections4.iterators.CollatingIterator;
import org.apache.commons.collections4.iterators.PermutationIterator;

/* loaded from: classes11.dex */
public class CollectionUtils {
    public static final Collection EMPTY_COLLECTION = Collections.emptyList();

    /* renamed from: org.apache.commons.collections4.CollectionUtils$a */
    /* loaded from: classes11.dex */
    public static class C18690a implements Transformer {

        /* renamed from: e */
        public final /* synthetic */ Equator f104888e;

        public C18690a(Equator equator) {
            this.f104888e = equator;
        }

        @Override // org.apache.commons.collections4.Transformer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C18694e<?> transform(Object obj) {
            return new C18694e<>(this.f104888e, obj);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.CollectionUtils$b */
    /* loaded from: classes11.dex */
    public static class C18691b<E> implements Transformer<E, C18694e<E>> {

        /* renamed from: e */
        public final /* synthetic */ Equator f104889e;

        public C18691b(Equator equator) {
            this.f104889e = equator;
        }

        @Override // org.apache.commons.collections4.Transformer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C18694e<E> transform(E e) {
            return new C18694e<>(this.f104889e, e);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.CollectionUtils$c */
    /* loaded from: classes11.dex */
    public static class C18692c<E> implements Transformer<E, C18694e<E>> {

        /* renamed from: e */
        public final /* synthetic */ Equator f104890e;

        public C18692c(Equator equator) {
            this.f104890e = equator;
        }

        @Override // org.apache.commons.collections4.Transformer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C18694e<E> transform(E e) {
            return new C18694e<>(this.f104890e, e);
        }
    }

    /* renamed from: org.apache.commons.collections4.CollectionUtils$d */
    /* loaded from: classes11.dex */
    public static class C18693d<O> {

        /* renamed from: e */
        public final Map<O, Integer> f104891e;

        /* renamed from: f */
        public final Map<O, Integer> f104892f;

        public C18693d(Iterable<? extends O> iterable, Iterable<? extends O> iterable2) {
            this.f104891e = CollectionUtils.getCardinalityMap(iterable);
            this.f104892f = CollectionUtils.getCardinalityMap(iterable2);
        }

        /* renamed from: a */
        public int m65870a(Object obj) {
            return m65872c(obj, this.f104891e);
        }

        /* renamed from: b */
        public int m65871b(Object obj) {
            return m65872c(obj, this.f104892f);
        }

        /* renamed from: c */
        public final int m65872c(Object obj, Map<?, Integer> map) {
            Integer num = map.get(obj);
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }

        /* renamed from: d */
        public final int m65873d(Object obj) {
            return Math.max(m65870a(obj), m65871b(obj));
        }

        /* renamed from: e */
        public final int m65874e(Object obj) {
            return Math.min(m65870a(obj), m65871b(obj));
        }
    }

    /* renamed from: org.apache.commons.collections4.CollectionUtils$e */
    /* loaded from: classes11.dex */
    public static class C18694e<O> {

        /* renamed from: a */
        public final Equator<? super O> f104893a;

        /* renamed from: b */
        public final O f104894b;

        public C18694e(Equator<? super O> equator, O o) {
            this.f104893a = equator;
            this.f104894b = o;
        }

        /* renamed from: a */
        public O m65875a() {
            return this.f104894b;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C18694e) {
                return this.f104893a.equate(this.f104894b, (Object) ((C18694e) obj).m65875a());
            }
            return false;
        }

        public int hashCode() {
            return this.f104893a.hash(this.f104894b);
        }
    }

    /* renamed from: org.apache.commons.collections4.CollectionUtils$f */
    /* loaded from: classes11.dex */
    public static class C18695f<O> extends C18693d<O> implements Iterable<O> {

        /* renamed from: g */
        public final Set<O> f104895g;

        /* renamed from: h */
        public final List<O> f104896h;

        public C18695f(Iterable<? extends O> iterable, Iterable<? extends O> iterable2) {
            super(iterable, iterable2);
            HashSet hashSet = new HashSet();
            this.f104895g = hashSet;
            CollectionUtils.addAll(hashSet, iterable);
            CollectionUtils.addAll(hashSet, iterable2);
            this.f104896h = new ArrayList(hashSet.size());
        }

        /* renamed from: g */
        public Collection<O> m65876g() {
            return this.f104896h;
        }

        /* renamed from: h */
        public void m65877h(O o, int i) {
            for (int i2 = 0; i2 < i; i2++) {
                this.f104896h.add(o);
            }
        }

        @Override // java.lang.Iterable
        public Iterator<O> iterator() {
            return this.f104895g.iterator();
        }
    }

    /* renamed from: a */
    public static void m65866a(int i) {
        if (i >= 0) {
            return;
        }
        throw new IndexOutOfBoundsException("Index cannot be negative: " + i);
    }

    public static <C> boolean addAll(Collection<C> collection, Iterable<? extends C> iterable) {
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        return addAll(collection, iterable.iterator());
    }

    public static <T> boolean addIgnoreNull(Collection<T> collection, T t) {
        if (collection != null) {
            return t != null && collection.add(t);
        }
        throw new NullPointerException("The collection must not be null");
    }

    @Deprecated
    public static <O> int cardinality(O o, Iterable<? super O> iterable) {
        if (iterable != null) {
            return IterableUtils.frequency(iterable, o);
        }
        throw new NullPointerException("coll must not be null.");
    }

    public static <O extends Comparable<? super O>> List<O> collate(Iterable<? extends O> iterable, Iterable<? extends O> iterable2) {
        return collate(iterable, iterable2, ComparatorUtils.naturalComparator(), true);
    }

    public static <I, O> Collection<O> collect(Iterable<I> iterable, Transformer<? super I, ? extends O> transformer) {
        return collect(iterable, transformer, iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList());
    }

    public static boolean containsAll(Collection<?> collection, Collection<?> collection2) {
        boolean z;
        if (collection2.isEmpty()) {
            return true;
        }
        HashSet hashSet = new HashSet();
        for (Object obj : collection2) {
            if (!hashSet.contains(obj)) {
                for (Object obj2 : collection) {
                    hashSet.add(obj2);
                    if (obj != null) {
                        if (obj.equals(obj2)) {
                            z = true;
                            break;
                        }
                    } else {
                        if (obj2 == null) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (!z) {
                    return false;
                }
            }
        }
        return true;
    }

    public static <T> boolean containsAny(Collection<?> collection, T... tArr) {
        if (collection.size() < tArr.length) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (C14452tf.m57366a(tArr, it2.next())) {
                    return true;
                }
            }
        } else {
            for (T t : tArr) {
                if (collection.contains(t)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Deprecated
    public static <C> int countMatches(Iterable<C> iterable, Predicate<? super C> predicate) {
        if (predicate == null) {
            return 0;
        }
        return (int) IterableUtils.countMatches(iterable, predicate);
    }

    public static <O> Collection<O> disjunction(Iterable<? extends O> iterable, Iterable<? extends O> iterable2) {
        C18695f c18695f = new C18695f(iterable, iterable2);
        Iterator<O> it2 = c18695f.iterator();
        while (it2.hasNext()) {
            O next = it2.next();
            c18695f.m65877h(next, c18695f.m65873d(next) - c18695f.m65874e(next));
        }
        return c18695f.m65876g();
    }

    public static <T> Collection<T> emptyCollection() {
        return EMPTY_COLLECTION;
    }

    public static <T> Collection<T> emptyIfNull(Collection<T> collection) {
        return collection == null ? emptyCollection() : collection;
    }

    @Deprecated
    public static <C> boolean exists(Iterable<C> iterable, Predicate<? super C> predicate) {
        return predicate != null && IterableUtils.matchesAny(iterable, predicate);
    }

    public static <E> E extractSingleton(Collection<E> collection) {
        if (collection == null) {
            throw new NullPointerException("Collection must not be null.");
        }
        if (collection.size() == 1) {
            return collection.iterator().next();
        }
        throw new IllegalArgumentException("Can extract singleton only when collection size == 1");
    }

    public static <T> boolean filter(Iterable<T> iterable, Predicate<? super T> predicate) {
        boolean z = false;
        if (iterable != null && predicate != null) {
            Iterator<T> it2 = iterable.iterator();
            while (it2.hasNext()) {
                if (!predicate.evaluate(it2.next())) {
                    it2.remove();
                    z = true;
                }
            }
        }
        return z;
    }

    public static <T> boolean filterInverse(Iterable<T> iterable, Predicate<? super T> predicate) {
        return filter(iterable, predicate == null ? null : PredicateUtils.notPredicate(predicate));
    }

    @Deprecated
    public static <T> T find(Iterable<T> iterable, Predicate<? super T> predicate) {
        if (predicate != null) {
            return (T) IterableUtils.find(iterable, predicate);
        }
        return null;
    }

    @Deprecated
    public static <T, C extends Closure<? super T>> T forAllButLastDo(Iterable<T> iterable, C c) {
        if (c != null) {
            return (T) IterableUtils.forEachButLast(iterable, c);
        }
        return null;
    }

    @Deprecated
    public static <T, C extends Closure<? super T>> C forAllDo(Iterable<T> iterable, C c) {
        if (c != null) {
            IterableUtils.forEach(iterable, c);
        }
        return c;
    }

    @Deprecated
    public static <T> T get(Iterator<T> it2, int i) {
        return (T) IteratorUtils.get(it2, i);
    }

    public static <O> Map<O, Integer> getCardinalityMap(Iterable<? extends O> iterable) {
        HashMap hashMap = new HashMap();
        for (O o : iterable) {
            Integer num = (Integer) hashMap.get(o);
            if (num == null) {
                hashMap.put(o, 1);
            } else {
                hashMap.put(o, Integer.valueOf(num.intValue() + 1));
            }
        }
        return hashMap;
    }

    public static <O> Collection<O> intersection(Iterable<? extends O> iterable, Iterable<? extends O> iterable2) {
        C18695f c18695f = new C18695f(iterable, iterable2);
        Iterator<O> it2 = c18695f.iterator();
        while (it2.hasNext()) {
            O next = it2.next();
            c18695f.m65877h(next, c18695f.m65874e(next));
        }
        return c18695f.m65876g();
    }

    public static boolean isEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean isEqualCollection(Collection<?> collection, Collection<?> collection2) {
        if (collection.size() != collection2.size()) {
            return false;
        }
        C18693d c18693d = new C18693d(collection, collection2);
        if (c18693d.f104891e.size() != c18693d.f104892f.size()) {
            return false;
        }
        for (Object obj : c18693d.f104891e.keySet()) {
            if (c18693d.m65870a(obj) != c18693d.m65871b(obj)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isFull(Collection<? extends Object> collection) {
        if (collection == null) {
            throw new NullPointerException("The collection must not be null");
        }
        if (collection instanceof BoundedCollection) {
            return ((BoundedCollection) collection).isFull();
        }
        try {
            return UnmodifiableBoundedCollection.unmodifiableBoundedCollection(collection).isFull();
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static boolean isNotEmpty(Collection<?> collection) {
        return !isEmpty(collection);
    }

    public static boolean isProperSubCollection(Collection<?> collection, Collection<?> collection2) {
        return collection.size() < collection2.size() && isSubCollection(collection, collection2);
    }

    public static boolean isSubCollection(Collection<?> collection, Collection<?> collection2) {
        C18693d c18693d = new C18693d(collection, collection2);
        for (Object obj : collection) {
            if (c18693d.m65870a(obj) > c18693d.m65871b(obj)) {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    public static <C> boolean matchesAll(Iterable<C> iterable, Predicate<? super C> predicate) {
        return predicate != null && IterableUtils.matchesAll(iterable, predicate);
    }

    public static int maxSize(Collection<? extends Object> collection) {
        if (collection == null) {
            throw new NullPointerException("The collection must not be null");
        }
        if (collection instanceof BoundedCollection) {
            return ((BoundedCollection) collection).maxSize();
        }
        try {
            return UnmodifiableBoundedCollection.unmodifiableBoundedCollection(collection).maxSize();
        } catch (IllegalArgumentException unused) {
            return -1;
        }
    }

    public static <E> Collection<List<E>> permutations(Collection<E> collection) {
        PermutationIterator permutationIterator = new PermutationIterator(collection);
        ArrayList arrayList = new ArrayList();
        while (permutationIterator.hasNext()) {
            arrayList.add(permutationIterator.next());
        }
        return arrayList;
    }

    public static <C> Collection<C> predicatedCollection(Collection<C> collection, Predicate<? super C> predicate) {
        return PredicatedCollection.predicatedCollection(collection, predicate);
    }

    public static <E> Collection<E> removeAll(Collection<E> collection, Collection<?> collection2) {
        return ListUtils.removeAll(collection, collection2);
    }

    public static <C> Collection<C> retainAll(Collection<C> collection, Collection<?> collection2) {
        return ListUtils.retainAll(collection, collection2);
    }

    public static void reverseArray(Object[] objArr) {
        int length = objArr.length - 1;
        for (int i = 0; length > i; i++) {
            Object obj = objArr[length];
            objArr[length] = objArr[i];
            objArr[i] = obj;
            length--;
        }
    }

    public static <O> Collection<O> select(Iterable<? extends O> iterable, Predicate<? super O> predicate) {
        return select(iterable, predicate, iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList());
    }

    public static <O> Collection<O> selectRejected(Iterable<? extends O> iterable, Predicate<? super O> predicate) {
        return selectRejected(iterable, predicate, iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList());
    }

    public static int size(Object obj) {
        int i = 0;
        if (obj == null) {
            return 0;
        }
        if (obj instanceof Map) {
            return ((Map) obj).size();
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size();
        }
        if (obj instanceof Iterable) {
            return IterableUtils.size((Iterable) obj);
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).length;
        }
        if (obj instanceof Iterator) {
            return IteratorUtils.size((Iterator) obj);
        }
        if (obj instanceof Enumeration) {
            Enumeration enumeration = (Enumeration) obj;
            while (enumeration.hasMoreElements()) {
                i++;
                enumeration.nextElement();
            }
            return i;
        }
        try {
            return Array.getLength(obj);
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("Unsupported object type: " + obj.getClass().getName());
        }
    }

    public static boolean sizeIsEmpty(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).isEmpty();
        }
        if (obj instanceof Iterable) {
            return IterableUtils.isEmpty((Iterable) obj);
        }
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).length == 0;
        }
        if (obj instanceof Iterator) {
            return !((Iterator) obj).hasNext();
        }
        if (obj instanceof Enumeration) {
            return !((Enumeration) obj).hasMoreElements();
        }
        try {
            return Array.getLength(obj) == 0;
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("Unsupported object type: " + obj.getClass().getName());
        }
    }

    public static <O> Collection<O> subtract(Iterable<? extends O> iterable, Iterable<? extends O> iterable2) {
        return subtract(iterable, iterable2, TruePredicate.truePredicate());
    }

    @Deprecated
    public static <C> Collection<C> synchronizedCollection(Collection<C> collection) {
        return SynchronizedCollection.synchronizedCollection(collection);
    }

    public static <C> void transform(Collection<C> collection, Transformer<? super C, ? extends C> transformer) {
        if (collection == null || transformer == null) {
            return;
        }
        if (collection instanceof List) {
            ListIterator listIterator = ((List) collection).listIterator();
            while (listIterator.hasNext()) {
                listIterator.set(transformer.transform((Object) listIterator.next()));
            }
        } else {
            Collection<? extends C> collect = collect(collection, transformer);
            collection.clear();
            collection.addAll(collect);
        }
    }

    public static <E> Collection<E> transformingCollection(Collection<E> collection, Transformer<? super E, ? extends E> transformer) {
        return TransformedCollection.transformingCollection(collection, transformer);
    }

    public static <O> Collection<O> union(Iterable<? extends O> iterable, Iterable<? extends O> iterable2) {
        C18695f c18695f = new C18695f(iterable, iterable2);
        Iterator<O> it2 = c18695f.iterator();
        while (it2.hasNext()) {
            O next = it2.next();
            c18695f.m65877h(next, c18695f.m65873d(next));
        }
        return c18695f.m65876g();
    }

    @Deprecated
    public static <C> Collection<C> unmodifiableCollection(Collection<? extends C> collection) {
        return UnmodifiableCollection.unmodifiableCollection(collection);
    }

    public static <O extends Comparable<? super O>> List<O> collate(Iterable<? extends O> iterable, Iterable<? extends O> iterable2, boolean z) {
        return collate(iterable, iterable2, ComparatorUtils.naturalComparator(), z);
    }

    @Deprecated
    public static <T, C extends Closure<? super T>> T forAllButLastDo(Iterator<T> it2, C c) {
        if (c != null) {
            return (T) IteratorUtils.forEachButLast(it2, c);
        }
        return null;
    }

    @Deprecated
    public static <T, C extends Closure<? super T>> C forAllDo(Iterator<T> it2, C c) {
        if (c != null) {
            IteratorUtils.forEach(it2, c);
        }
        return c;
    }

    @Deprecated
    public static <T> T get(Iterable<T> iterable, int i) {
        return (T) IterableUtils.get(iterable, i);
    }

    public static <E> Collection<E> removeAll(Iterable<E> iterable, Iterable<? extends E> iterable2, Equator<? super E> equator) {
        Set set = (Set) collect(iterable2, new C18692c(equator), new HashSet());
        ArrayList arrayList = new ArrayList();
        for (E e : iterable) {
            if (!set.contains(new C18694e(equator, e))) {
                arrayList.add(e);
            }
        }
        return arrayList;
    }

    public static <E> Collection<E> retainAll(Iterable<E> iterable, Iterable<? extends E> iterable2, Equator<? super E> equator) {
        Set set = (Set) collect(iterable2, new C18691b(equator), new HashSet());
        ArrayList arrayList = new ArrayList();
        for (E e : iterable) {
            if (set.contains(new C18694e(equator, e))) {
                arrayList.add(e);
            }
        }
        return arrayList;
    }

    public static <O> List<O> collate(Iterable<? extends O> iterable, Iterable<? extends O> iterable2, Comparator<? super O> comparator) {
        return collate(iterable, iterable2, comparator, true);
    }

    public static Object get(Object obj, int i) {
        if (i >= 0) {
            if (obj instanceof Map) {
                return IteratorUtils.get(((Map) obj).entrySet().iterator(), i);
            }
            if (obj instanceof Object[]) {
                return ((Object[]) obj)[i];
            }
            if (obj instanceof Iterator) {
                return IteratorUtils.get((Iterator) obj, i);
            }
            if (obj instanceof Iterable) {
                return IterableUtils.get((Iterable) obj, i);
            }
            if (obj instanceof Enumeration) {
                return EnumerationUtils.get((Enumeration) obj, i);
            }
            if (obj != null) {
                try {
                    return Array.get(obj, i);
                } catch (IllegalArgumentException unused) {
                    throw new IllegalArgumentException("Unsupported object type: " + obj.getClass().getName());
                }
            }
            throw new IllegalArgumentException("Unsupported object type: null");
        }
        throw new IndexOutOfBoundsException("Index cannot be negative: " + i);
    }

    public static <O> Collection<O> subtract(Iterable<? extends O> iterable, Iterable<? extends O> iterable2, Predicate<O> predicate) {
        ArrayList arrayList = new ArrayList();
        HashBag hashBag = new HashBag();
        for (O o : iterable2) {
            if (predicate.evaluate(o)) {
                hashBag.add(o);
            }
        }
        for (O o2 : iterable) {
            if (!hashBag.remove(o2, 1)) {
                arrayList.add(o2);
            }
        }
        return arrayList;
    }

    public static <C> boolean addAll(Collection<C> collection, Iterator<? extends C> it2) {
        boolean z = false;
        while (it2.hasNext()) {
            z |= collection.add(it2.next());
        }
        return z;
    }

    public static <O> List<O> collate(Iterable<? extends O> iterable, Iterable<? extends O> iterable2, Comparator<? super O> comparator, boolean z) {
        if (iterable == null || iterable2 == null) {
            throw new NullPointerException("The collections must not be null");
        }
        if (comparator != null) {
            int max = ((iterable instanceof Collection) && (iterable2 instanceof Collection)) ? Math.max(1, ((Collection) iterable).size() + ((Collection) iterable2).size()) : 10;
            CollatingIterator collatingIterator = new CollatingIterator(comparator, iterable.iterator(), iterable2.iterator());
            if (z) {
                return IteratorUtils.toList(collatingIterator, max);
            }
            ArrayList arrayList = new ArrayList(max);
            Object obj = null;
            while (collatingIterator.hasNext()) {
                Object next = collatingIterator.next();
                if (obj == null || !obj.equals(next)) {
                    arrayList.add(next);
                }
                obj = next;
            }
            arrayList.trimToSize();
            return arrayList;
        }
        throw new NullPointerException("The comparator must not be null");
    }

    public static <I, O> Collection<O> collect(Iterator<I> it2, Transformer<? super I, ? extends O> transformer) {
        return collect(it2, transformer, new ArrayList());
    }

    public static <O, R extends Collection<? super O>> R select(Iterable<? extends O> iterable, Predicate<? super O> predicate, R r) {
        if (iterable != null && predicate != null) {
            for (O o : iterable) {
                if (predicate.evaluate(o)) {
                    r.add(o);
                }
            }
        }
        return r;
    }

    public static <O, R extends Collection<? super O>> R selectRejected(Iterable<? extends O> iterable, Predicate<? super O> predicate, R r) {
        if (iterable != null && predicate != null) {
            for (O o : iterable) {
                if (!predicate.evaluate(o)) {
                    r.add(o);
                }
            }
        }
        return r;
    }

    public static <I, O, R extends Collection<? super O>> R collect(Iterable<? extends I> iterable, Transformer<? super I, ? extends O> transformer, R r) {
        return iterable != null ? (R) collect(iterable.iterator(), transformer, r) : r;
    }

    public static <C> boolean addAll(Collection<C> collection, Enumeration<? extends C> enumeration) {
        boolean z = false;
        while (enumeration.hasMoreElements()) {
            z |= collection.add(enumeration.nextElement());
        }
        return z;
    }

    public static <I, O, R extends Collection<? super O>> R collect(Iterator<? extends I> it2, Transformer<? super I, ? extends O> transformer, R r) {
        if (it2 != null && transformer != null) {
            while (it2.hasNext()) {
                r.add(transformer.transform(it2.next()));
            }
        }
        return r;
    }

    public static boolean containsAny(Collection<?> collection, Collection<?> collection2) {
        if (collection.size() < collection2.size()) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (collection2.contains(it2.next())) {
                    return true;
                }
            }
            return false;
        }
        Iterator<?> it3 = collection2.iterator();
        while (it3.hasNext()) {
            if (collection.contains(it3.next())) {
                return true;
            }
        }
        return false;
    }

    public static <E> boolean isEqualCollection(Collection<? extends E> collection, Collection<? extends E> collection2, Equator<? super E> equator) {
        if (equator != null) {
            if (collection.size() != collection2.size()) {
                return false;
            }
            C18690a c18690a = new C18690a(equator);
            return isEqualCollection(collect(collection, c18690a), collect(collection2, c18690a));
        }
        throw new NullPointerException("Equator must not be null.");
    }

    public static <O, R extends Collection<? super O>> R select(Iterable<? extends O> iterable, Predicate<? super O> predicate, R r, R r2) {
        if (iterable != null && predicate != null) {
            for (O o : iterable) {
                if (predicate.evaluate(o)) {
                    r.add(o);
                } else {
                    r2.add(o);
                }
            }
        }
        return r;
    }

    public static <C> boolean addAll(Collection<C> collection, C... cArr) {
        boolean z = false;
        for (C c : cArr) {
            z |= collection.add(c);
        }
        return z;
    }

    public static <K, V> Map.Entry<K, V> get(Map<K, V> map, int i) {
        m65866a(i);
        return (Map.Entry) get((Iterable) map.entrySet(), i);
    }
}
