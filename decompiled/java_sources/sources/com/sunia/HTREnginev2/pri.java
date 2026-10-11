package com.sunia.HTREnginev2;

import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.C1957d;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class pri {

    /* renamed from: a */
    public final Map<Key, C1957d<?>> f81165a = new HashMap();

    /* renamed from: b */
    public final Map<Key, C1957d<?>> f81166b = new HashMap();

    /* renamed from: a */
    public C1957d<?> m56365a(Key key, boolean z) {
        return m56367c(z).get(key);
    }

    @VisibleForTesting
    /* renamed from: b */
    public Map<Key, C1957d<?>> m56366b() {
        return Collections.unmodifiableMap(this.f81165a);
    }

    /* renamed from: c */
    public final Map<Key, C1957d<?>> m56367c(boolean z) {
        return z ? this.f81166b : this.f81165a;
    }

    /* renamed from: d */
    public void m56368d(Key key, C1957d<?> c1957d) {
        m56367c(c1957d.m8846n()).put(key, c1957d);
    }

    /* renamed from: e */
    public void m56369e(Key key, C1957d<?> c1957d) {
        Map<Key, C1957d<?>> m56367c = m56367c(c1957d.m8846n());
        if (c1957d.equals(m56367c.get(key))) {
            m56367c.remove(key);
        }
    }
}
