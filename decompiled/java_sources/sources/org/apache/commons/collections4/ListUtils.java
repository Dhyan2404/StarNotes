package org.apache.commons.collections4;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.collections4.bag.HashBag;
import org.apache.commons.collections4.functors.DefaultEquator;
import org.apache.commons.collections4.list.FixedSizeList;
import org.apache.commons.collections4.list.LazyList;
import org.apache.commons.collections4.list.PredicatedList;
import org.apache.commons.collections4.list.TransformedList;
import org.apache.commons.collections4.list.UnmodifiableList;
import org.apache.commons.collections4.sequence.CommandVisitor;
import org.apache.commons.collections4.sequence.EditScript;
import org.apache.commons.collections4.sequence.SequencesComparator;

/* loaded from: classes11.dex */
public class ListUtils {

    /* renamed from: org.apache.commons.collections4.ListUtils$b */
    /* loaded from: classes11.dex */
    public static final class C18711b extends AbstractList<Character> {

        /* renamed from: e */
        public final CharSequence f104926e;

        public C18711b(CharSequence charSequence) {
            this.f104926e = charSequence;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Character get(int i) {
            return Character.valueOf(this.f104926e.charAt(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f104926e.length();
        }
    }

    /* renamed from: org.apache.commons.collections4.ListUtils$c */
    /* loaded from: classes11.dex */
    public static final class C18712c<E> implements CommandVisitor<E> {

        /* renamed from: a */
        public final ArrayList<E> f104927a = new ArrayList<>();

        /* renamed from: a */
        public List<E> m65886a() {
            return this.f104927a;
        }

        @Override // org.apache.commons.collections4.sequence.CommandVisitor
        public void visitDeleteCommand(E e) {
        }

        @Override // org.apache.commons.collections4.sequence.CommandVisitor
        public void visitInsertCommand(E e) {
        }

        @Override // org.apache.commons.collections4.sequence.CommandVisitor
        public void visitKeepCommand(E e) {
            this.f104927a.add(e);
        }
    }

    /* renamed from: org.apache.commons.collections4.ListUtils$d */
    /* loaded from: classes11.dex */
    public static class C18713d<T> extends AbstractList<List<T>> {

        /* renamed from: e */
        public final List<T> f104928e;

        /* renamed from: f */
        public final int f104929f;

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> get(int i) {
            int size = size();
            if (i < 0) {
                throw new IndexOutOfBoundsException("Index " + i + " must not be negative");
            }
            if (i < size) {
                int i2 = this.f104929f;
                int i3 = i * i2;
                return this.f104928e.subList(i3, Math.min(i2 + i3, this.f104928e.size()));
            }
            throw new IndexOutOfBoundsException("Index " + i + " must be less than size " + size);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f104928e.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return (int) Math.ceil(this.f104928e.size() / this.f104929f);
        }

        public C18713d(List<T> list, int i) {
            this.f104928e = list;
            this.f104929f = i;
        }
    }

    public static <T> List<T> defaultIfNull(List<T> list, List<T> list2) {
        return list == null ? list2 : list;
    }

    public static <T> List<T> emptyIfNull(List<T> list) {
        return list == null ? Collections.emptyList() : list;
    }

    public static <E> List<E> fixedSizeList(List<E> list) {
        return FixedSizeList.fixedSizeList(list);
    }

    public static int hashCodeForList(Collection<?> collection) {
        if (collection == null) {
            return 0;
        }
        Iterator<?> it2 = collection.iterator();
        int i = 1;
        while (it2.hasNext()) {
            Object next = it2.next();
            i = (i * 31) + (next == null ? 0 : next.hashCode());
        }
        return i;
    }

    public static <E> int indexOf(List<E> list, Predicate<E> predicate) {
        if (list == null || predicate == null) {
            return -1;
        }
        for (int i = 0; i < list.size(); i++) {
            if (predicate.evaluate(list.get(i))) {
                return i;
            }
        }
        return -1;
    }

    public static <E> List<E> intersection(List<? extends E> list, List<? extends E> list2) {
        ArrayList arrayList = new ArrayList();
        if (list.size() > list2.size()) {
            list2 = list;
            list = list2;
        }
        HashSet hashSet = new HashSet(list);
        for (E e : list2) {
            if (hashSet.contains(e)) {
                arrayList.add(e);
                hashSet.remove(e);
            }
        }
        return arrayList;
    }

    public static boolean isEqualList(Collection<?> collection, Collection<?> collection2) {
        if (collection == collection2) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        Iterator<?> it2 = collection.iterator();
        Iterator<?> it3 = collection2.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            Object next = it2.next();
            Object next2 = it3.next();
            if (next == null) {
                if (next2 != null) {
                    return false;
                }
            } else if (!next.equals(next2)) {
                return false;
            }
        }
        return (it2.hasNext() || it3.hasNext()) ? false : true;
    }

    public static <E> List<E> lazyList(List<E> list, Factory<? extends E> factory) {
        return LazyList.lazyList(list, factory);
    }

    public static <E> List<E> longestCommonSubsequence(List<E> list, List<E> list2) {
        return longestCommonSubsequence(list, list2, DefaultEquator.defaultEquator());
    }

    public static <T> List<List<T>> partition(List<T> list, int i) {
        if (list == null) {
            throw new NullPointerException("List must not be null");
        }
        if (i > 0) {
            return new C18713d(list, i);
        }
        throw new IllegalArgumentException("Size must be greater than 0");
    }

    public static <E> List<E> predicatedList(List<E> list, Predicate<E> predicate) {
        return PredicatedList.predicatedList(list, predicate);
    }

    public static <E> List<E> removeAll(Collection<E> collection, Collection<?> collection2) {
        ArrayList arrayList = new ArrayList();
        for (E e : collection) {
            if (!collection2.contains(e)) {
                arrayList.add(e);
            }
        }
        return arrayList;
    }

    public static <E> List<E> retainAll(Collection<E> collection, Collection<?> collection2) {
        ArrayList arrayList = new ArrayList(Math.min(collection.size(), collection2.size()));
        for (E e : collection) {
            if (collection2.contains(e)) {
                arrayList.add(e);
            }
        }
        return arrayList;
    }

    public static <E> List<E> select(Collection<? extends E> collection, Predicate<? super E> predicate) {
        return (List) CollectionUtils.select(collection, predicate, new ArrayList(collection.size()));
    }

    public static <E> List<E> selectRejected(Collection<? extends E> collection, Predicate<? super E> predicate) {
        return (List) CollectionUtils.selectRejected(collection, predicate, new ArrayList(collection.size()));
    }

    public static <E> List<E> subtract(List<E> list, List<? extends E> list2) {
        ArrayList arrayList = new ArrayList();
        HashBag hashBag = new HashBag(list2);
        for (E e : list) {
            if (!hashBag.remove(e, 1)) {
                arrayList.add(e);
            }
        }
        return arrayList;
    }

    public static <E> List<E> sum(List<? extends E> list, List<? extends E> list2) {
        return subtract(union(list, list2), intersection(list, list2));
    }

    public static <E> List<E> synchronizedList(List<E> list) {
        return Collections.synchronizedList(list);
    }

    public static <E> List<E> transformedList(List<E> list, Transformer<? super E, ? extends E> transformer) {
        return TransformedList.transformingList(list, transformer);
    }

    public static <E> List<E> union(List<? extends E> list, List<? extends E> list2) {
        ArrayList arrayList = new ArrayList(list.size() + list2.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    public static <E> List<E> unmodifiableList(List<? extends E> list) {
        return UnmodifiableList.unmodifiableList(list);
    }

    public static <E> List<E> lazyList(List<E> list, Transformer<Integer, ? extends E> transformer) {
        return LazyList.lazyList(list, transformer);
    }

    public static <E> List<E> longestCommonSubsequence(List<E> list, List<E> list2, Equator<? super E> equator) {
        if (list == null || list2 == null) {
            throw new NullPointerException("List must not be null");
        }
        if (equator != null) {
            EditScript script = new SequencesComparator(list, list2, equator).getScript();
            C18712c c18712c = new C18712c();
            script.visit(c18712c);
            return c18712c.m65886a();
        }
        throw new NullPointerException("Equator must not be null");
    }

    public static String longestCommonSubsequence(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence != null && charSequence2 != null) {
            List longestCommonSubsequence = longestCommonSubsequence(new C18711b(charSequence), new C18711b(charSequence2));
            StringBuilder sb = new StringBuilder();
            Iterator it2 = longestCommonSubsequence.iterator();
            while (it2.hasNext()) {
                sb.append((Character) it2.next());
            }
            return sb.toString();
        }
        throw new NullPointerException("CharSequence must not be null");
    }
}
