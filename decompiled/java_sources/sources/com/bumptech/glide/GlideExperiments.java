package com.bumptech.glide;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class GlideExperiments {

    /* renamed from: a */
    public final Map<Class<?>, InterfaceC1893b> f14292a;

    /* renamed from: com.bumptech.glide.GlideExperiments$a */
    /* loaded from: classes3.dex */
    public static final class C1892a {

        /* renamed from: a */
        public final Map<Class<?>, InterfaceC1893b> f14293a = new HashMap();

        /* renamed from: b */
        public C1892a m8570b(InterfaceC1893b interfaceC1893b) {
            this.f14293a.put(interfaceC1893b.getClass(), interfaceC1893b);
            return this;
        }

        /* renamed from: c */
        public GlideExperiments m8571c() {
            return new GlideExperiments(this);
        }

        /* renamed from: d */
        public C1892a m8572d(InterfaceC1893b interfaceC1893b, boolean z) {
            if (z) {
                m8570b(interfaceC1893b);
            } else {
                this.f14293a.remove(interfaceC1893b.getClass());
            }
            return this;
        }
    }

    /* renamed from: com.bumptech.glide.GlideExperiments$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC1893b {
    }

    public GlideExperiments(C1892a c1892a) {
        this.f14292a = Collections.unmodifiableMap(new HashMap(c1892a.f14293a));
    }

    @Nullable
    /* renamed from: a */
    public <T extends InterfaceC1893b> T m8568a(Class<T> cls) {
        return (T) this.f14292a.get(cls);
    }

    public boolean isEnabled(Class<? extends InterfaceC1893b> cls) {
        return this.f14292a.containsKey(cls);
    }
}
