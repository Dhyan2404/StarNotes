package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.AbstractC13550c4;
import com.sunia.HTREnginev2.snf;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@snf
/* loaded from: classes6.dex */
public class TreeRangeSet<C extends Comparable<?>> extends AbstractC13550c4<C> implements Serializable {

    @CheckForNull
    private transient Set<Range<C>> asDescendingSetOfRanges;

    @CheckForNull
    private transient Set<Range<C>> asRanges;

    @CheckForNull
    private transient RangeSet<C> complement;

    @VisibleForTesting
    final NavigableMap<Cut<C>, Range<C>> rangesByLowerBound;

    /* loaded from: classes6.dex */
    public final class Complement extends TreeRangeSet<C> {
        public Complement() {
            super(new C6090c(TreeRangeSet.this.rangesByLowerBound));
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.RangeSet
        public RangeSet<C> complement() {
            return TreeRangeSet.this;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return !TreeRangeSet.this.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }
    }

    /* loaded from: classes6.dex */
    public final class SubRangeSet extends TreeRangeSet<C> {
        private final Range<C> restriction;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public SubRangeSet(com.google.common.collect.Range<C> r5) {
            /*
                r3 = this;
                com.google.common.collect.TreeRangeSet.this = r4
                com.google.common.collect.TreeRangeSet$e r0 = new com.google.common.collect.TreeRangeSet$e
                com.google.common.collect.Range r1 = com.google.common.collect.Range.all()
                java.util.NavigableMap<com.google.common.collect.Cut<C extends java.lang.Comparable<?>>, com.google.common.collect.Range<C extends java.lang.Comparable<?>>> r4 = r4.rangesByLowerBound
                r2 = 0
                r0.<init>(r1, r5, r4)
                r3.<init>(r0)
                r3.restriction = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.TreeRangeSet.SubRangeSet.<init>(com.google.common.collect.TreeRangeSet, com.google.common.collect.Range):void");
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        public void add(Range<C> range) {
            Preconditions.checkArgument(this.restriction.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.restriction);
            TreeRangeSet.this.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        public void clear() {
            TreeRangeSet.this.remove(this.restriction);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return this.restriction.contains(c) && TreeRangeSet.this.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        public boolean encloses(Range<C> range) {
            Range rangeEnclosing;
            return (this.restriction.isEmpty() || !this.restriction.encloses(range) || (rangeEnclosing = TreeRangeSet.this.rangeEnclosing(range)) == null || rangeEnclosing.intersection(this.restriction).isEmpty()) ? false : true;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        @CheckForNull
        public Range<C> rangeContaining(C c) {
            Range<C> rangeContaining;
            if (this.restriction.contains(c) && (rangeContaining = TreeRangeSet.this.rangeContaining(c)) != null) {
                return rangeContaining.intersection(this.restriction);
            }
            return null;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
        public void remove(Range<C> range) {
            if (range.isConnected(this.restriction)) {
                TreeRangeSet.this.remove(range.intersection(this.restriction));
            }
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.RangeSet
        public RangeSet<C> subRangeSet(Range<C> range) {
            return range.encloses(this.restriction) ? this : range.isConnected(this.restriction) ? new SubRangeSet(this, this.restriction.intersection(range)) : ImmutableRangeSet.m26229of();
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeSet$b */
    /* loaded from: classes6.dex */
    public final class C6089b extends ForwardingCollection<Range<C>> implements Set<Range<C>> {

        /* renamed from: e */
        public final Collection<Range<C>> f34532e;

        public C6089b(TreeRangeSet treeRangeSet, Collection<Range<C>> collection) {
            this.f34532e = collection;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return Sets.m26675a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.m26676b(this);
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Range<C>> delegate() {
            return this.f34532e;
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeSet$c */
    /* loaded from: classes6.dex */
    public static final class C6090c<C extends Comparable<?>> extends AbstractC6113h<Cut<C>, Range<C>> {

        /* renamed from: e */
        public final NavigableMap<Cut<C>, Range<C>> f34533e;

        /* renamed from: f */
        public final NavigableMap<Cut<C>, Range<C>> f34534f;

        /* renamed from: g */
        public final Range<Cut<C>> f34535g;

        /* renamed from: com.google.common.collect.TreeRangeSet$c$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: g */
            public Cut<C> f34536g;

            /* renamed from: h */
            public final /* synthetic */ Cut f34537h;

            /* renamed from: i */
            public final /* synthetic */ PeekingIterator f34538i;

            public a(Cut cut, PeekingIterator peekingIterator) {
                this.f34537h = cut;
                this.f34538i = peekingIterator;
                this.f34536g = cut;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<Cut<C>, Range<C>> computeNext() {
                Range create;
                if (C6090c.this.f34535g.upperBound.isLessThan(this.f34536g) || this.f34536g == Cut.aboveAll()) {
                    return (Map.Entry) endOfData();
                }
                if (this.f34538i.hasNext()) {
                    Range range = (Range) this.f34538i.next();
                    create = Range.create(this.f34536g, range.lowerBound);
                    this.f34536g = range.upperBound;
                } else {
                    create = Range.create(this.f34536g, Cut.aboveAll());
                    this.f34536g = Cut.aboveAll();
                }
                return Maps.immutableEntry(create.lowerBound, create);
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeSet$c$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: g */
            public Cut<C> f34540g;

            /* renamed from: h */
            public final /* synthetic */ Cut f34541h;

            /* renamed from: i */
            public final /* synthetic */ PeekingIterator f34542i;

            public b(Cut cut, PeekingIterator peekingIterator) {
                this.f34541h = cut;
                this.f34542i = peekingIterator;
                this.f34540g = cut;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<Cut<C>, Range<C>> computeNext() {
                if (this.f34540g == Cut.belowAll()) {
                    return (Map.Entry) endOfData();
                }
                if (this.f34542i.hasNext()) {
                    Range range = (Range) this.f34542i.next();
                    Range create = Range.create(range.upperBound, this.f34540g);
                    this.f34540g = range.lowerBound;
                    if (C6090c.this.f34535g.lowerBound.isLessThan(create.lowerBound)) {
                        return Maps.immutableEntry(create.lowerBound, create);
                    }
                } else if (C6090c.this.f34535g.lowerBound.isLessThan(Cut.belowAll())) {
                    Range create2 = Range.create(Cut.belowAll(), this.f34540g);
                    this.f34540g = Cut.belowAll();
                    return Maps.immutableEntry(Cut.belowAll(), create2);
                }
                return (Map.Entry) endOfData();
            }
        }

        public C6090c(NavigableMap<Cut<C>, Range<C>> navigableMap) {
            this(navigableMap, Range.all());
        }

        @Override // com.google.common.collect.AbstractC6113h
        /* renamed from: a */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo26511a() {
            Cut<C> higherKey;
            PeekingIterator peekingIterator = Iterators.peekingIterator(this.f34534f.headMap(this.f34535g.hasUpperBound() ? this.f34535g.upperEndpoint() : Cut.aboveAll(), this.f34535g.hasUpperBound() && this.f34535g.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (peekingIterator.hasNext()) {
                higherKey = ((Range) peekingIterator.peek()).upperBound == Cut.aboveAll() ? ((Range) peekingIterator.next()).lowerBound : this.f34533e.higherKey(((Range) peekingIterator.peek()).upperBound);
            } else {
                if (!this.f34535g.contains(Cut.belowAll()) || this.f34533e.containsKey(Cut.belowAll())) {
                    return Iterators.m26343f();
                }
                higherKey = this.f34533e.higherKey(Cut.belowAll());
            }
            return new b((Cut) MoreObjects.firstNonNull(higherKey, Cut.aboveAll()), peekingIterator);
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Range<C> get(@CheckForNull Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut<C> cut = (Cut) obj;
                    Map.Entry<Cut<C>, Range<C>> firstEntry = tailMap(cut, true).firstEntry();
                    if (firstEntry != null && firstEntry.getKey().equals(cut)) {
                        return firstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return m26856f(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return m26856f(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<Cut<C>, Range<C>>> entryIterator() {
            Collection<Range<C>> values;
            Cut cut;
            if (this.f34535g.hasLowerBound()) {
                values = this.f34534f.tailMap(this.f34535g.lowerEndpoint(), this.f34535g.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                values = this.f34534f.values();
            }
            PeekingIterator peekingIterator = Iterators.peekingIterator(values.iterator());
            if (this.f34535g.contains(Cut.belowAll()) && (!peekingIterator.hasNext() || ((Range) peekingIterator.peek()).lowerBound != Cut.belowAll())) {
                cut = Cut.belowAll();
            } else {
                if (!peekingIterator.hasNext()) {
                    return Iterators.m26343f();
                }
                cut = ((Range) peekingIterator.next()).upperBound;
            }
            return new a(cut, peekingIterator);
        }

        /* renamed from: f */
        public final NavigableMap<Cut<C>, Range<C>> m26856f(Range<Cut<C>> range) {
            if (!this.f34535g.isConnected(range)) {
                return ImmutableSortedMap.m26265of();
            }
            return new C6090c(this.f34533e, range.intersection(this.f34535g));
        }

        @Override // java.util.NavigableMap
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return m26856f(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.size(entryIterator());
        }

        public C6090c(NavigableMap<Cut<C>, Range<C>> navigableMap, Range<Cut<C>> range) {
            this.f34533e = navigableMap;
            this.f34534f = new C6091d(navigableMap);
            this.f34535g = range;
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeSet$e */
    /* loaded from: classes6.dex */
    public static final class C6092e<C extends Comparable<?>> extends AbstractC6113h<Cut<C>, Range<C>> {

        /* renamed from: e */
        public final Range<Cut<C>> f34550e;

        /* renamed from: f */
        public final Range<C> f34551f;

        /* renamed from: g */
        public final NavigableMap<Cut<C>, Range<C>> f34552g;

        /* renamed from: h */
        public final NavigableMap<Cut<C>, Range<C>> f34553h;

        /* renamed from: com.google.common.collect.TreeRangeSet$e$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34554g;

            /* renamed from: h */
            public final /* synthetic */ Cut f34555h;

            public a(Iterator it2, Cut cut) {
                this.f34554g = it2;
                this.f34555h = cut;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<Cut<C>, Range<C>> computeNext() {
                if (!this.f34554g.hasNext()) {
                    return (Map.Entry) endOfData();
                }
                Range range = (Range) this.f34554g.next();
                if (this.f34555h.isLessThan(range.lowerBound)) {
                    return (Map.Entry) endOfData();
                }
                Range intersection = range.intersection(C6092e.this.f34551f);
                return Maps.immutableEntry(intersection.lowerBound, intersection);
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeSet$e$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34557g;

            public b(Iterator it2) {
                this.f34557g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<Cut<C>, Range<C>> computeNext() {
                if (!this.f34557g.hasNext()) {
                    return (Map.Entry) endOfData();
                }
                Range range = (Range) this.f34557g.next();
                if (C6092e.this.f34551f.lowerBound.compareTo((Cut) range.upperBound) >= 0) {
                    return (Map.Entry) endOfData();
                }
                Range intersection = range.intersection(C6092e.this.f34551f);
                return C6092e.this.f34550e.contains(intersection.lowerBound) ? Maps.immutableEntry(intersection.lowerBound, intersection) : (Map.Entry) endOfData();
            }
        }

        @Override // com.google.common.collect.AbstractC6113h
        /* renamed from: a */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo26511a() {
            if (this.f34551f.isEmpty()) {
                return Iterators.m26343f();
            }
            Cut cut = (Cut) Ordering.natural().min(this.f34550e.upperBound, Cut.belowValue(this.f34551f.upperBound));
            return new b(this.f34552g.headMap((Cut) cut.endpoint(), cut.typeAsUpperBound() == BoundType.CLOSED).descendingMap().values().iterator());
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Range<C> get(@CheckForNull Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut<C> cut = (Cut) obj;
                    if (this.f34550e.contains(cut) && cut.compareTo(this.f34551f.lowerBound) >= 0 && cut.compareTo(this.f34551f.upperBound) < 0) {
                        if (cut.equals(this.f34551f.lowerBound)) {
                            Range range = (Range) Maps.m26479R(this.f34552g.floorEntry(cut));
                            if (range != null && range.upperBound.compareTo((Cut) this.f34551f.lowerBound) > 0) {
                                return range.intersection(this.f34551f);
                            }
                        } else {
                            Range<C> range2 = this.f34552g.get(cut);
                            if (range2 != null) {
                                return range2.intersection(this.f34551f);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return m26873g(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<Cut<C>, Range<C>>> entryIterator() {
            Iterator<Range<C>> it2;
            if (!this.f34551f.isEmpty() && !this.f34550e.upperBound.isLessThan(this.f34551f.lowerBound)) {
                if (this.f34550e.lowerBound.isLessThan(this.f34551f.lowerBound)) {
                    it2 = this.f34553h.tailMap(this.f34551f.lowerBound, false).values().iterator();
                } else {
                    it2 = this.f34552g.tailMap(this.f34550e.lowerBound.endpoint(), this.f34550e.lowerBoundType() == BoundType.CLOSED).values().iterator();
                }
                return new a(it2, (Cut) Ordering.natural().min(this.f34550e.upperBound, Cut.belowValue(this.f34551f.upperBound)));
            }
            return Iterators.m26343f();
        }

        @Override // java.util.NavigableMap
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return m26873g(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        /* renamed from: g */
        public final NavigableMap<Cut<C>, Range<C>> m26873g(Range<Cut<C>> range) {
            return !range.isConnected(this.f34550e) ? ImmutableSortedMap.m26265of() : new C6092e(this.f34550e.intersection(range), this.f34551f, this.f34552g);
        }

        @Override // java.util.NavigableMap
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return m26873g(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.size(entryIterator());
        }

        public C6092e(Range<Cut<C>> range, Range<C> range2, NavigableMap<Cut<C>, Range<C>> navigableMap) {
            this.f34550e = (Range) Preconditions.checkNotNull(range);
            this.f34551f = (Range) Preconditions.checkNotNull(range2);
            this.f34552g = (NavigableMap) Preconditions.checkNotNull(navigableMap);
            this.f34553h = new C6091d(navigableMap);
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckForNull
    public Range<C> rangeEnclosing(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        if (floorEntry == null || !floorEntry.getValue().encloses(range)) {
            return null;
        }
        return floorEntry.getValue();
    }

    private void replaceRangeWithSameLowerBound(Range<C> range) {
        if (range.isEmpty()) {
            this.rangesByLowerBound.remove(range.lowerBound);
        } else {
            this.rangesByLowerBound.put(range.lowerBound, range);
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public void add(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return;
        }
        Cut<C> cut = range.lowerBound;
        Cut<C> cut2 = range.upperBound;
        Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(cut);
        if (lowerEntry != null) {
            Range<C> value = lowerEntry.getValue();
            if (value.upperBound.compareTo(cut) >= 0) {
                if (value.upperBound.compareTo(cut2) >= 0) {
                    cut2 = value.upperBound;
                }
                cut = value.lowerBound;
            }
        }
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(cut2);
        if (floorEntry != null) {
            Range<C> value2 = floorEntry.getValue();
            if (value2.upperBound.compareTo(cut2) >= 0) {
                cut2 = value2.upperBound;
            }
        }
        this.rangesByLowerBound.subMap(cut, cut2).clear();
        replaceRangeWithSameLowerBound(Range.create(cut, cut2));
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void addAll(RangeSet rangeSet) {
        super.addAll(rangeSet);
    }

    @Override // com.google.common.collect.RangeSet
    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.asDescendingSetOfRanges;
        if (set != null) {
            return set;
        }
        C6089b c6089b = new C6089b(this, this.rangesByLowerBound.descendingMap().values());
        this.asDescendingSetOfRanges = c6089b;
        return c6089b;
    }

    @Override // com.google.common.collect.RangeSet
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.asRanges;
        if (set != null) {
            return set;
        }
        C6089b c6089b = new C6089b(this, this.rangesByLowerBound.values());
        this.asRanges = c6089b;
        return c6089b;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> complement() {
        RangeSet<C> rangeSet = this.complement;
        if (rangeSet != null) {
            return rangeSet;
        }
        Complement complement = new Complement();
        this.complement = complement;
        return complement;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public boolean encloses(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        return floorEntry != null && floorEntry.getValue().encloses(range);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(RangeSet rangeSet) {
        return super.enclosesAll(rangeSet);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public boolean intersects(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<Cut<C>, Range<C>> ceilingEntry = this.rangesByLowerBound.ceilingEntry(range.lowerBound);
        if (ceilingEntry != null && ceilingEntry.getValue().isConnected(range) && !ceilingEntry.getValue().intersection(range).isEmpty()) {
            return true;
        }
        Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        return (lowerEntry == null || !lowerEntry.getValue().isConnected(range) || lowerEntry.getValue().intersection(range).isEmpty()) ? false : true;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    @CheckForNull
    public Range<C> rangeContaining(C c) {
        Preconditions.checkNotNull(c);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(Cut.belowValue(c));
        if (floorEntry == null || !floorEntry.getValue().contains(c)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public void remove(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return;
        }
        Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        if (lowerEntry != null) {
            Range<C> value = lowerEntry.getValue();
            if (value.upperBound.compareTo(range.lowerBound) >= 0) {
                if (range.hasUpperBound() && value.upperBound.compareTo(range.upperBound) >= 0) {
                    replaceRangeWithSameLowerBound(Range.create(range.upperBound, value.upperBound));
                }
                replaceRangeWithSameLowerBound(Range.create(value.lowerBound, range.lowerBound));
            }
        }
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.upperBound);
        if (floorEntry != null) {
            Range<C> value2 = floorEntry.getValue();
            if (range.hasUpperBound() && value2.upperBound.compareTo(range.upperBound) >= 0) {
                replaceRangeWithSameLowerBound(Range.create(range.upperBound, value2.upperBound));
            }
        }
        this.rangesByLowerBound.subMap(range.lowerBound, range.upperBound).clear();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13550c4, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void removeAll(RangeSet rangeSet) {
        super.removeAll(rangeSet);
    }

    @Override // com.google.common.collect.RangeSet
    public Range<C> span() {
        Map.Entry<Cut<C>, Range<C>> firstEntry = this.rangesByLowerBound.firstEntry();
        Map.Entry<Cut<C>, Range<C>> lastEntry = this.rangesByLowerBound.lastEntry();
        if (firstEntry == null || lastEntry == null) {
            throw new NoSuchElementException();
        }
        return Range.create(firstEntry.getValue().lowerBound, lastEntry.getValue().upperBound);
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new SubRangeSet(this, range);
    }

    private TreeRangeSet(NavigableMap<Cut<C>, Range<C>> navigableMap) {
        this.rangesByLowerBound = navigableMap;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(RangeSet<C> rangeSet) {
        TreeRangeSet<C> create = create();
        create.addAll(rangeSet);
        return create;
    }

    @VisibleForTesting
    /* renamed from: com.google.common.collect.TreeRangeSet$d */
    /* loaded from: classes6.dex */
    public static final class C6091d<C extends Comparable<?>> extends AbstractC6113h<Cut<C>, Range<C>> {

        /* renamed from: e */
        public final NavigableMap<Cut<C>, Range<C>> f34544e;

        /* renamed from: f */
        public final Range<Cut<C>> f34545f;

        /* renamed from: com.google.common.collect.TreeRangeSet$d$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34546g;

            public a(Iterator it2) {
                this.f34546g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<Cut<C>, Range<C>> computeNext() {
                if (!this.f34546g.hasNext()) {
                    return (Map.Entry) endOfData();
                }
                Range range = (Range) this.f34546g.next();
                return C6091d.this.f34545f.upperBound.isLessThan(range.upperBound) ? (Map.Entry) endOfData() : Maps.immutableEntry(range.upperBound, range);
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeSet$d$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: g */
            public final /* synthetic */ PeekingIterator f34548g;

            public b(PeekingIterator peekingIterator) {
                this.f34548g = peekingIterator;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<Cut<C>, Range<C>> computeNext() {
                if (!this.f34548g.hasNext()) {
                    return (Map.Entry) endOfData();
                }
                Range range = (Range) this.f34548g.next();
                return C6091d.this.f34545f.lowerBound.isLessThan(range.upperBound) ? Maps.immutableEntry(range.upperBound, range) : (Map.Entry) endOfData();
            }
        }

        public C6091d(NavigableMap<Cut<C>, Range<C>> navigableMap) {
            this.f34544e = navigableMap;
            this.f34545f = Range.all();
        }

        @Override // com.google.common.collect.AbstractC6113h
        /* renamed from: a */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo26511a() {
            PeekingIterator peekingIterator = Iterators.peekingIterator((this.f34545f.hasUpperBound() ? this.f34544e.headMap(this.f34545f.upperEndpoint(), false).descendingMap().values() : this.f34544e.descendingMap().values()).iterator());
            if (peekingIterator.hasNext() && this.f34545f.upperBound.isLessThan(((Range) peekingIterator.peek()).upperBound)) {
                peekingIterator.next();
            }
            return new b(peekingIterator);
        }

        @Override // com.google.common.collect.AbstractC6113h, java.util.AbstractMap, java.util.Map
        @CheckForNull
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Range<C> get(@CheckForNull Object obj) {
            Map.Entry<Cut<C>, Range<C>> lowerEntry;
            if (obj instanceof Cut) {
                try {
                    Cut<C> cut = (Cut) obj;
                    if (this.f34545f.contains(cut) && (lowerEntry = this.f34544e.lowerEntry(cut)) != null && lowerEntry.getValue().upperBound.equals(cut)) {
                        return lowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return m26864f(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return m26864f(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x
        public Iterator<Map.Entry<Cut<C>, Range<C>>> entryIterator() {
            Iterator<Range<C>> it2;
            if (this.f34545f.hasLowerBound()) {
                Map.Entry<Cut<C>, Range<C>> lowerEntry = this.f34544e.lowerEntry(this.f34545f.lowerEndpoint());
                it2 = lowerEntry == null ? this.f34544e.values().iterator() : this.f34545f.lowerBound.isLessThan(lowerEntry.getValue().upperBound) ? this.f34544e.tailMap(lowerEntry.getKey(), true).values().iterator() : this.f34544e.tailMap(this.f34545f.lowerEndpoint(), true).values().iterator();
            } else {
                it2 = this.f34544e.values().iterator();
            }
            return new a(it2);
        }

        /* renamed from: f */
        public final NavigableMap<Cut<C>, Range<C>> m26864f(Range<Cut<C>> range) {
            return range.isConnected(this.f34545f) ? new C6091d(this.f34544e, range.intersection(this.f34545f)) : ImmutableSortedMap.m26265of();
        }

        @Override // java.util.NavigableMap
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return m26864f(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f34545f.equals(Range.all()) ? this.f34544e.isEmpty() : !entryIterator().hasNext();
        }

        @Override // com.google.common.collect.Maps.AbstractC5970x, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f34545f.equals(Range.all()) ? this.f34544e.size() : Iterators.size(entryIterator());
        }

        public C6091d(NavigableMap<Cut<C>, Range<C>> navigableMap, Range<Cut<C>> range) {
            this.f34544e = navigableMap;
            this.f34545f = range;
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> create = create();
        create.addAll(iterable);
        return create;
    }
}
