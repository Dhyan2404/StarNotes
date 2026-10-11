package com.google.mlkit.common.sdkinternal;

import com.google.mlkit.common.sdkinternal.Cleaner;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Set;

/* renamed from: com.google.mlkit.common.sdkinternal.a */
/* loaded from: classes6.dex */
public final class C6619a extends PhantomReference implements Cleaner.Cleanable {

    /* renamed from: e */
    public final Set f36575e;

    /* renamed from: f */
    public final Runnable f36576f;

    public /* synthetic */ C6619a(Object obj, ReferenceQueue referenceQueue, Set set, Runnable runnable, zzc zzcVar) {
        super(obj, referenceQueue);
        this.f36575e = set;
        this.f36576f = runnable;
    }

    @Override // com.google.mlkit.common.sdkinternal.Cleaner.Cleanable
    public final void clean() {
        if (this.f36575e.remove(this)) {
            clear();
            this.f36576f.run();
        }
    }
}
