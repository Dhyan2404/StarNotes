package org.apache.commons.lang3.concurrent;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class MultiBackgroundInitializer extends BackgroundInitializer<MultiBackgroundInitializerResults> {

    /* renamed from: d */
    public final Map<String, BackgroundInitializer<?>> f107522d;

    /* loaded from: classes12.dex */
    public static class MultiBackgroundInitializerResults {

        /* renamed from: a */
        public final Map<String, BackgroundInitializer<?>> f107523a;

        /* renamed from: b */
        public final Map<String, Object> f107524b;

        /* renamed from: c */
        public final Map<String, ConcurrentException> f107525c;

        /* renamed from: a */
        public final BackgroundInitializer<?> m67314a(String str) {
            BackgroundInitializer<?> backgroundInitializer = this.f107523a.get(str);
            if (backgroundInitializer != null) {
                return backgroundInitializer;
            }
            throw new NoSuchElementException("No child initializer with name " + str);
        }

        public ConcurrentException getException(String str) {
            m67314a(str);
            return this.f107525c.get(str);
        }

        public BackgroundInitializer<?> getInitializer(String str) {
            return m67314a(str);
        }

        public Object getResultObject(String str) {
            m67314a(str);
            return this.f107524b.get(str);
        }

        public Set<String> initializerNames() {
            return Collections.unmodifiableSet(this.f107523a.keySet());
        }

        public boolean isException(String str) {
            m67314a(str);
            return this.f107525c.containsKey(str);
        }

        public boolean isSuccessful() {
            return this.f107525c.isEmpty();
        }

        public MultiBackgroundInitializerResults(Map<String, BackgroundInitializer<?>> map, Map<String, Object> map2, Map<String, ConcurrentException> map3) {
            this.f107523a = map;
            this.f107524b = map2;
            this.f107525c = map3;
        }
    }

    public MultiBackgroundInitializer() {
        this.f107522d = new HashMap();
    }

    public void addInitializer(String str, BackgroundInitializer<?> backgroundInitializer) {
        Validate.isTrue(str != null, "Name of child initializer must not be null!", new Object[0]);
        Validate.isTrue(backgroundInitializer != null, "Child initializer must not be null!", new Object[0]);
        synchronized (this) {
            if (isStarted()) {
                throw new IllegalStateException("addInitializer() must not be called after start()!");
            }
            this.f107522d.put(str, backgroundInitializer);
        }
    }

    @Override // org.apache.commons.lang3.concurrent.BackgroundInitializer
    public int getTaskCount() {
        Iterator<BackgroundInitializer<?>> it2 = this.f107522d.values().iterator();
        int i = 1;
        while (it2.hasNext()) {
            i += it2.next().getTaskCount();
        }
        return i;
    }

    @Override // org.apache.commons.lang3.concurrent.BackgroundInitializer
    public MultiBackgroundInitializerResults initialize() throws Exception {
        HashMap hashMap;
        synchronized (this) {
            hashMap = new HashMap(this.f107522d);
        }
        ExecutorService activeExecutor = getActiveExecutor();
        for (BackgroundInitializer backgroundInitializer : hashMap.values()) {
            if (backgroundInitializer.getExternalExecutor() == null) {
                backgroundInitializer.setExternalExecutor(activeExecutor);
            }
            backgroundInitializer.start();
        }
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        for (Map.Entry entry : hashMap.entrySet()) {
            try {
                hashMap2.put(entry.getKey(), ((BackgroundInitializer) entry.getValue()).get());
            } catch (ConcurrentException e) {
                hashMap3.put(entry.getKey(), e);
            }
        }
        return new MultiBackgroundInitializerResults(hashMap, hashMap2, hashMap3);
    }

    public MultiBackgroundInitializer(ExecutorService executorService) {
        super(executorService);
        this.f107522d = new HashMap();
    }
}
