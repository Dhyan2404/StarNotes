package dagger.hilt.android.internal.managers;

import dagger.hilt.internal.GeneratedComponentManager;

/* loaded from: classes10.dex */
public final class ApplicationComponentManager implements GeneratedComponentManager<Object> {

    /* renamed from: e */
    public volatile Object f94506e;

    /* renamed from: f */
    public final Object f94507f = new Object();

    /* renamed from: g */
    public final ComponentSupplier f94508g;

    public ApplicationComponentManager(ComponentSupplier componentCreator) {
        this.f94508g = componentCreator;
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public Object generatedComponent() {
        if (this.f94506e == null) {
            synchronized (this.f94507f) {
                if (this.f94506e == null) {
                    this.f94506e = this.f94508g.get();
                }
            }
        }
        return this.f94506e;
    }
}
