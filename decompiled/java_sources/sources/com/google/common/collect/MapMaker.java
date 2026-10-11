package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMakerInternalMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class MapMaker {

    /* renamed from: g */
    public static final int f34179g = 16;

    /* renamed from: h */
    public static final int f34180h = 4;

    /* renamed from: i */
    public static final int f34181i = -1;

    /* renamed from: a */
    public boolean f34182a;

    /* renamed from: b */
    public int f34183b = -1;

    /* renamed from: c */
    public int f34184c = -1;

    /* renamed from: d */
    @CheckForNull
    public MapMakerInternalMap.Strength f34185d;

    /* renamed from: e */
    @CheckForNull
    public MapMakerInternalMap.Strength f34186e;

    /* renamed from: f */
    @CheckForNull
    public Equivalence<Object> f34187f;

    /* loaded from: classes6.dex */
    public enum Dummy {
        VALUE
    }

    /* renamed from: a */
    public int m26389a() {
        int i = this.f34184c;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    /* renamed from: b */
    public int m26390b() {
        int i = this.f34183b;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    /* renamed from: c */
    public Equivalence<Object> m26391c() {
        return (Equivalence) MoreObjects.firstNonNull(this.f34187f, m26392d().defaultEquivalence());
    }

    @CanIgnoreReturnValue
    public MapMaker concurrencyLevel(int i) {
        int i2 = this.f34184c;
        Preconditions.checkState(i2 == -1, "concurrency level was already set to %s", i2);
        Preconditions.checkArgument(i > 0);
        this.f34184c = i;
        return this;
    }

    /* renamed from: d */
    public MapMakerInternalMap.Strength m26392d() {
        return (MapMakerInternalMap.Strength) MoreObjects.firstNonNull(this.f34185d, MapMakerInternalMap.Strength.STRONG);
    }

    /* renamed from: e */
    public MapMakerInternalMap.Strength m26393e() {
        return (MapMakerInternalMap.Strength) MoreObjects.firstNonNull(this.f34186e, MapMakerInternalMap.Strength.STRONG);
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    /* renamed from: f */
    public MapMaker m26394f(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f34187f;
        Preconditions.checkState(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f34187f = (Equivalence) Preconditions.checkNotNull(equivalence);
        this.f34182a = true;
        return this;
    }

    /* renamed from: g */
    public MapMaker m26395g(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f34185d;
        Preconditions.checkState(strength2 == null, "Key strength was already set to %s", strength2);
        this.f34185d = (MapMakerInternalMap.Strength) Preconditions.checkNotNull(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f34182a = true;
        }
        return this;
    }

    /* renamed from: h */
    public MapMaker m26396h(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f34186e;
        Preconditions.checkState(strength2 == null, "Value strength was already set to %s", strength2);
        this.f34186e = (MapMakerInternalMap.Strength) Preconditions.checkNotNull(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f34182a = true;
        }
        return this;
    }

    @CanIgnoreReturnValue
    public MapMaker initialCapacity(int i) {
        int i2 = this.f34183b;
        Preconditions.checkState(i2 == -1, "initial capacity was already set to %s", i2);
        Preconditions.checkArgument(i >= 0);
        this.f34183b = i;
        return this;
    }

    public <K, V> ConcurrentMap<K, V> makeMap() {
        return !this.f34182a ? new ConcurrentHashMap(m26390b(), 0.75f, m26389a()) : MapMakerInternalMap.create(this);
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        int i = this.f34183b;
        if (i != -1) {
            stringHelper.add("initialCapacity", i);
        }
        int i2 = this.f34184c;
        if (i2 != -1) {
            stringHelper.add("concurrencyLevel", i2);
        }
        MapMakerInternalMap.Strength strength = this.f34185d;
        if (strength != null) {
            stringHelper.add("keyStrength", Ascii.toLowerCase(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.f34186e;
        if (strength2 != null) {
            stringHelper.add("valueStrength", Ascii.toLowerCase(strength2.toString()));
        }
        if (this.f34187f != null) {
            stringHelper.addValue("keyEquivalence");
        }
        return stringHelper.toString();
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    public MapMaker weakKeys() {
        return m26395g(MapMakerInternalMap.Strength.WEAK);
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    public MapMaker weakValues() {
        return m26396h(MapMakerInternalMap.Strength.WEAK);
    }
}
