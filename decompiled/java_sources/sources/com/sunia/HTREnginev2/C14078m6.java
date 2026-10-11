package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* renamed from: com.sunia.HTREnginev2.m6 */
/* loaded from: classes3.dex */
public class C14078m6 implements Lifecycle {

    /* renamed from: a */
    public final Set<LifecycleListener> f77253a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    public boolean f77254b;

    /* renamed from: c */
    public boolean f77255c;

    /* renamed from: a */
    public void m55557a() {
        this.f77255c = true;
        Iterator it2 = Util.getSnapshot(this.f77253a).iterator();
        while (it2.hasNext()) {
            ((LifecycleListener) it2.next()).onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void addListener(@NonNull LifecycleListener lifecycleListener) {
        this.f77253a.add(lifecycleListener);
        if (this.f77255c) {
            lifecycleListener.onDestroy();
        } else if (this.f77254b) {
            lifecycleListener.onStart();
        } else {
            lifecycleListener.onStop();
        }
    }

    /* renamed from: b */
    public void m55558b() {
        this.f77254b = true;
        Iterator it2 = Util.getSnapshot(this.f77253a).iterator();
        while (it2.hasNext()) {
            ((LifecycleListener) it2.next()).onStart();
        }
    }

    /* renamed from: c */
    public void m55559c() {
        this.f77254b = false;
        Iterator it2 = Util.getSnapshot(this.f77253a).iterator();
        while (it2.hasNext()) {
            ((LifecycleListener) it2.next()).onStop();
        }
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void removeListener(@NonNull LifecycleListener lifecycleListener) {
        this.f77253a.remove(lifecycleListener);
    }
}
