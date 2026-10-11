package dagger.hilt.android.internal.lifecycle;

import androidx.annotation.NonNull;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.ViewModelLifecycle;
import dagger.hilt.android.internal.ThreadUtil;
import dagger.hilt.android.lifecycle.RetainedLifecycle;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes10.dex */
public final class RetainedLifecycleImpl implements ActivityRetainedLifecycle, ViewModelLifecycle {

    /* renamed from: a */
    public final Set<RetainedLifecycle.OnClearedListener> f94492a = new HashSet();

    /* renamed from: b */
    public boolean f94493b = false;

    /* renamed from: a */
    public final void m60878a() {
        if (this.f94493b) {
            throw new IllegalStateException("There was a race between the call to add/remove an OnClearedListener and onCleared(). This can happen when posting to the Main thread from a background thread, which is not supported.");
        }
    }

    @Override // dagger.hilt.android.lifecycle.RetainedLifecycle
    public void addOnClearedListener(@NonNull RetainedLifecycle.OnClearedListener listener) {
        ThreadUtil.ensureMainThread();
        m60878a();
        this.f94492a.add(listener);
    }

    public void dispatchOnCleared() {
        ThreadUtil.ensureMainThread();
        this.f94493b = true;
        Iterator<RetainedLifecycle.OnClearedListener> it2 = this.f94492a.iterator();
        while (it2.hasNext()) {
            it2.next().onCleared();
        }
    }

    @Override // dagger.hilt.android.lifecycle.RetainedLifecycle
    public void removeOnClearedListener(@NonNull RetainedLifecycle.OnClearedListener listener) {
        ThreadUtil.ensureMainThread();
        m60878a();
        this.f94492a.remove(listener);
    }
}
