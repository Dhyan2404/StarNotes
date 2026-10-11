package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.pfh;
import com.sunia.HTREnginev2.q5e;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Consumer;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public class CompactHashSet<E> extends AbstractSet<E> implements Serializable {

    @VisibleForTesting
    static final double HASH_FLOODING_FPP = 0.001d;
    private static final int MAX_HASH_BUCKET_LENGTH = 9;

    @VisibleForTesting
    @CheckForNull
    transient Object[] elements;

    @CheckForNull
    private transient int[] entries;
    private transient int metadata;
    private transient int size;

    @CheckForNull
    private transient Object table;

    /* renamed from: com.google.common.collect.CompactHashSet$a */
    /* loaded from: classes6.dex */
    public class C5795a implements Iterator<E> {

        /* renamed from: e */
        public int f33955e;

        /* renamed from: f */
        public int f33956f;

        /* renamed from: g */
        public int f33957g = -1;

        public C5795a() {
            this.f33955e = CompactHashSet.this.metadata;
            this.f33956f = CompactHashSet.this.firstEntryIndex();
        }

        /* renamed from: a */
        public final void m26106a() {
            if (CompactHashSet.this.metadata != this.f33955e) {
                throw new ConcurrentModificationException();
            }
        }

        /* renamed from: b */
        public void m26107b() {
            this.f33955e += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33956f >= 0;
        }

        @Override // java.util.Iterator
        @xvk
        public E next() {
            m26106a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.f33956f;
            this.f33957g = i;
            E e = (E) CompactHashSet.this.element(i);
            this.f33956f = CompactHashSet.this.getSuccessor(this.f33956f);
            return e;
        }

        @Override // java.util.Iterator
        public void remove() {
            m26106a();
            szd.m57282e(this.f33957g >= 0);
            m26107b();
            CompactHashSet compactHashSet = CompactHashSet.this;
            compactHashSet.remove(compactHashSet.element(this.f33957g));
            this.f33956f = CompactHashSet.this.adjustAfterRemove(this.f33956f, this.f33957g);
            this.f33957g = -1;
        }
    }

    public CompactHashSet() {
        init(3);
    }

    public static <E> CompactHashSet<E> create() {
        return new CompactHashSet<>();
    }

    private Set<E> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashSet(i, 1.0f);
    }

    public static <E> CompactHashSet<E> createWithExpectedSize(int i) {
        return new CompactHashSet<>(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public E element(int i) {
        return (E) requireElements()[i];
    }

    private int entry(int i) {
        return requireEntries()[i];
    }

    private int hashTableMask() {
        return (1 << (this.metadata & 31)) - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Invalid size: ");
            sb.append(readInt);
            throw new InvalidObjectException(sb.toString());
        }
        init(readInt);
        for (int i = 0; i < readInt; i++) {
            add(objectInputStream.readObject());
        }
    }

    private Object[] requireElements() {
        Object[] objArr = this.elements;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    private int[] requireEntries() {
        int[] iArr = this.entries;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private Object requireTable() {
        Object obj = this.table;
        Objects.requireNonNull(obj);
        return obj;
    }

    private void resizeMeMaybe(int i) {
        int min;
        int length = requireEntries().length;
        if (i <= length || (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(min);
    }

    @CanIgnoreReturnValue
    private int resizeTable(int i, int i2, int i3, int i4) {
        Object m56616a = q5e.m56616a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            q5e.m56624i(m56616a, i3 & i5, i4 + 1);
        }
        Object requireTable = requireTable();
        int[] requireEntries = requireEntries();
        for (int i6 = 0; i6 <= i; i6++) {
            int m56623h = q5e.m56623h(requireTable, i6);
            while (m56623h != 0) {
                int i7 = m56623h - 1;
                int i8 = requireEntries[i7];
                int m56617b = q5e.m56617b(i8, i) | i6;
                int i9 = m56617b & i5;
                int m56623h2 = q5e.m56623h(m56616a, i9);
                q5e.m56624i(m56616a, i9, m56623h);
                requireEntries[i7] = q5e.m56619d(m56617b, m56623h2, i5);
                m56623h = q5e.m56618c(i8, i);
            }
        }
        this.table = m56616a;
        setHashTableMask(i5);
        return i5;
    }

    private void setElement(int i, E e) {
        requireElements()[i] = e;
    }

    private void setEntry(int i, int i2) {
        requireEntries()[i] = i2;
    }

    private void setHashTableMask(int i) {
        this.metadata = q5e.m56619d(this.metadata, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<E> it2 = iterator();
        while (it2.hasNext()) {
            objectOutputStream.writeObject(it2.next());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean add(@xvk E e) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.add(e);
        }
        int[] requireEntries = requireEntries();
        Object[] requireElements = requireElements();
        int i = this.size;
        int i2 = i + 1;
        int m56257d = pfh.m56257d(e);
        int hashTableMask = hashTableMask();
        int i3 = m56257d & hashTableMask;
        int m56623h = q5e.m56623h(requireTable(), i3);
        if (m56623h != 0) {
            int m56617b = q5e.m56617b(m56257d, hashTableMask);
            int i4 = 0;
            while (true) {
                int i5 = m56623h - 1;
                int i6 = requireEntries[i5];
                if (q5e.m56617b(i6, hashTableMask) == m56617b && com.google.common.base.Objects.equal(e, requireElements[i5])) {
                    return false;
                }
                int m56618c = q5e.m56618c(i6, hashTableMask);
                i4++;
                if (m56618c != 0) {
                    m56623h = m56618c;
                } else {
                    if (i4 >= 9) {
                        return convertToHashFloodingResistantImplementation().add(e);
                    }
                    if (i2 > hashTableMask) {
                        hashTableMask = resizeTable(hashTableMask, q5e.m56620e(hashTableMask), m56257d, i);
                    } else {
                        requireEntries[i5] = q5e.m56619d(i6, i2, hashTableMask);
                    }
                }
            }
        } else if (i2 > hashTableMask) {
            hashTableMask = resizeTable(hashTableMask, q5e.m56620e(hashTableMask), m56257d, i);
        } else {
            q5e.m56624i(requireTable(), i3, i2);
        }
        resizeMeMaybe(i2);
        insertEntry(i, e, m56257d, hashTableMask);
        this.size = i2;
        incrementModCount();
        return true;
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    @CanIgnoreReturnValue
    public int allocArrays() {
        Preconditions.checkState(needsAllocArrays(), "Arrays already allocated");
        int i = this.metadata;
        int m56625j = q5e.m56625j(i);
        this.table = q5e.m56616a(m56625j);
        setHashTableMask(m56625j - 1);
        this.entries = new int[i];
        this.elements = new Object[i];
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            this.metadata = Ints.constrainToRange(size(), 3, 1073741823);
            delegateOrNull.clear();
            this.table = null;
            this.size = 0;
            return;
        }
        Arrays.fill(requireElements(), 0, this.size, (Object) null);
        q5e.m56622g(requireTable());
        Arrays.fill(requireEntries(), 0, this.size, 0);
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.contains(obj);
        }
        int m56257d = pfh.m56257d(obj);
        int hashTableMask = hashTableMask();
        int m56623h = q5e.m56623h(requireTable(), m56257d & hashTableMask);
        if (m56623h == 0) {
            return false;
        }
        int m56617b = q5e.m56617b(m56257d, hashTableMask);
        do {
            int i = m56623h - 1;
            int entry = entry(i);
            if (q5e.m56617b(entry, hashTableMask) == m56617b && com.google.common.base.Objects.equal(obj, element(i))) {
                return true;
            }
            m56623h = q5e.m56618c(entry, hashTableMask);
        } while (m56623h != 0);
        return false;
    }

    @VisibleForTesting
    @CanIgnoreReturnValue
    public Set<E> convertToHashFloodingResistantImplementation() {
        Set<E> createHashFloodingResistantDelegate = createHashFloodingResistantDelegate(hashTableMask() + 1);
        int firstEntryIndex = firstEntryIndex();
        while (firstEntryIndex >= 0) {
            createHashFloodingResistantDelegate.add(element(firstEntryIndex));
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
        this.table = createHashFloodingResistantDelegate;
        this.entries = null;
        this.elements = null;
        incrementModCount();
        return createHashFloodingResistantDelegate;
    }

    @VisibleForTesting
    @CheckForNull
    public Set<E> delegateOrNull() {
        Object obj = this.table;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Iterable
    public void forEach(Consumer<? super E> consumer) {
        Preconditions.checkNotNull(consumer);
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            delegateOrNull.forEach(consumer);
            return;
        }
        int firstEntryIndex = firstEntryIndex();
        while (firstEntryIndex >= 0) {
            consumer.accept(element(firstEntryIndex));
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 < this.size) {
            return i2;
        }
        return -1;
    }

    public void incrementModCount() {
        this.metadata += 32;
    }

    public void init(int i) {
        Preconditions.checkArgument(i >= 0, "Expected size must be >= 0");
        this.metadata = Ints.constrainToRange(i, 1, 1073741823);
    }

    public void insertEntry(int i, @xvk E e, int i2, int i3) {
        setEntry(i, q5e.m56619d(i2, 0, i3));
        setElement(i, e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return size() == 0;
    }

    @VisibleForTesting
    public boolean isUsingHashFloodingResistance() {
        return delegateOrNull() != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        Set<E> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.iterator() : new C5795a();
    }

    public void moveLastEntry(int i, int i2) {
        Object requireTable = requireTable();
        int[] requireEntries = requireEntries();
        Object[] requireElements = requireElements();
        int size = size() - 1;
        if (i >= size) {
            requireElements[i] = null;
            requireEntries[i] = 0;
            return;
        }
        Object obj = requireElements[size];
        requireElements[i] = obj;
        requireElements[size] = null;
        requireEntries[i] = requireEntries[size];
        requireEntries[size] = 0;
        int m56257d = pfh.m56257d(obj) & i2;
        int m56623h = q5e.m56623h(requireTable, m56257d);
        int i3 = size + 1;
        if (m56623h == i3) {
            q5e.m56624i(requireTable, m56257d, i + 1);
            return;
        }
        while (true) {
            int i4 = m56623h - 1;
            int i5 = requireEntries[i4];
            int m56618c = q5e.m56618c(i5, i2);
            if (m56618c == i3) {
                requireEntries[i4] = q5e.m56619d(i5, i + 1, i2);
                return;
            }
            m56623h = m56618c;
        }
    }

    @VisibleForTesting
    public boolean needsAllocArrays() {
        return this.table == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean remove(@CheckForNull Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return delegateOrNull.remove(obj);
        }
        int hashTableMask = hashTableMask();
        int m56621f = q5e.m56621f(obj, null, hashTableMask, requireTable(), requireEntries(), requireElements(), null);
        if (m56621f == -1) {
            return false;
        }
        moveLastEntry(m56621f, hashTableMask);
        this.size--;
        incrementModCount();
        return true;
    }

    public void resizeEntries(int i) {
        this.entries = Arrays.copyOf(requireEntries(), i);
        this.elements = Arrays.copyOf(requireElements(), i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        Set<E> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.size() : this.size;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Spliterator<E> spliterator() {
        if (needsAllocArrays()) {
            return Spliterators.spliterator(new Object[0], 17);
        }
        Set<E> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.spliterator() : Spliterators.spliterator(requireElements(), 0, this.size, 17);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        if (needsAllocArrays()) {
            return new Object[0];
        }
        Set<E> delegateOrNull = delegateOrNull();
        return delegateOrNull != null ? delegateOrNull.toArray() : Arrays.copyOf(requireElements(), this.size);
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            Set<E> createHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            createHashFloodingResistantDelegate.addAll(delegateOrNull);
            this.table = createHashFloodingResistantDelegate;
            return;
        }
        int i = this.size;
        if (i < requireEntries().length) {
            resizeEntries(i);
        }
        int m56625j = q5e.m56625j(i);
        int hashTableMask = hashTableMask();
        if (m56625j < hashTableMask) {
            resizeTable(hashTableMask, m56625j, 0, 0);
        }
    }

    public static <E> CompactHashSet<E> create(Collection<? extends E> collection) {
        CompactHashSet<E> createWithExpectedSize = createWithExpectedSize(collection.size());
        createWithExpectedSize.addAll(collection);
        return createWithExpectedSize;
    }

    public CompactHashSet(int i) {
        init(i);
    }

    @SafeVarargs
    public static <E> CompactHashSet<E> create(E... eArr) {
        CompactHashSet<E> createWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(createWithExpectedSize, eArr);
        return createWithExpectedSize;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public <T> T[] toArray(T[] tArr) {
        if (needsAllocArrays()) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        Set<E> delegateOrNull = delegateOrNull();
        if (delegateOrNull != null) {
            return (T[]) delegateOrNull.toArray(tArr);
        }
        return (T[]) ObjectArrays.m26666i(requireElements(), 0, this.size, tArr);
    }
}
