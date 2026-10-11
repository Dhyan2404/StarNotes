package com.google.android.exoplayer2.util;

import androidx.annotation.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class CopyOnWriteMultiset<E> implements Iterable<E> {

    /* renamed from: e */
    public final Object f28281e = new Object();

    /* renamed from: f */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final Map<E, Integer> f28282f = new HashMap();

    /* renamed from: g */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public Set<E> f28283g = Collections.emptySet();

    /* renamed from: h */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public List<E> f28284h = Collections.emptyList();

    public void add(E e) {
        synchronized (this.f28281e) {
            ArrayList arrayList = new ArrayList(this.f28284h);
            arrayList.add(e);
            this.f28284h = Collections.unmodifiableList(arrayList);
            Integer num = this.f28282f.get(e);
            if (num == null) {
                HashSet hashSet = new HashSet(this.f28283g);
                hashSet.add(e);
                this.f28283g = Collections.unmodifiableSet(hashSet);
            }
            this.f28282f.put(e, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
        }
    }

    public int count(E e) {
        int intValue;
        synchronized (this.f28281e) {
            intValue = this.f28282f.containsKey(e) ? this.f28282f.get(e).intValue() : 0;
        }
        return intValue;
    }

    public Set<E> elementSet() {
        Set<E> set;
        synchronized (this.f28281e) {
            set = this.f28283g;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        Iterator<E> it2;
        synchronized (this.f28281e) {
            it2 = this.f28284h.iterator();
        }
        return it2;
    }

    public void remove(E e) {
        synchronized (this.f28281e) {
            Integer num = this.f28282f.get(e);
            if (num == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f28284h);
            arrayList.remove(e);
            this.f28284h = Collections.unmodifiableList(arrayList);
            if (num.intValue() == 1) {
                this.f28282f.remove(e);
                HashSet hashSet = new HashSet(this.f28283g);
                hashSet.remove(e);
                this.f28283g = Collections.unmodifiableSet(hashSet);
            } else {
                this.f28282f.put(e, Integer.valueOf(num.intValue() - 1));
            }
        }
    }
}
