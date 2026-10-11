package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class SharedValues {
    public static final int UNSET = -1;

    /* renamed from: a */
    public SparseIntArray f4675a = new SparseIntArray();

    /* renamed from: b */
    public HashMap<Integer, HashSet<WeakReference<SharedValuesListener>>> f4676b = new HashMap<>();

    /* loaded from: classes3.dex */
    public interface SharedValuesListener {
        void onNewValue(int key, int newValue, int oldValue);
    }

    public void addListener(int key, SharedValuesListener listener) {
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.f4676b.get(Integer.valueOf(key));
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.f4676b.put(Integer.valueOf(key), hashSet);
        }
        hashSet.add(new WeakReference<>(listener));
    }

    public void clearListeners() {
        this.f4676b.clear();
    }

    public void fireNewValue(int key, int value) {
        int i = this.f4675a.get(key, -1);
        if (i == value) {
            return;
        }
        this.f4675a.put(key, value);
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.f4676b.get(Integer.valueOf(key));
        if (hashSet == null) {
            return;
        }
        Iterator<WeakReference<SharedValuesListener>> it2 = hashSet.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            SharedValuesListener sharedValuesListener = it2.next().get();
            if (sharedValuesListener != null) {
                sharedValuesListener.onNewValue(key, value, i);
            } else {
                z = true;
            }
        }
        if (z) {
            ArrayList arrayList = new ArrayList();
            Iterator<WeakReference<SharedValuesListener>> it3 = hashSet.iterator();
            while (it3.hasNext()) {
                WeakReference<SharedValuesListener> next = it3.next();
                if (next.get() == null) {
                    arrayList.add(next);
                }
            }
            hashSet.removeAll(arrayList);
        }
    }

    public int getValue(int key) {
        return this.f4675a.get(key, -1);
    }

    public void removeListener(int key, SharedValuesListener listener) {
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.f4676b.get(Integer.valueOf(key));
        if (hashSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<WeakReference<SharedValuesListener>> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            WeakReference<SharedValuesListener> next = it2.next();
            SharedValuesListener sharedValuesListener = next.get();
            if (sharedValuesListener == null || sharedValuesListener == listener) {
                arrayList.add(next);
            }
        }
        hashSet.removeAll(arrayList);
    }

    public void removeListener(SharedValuesListener listener) {
        Iterator<Integer> it2 = this.f4676b.keySet().iterator();
        while (it2.hasNext()) {
            removeListener(it2.next().intValue(), listener);
        }
    }
}
