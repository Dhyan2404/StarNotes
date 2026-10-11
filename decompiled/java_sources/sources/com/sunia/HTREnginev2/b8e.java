package com.sunia.HTREnginev2;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final /* synthetic */ class b8e implements Executor {

    /* renamed from: e */
    public final /* synthetic */ Handler f65523e;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f65523e.post(runnable);
    }
}
