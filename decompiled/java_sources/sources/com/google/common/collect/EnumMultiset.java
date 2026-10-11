package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.ObjIntConsumer;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class EnumMultiset<E extends Enum<E>> extends AbstractC6112g<E> implements Serializable {

    @GwtIncompatible
    private static final long serialVersionUID = 0;
    private transient int[] counts;
    private transient int distinctElements;
    private transient E[] enumConstants;
    private transient long size;
    private transient Class<E> type;

    /* renamed from: com.google.common.collect.EnumMultiset$a */
    /* loaded from: classes6.dex */
    public class C5811a extends EnumMultiset<E>.AbstractC5813c<E> {
        public C5811a() {
            super();
        }

        @Override // com.google.common.collect.EnumMultiset.AbstractC5813c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public E mo26124a(int i) {
            return (E) EnumMultiset.this.enumConstants[i];
        }
    }

    /* renamed from: com.google.common.collect.EnumMultiset$b */
    /* loaded from: classes6.dex */
    public class C5812b extends EnumMultiset<E>.AbstractC5813c<Multiset.Entry<E>> {

        /* renamed from: com.google.common.collect.EnumMultiset$b$a */
        /* loaded from: classes6.dex */
        public class a extends Multisets.AbstractC6000f<E> {

            /* renamed from: e */
            public final /* synthetic */ int f33977e;

            public a(int i) {
                this.f33977e = i;
            }

            @Override // com.google.common.collect.Multiset.Entry
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public E getElement() {
                return (E) EnumMultiset.this.enumConstants[this.f33977e];
            }

            @Override // com.google.common.collect.Multiset.Entry
            public int getCount() {
                return EnumMultiset.this.counts[this.f33977e];
            }
        }

        public C5812b() {
            super();
        }

        @Override // com.google.common.collect.EnumMultiset.AbstractC5813c
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Multiset.Entry<E> mo26124a(int i) {
            return new a(i);
        }
    }

    /* renamed from: com.google.common.collect.EnumMultiset$c */
    /* loaded from: classes6.dex */
    public abstract class AbstractC5813c<T> implements Iterator<T> {

        /* renamed from: e */
        public int f33979e = 0;

        /* renamed from: f */
        public int f33980f = -1;

        public AbstractC5813c() {
        }

        /* renamed from: a */
        public abstract T mo26124a(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.f33979e < EnumMultiset.this.enumConstants.length) {
                int[] iArr = EnumMultiset.this.counts;
                int i = this.f33979e;
                if (iArr[i] > 0) {
                    return true;
                }
                this.f33979e = i + 1;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T mo26124a = mo26124a(this.f33979e);
            int i = this.f33979e;
            this.f33980f = i;
            this.f33979e = i + 1;
            return mo26124a;
        }

        @Override // java.util.Iterator
        public void remove() {
            szd.m57282e(this.f33980f >= 0);
            if (EnumMultiset.this.counts[this.f33980f] > 0) {
                EnumMultiset.access$210(EnumMultiset.this);
                EnumMultiset.access$322(EnumMultiset.this, r0.counts[this.f33980f]);
                EnumMultiset.this.counts[this.f33980f] = 0;
            }
            this.f33980f = -1;
        }
    }

    private EnumMultiset(Class<E> cls) {
        this.type = cls;
        Preconditions.checkArgument(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
    }

    public static /* synthetic */ int access$210(EnumMultiset enumMultiset) {
        int i = enumMultiset.distinctElements;
        enumMultiset.distinctElements = i - 1;
        return i;
    }

    public static /* synthetic */ long access$322(EnumMultiset enumMultiset, long j) {
        long j2 = enumMultiset.size - j;
        enumMultiset.size = j2;
        return j2;
    }

    private void checkIsE(Object obj) {
        Preconditions.checkNotNull(obj);
        if (isActuallyE(obj)) {
            return;
        }
        String valueOf = String.valueOf(this.type);
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
        sb.append("Expected an ");
        sb.append(valueOf);
        sb.append(" but got ");
        sb.append(valueOf2);
        throw new ClassCastException(sb.toString());
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    private boolean isActuallyE(@CheckForNull Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r4 = (Enum) obj;
        int ordinal = r4.ordinal();
        E[] eArr = this.enumConstants;
        return ordinal < eArr.length && eArr[ordinal] == r4;
    }

    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Class<E> cls = (Class) objectInputStream.readObject();
        this.type = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
        C6130y.m27011f(this, objectInputStream);
    }

    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.type);
        C6130y.m27016k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.counts, 0);
        this.size = 0L;
        this.distinctElements = 0;
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        return this.counts[((Enum) obj).ordinal()];
    }

    @Override // com.google.common.collect.AbstractC6112g
    public int distinctElements() {
        return this.distinctElements;
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Iterator<E> elementIterator() {
        return new C5811a();
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new C5812b();
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.Multiset
    public void forEachEntry(ObjIntConsumer<? super E> objIntConsumer) {
        Preconditions.checkNotNull(objIntConsumer);
        int i = 0;
        while (true) {
            E[] eArr = this.enumConstants;
            if (i >= eArr.length) {
                return;
            }
            int i2 = this.counts[i];
            if (i2 > 0) {
                objIntConsumer.accept(eArr[i], i2);
            }
            i++;
        }
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.m26638h(this);
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(@CheckForNull Object obj, int i) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        Enum r1 = (Enum) obj;
        szd.m57279b(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        int ordinal = r1.ordinal();
        int[] iArr = this.counts;
        int i2 = iArr[ordinal];
        if (i2 == 0) {
            return 0;
        }
        if (i2 <= i) {
            iArr[ordinal] = 0;
            this.distinctElements--;
            this.size -= i2;
        } else {
            iArr[ordinal] = i2 - i;
            this.size -= i;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(this.size);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it2 = iterable.iterator();
        Preconditions.checkArgument(it2.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it2.next().getDeclaringClass());
        Iterables.addAll(enumMultiset, iterable);
        return enumMultiset;
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(E e, int i) {
        checkIsE(e);
        szd.m57279b(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        int ordinal = e.ordinal();
        int i2 = this.counts[ordinal];
        long j = i;
        long j2 = i2 + j;
        Preconditions.checkArgument(j2 <= 2147483647L, "too many occurrences: %s", j2);
        this.counts[ordinal] = (int) j2;
        if (i2 == 0) {
            this.distinctElements++;
        }
        this.size += j;
        return i2;
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean setCount(@xvk Object obj, int i, int i2) {
        return super.setCount(obj, i, i2);
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(E e, int i) {
        checkIsE(e);
        szd.m57279b(i, "count");
        int ordinal = e.ordinal();
        int[] iArr = this.counts;
        int i2 = iArr[ordinal];
        iArr[ordinal] = i;
        this.size += i - i2;
        if (i2 == 0 && i > 0) {
            this.distinctElements++;
        } else if (i2 > 0 && i == 0) {
            this.distinctElements--;
        }
        return i2;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> create = create(cls);
        Iterables.addAll(create, iterable);
        return create;
    }
}
