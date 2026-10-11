package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.vnf;
import java.util.Comparator;
import java.util.Map;
import javax.annotation.CheckForNull;

@Immutable
@Beta
@vnf
/* loaded from: classes6.dex */
public final class ElementOrder<T> {

    /* renamed from: a */
    public final Type f34686a;

    /* renamed from: b */
    @CheckForNull
    public final Comparator<T> f34687b;

    /* loaded from: classes6.dex */
    public enum Type {
        UNORDERED,
        STABLE,
        INSERTION,
        SORTED
    }

    /* renamed from: com.google.common.graph.ElementOrder$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6142a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34688a;

        static {
            int[] iArr = new int[Type.values().length];
            f34688a = iArr;
            try {
                iArr[Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34688a[Type.INSERTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34688a[Type.STABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34688a[Type.SORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ElementOrder(Type type, @CheckForNull Comparator<T> comparator) {
        this.f34686a = (Type) Preconditions.checkNotNull(type);
        this.f34687b = comparator;
        Preconditions.checkState((type == Type.SORTED) == (comparator != null));
    }

    public static <S> ElementOrder<S> insertion() {
        return new ElementOrder<>(Type.INSERTION, null);
    }

    public static <S extends Comparable<? super S>> ElementOrder<S> natural() {
        return new ElementOrder<>(Type.SORTED, Ordering.natural());
    }

    public static <S> ElementOrder<S> sorted(Comparator<S> comparator) {
        return new ElementOrder<>(Type.SORTED, (Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <S> ElementOrder<S> stable() {
        return new ElementOrder<>(Type.STABLE, null);
    }

    public static <S> ElementOrder<S> unordered() {
        return new ElementOrder<>(Type.UNORDERED, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T1 extends T> ElementOrder<T1> m27042a() {
        return this;
    }

    /* renamed from: b */
    public <K extends T, V> Map<K, V> m27043b(int i) {
        int i2 = C6142a.f34688a[this.f34686a.ordinal()];
        if (i2 == 1) {
            return Maps.newHashMapWithExpectedSize(i);
        }
        if (i2 == 2 || i2 == 3) {
            return Maps.newLinkedHashMapWithExpectedSize(i);
        }
        if (i2 == 4) {
            return Maps.newTreeMap(comparator());
        }
        throw new AssertionError();
    }

    public Comparator<T> comparator() {
        Comparator<T> comparator = this.f34687b;
        if (comparator != null) {
            return comparator;
        }
        throw new UnsupportedOperationException("This ordering does not define a comparator.");
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ElementOrder)) {
            return false;
        }
        ElementOrder elementOrder = (ElementOrder) obj;
        return this.f34686a == elementOrder.f34686a && Objects.equal(this.f34687b, elementOrder.f34687b);
    }

    public int hashCode() {
        return Objects.hashCode(this.f34686a, this.f34687b);
    }

    public String toString() {
        MoreObjects.ToStringHelper add = MoreObjects.toStringHelper(this).add("type", this.f34686a);
        Comparator<T> comparator = this.f34687b;
        if (comparator != null) {
            add.add("comparator", comparator);
        }
        return add.toString();
    }

    public Type type() {
        return this.f34686a;
    }
}
