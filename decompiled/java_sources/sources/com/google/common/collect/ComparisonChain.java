package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.primitives.Booleans;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Comparator;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public abstract class ComparisonChain {

    /* renamed from: a */
    public static final ComparisonChain f33959a = new C5799a();

    /* renamed from: b */
    public static final ComparisonChain f33960b = new C5800b(-1);

    /* renamed from: c */
    public static final ComparisonChain f33961c = new C5800b(1);

    /* renamed from: com.google.common.collect.ComparisonChain$a */
    /* loaded from: classes6.dex */
    public class C5799a extends ComparisonChain {
        public C5799a() {
            super(null);
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(Comparable<?> comparable, Comparable<?> comparable2) {
            return m26117d(comparable.compareTo(comparable2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return m26117d(Booleans.compare(z, z2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return m26117d(Booleans.compare(z2, z));
        }

        /* renamed from: d */
        public ComparisonChain m26117d(int i) {
            return i < 0 ? ComparisonChain.f33960b : i > 0 ? ComparisonChain.f33961c : ComparisonChain.f33959a;
        }

        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return 0;
        }

        @Override // com.google.common.collect.ComparisonChain
        public <T> ComparisonChain compare(@xvk T t, @xvk T t2, Comparator<T> comparator) {
            return m26117d(comparator.compare(t, t2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int i, int i2) {
            return m26117d(Ints.compare(i, i2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long j, long j2) {
            return m26117d(Longs.compare(j, j2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(float f, float f2) {
            return m26117d(Float.compare(f, f2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(double d, double d2) {
            return m26117d(Double.compare(d, d2));
        }
    }

    /* renamed from: com.google.common.collect.ComparisonChain$b */
    /* loaded from: classes6.dex */
    public static final class C5800b extends ComparisonChain {

        /* renamed from: d */
        public final int f33962d;

        public C5800b(int i) {
            super(null);
            this.f33962d = i;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(double d, double d2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return this.f33962d;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(float f, float f2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long j, long j2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(Comparable<?> comparable, Comparable<?> comparable2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public <T> ComparisonChain compare(@xvk T t, @xvk T t2, Comparator<T> comparator) {
            return this;
        }
    }

    public /* synthetic */ ComparisonChain(C5799a c5799a) {
        this();
    }

    public static ComparisonChain start() {
        return f33959a;
    }

    public abstract ComparisonChain compare(double d, double d2);

    public abstract ComparisonChain compare(float f, float f2);

    public abstract ComparisonChain compare(int i, int i2);

    public abstract ComparisonChain compare(long j, long j2);

    @Deprecated
    public final ComparisonChain compare(Boolean bool, Boolean bool2) {
        return compareFalseFirst(bool.booleanValue(), bool2.booleanValue());
    }

    public abstract ComparisonChain compare(Comparable<?> comparable, Comparable<?> comparable2);

    public abstract <T> ComparisonChain compare(@xvk T t, @xvk T t2, Comparator<T> comparator);

    public abstract ComparisonChain compareFalseFirst(boolean z, boolean z2);

    public abstract ComparisonChain compareTrueFirst(boolean z, boolean z2);

    public abstract int result();

    public ComparisonChain() {
    }
}
