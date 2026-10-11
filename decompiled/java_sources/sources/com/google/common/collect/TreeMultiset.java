package com.google.common.collect;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.function.ObjIntConsumer;
import javax.annotation.CheckForNull;
import org.apache.poi.convert.htmlgen.Constants;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class TreeMultiset<E> extends AbstractC6114i<E> implements Serializable {

    @GwtIncompatible
    private static final long serialVersionUID = 1;
    private final transient C6082e<E> header;
    private final transient GeneralRange<E> range;
    private final transient C6083f<C6082e<E>> rootReference;

    /* loaded from: classes6.dex */
    public enum Aggregate {
        SIZE { // from class: com.google.common.collect.TreeMultiset.Aggregate.1
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            public int nodeAggregate(C6082e<?> c6082e) {
                return c6082e.f34506b;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            public long treeAggregate(@CheckForNull C6082e<?> c6082e) {
                if (c6082e == null) {
                    return 0L;
                }
                return c6082e.f34508d;
            }
        },
        DISTINCT { // from class: com.google.common.collect.TreeMultiset.Aggregate.2
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            public int nodeAggregate(C6082e<?> c6082e) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            public long treeAggregate(@CheckForNull C6082e<?> c6082e) {
                if (c6082e == null) {
                    return 0L;
                }
                return c6082e.f34507c;
            }
        };

        public abstract int nodeAggregate(C6082e<?> c6082e);

        public abstract long treeAggregate(@CheckForNull C6082e<?> c6082e);

        /* synthetic */ Aggregate(C6078a c6078a) {
            this();
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$a */
    /* loaded from: classes6.dex */
    public class C6078a extends Multisets.AbstractC6000f<E> {

        /* renamed from: e */
        public final /* synthetic */ C6082e f34496e;

        public C6078a(C6082e c6082e) {
            this.f34496e = c6082e;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int getCount() {
            int m26828w = this.f34496e.m26828w();
            return m26828w == 0 ? TreeMultiset.this.count(getElement()) : m26828w;
        }

        @Override // com.google.common.collect.Multiset.Entry
        @xvk
        public E getElement() {
            return (E) this.f34496e.m26829x();
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$b */
    /* loaded from: classes6.dex */
    public class C6079b implements Iterator<Multiset.Entry<E>> {

        /* renamed from: e */
        @CheckForNull
        public C6082e<E> f34498e;

        /* renamed from: f */
        @CheckForNull
        public Multiset.Entry<E> f34499f;

        public C6079b() {
            this.f34498e = TreeMultiset.this.firstNode();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Multiset.Entry<E> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            TreeMultiset treeMultiset = TreeMultiset.this;
            C6082e<E> c6082e = this.f34498e;
            Objects.requireNonNull(c6082e);
            Multiset.Entry<E> wrapEntry = treeMultiset.wrapEntry(c6082e);
            this.f34499f = wrapEntry;
            if (this.f34498e.m26819L() == TreeMultiset.this.header) {
                this.f34498e = null;
            } else {
                this.f34498e = this.f34498e.m26819L();
            }
            return wrapEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f34498e == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooHigh(this.f34498e.m26829x())) {
                return true;
            }
            this.f34498e = null;
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f34499f != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.f34499f.getElement(), 0);
            this.f34499f = null;
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$c */
    /* loaded from: classes6.dex */
    public class C6080c implements Iterator<Multiset.Entry<E>> {

        /* renamed from: e */
        @CheckForNull
        public C6082e<E> f34501e;

        /* renamed from: f */
        @CheckForNull
        public Multiset.Entry<E> f34502f = null;

        public C6080c() {
            this.f34501e = TreeMultiset.this.lastNode();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Multiset.Entry<E> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Objects.requireNonNull(this.f34501e);
            Multiset.Entry<E> wrapEntry = TreeMultiset.this.wrapEntry(this.f34501e);
            this.f34502f = wrapEntry;
            if (this.f34501e.m26830z() == TreeMultiset.this.header) {
                this.f34501e = null;
            } else {
                this.f34501e = this.f34501e.m26830z();
            }
            return wrapEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f34501e == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooLow(this.f34501e.m26829x())) {
                return true;
            }
            this.f34501e = null;
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f34502f != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.f34502f.getElement(), 0);
            this.f34502f = null;
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$d */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6081d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34504a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f34504a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34504a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.collect.TreeMultiset$f */
    /* loaded from: classes6.dex */
    public static final class C6083f<T> {

        /* renamed from: a */
        @CheckForNull
        public T f34514a;

        public C6083f() {
        }

        /* renamed from: a */
        public void m26831a(@CheckForNull T t, @CheckForNull T t2) {
            if (this.f34514a != t) {
                throw new ConcurrentModificationException();
            }
            this.f34514a = t2;
        }

        /* renamed from: b */
        public void m26832b() {
            this.f34514a = null;
        }

        @CheckForNull
        /* renamed from: c */
        public T m26833c() {
            return this.f34514a;
        }

        public /* synthetic */ C6083f(C6078a c6078a) {
            this();
        }
    }

    public TreeMultiset(C6083f<C6082e<E>> c6083f, GeneralRange<E> generalRange, C6082e<E> c6082e) {
        super(generalRange.comparator());
        this.rootReference = c6083f;
        this.range = generalRange;
        this.header = c6082e;
    }

    private long aggregateAboveRange(Aggregate aggregate, @CheckForNull C6082e<E> c6082e) {
        long treeAggregate;
        long aggregateAboveRange;
        if (c6082e == null) {
            return 0L;
        }
        int compare = comparator().compare(p5k.m56213a(this.range.getUpperEndpoint()), c6082e.m26829x());
        if (compare > 0) {
            return aggregateAboveRange(aggregate, c6082e.f34511g);
        }
        if (compare == 0) {
            int i = C6081d.f34504a[this.range.getUpperBoundType().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return aggregate.treeAggregate(c6082e.f34511g);
                }
                throw new AssertionError();
            }
            treeAggregate = aggregate.nodeAggregate(c6082e);
            aggregateAboveRange = aggregate.treeAggregate(c6082e.f34511g);
        } else {
            treeAggregate = aggregate.treeAggregate(c6082e.f34511g) + aggregate.nodeAggregate(c6082e);
            aggregateAboveRange = aggregateAboveRange(aggregate, c6082e.f34510f);
        }
        return treeAggregate + aggregateAboveRange;
    }

    private long aggregateBelowRange(Aggregate aggregate, @CheckForNull C6082e<E> c6082e) {
        long treeAggregate;
        long aggregateBelowRange;
        if (c6082e == null) {
            return 0L;
        }
        int compare = comparator().compare(p5k.m56213a(this.range.getLowerEndpoint()), c6082e.m26829x());
        if (compare < 0) {
            return aggregateBelowRange(aggregate, c6082e.f34510f);
        }
        if (compare == 0) {
            int i = C6081d.f34504a[this.range.getLowerBoundType().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return aggregate.treeAggregate(c6082e.f34510f);
                }
                throw new AssertionError();
            }
            treeAggregate = aggregate.nodeAggregate(c6082e);
            aggregateBelowRange = aggregate.treeAggregate(c6082e.f34510f);
        } else {
            treeAggregate = aggregate.treeAggregate(c6082e.f34510f) + aggregate.nodeAggregate(c6082e);
            aggregateBelowRange = aggregateBelowRange(aggregate, c6082e.f34511g);
        }
        return treeAggregate + aggregateBelowRange;
    }

    private long aggregateForEntries(Aggregate aggregate) {
        C6082e<E> m26833c = this.rootReference.m26833c();
        long treeAggregate = aggregate.treeAggregate(m26833c);
        if (this.range.hasLowerBound()) {
            treeAggregate -= aggregateBelowRange(aggregate, m26833c);
        }
        return this.range.hasUpperBound() ? treeAggregate - aggregateAboveRange(aggregate, m26833c) : treeAggregate;
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public C6082e<E> firstNode() {
        C6082e<E> m26819L;
        C6082e<E> m26833c = this.rootReference.m26833c();
        if (m26833c == null) {
            return null;
        }
        if (this.range.hasLowerBound()) {
            Object m56213a = p5k.m56213a(this.range.getLowerEndpoint());
            m26819L = m26833c.m26824s(comparator(), m56213a);
            if (m26819L == null) {
                return null;
            }
            if (this.range.getLowerBoundType() == BoundType.OPEN && comparator().compare(m56213a, m26819L.m26829x()) == 0) {
                m26819L = m26819L.m26819L();
            }
        } else {
            m26819L = this.header.m26819L();
        }
        if (m26819L == this.header || !this.range.contains(m26819L.m26829x())) {
            return null;
        }
        return m26819L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public C6082e<E> lastNode() {
        C6082e<E> m26830z;
        C6082e<E> m26833c = this.rootReference.m26833c();
        if (m26833c == null) {
            return null;
        }
        if (this.range.hasUpperBound()) {
            Object m56213a = p5k.m56213a(this.range.getUpperEndpoint());
            m26830z = m26833c.m26827v(comparator(), m56213a);
            if (m26830z == null) {
                return null;
            }
            if (this.range.getUpperBoundType() == BoundType.OPEN && comparator().compare(m56213a, m26830z.m26829x()) == 0) {
                m26830z = m26830z.m26830z();
            }
        } else {
            m26830z = this.header.m26830z();
        }
        if (m26830z == this.header || !this.range.contains(m26830z.m26829x())) {
            return null;
        }
        return m26830z;
    }

    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        C6130y.m27006a(AbstractC6114i.class, "comparator").m27018b(this, comparator);
        C6130y.m27006a(TreeMultiset.class, SessionDescription.f26441q).m27018b(this, GeneralRange.all(comparator));
        C6130y.m27006a(TreeMultiset.class, "rootReference").m27018b(this, new C6083f(null));
        C6082e c6082e = new C6082e();
        C6130y.m27006a(TreeMultiset.class, Constants.NAME_HEADER).m27018b(this, c6082e);
        successor(c6082e, c6082e);
        C6130y.m27011f(this, objectInputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(C6082e<T> c6082e, C6082e<T> c6082e2) {
        c6082e.f34513i = c6082e2;
        c6082e2.f34512h = c6082e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Multiset.Entry<E> wrapEntry(C6082e<E> c6082e) {
        return new C6078a(c6082e);
    }

    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        C6130y.m27016k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(@xvk E e, int i) {
        szd.m57279b(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        Preconditions.checkArgument(this.range.contains(e));
        C6082e<E> m26833c = this.rootReference.m26833c();
        if (m26833c != null) {
            int[] iArr = new int[1];
            this.rootReference.m26831a(m26833c, m26833c.m26820o(comparator(), e, i, iArr));
            return iArr[0];
        }
        comparator().compare(e, e);
        C6082e<E> c6082e = new C6082e<>(e, i);
        C6082e<E> c6082e2 = this.header;
        successor(c6082e2, c6082e, c6082e2);
        this.rootReference.m26831a(m26833c, c6082e);
        return 0;
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        if (this.range.hasLowerBound() || this.range.hasUpperBound()) {
            Iterators.m26340c(entryIterator());
            return;
        }
        C6082e<E> m26819L = this.header.m26819L();
        while (true) {
            C6082e<E> c6082e = this.header;
            if (m26819L == c6082e) {
                successor(c6082e, c6082e);
                this.rootReference.m26832b();
                return;
            }
            C6082e<E> m26819L2 = m26819L.m26819L();
            m26819L.f34506b = 0;
            m26819L.f34510f = null;
            m26819L.f34511g = null;
            m26819L.f34512h = null;
            m26819L.f34513i = null;
            m26819L = m26819L2;
        }
    }

    @Override // com.google.common.collect.AbstractC6114i, com.google.common.collect.SortedMultiset, com.sunia.HTREnginev2.svm
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        try {
            C6082e<E> m26833c = this.rootReference.m26833c();
            if (this.range.contains(obj) && m26833c != null) {
                return m26833c.m26825t(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.AbstractC6114i
    public Iterator<Multiset.Entry<E>> descendingEntryIterator() {
        return new C6080c();
    }

    @Override // com.google.common.collect.AbstractC6114i, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // com.google.common.collect.AbstractC6112g
    public int distinctElements() {
        return Ints.saturatedCast(aggregateForEntries(Aggregate.DISTINCT));
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Iterator<E> elementIterator() {
        return Multisets.m26635e(entryIterator());
    }

    @Override // com.google.common.collect.AbstractC6114i, com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.AbstractC6112g
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new C6079b();
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.AbstractC6114i, com.google.common.collect.SortedMultiset
    @CheckForNull
    public /* bridge */ /* synthetic */ Multiset.Entry firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.Multiset
    public void forEachEntry(ObjIntConsumer<? super E> objIntConsumer) {
        Preconditions.checkNotNull(objIntConsumer);
        for (C6082e<E> firstNode = firstNode(); firstNode != this.header && firstNode != null && !this.range.tooHigh(firstNode.m26829x()); firstNode = firstNode.m26819L()) {
            objIntConsumer.accept(firstNode.m26829x(), firstNode.m26828w());
        }
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(@xvk E e, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.upTo(comparator(), e, boundType)), this.header);
    }

    @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.m26638h(this);
    }

    @Override // com.google.common.collect.AbstractC6114i, com.google.common.collect.SortedMultiset
    @CheckForNull
    public /* bridge */ /* synthetic */ Multiset.Entry lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.AbstractC6114i, com.google.common.collect.SortedMultiset
    @CheckForNull
    public /* bridge */ /* synthetic */ Multiset.Entry pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.AbstractC6114i, com.google.common.collect.SortedMultiset
    @CheckForNull
    public /* bridge */ /* synthetic */ Multiset.Entry pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(@CheckForNull Object obj, int i) {
        szd.m57279b(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        C6082e<E> m26833c = this.rootReference.m26833c();
        int[] iArr = new int[1];
        try {
            if (this.range.contains(obj) && m26833c != null) {
                this.rootReference.m26831a(m26833c, m26833c.m26812E(comparator(), obj, i, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(@xvk E e, int i) {
        szd.m57279b(i, "count");
        if (!this.range.contains(e)) {
            Preconditions.checkArgument(i == 0);
            return 0;
        }
        C6082e<E> m26833c = this.rootReference.m26833c();
        if (m26833c == null) {
            if (i > 0) {
                add(e, i);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.m26831a(m26833c, m26833c.m26818K(comparator(), e, i, iArr));
        return iArr[0];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(aggregateForEntries(Aggregate.SIZE));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractC6114i, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset subMultiset(@xvk Object obj, BoundType boundType, @xvk Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(@xvk E e, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.downTo(comparator(), e, boundType)), this.header);
    }

    public static <E> TreeMultiset<E> create(@CheckForNull Comparator<? super E> comparator) {
        if (comparator == null) {
            return new TreeMultiset<>(Ordering.natural());
        }
        return new TreeMultiset<>(comparator);
    }

    public static int distinctElements(@CheckForNull C6082e<?> c6082e) {
        if (c6082e == null) {
            return 0;
        }
        return c6082e.f34507c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(C6082e<T> c6082e, C6082e<T> c6082e2, C6082e<T> c6082e3) {
        successor(c6082e, c6082e2);
        successor(c6082e2, c6082e3);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> create = create();
        Iterables.addAll(create, iterable);
        return create;
    }

    public TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = GeneralRange.all(comparator);
        C6082e<E> c6082e = new C6082e<>();
        this.header = c6082e;
        successor(c6082e, c6082e);
        this.rootReference = new C6083f<>(null);
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public boolean setCount(@xvk E e, int i, int i2) {
        szd.m57279b(i2, "newCount");
        szd.m57279b(i, "oldCount");
        Preconditions.checkArgument(this.range.contains(e));
        C6082e<E> m26833c = this.rootReference.m26833c();
        if (m26833c != null) {
            int[] iArr = new int[1];
            this.rootReference.m26831a(m26833c, m26833c.m26817J(comparator(), e, i, i2, iArr));
            return iArr[0] == i;
        }
        if (i != 0) {
            return false;
        }
        if (i2 > 0) {
            add(e, i2);
        }
        return true;
    }

    /* renamed from: com.google.common.collect.TreeMultiset$e */
    /* loaded from: classes6.dex */
    public static final class C6082e<E> {

        /* renamed from: a */
        @CheckForNull
        public final E f34505a;

        /* renamed from: b */
        public int f34506b;

        /* renamed from: c */
        public int f34507c;

        /* renamed from: d */
        public long f34508d;

        /* renamed from: e */
        public int f34509e;

        /* renamed from: f */
        @CheckForNull
        public C6082e<E> f34510f;

        /* renamed from: g */
        @CheckForNull
        public C6082e<E> f34511g;

        /* renamed from: h */
        @CheckForNull
        public C6082e<E> f34512h;

        /* renamed from: i */
        @CheckForNull
        public C6082e<E> f34513i;

        public C6082e(@xvk E e, int i) {
            Preconditions.checkArgument(i > 0);
            this.f34505a = e;
            this.f34506b = i;
            this.f34508d = i;
            this.f34507c = 1;
            this.f34509e = 1;
            this.f34510f = null;
            this.f34511g = null;
        }

        /* renamed from: M */
        public static long m26792M(@CheckForNull C6082e<?> c6082e) {
            if (c6082e == null) {
                return 0L;
            }
            return c6082e.f34508d;
        }

        /* renamed from: y */
        public static int m26807y(@CheckForNull C6082e<?> c6082e) {
            if (c6082e == null) {
                return 0;
            }
            return c6082e.f34509e;
        }

        /* renamed from: A */
        public final C6082e<E> m26808A() {
            int m26823r = m26823r();
            if (m26823r == -2) {
                Objects.requireNonNull(this.f34511g);
                if (this.f34511g.m26823r() > 0) {
                    this.f34511g = this.f34511g.m26816I();
                }
                return m26815H();
            }
            if (m26823r != 2) {
                m26810C();
                return this;
            }
            Objects.requireNonNull(this.f34510f);
            if (this.f34510f.m26823r() < 0) {
                this.f34510f = this.f34510f.m26815H();
            }
            return m26816I();
        }

        /* renamed from: B */
        public final void m26809B() {
            m26811D();
            m26810C();
        }

        /* renamed from: C */
        public final void m26810C() {
            this.f34509e = Math.max(m26807y(this.f34510f), m26807y(this.f34511g)) + 1;
        }

        /* renamed from: D */
        public final void m26811D() {
            this.f34507c = TreeMultiset.distinctElements(this.f34510f) + 1 + TreeMultiset.distinctElements(this.f34511g);
            this.f34508d = this.f34506b + m26792M(this.f34510f) + m26792M(this.f34511g);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        /* renamed from: E */
        public C6082e<E> m26812E(Comparator<? super E> comparator, @xvk E e, int i, int[] iArr) {
            int compare = comparator.compare(e, m26829x());
            if (compare < 0) {
                C6082e<E> c6082e = this.f34510f;
                if (c6082e == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f34510f = c6082e.m26812E(comparator, e, i, iArr);
                int i2 = iArr[0];
                if (i2 > 0) {
                    if (i >= i2) {
                        this.f34507c--;
                        this.f34508d -= i2;
                    } else {
                        this.f34508d -= i;
                    }
                }
                return i2 == 0 ? this : m26808A();
            }
            if (compare <= 0) {
                int i3 = this.f34506b;
                iArr[0] = i3;
                if (i >= i3) {
                    return m26826u();
                }
                this.f34506b = i3 - i;
                this.f34508d -= i;
                return this;
            }
            C6082e<E> c6082e2 = this.f34511g;
            if (c6082e2 == null) {
                iArr[0] = 0;
                return this;
            }
            this.f34511g = c6082e2.m26812E(comparator, e, i, iArr);
            int i4 = iArr[0];
            if (i4 > 0) {
                if (i >= i4) {
                    this.f34507c--;
                    this.f34508d -= i4;
                } else {
                    this.f34508d -= i;
                }
            }
            return m26808A();
        }

        @CheckForNull
        /* renamed from: F */
        public final C6082e<E> m26813F(C6082e<E> c6082e) {
            C6082e<E> c6082e2 = this.f34511g;
            if (c6082e2 == null) {
                return this.f34510f;
            }
            this.f34511g = c6082e2.m26813F(c6082e);
            this.f34507c--;
            this.f34508d -= c6082e.f34506b;
            return m26808A();
        }

        @CheckForNull
        /* renamed from: G */
        public final C6082e<E> m26814G(C6082e<E> c6082e) {
            C6082e<E> c6082e2 = this.f34510f;
            if (c6082e2 == null) {
                return this.f34511g;
            }
            this.f34510f = c6082e2.m26814G(c6082e);
            this.f34507c--;
            this.f34508d -= c6082e.f34506b;
            return m26808A();
        }

        /* renamed from: H */
        public final C6082e<E> m26815H() {
            Preconditions.checkState(this.f34511g != null);
            C6082e<E> c6082e = this.f34511g;
            this.f34511g = c6082e.f34510f;
            c6082e.f34510f = this;
            c6082e.f34508d = this.f34508d;
            c6082e.f34507c = this.f34507c;
            m26809B();
            c6082e.m26810C();
            return c6082e;
        }

        /* renamed from: I */
        public final C6082e<E> m26816I() {
            Preconditions.checkState(this.f34510f != null);
            C6082e<E> c6082e = this.f34510f;
            this.f34510f = c6082e.f34511g;
            c6082e.f34511g = this;
            c6082e.f34508d = this.f34508d;
            c6082e.f34507c = this.f34507c;
            m26809B();
            c6082e.m26810C();
            return c6082e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        /* renamed from: J */
        public C6082e<E> m26817J(Comparator<? super E> comparator, @xvk E e, int i, int i2, int[] iArr) {
            int compare = comparator.compare(e, m26829x());
            if (compare < 0) {
                C6082e<E> c6082e = this.f34510f;
                if (c6082e == null) {
                    iArr[0] = 0;
                    return (i != 0 || i2 <= 0) ? this : m26821p(e, i2);
                }
                this.f34510f = c6082e.m26817J(comparator, e, i, i2, iArr);
                int i3 = iArr[0];
                if (i3 == i) {
                    if (i2 == 0 && i3 != 0) {
                        this.f34507c--;
                    } else if (i2 > 0 && i3 == 0) {
                        this.f34507c++;
                    }
                    this.f34508d += i2 - i3;
                }
                return m26808A();
            }
            if (compare <= 0) {
                int i4 = this.f34506b;
                iArr[0] = i4;
                if (i == i4) {
                    if (i2 == 0) {
                        return m26826u();
                    }
                    this.f34508d += i2 - i4;
                    this.f34506b = i2;
                }
                return this;
            }
            C6082e<E> c6082e2 = this.f34511g;
            if (c6082e2 == null) {
                iArr[0] = 0;
                return (i != 0 || i2 <= 0) ? this : m26822q(e, i2);
            }
            this.f34511g = c6082e2.m26817J(comparator, e, i, i2, iArr);
            int i5 = iArr[0];
            if (i5 == i) {
                if (i2 == 0 && i5 != 0) {
                    this.f34507c--;
                } else if (i2 > 0 && i5 == 0) {
                    this.f34507c++;
                }
                this.f34508d += i2 - i5;
            }
            return m26808A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        /* renamed from: K */
        public C6082e<E> m26818K(Comparator<? super E> comparator, @xvk E e, int i, int[] iArr) {
            int compare = comparator.compare(e, m26829x());
            if (compare < 0) {
                C6082e<E> c6082e = this.f34510f;
                if (c6082e == null) {
                    iArr[0] = 0;
                    return i > 0 ? m26821p(e, i) : this;
                }
                this.f34510f = c6082e.m26818K(comparator, e, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.f34507c--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.f34507c++;
                }
                this.f34508d += i - iArr[0];
                return m26808A();
            }
            if (compare <= 0) {
                iArr[0] = this.f34506b;
                if (i == 0) {
                    return m26826u();
                }
                this.f34508d += i - r3;
                this.f34506b = i;
                return this;
            }
            C6082e<E> c6082e2 = this.f34511g;
            if (c6082e2 == null) {
                iArr[0] = 0;
                return i > 0 ? m26822q(e, i) : this;
            }
            this.f34511g = c6082e2.m26818K(comparator, e, i, iArr);
            if (i == 0 && iArr[0] != 0) {
                this.f34507c--;
            } else if (i > 0 && iArr[0] == 0) {
                this.f34507c++;
            }
            this.f34508d += i - iArr[0];
            return m26808A();
        }

        /* renamed from: L */
        public final C6082e<E> m26819L() {
            C6082e<E> c6082e = this.f34513i;
            Objects.requireNonNull(c6082e);
            return c6082e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: o */
        public C6082e<E> m26820o(Comparator<? super E> comparator, @xvk E e, int i, int[] iArr) {
            int compare = comparator.compare(e, m26829x());
            if (compare < 0) {
                C6082e<E> c6082e = this.f34510f;
                if (c6082e == null) {
                    iArr[0] = 0;
                    return m26821p(e, i);
                }
                int i2 = c6082e.f34509e;
                C6082e<E> m26820o = c6082e.m26820o(comparator, e, i, iArr);
                this.f34510f = m26820o;
                if (iArr[0] == 0) {
                    this.f34507c++;
                }
                this.f34508d += i;
                return m26820o.f34509e == i2 ? this : m26808A();
            }
            if (compare <= 0) {
                int i3 = this.f34506b;
                iArr[0] = i3;
                long j = i;
                Preconditions.checkArgument(((long) i3) + j <= 2147483647L);
                this.f34506b += i;
                this.f34508d += j;
                return this;
            }
            C6082e<E> c6082e2 = this.f34511g;
            if (c6082e2 == null) {
                iArr[0] = 0;
                return m26822q(e, i);
            }
            int i4 = c6082e2.f34509e;
            C6082e<E> m26820o2 = c6082e2.m26820o(comparator, e, i, iArr);
            this.f34511g = m26820o2;
            if (iArr[0] == 0) {
                this.f34507c++;
            }
            this.f34508d += i;
            return m26820o2.f34509e == i4 ? this : m26808A();
        }

        /* renamed from: p */
        public final C6082e<E> m26821p(@xvk E e, int i) {
            this.f34510f = new C6082e<>(e, i);
            TreeMultiset.successor(m26830z(), this.f34510f, this);
            this.f34509e = Math.max(2, this.f34509e);
            this.f34507c++;
            this.f34508d += i;
            return this;
        }

        /* renamed from: q */
        public final C6082e<E> m26822q(@xvk E e, int i) {
            C6082e<E> c6082e = new C6082e<>(e, i);
            this.f34511g = c6082e;
            TreeMultiset.successor(this, c6082e, m26819L());
            this.f34509e = Math.max(2, this.f34509e);
            this.f34507c++;
            this.f34508d += i;
            return this;
        }

        /* renamed from: r */
        public final int m26823r() {
            return m26807y(this.f34510f) - m26807y(this.f34511g);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        /* renamed from: s */
        public final C6082e<E> m26824s(Comparator<? super E> comparator, @xvk E e) {
            int compare = comparator.compare(e, m26829x());
            if (compare < 0) {
                C6082e<E> c6082e = this.f34510f;
                return c6082e == null ? this : (C6082e) MoreObjects.firstNonNull(c6082e.m26824s(comparator, e), this);
            }
            if (compare == 0) {
                return this;
            }
            C6082e<E> c6082e2 = this.f34511g;
            if (c6082e2 == null) {
                return null;
            }
            return c6082e2.m26824s(comparator, e);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: t */
        public int m26825t(Comparator<? super E> comparator, @xvk E e) {
            int compare = comparator.compare(e, m26829x());
            if (compare < 0) {
                C6082e<E> c6082e = this.f34510f;
                if (c6082e == null) {
                    return 0;
                }
                return c6082e.m26825t(comparator, e);
            }
            if (compare <= 0) {
                return this.f34506b;
            }
            C6082e<E> c6082e2 = this.f34511g;
            if (c6082e2 == null) {
                return 0;
            }
            return c6082e2.m26825t(comparator, e);
        }

        public String toString() {
            return Multisets.immutableEntry(m26829x(), m26828w()).toString();
        }

        @CheckForNull
        /* renamed from: u */
        public final C6082e<E> m26826u() {
            int i = this.f34506b;
            this.f34506b = 0;
            TreeMultiset.successor(m26830z(), m26819L());
            C6082e<E> c6082e = this.f34510f;
            if (c6082e == null) {
                return this.f34511g;
            }
            C6082e<E> c6082e2 = this.f34511g;
            if (c6082e2 == null) {
                return c6082e;
            }
            if (c6082e.f34509e >= c6082e2.f34509e) {
                C6082e<E> m26830z = m26830z();
                m26830z.f34510f = this.f34510f.m26813F(m26830z);
                m26830z.f34511g = this.f34511g;
                m26830z.f34507c = this.f34507c - 1;
                m26830z.f34508d = this.f34508d - i;
                return m26830z.m26808A();
            }
            C6082e<E> m26819L = m26819L();
            m26819L.f34511g = this.f34511g.m26814G(m26819L);
            m26819L.f34510f = this.f34510f;
            m26819L.f34507c = this.f34507c - 1;
            m26819L.f34508d = this.f34508d - i;
            return m26819L.m26808A();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CheckForNull
        /* renamed from: v */
        public final C6082e<E> m26827v(Comparator<? super E> comparator, @xvk E e) {
            int compare = comparator.compare(e, m26829x());
            if (compare > 0) {
                C6082e<E> c6082e = this.f34511g;
                return c6082e == null ? this : (C6082e) MoreObjects.firstNonNull(c6082e.m26827v(comparator, e), this);
            }
            if (compare == 0) {
                return this;
            }
            C6082e<E> c6082e2 = this.f34510f;
            if (c6082e2 == null) {
                return null;
            }
            return c6082e2.m26827v(comparator, e);
        }

        /* renamed from: w */
        public int m26828w() {
            return this.f34506b;
        }

        @xvk
        /* renamed from: x */
        public E m26829x() {
            return (E) p5k.m56213a(this.f34505a);
        }

        /* renamed from: z */
        public final C6082e<E> m26830z() {
            C6082e<E> c6082e = this.f34512h;
            Objects.requireNonNull(c6082e);
            return c6082e;
        }

        public C6082e() {
            this.f34505a = null;
            this.f34506b = 1;
        }
    }
}
