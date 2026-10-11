package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.sunia.HTREnginev2.pfh;
import com.sunia.HTREnginev2.snf;
import java.util.Arrays;
import java.util.Collection;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes6.dex */
public class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {

    @VisibleForTesting
    static final double HASH_FLOODING_FPP = 0.001d;

    @VisibleForTesting
    static final int MAX_HASH_BUCKET_LENGTH = 9;

    @VisibleForTesting
    static final double MAX_LOAD_FACTOR = 1.0d;

    @CheckForNull
    @LazyInit
    private transient ImmutableSet<E> elementSet;
    private final transient Multisets.ImmutableEntry<E>[] entries;
    private final transient int hashCode;
    private final transient Multisets.ImmutableEntry<?>[] hashTable;
    private final transient int size;
    private static final Multisets.ImmutableEntry<?>[] EMPTY_ARRAY = new Multisets.ImmutableEntry[0];
    static final ImmutableMultiset<Object> EMPTY = create(ImmutableList.m26161of());

    /* loaded from: classes6.dex */
    public static final class NonTerminalEntry<E> extends Multisets.ImmutableEntry<E> {
        private final Multisets.ImmutableEntry<E> nextInBucket;

        public NonTerminalEntry(E e, int i, Multisets.ImmutableEntry<E> immutableEntry) {
            super(e, i);
            this.nextInBucket = immutableEntry;
        }

        @Override // com.google.common.collect.Multisets.ImmutableEntry
        public Multisets.ImmutableEntry<E> nextInBucket() {
            return this.nextInBucket;
        }
    }

    private RegularImmutableMultiset(Multisets.ImmutableEntry<E>[] immutableEntryArr, Multisets.ImmutableEntry<?>[] immutableEntryArr2, int i, int i2, @CheckForNull ImmutableSet<E> immutableSet) {
        this.entries = immutableEntryArr;
        this.hashTable = immutableEntryArr2;
        this.size = i;
        this.hashCode = i2;
        this.elementSet = immutableSet;
    }

    public static <E> ImmutableMultiset<E> create(Collection<? extends Multiset.Entry<? extends E>> collection) {
        int size = collection.size();
        Multisets.ImmutableEntry[] immutableEntryArr = new Multisets.ImmutableEntry[size];
        if (size == 0) {
            return new RegularImmutableMultiset(immutableEntryArr, EMPTY_ARRAY, 0, 0, ImmutableSet.m26234of());
        }
        int m56254a = pfh.m56254a(size, 1.0d);
        int i = m56254a - 1;
        Multisets.ImmutableEntry[] immutableEntryArr2 = new Multisets.ImmutableEntry[m56254a];
        long j = 0;
        int i2 = 0;
        int i3 = 0;
        for (Multiset.Entry<? extends E> entry : collection) {
            Object checkNotNull = Preconditions.checkNotNull(entry.getElement());
            int count = entry.getCount();
            int hashCode = checkNotNull.hashCode();
            int m56256c = pfh.m56256c(hashCode) & i;
            Multisets.ImmutableEntry immutableEntry = immutableEntryArr2[m56256c];
            Multisets.ImmutableEntry immutableEntry2 = immutableEntry == null ? (entry instanceof Multisets.ImmutableEntry) && !(entry instanceof NonTerminalEntry) ? (Multisets.ImmutableEntry) entry : new Multisets.ImmutableEntry(checkNotNull, count) : new NonTerminalEntry(checkNotNull, count, immutableEntry);
            i2 += hashCode ^ count;
            immutableEntryArr[i3] = immutableEntry2;
            immutableEntryArr2[m56256c] = immutableEntry2;
            j += count;
            i3++;
        }
        return hashFloodingDetected(immutableEntryArr2) ? JdkBackedImmutableMultiset.create(ImmutableList.asImmutableList(immutableEntryArr)) : new RegularImmutableMultiset(immutableEntryArr, immutableEntryArr2, Ints.saturatedCast(j), i2, null);
    }

    private static boolean hashFloodingDetected(Multisets.ImmutableEntry<?>[] immutableEntryArr) {
        for (Multisets.ImmutableEntry<?> immutableEntry : immutableEntryArr) {
            int i = 0;
            for (; immutableEntry != null; immutableEntry = immutableEntry.nextInBucket()) {
                i++;
                if (i > 9) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        Multisets.ImmutableEntry<?>[] immutableEntryArr = this.hashTable;
        if (obj != null && immutableEntryArr.length != 0) {
            for (Multisets.ImmutableEntry<?> immutableEntry = immutableEntryArr[pfh.m56257d(obj) & (immutableEntryArr.length - 1)]; immutableEntry != null; immutableEntry = immutableEntry.nextInBucket()) {
                if (Objects.equal(obj, immutableEntry.getElement())) {
                    return immutableEntry.getCount();
                }
            }
        }
        return 0;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public Multiset.Entry<E> getEntry(int i) {
        return this.entries[i];
    }

    @Override // com.google.common.collect.ImmutableMultiset, java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return this.hashCode;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.elementSet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableMultiset.ElementSet elementSet = new ImmutableMultiset.ElementSet(Arrays.asList(this.entries), this);
        this.elementSet = elementSet;
        return elementSet;
    }
}
