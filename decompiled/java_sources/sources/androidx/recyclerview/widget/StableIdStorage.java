package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.collection.LongSparseArray;

/* loaded from: classes3.dex */
public interface StableIdStorage {

    /* loaded from: classes3.dex */
    public static class IsolatedStableIdStorage implements StableIdStorage {

        /* renamed from: a */
        public long f9743a = 0;

        /* renamed from: androidx.recyclerview.widget.StableIdStorage$IsolatedStableIdStorage$a */
        /* loaded from: classes3.dex */
        public class C1364a implements StableIdLookup {

            /* renamed from: a */
            public final LongSparseArray<Long> f9744a = new LongSparseArray<>();

            public C1364a() {
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                Long l = this.f9744a.get(j);
                if (l == null) {
                    l = Long.valueOf(IsolatedStableIdStorage.this.m5959a());
                    this.f9744a.put(j, l);
                }
                return l.longValue();
            }
        }

        /* renamed from: a */
        public long m5959a() {
            long j = this.f9743a;
            this.f9743a = 1 + j;
            return j;
        }

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return new C1364a();
        }
    }

    /* loaded from: classes3.dex */
    public static class NoStableIdStorage implements StableIdStorage {

        /* renamed from: a */
        public final StableIdLookup f9746a = new C1365a();

        /* renamed from: androidx.recyclerview.widget.StableIdStorage$NoStableIdStorage$a */
        /* loaded from: classes3.dex */
        public class C1365a implements StableIdLookup {
            public C1365a() {
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                return -1L;
            }
        }

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return this.f9746a;
        }
    }

    /* loaded from: classes3.dex */
    public static class SharedPoolStableIdStorage implements StableIdStorage {

        /* renamed from: a */
        public final StableIdLookup f9748a = new C1366a();

        /* renamed from: androidx.recyclerview.widget.StableIdStorage$SharedPoolStableIdStorage$a */
        /* loaded from: classes3.dex */
        public class C1366a implements StableIdLookup {
            public C1366a() {
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                return j;
            }
        }

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return this.f9748a;
        }
    }

    /* loaded from: classes3.dex */
    public interface StableIdLookup {
        long localToGlobal(long j);
    }

    @NonNull
    StableIdLookup createStableIdLookup();
}
