package com.twelvemonkeys.util;

import com.twelvemonkeys.lang.Validate;
import com.twelvemonkeys.util.FilterIterator;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class CollectionUtil {

    /* renamed from: com.twelvemonkeys.util.CollectionUtil$a */
    /* loaded from: classes10.dex */
    public static class C16991a implements FilterIterator.Filter {
        @Override // com.twelvemonkeys.util.FilterIterator.Filter
        public boolean accept(Object obj) {
            return ((String) obj).length() > 5;
        }
    }

    /* renamed from: com.twelvemonkeys.util.CollectionUtil$b */
    /* loaded from: classes10.dex */
    public static class C16992b implements FilterIterator.Filter {
        @Override // com.twelvemonkeys.util.FilterIterator.Filter
        public boolean accept(Object obj) {
            return ((String) obj).length() <= 5;
        }
    }

    /* renamed from: com.twelvemonkeys.util.CollectionUtil$c */
    /* loaded from: classes10.dex */
    public static class C16993c implements FilterIterator.Filter {
        @Override // com.twelvemonkeys.util.FilterIterator.Filter
        public boolean accept(Object obj) {
            return ((String) obj).length() <= 5;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.twelvemonkeys.util.CollectionUtil$d */
    /* loaded from: classes10.dex */
    public static class C16994d<T> implements Iterator<T> {

        /* renamed from: e */
        public final /* synthetic */ Enumeration f94351e;

        public C16994d(Enumeration enumeration) {
            this.f94351e = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f94351e.hasMoreElements();
        }

        @Override // java.util.Iterator
        public T next() {
            return (T) this.f94351e.nextElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.twelvemonkeys.util.CollectionUtil$e */
    /* loaded from: classes10.dex */
    public static class C16995e<E> implements ListIterator<E> {

        /* renamed from: e */
        public int f94352e;

        /* renamed from: f */
        public final int f94353f;

        /* renamed from: g */
        public final int f94354g;

        /* renamed from: h */
        public final E[] f94355h;

        public C16995e(E[] eArr, int i, int i2) {
            this.f94355h = (E[]) ((Object[]) Validate.notNull(eArr, "array"));
            int intValue = ((Integer) Validate.isTrue(i >= 0, Integer.valueOf(i), "start < 0: %d")).intValue();
            this.f94353f = intValue;
            this.f94354g = ((Integer) Validate.isTrue(i2 <= eArr.length - i, Integer.valueOf(i2), "length > array.length - start: %d")).intValue();
            this.f94352e = intValue;
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f94352e < this.f94354g + this.f94353f;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f94352e > this.f94353f;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            try {
                E[] eArr = this.f94355h;
                int i = this.f94352e;
                this.f94352e = i + 1;
                return eArr[i];
            } catch (ArrayIndexOutOfBoundsException e) {
                NoSuchElementException noSuchElementException = new NoSuchElementException(e.getMessage());
                noSuchElementException.initCause(e);
                throw noSuchElementException;
            }
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f94352e - this.f94353f;
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            try {
                E[] eArr = this.f94355h;
                int i = this.f94352e - 1;
                this.f94352e = i;
                return eArr[i];
            } catch (ArrayIndexOutOfBoundsException e) {
                NoSuchElementException noSuchElementException = new NoSuchElementException(e.getMessage());
                noSuchElementException.initCause(e);
                throw noSuchElementException;
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return nextIndex() - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            this.f94355h[this.f94352e - 1] = e;
        }
    }

    /* renamed from: com.twelvemonkeys.util.CollectionUtil$f */
    /* loaded from: classes10.dex */
    public static class C16996f<T> implements Comparator<T> {

        /* renamed from: e */
        public final Comparator<T> f94356e;

        public C16996f(Comparator<T> comparator) {
            this.f94356e = (Comparator) Validate.notNull(comparator);
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            int compare = this.f94356e.compare(t, t2);
            return -(compare | (compare >>> 1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T extends Collection<? super E>, E> T m60749a(Collection<?> collection, Class<E> cls) {
        return collection;
    }

    public static <E> void addAll(Collection<E> collection, Iterator<? extends E> it2) {
        while (it2.hasNext()) {
            collection.add(it2.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static <T extends Iterator<? super E>, E> T m60750b(Iterator<?> it2, Class<E> cls) {
        return it2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static <T extends Map<? super K, ? super V>, K, V> T m60751c(Map<?, ?> map, Class<K> cls, Class<V> cls2) {
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static <T extends Collection<? super E>, E> T m60752d(Collection<?> collection) {
        return collection;
    }

    public static <K, V> Map<V, K> invert(Map<K, V> map) {
        return invert(map, null, null);
    }

    public static <T> Iterator<T> iterator(Enumeration<T> enumeration) {
        Validate.notNull(enumeration, "enumeration");
        return new C16994d(enumeration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void main(String[] strArr) {
        int parseInt = strArr.length > 0 ? Integer.parseInt(strArr[0]) : 1000;
        System.out.println("\nFilterIterators:\n");
        List asList = Arrays.asList("zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen");
        FilterIterator filterIterator = new FilterIterator(asList.iterator(), new C16991a());
        while (filterIterator.hasNext()) {
            String str = (String) filterIterator.next();
            System.out.println(str + " has more than 5 letters!");
        }
        FilterIterator filterIterator2 = new FilterIterator(asList.iterator(), new C16992b());
        while (filterIterator2.hasNext()) {
            String str2 = (String) filterIterator2.next();
            System.out.println(str2 + " has less than, or exactly 5 letters!");
        }
        System.currentTimeMillis();
        for (int i = 0; i < parseInt; i++) {
            FilterIterator filterIterator3 = new FilterIterator(asList.iterator(), new C16993c());
            while (filterIterator3.hasNext()) {
                filterIterator3.next();
                System.out.print("");
            }
        }
    }

    public static Object mergeArrays(Object obj, Object obj2) {
        return mergeArrays(obj, 0, Array.getLength(obj), obj2, 0, Array.getLength(obj2));
    }

    public static <T> Comparator<T> reverseOrder(Comparator<T> comparator) {
        return new C16996f(comparator);
    }

    public static Object subArray(Object obj, int i) {
        return subArray(obj, i, -1);
    }

    public static <K, V> Map<V, K> invert(Map<K, V> map, Map<V, K> map2, DuplicateHandler<K> duplicateHandler) {
        if (map != null) {
            if (map2 == null) {
                try {
                    map2 = (Map) map.getClass().newInstance();
                } catch (IllegalAccessException | InstantiationException unused) {
                }
                if (map2 == null) {
                    throw new IllegalArgumentException("result == null and source class " + map.getClass() + " cannot be instantiated.");
                }
            }
            for (Map.Entry<K, V> entry : map.entrySet()) {
                V value = entry.getValue();
                K key = entry.getKey();
                if (map2.containsKey(value)) {
                    if (duplicateHandler != null) {
                        key = duplicateHandler.resolve(map2.get(value), key);
                    } else {
                        throw new IllegalArgumentException("Result would include duplicate keys, but no DuplicateHandler specified.");
                    }
                }
                map2.put(value, key);
            }
            return map2;
        }
        throw new IllegalArgumentException("source == null");
    }

    public static Object mergeArrays(Object obj, int i, int i2, Object obj2, int i3, int i4) {
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), i2 + i4);
        System.arraycopy(obj, i, newInstance, 0, i2);
        System.arraycopy(obj2, i3, newInstance, i2, i4);
        return newInstance;
    }

    public static <T> T[] subArray(T[] tArr, int i) {
        return (T[]) subArray((Object[]) tArr, i, -1);
    }

    public static <E> ListIterator<E> iterator(E[] eArr) {
        return iterator(eArr, 0, ((Object[]) Validate.notNull(eArr)).length);
    }

    public static Object subArray(Object obj, int i, int i2) {
        Validate.notNull(obj, "array");
        if (i >= 0) {
            Class<?> componentType = obj.getClass().getComponentType();
            if (componentType != null) {
                int length = Array.getLength(obj);
                int max = i2 < 0 ? Math.max(0, length - i) : Math.min(i2, Math.max(0, length - i));
                if (max >= length) {
                    return obj;
                }
                Object newInstance = Array.newInstance(componentType, max);
                System.arraycopy(obj, i, newInstance, 0, max);
                return newInstance;
            }
            throw new IllegalArgumentException("Not an array: " + obj);
        }
        throw new ArrayIndexOutOfBoundsException(i + " < 0");
    }

    public static <E> ListIterator<E> iterator(E[] eArr, int i, int i2) {
        return new C16995e(eArr, i, i2);
    }

    public static <T> T[] subArray(T[] tArr, int i, int i2) {
        return (T[]) ((Object[]) subArray((Object) tArr, i, i2));
    }
}
