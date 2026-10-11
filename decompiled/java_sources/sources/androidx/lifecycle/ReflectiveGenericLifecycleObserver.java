package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.C1153a;
import androidx.lifecycle.Lifecycle;

/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes3.dex */
public class ReflectiveGenericLifecycleObserver implements LifecycleEventObserver {

    /* renamed from: e */
    public final Object f7911e;

    /* renamed from: f */
    public final C1153a.a f7912f;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f7911e = obj;
        this.f7912f = C1153a.f7991c.m4939c(obj.getClass());
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        this.f7912f.m4943a(lifecycleOwner, event, this.f7911e);
    }
}
