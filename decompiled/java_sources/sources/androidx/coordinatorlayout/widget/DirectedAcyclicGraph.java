package androidx.coordinatorlayout.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class DirectedAcyclicGraph<T> {

    /* renamed from: a */
    public final Pools.Pool<ArrayList<T>> f4745a = new Pools.SimplePool(10);

    /* renamed from: b */
    public final SimpleArrayMap<T, ArrayList<T>> f4746b = new SimpleArrayMap<>();

    /* renamed from: c */
    public final ArrayList<T> f4747c = new ArrayList<>();

    /* renamed from: d */
    public final HashSet<T> f4748d = new HashSet<>();

    /* renamed from: a */
    public final void m2294a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f4746b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m2294a(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    public void addEdge(@NonNull T t, @NonNull T t2) {
        if (!this.f4746b.containsKey(t) || !this.f4746b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.f4746b.get(t);
        if (arrayList == null) {
            arrayList = m2295b();
            this.f4746b.put(t, arrayList);
        }
        arrayList.add(t2);
    }

    public void addNode(@NonNull T t) {
        if (this.f4746b.containsKey(t)) {
            return;
        }
        this.f4746b.put(t, null);
    }

    @NonNull
    /* renamed from: b */
    public final ArrayList<T> m2295b() {
        ArrayList<T> acquire = this.f4745a.acquire();
        return acquire == null ? new ArrayList<>() : acquire;
    }

    /* renamed from: c */
    public final void m2296c(@NonNull ArrayList<T> arrayList) {
        arrayList.clear();
        this.f4745a.release(arrayList);
    }

    public void clear() {
        int size = this.f4746b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> valueAt = this.f4746b.valueAt(i);
            if (valueAt != null) {
                m2296c(valueAt);
            }
        }
        this.f4746b.clear();
    }

    public boolean contains(@NonNull T t) {
        return this.f4746b.containsKey(t);
    }

    /* renamed from: d */
    public int m2297d() {
        return this.f4746b.size();
    }

    @Nullable
    public List getIncomingEdges(@NonNull T t) {
        return this.f4746b.get(t);
    }

    @Nullable
    public List<T> getOutgoingEdges(@NonNull T t) {
        int size = this.f4746b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> valueAt = this.f4746b.valueAt(i);
            if (valueAt != null && valueAt.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f4746b.keyAt(i));
            }
        }
        return arrayList;
    }

    @NonNull
    public ArrayList<T> getSortedList() {
        this.f4747c.clear();
        this.f4748d.clear();
        int size = this.f4746b.size();
        for (int i = 0; i < size; i++) {
            m2294a(this.f4746b.keyAt(i), this.f4747c, this.f4748d);
        }
        return this.f4747c;
    }

    public boolean hasOutgoingEdges(@NonNull T t) {
        int size = this.f4746b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> valueAt = this.f4746b.valueAt(i);
            if (valueAt != null && valueAt.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
