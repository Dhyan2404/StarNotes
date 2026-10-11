package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class ViewModel {

    /* renamed from: e */
    @Nullable
    public final Map<String, Object> f7964e;

    /* renamed from: f */
    @Nullable
    public final Set<Closeable> f7965f;

    /* renamed from: g */
    public volatile boolean f7966g;

    public ViewModel() {
        this.f7964e = new HashMap();
        this.f7965f = new LinkedHashSet();
        this.f7966g = false;
    }

    /* renamed from: a */
    public static void m4924a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void addCloseable(@NonNull Closeable closeable) {
        Set<Closeable> set = this.f7965f;
        if (set != null) {
            synchronized (set) {
                this.f7965f.add(closeable);
            }
        }
    }

    /* renamed from: b */
    public <T> T m4925b(String str) {
        T t;
        Map<String, Object> map = this.f7964e;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f7964e.get(str);
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public <T> T m4926c(String str, T t) {
        Object obj;
        synchronized (this.f7964e) {
            obj = this.f7964e.get(str);
            if (obj == 0) {
                this.f7964e.put(str, t);
            }
        }
        if (obj != 0) {
            t = obj;
        }
        if (this.f7966g) {
            m4924a(t);
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public final void clear() {
        this.f7966g = true;
        Map<String, Object> map = this.f7964e;
        if (map != null) {
            synchronized (map) {
                Iterator<Object> it2 = this.f7964e.values().iterator();
                while (it2.hasNext()) {
                    m4924a(it2.next());
                }
            }
        }
        Set<Closeable> set = this.f7965f;
        if (set != null) {
            synchronized (set) {
                Iterator<Closeable> it3 = this.f7965f.iterator();
                while (it3.hasNext()) {
                    m4924a(it3.next());
                }
            }
        }
        onCleared();
    }

    public void onCleared() {
    }

    public ViewModel(@NonNull Closeable... closeableArr) {
        this.f7964e = new HashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f7965f = linkedHashSet;
        this.f7966g = false;
        linkedHashSet.addAll(Arrays.asList(closeableArr));
    }
}
