package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public interface ViewTypeStorage {

    /* loaded from: classes3.dex */
    public static class IsolatedViewTypeStorage implements ViewTypeStorage {

        /* renamed from: a */
        public SparseArray<C1383h> f9829a = new SparseArray<>();

        /* renamed from: b */
        public int f9830b = 0;

        /* renamed from: androidx.recyclerview.widget.ViewTypeStorage$IsolatedViewTypeStorage$a */
        /* loaded from: classes3.dex */
        public class C1374a implements ViewTypeLookup {

            /* renamed from: a */
            public SparseIntArray f9831a = new SparseIntArray(1);

            /* renamed from: b */
            public SparseIntArray f9832b = new SparseIntArray(1);

            /* renamed from: c */
            public final C1383h f9833c;

            public C1374a(C1383h c1383h) {
                this.f9833c = c1383h;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public void dispose() {
                IsolatedViewTypeStorage.this.m6081b(this.f9833c);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int globalToLocal(int i) {
                int indexOfKey = this.f9832b.indexOfKey(i);
                if (indexOfKey >= 0) {
                    return this.f9832b.valueAt(indexOfKey);
                }
                throw new IllegalStateException("requested global type " + i + " does not belong to the adapter:" + this.f9833c.f9993c);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int localToGlobal(int i) {
                int indexOfKey = this.f9831a.indexOfKey(i);
                if (indexOfKey > -1) {
                    return this.f9831a.valueAt(indexOfKey);
                }
                int m6080a = IsolatedViewTypeStorage.this.m6080a(this.f9833c);
                this.f9831a.put(i, m6080a);
                this.f9832b.put(m6080a, i);
                return m6080a;
            }
        }

        /* renamed from: a */
        public int m6080a(C1383h c1383h) {
            int i = this.f9830b;
            this.f9830b = i + 1;
            this.f9829a.put(i, c1383h);
            return i;
        }

        /* renamed from: b */
        public void m6081b(@NonNull C1383h c1383h) {
            for (int size = this.f9829a.size() - 1; size >= 0; size--) {
                if (this.f9829a.valueAt(size) == c1383h) {
                    this.f9829a.removeAt(size);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup createViewTypeWrapper(@NonNull C1383h c1383h) {
            return new C1374a(c1383h);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public C1383h getWrapperForGlobalType(int i) {
            C1383h c1383h = this.f9829a.get(i);
            if (c1383h != null) {
                return c1383h;
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i);
        }
    }

    /* loaded from: classes3.dex */
    public static class SharedIdRangeViewTypeStorage implements ViewTypeStorage {

        /* renamed from: a */
        public SparseArray<List<C1383h>> f9835a = new SparseArray<>();

        /* renamed from: androidx.recyclerview.widget.ViewTypeStorage$SharedIdRangeViewTypeStorage$a */
        /* loaded from: classes3.dex */
        public class C1375a implements ViewTypeLookup {

            /* renamed from: a */
            public final C1383h f9836a;

            public C1375a(C1383h c1383h) {
                this.f9836a = c1383h;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public void dispose() {
                SharedIdRangeViewTypeStorage.this.m6082a(this.f9836a);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int globalToLocal(int i) {
                return i;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int localToGlobal(int i) {
                List<C1383h> list = SharedIdRangeViewTypeStorage.this.f9835a.get(i);
                if (list == null) {
                    list = new ArrayList<>();
                    SharedIdRangeViewTypeStorage.this.f9835a.put(i, list);
                }
                if (!list.contains(this.f9836a)) {
                    list.add(this.f9836a);
                }
                return i;
            }
        }

        /* renamed from: a */
        public void m6082a(@NonNull C1383h c1383h) {
            for (int size = this.f9835a.size() - 1; size >= 0; size--) {
                List<C1383h> valueAt = this.f9835a.valueAt(size);
                if (valueAt.remove(c1383h) && valueAt.isEmpty()) {
                    this.f9835a.removeAt(size);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup createViewTypeWrapper(@NonNull C1383h c1383h) {
            return new C1375a(c1383h);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public C1383h getWrapperForGlobalType(int i) {
            List<C1383h> list = this.f9835a.get(i);
            if (list != null && !list.isEmpty()) {
                return list.get(0);
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i);
        }
    }

    /* loaded from: classes3.dex */
    public interface ViewTypeLookup {
        void dispose();

        int globalToLocal(int i);

        int localToGlobal(int i);
    }

    @NonNull
    ViewTypeLookup createViewTypeWrapper(@NonNull C1383h c1383h);

    @NonNull
    C1383h getWrapperForGlobalType(int i);
}
