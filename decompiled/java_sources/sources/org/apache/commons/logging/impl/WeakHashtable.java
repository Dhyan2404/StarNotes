package org.apache.commons.logging.impl;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes12.dex */
public final class WeakHashtable extends Hashtable {
    private static final int MAX_CHANGES_BEFORE_PURGE = 100;
    private static final int PARTIAL_PURGE_COUNT = 10;
    private static final long serialVersionUID = -1546036869799732453L;
    private final ReferenceQueue queue = new ReferenceQueue();
    private int changeCount = 0;

    /* renamed from: org.apache.commons.logging.impl.WeakHashtable$a */
    /* loaded from: classes12.dex */
    public static final class C19020a implements Map.Entry {

        /* renamed from: e */
        public final Object f107728e;

        /* renamed from: f */
        public final Object f107729f;

        public /* synthetic */ C19020a(Object obj, Object obj2, C19027e c19027e) {
            this(obj, obj2);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (getKey() == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!getKey().equals(entry.getKey())) {
                return false;
            }
            if (getValue() == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!getValue().equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f107728e;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f107729f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException("Entry.setValue is not supported.");
        }

        public C19020a(Object obj, Object obj2) {
            this.f107728e = obj;
            this.f107729f = obj2;
        }
    }

    /* renamed from: org.apache.commons.logging.impl.WeakHashtable$b */
    /* loaded from: classes12.dex */
    public static final class C19021b {

        /* renamed from: a */
        public final WeakReference f107730a;

        /* renamed from: b */
        public final int f107731b;

        public /* synthetic */ C19021b(Object obj, ReferenceQueue referenceQueue, C19027e c19027e) {
            this(obj, referenceQueue);
        }

        /* renamed from: b */
        public final Object m67456b() {
            return this.f107730a.get();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C19021b)) {
                return false;
            }
            C19021b c19021b = (C19021b) obj;
            Object m67456b = m67456b();
            Object m67456b2 = c19021b.m67456b();
            if (m67456b == null) {
                return (m67456b2 == null) && hashCode() == c19021b.hashCode();
            }
            return m67456b.equals(m67456b2);
        }

        public int hashCode() {
            return this.f107731b;
        }

        public /* synthetic */ C19021b(Object obj, C19027e c19027e) {
            this(obj);
        }

        public C19021b(Object obj) {
            this.f107730a = new WeakReference(obj);
            this.f107731b = obj.hashCode();
        }

        public C19021b(Object obj, ReferenceQueue referenceQueue) {
            this.f107730a = new C19022c(obj, referenceQueue, this, null);
            this.f107731b = obj.hashCode();
        }
    }

    /* renamed from: org.apache.commons.logging.impl.WeakHashtable$c */
    /* loaded from: classes12.dex */
    public static final class C19022c extends WeakReference {

        /* renamed from: a */
        public final C19021b f107732a;

        public /* synthetic */ C19022c(Object obj, ReferenceQueue referenceQueue, C19021b c19021b, C19027e c19027e) {
            this(obj, referenceQueue, c19021b);
        }

        /* renamed from: b */
        public final C19021b m67458b() {
            return this.f107732a;
        }

        public C19022c(Object obj, ReferenceQueue referenceQueue, C19021b c19021b) {
            super(obj, referenceQueue);
            this.f107732a = c19021b;
        }
    }

    private void purge() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.queue) {
            while (true) {
                C19022c c19022c = (C19022c) this.queue.poll();
                if (c19022c == null) {
                    break;
                } else {
                    arrayList.add(c19022c.m67458b());
                }
            }
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            super.remove(arrayList.get(i));
        }
    }

    private void purgeOne() {
        synchronized (this.queue) {
            C19022c c19022c = (C19022c) this.queue.poll();
            if (c19022c != null) {
                super.remove(c19022c.m67458b());
            }
        }
    }

    @Override // java.util.Hashtable, java.util.Map
    public boolean containsKey(Object obj) {
        return super.containsKey(new C19021b(obj, (C19027e) null));
    }

    @Override // java.util.Hashtable, java.util.Dictionary
    public Enumeration elements() {
        purge();
        return super.elements();
    }

    @Override // java.util.Hashtable, java.util.Map
    public Set entrySet() {
        purge();
        Set<Map.Entry> entrySet = super.entrySet();
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : entrySet) {
            Object m67456b = ((C19021b) entry.getKey()).m67456b();
            Object value = entry.getValue();
            if (m67456b != null) {
                hashSet.add(new C19020a(m67456b, value, null));
            }
        }
        return hashSet;
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public Object get(Object obj) {
        return super.get(new C19021b(obj, (C19027e) null));
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public boolean isEmpty() {
        purge();
        return super.isEmpty();
    }

    @Override // java.util.Hashtable, java.util.Map
    public Set keySet() {
        purge();
        Set keySet = super.keySet();
        HashSet hashSet = new HashSet();
        Iterator it2 = keySet.iterator();
        while (it2.hasNext()) {
            Object m67456b = ((C19021b) it2.next()).m67456b();
            if (m67456b != null) {
                hashSet.add(m67456b);
            }
        }
        return hashSet;
    }

    @Override // java.util.Hashtable, java.util.Dictionary
    public Enumeration keys() {
        purge();
        return new C19027e(this, super.keys());
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public synchronized Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("Null keys are not allowed");
        }
        if (obj2 == null) {
            throw new NullPointerException("Null values are not allowed");
        }
        int i = this.changeCount;
        int i2 = i + 1;
        this.changeCount = i2;
        if (i > 100) {
            purge();
            this.changeCount = 0;
        } else if (i2 % 10 == 0) {
            purgeOne();
        }
        return super.put(new C19021b(obj, this.queue, null), obj2);
    }

    @Override // java.util.Hashtable, java.util.Map
    public void putAll(Map map) {
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    @Override // java.util.Hashtable
    public void rehash() {
        purge();
        super.rehash();
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public synchronized Object remove(Object obj) {
        int i = this.changeCount;
        int i2 = i + 1;
        this.changeCount = i2;
        if (i > 100) {
            purge();
            this.changeCount = 0;
        } else if (i2 % 10 == 0) {
            purgeOne();
        }
        return super.remove(new C19021b(obj, (C19027e) null));
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public int size() {
        purge();
        return super.size();
    }

    @Override // java.util.Hashtable
    public String toString() {
        purge();
        return super.toString();
    }

    @Override // java.util.Hashtable, java.util.Map
    public Collection values() {
        purge();
        return super.values();
    }
}
