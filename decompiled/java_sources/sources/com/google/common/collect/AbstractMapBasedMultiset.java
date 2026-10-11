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
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.ObjIntConsumer;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public abstract class AbstractMapBasedMultiset<E> extends AbstractC6112g<E> implements Serializable {

    @GwtIncompatible
    private static final long serialVersionUID = -2250766705698539974L;
    private transient Map<E, Count> backingMap;
    private transient long size;

    /* renamed from: com.google.common.collect.AbstractMapBasedMultiset$a */
    /* loaded from: classes6.dex */
    public class C5769a implements Iterator<E> {

        /* renamed from: e */
        @CheckForNull
        public Map.Entry<E, Count> f33896e;

        /* renamed from: f */
        public final /* synthetic */ Iterator f33897f;

        public C5769a(Iterator it2) {
            this.f33897f = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33897f.hasNext();
        }

        @Override // java.util.Iterator
        @xvk
        public E next() {
            Map.Entry<E, Count> entry = (Map.Entry) this.f33897f.next();
            this.f33896e = entry;
            return entry.getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f33896e != null, "no calls to next() since the last call to remove()");
            AbstractMapBasedMultiset.access$022(AbstractMapBasedMultiset.this, this.f33896e.getValue().getAndSet(0));
            this.f33897f.remove();
            this.f33896e = null;
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultiset$b */
    /* loaded from: classes6.dex */
    public class C5770b implements Iterator<Multiset.Entry<E>> {

        /* renamed from: e */
        @CheckForNull
        public Map.Entry<E, Count> f33899e;

        /* renamed from: f */
        public final /* synthetic */ Iterator f33900f;

        /* renamed from: com.google.common.collect.AbstractMapBasedMultiset$b$a */
        /* loaded from: classes6.dex */
        public class a extends Multisets.AbstractC6000f<E> {

            /* renamed from: e */
            public final /* synthetic */ Map.Entry f33902e;

            public a(Map.Entry entry) {
                this.f33902e = entry;
            }

            @Override // com.google.common.collect.Multiset.Entry
            public int getCount() {
                Count count;
                Count count2 = (Count) this.f33902e.getValue();
                if ((count2 == null || count2.get() == 0) && (count = (Count) AbstractMapBasedMultiset.this.backingMap.get(getElement())) != null) {
                    return count.get();
                }
                if (count2 == null) {
                    return 0;
                }
                return count2.get();
            }

            @Override // com.google.common.collect.Multiset.Entry
            @xvk
            public E getElement() {
                return (E) this.f33902e.getKey();
            }
        }

        public C5770b(Iterator it2) {
            this.f33900f = it2;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Multiset.Entry<E> next() {
            Map.Entry<E, Count> entry = (Map.Entry) this.f33900f.next();
            this.f33899e = entry;
            return new a(entry);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33900f.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f33899e != null, "no calls to next() since the last call to remove()");
            AbstractMapBasedMultiset.access$022(AbstractMapBasedMultiset.this, this.f33899e.getValue().getAndSet(0));
            this.f33900f.remove();
            this.f33899e = null;
        }
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultiset$c */
    /* loaded from: classes6.dex */
    public class C5771c implements Iterator<E> {

        /* renamed from: e */
        public final Iterator<Map.Entry<E, Count>> f33904e;

        /* renamed from: f */
        @CheckForNull
        public Map.Entry<E, Count> f33905f;

        /* renamed from: g */
        public int f33906g;

        /* renamed from: h */
        public boolean f33907h;

        public C5771c() {
            this.f33904e = AbstractMapBasedMultiset.this.backingMap.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33906g > 0 || this.f33904e.hasNext();
        }

        @Override // java.util.Iterator
        @xvk
        public E next() {
            if (this.f33906g == 0) {
                Map.Entry<E, Count> next = this.f33904e.next();
                this.f33905f = next;
                this.f33906g = next.getValue().get();
            }
            this.f33906g--;
            this.f33907h = true;
            Map.Entry<E, Count> entry = this.f33905f;
            Objects.requireNonNull(entry);
            return entry.getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            szd.m57282e(this.f33907h);
            Map.Entry<E, Count> entry = this.f33905f;
            Objects.requireNonNull(entry);
            if (entry.getValue().get() <= 0) {
                throw new ConcurrentModificationException();
            }
            if (this.f33905f.getValue().addAndGet(-1) == 0) {
                this.f33904e.remove();
            }
            AbstractMapBasedMultiset.access$010(AbstractMapBasedMultiset.this);
            this.f33907h = false;
        }
    }

    public AbstractMapBasedMultiset(Map<E, Count> map) {
        Preconditions.checkArgument(map.isEmpty());
        this.backingMap = map;
    }

    public static /* synthetic */ long access$010(AbstractMapBasedMultiset abstractMapBasedMultiset) {
        long j = abstractMapBasedMultiset.size;
        abstractMapBasedMultiset.size = j - 1;
        return j;
    }

    public static /* synthetic */ long access$022(AbstractMapBasedMultiset abstractMapBasedMultiset, long j) {
        long j2 = abstractMapBasedMultiset.size - j;
        abstractMapBasedMultiset.size = j2;
        return j2;
    }

    private static int getAndSet(@CheckForNull Count count, int i) {
        if (count == null) {
            return 0;
        }
        return count.getAndSet(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEachEntry$0(ObjIntConsumer objIntConsumer, Object obj, Count count) {
        objIntConsumer.accept(obj, count.get());
    }

    @GwtIncompatible
    private void readObjectNoData() throws ObjectStreamException {
        throw new InvalidObjectException("Stream data required");
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(@xvk E e, int i) {
        if (i == 0) {
            return count(e);
        }
        int i2 = 0;
        Preconditions.checkArgument(i > 0, "occurrences cannot be negative: %s", i);
        Count count = this.backingMap.get(e);
        if (count == null) {
            this.backingMap.put(e, new Count(i));
        } else {
            int i3 = count.get();
            long j = i3 + i;
            Preconditions.checkArgument(j <= 2147483647L, "too many occurrences: %s", j);
            count.add(i);
            i2 = i3;
        }
        this.size += i;
        return i2;
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Iterator<Count> it2 = this.backingMap.values().iterator();
        while (it2.hasNext()) {
            it2.next().set(0);
        }
        this.backingMap.clear();
        this.size = 0L;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        Count count = (Count) Maps.m26468G(this.backingMap, obj);
        if (count == null) {
            return 0;
        }
        return count.get();
    }

    @Override // com.google.common.collect.AbstractC6112g
    public int distinctElements() {
        return this.backingMap.size();
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Iterator<E> elementIterator() {
        return new C5769a(this.backingMap.entrySet().iterator());
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new C5770b(this.backingMap.entrySet().iterator());
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    public Set<Multiset.Entry<E>> entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.Multiset
    public void forEachEntry(final ObjIntConsumer<? super E> objIntConsumer) {
        Preconditions.checkNotNull(objIntConsumer);
        this.backingMap.forEach(new BiConsumer() { // from class: com.google.common.collect.e
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                AbstractMapBasedMultiset.lambda$forEachEntry$0(objIntConsumer, obj, (Count) obj2);
            }
        });
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return new C5771c();
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(@CheckForNull Object obj, int i) {
        if (i == 0) {
            return count(obj);
        }
        Preconditions.checkArgument(i > 0, "occurrences cannot be negative: %s", i);
        Count count = this.backingMap.get(obj);
        if (count == null) {
            return 0;
        }
        int i2 = count.get();
        if (i2 <= i) {
            this.backingMap.remove(obj);
            i = i2;
        }
        count.add(-i);
        this.size -= i;
        return i2;
    }

    public void setBackingMap(Map<E, Count> map) {
        this.backingMap = map;
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(@xvk E e, int i) {
        int i2;
        szd.m57279b(i, "count");
        if (i == 0) {
            i2 = getAndSet(this.backingMap.remove(e), i);
        } else {
            Count count = this.backingMap.get(e);
            int andSet = getAndSet(count, i);
            if (count == null) {
                this.backingMap.put(e, new Count(i));
            }
            i2 = andSet;
        }
        this.size += i - i2;
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(this.size);
    }
}
