package com.sunia.HTREnginev2;

import io.reactivex.rxjava3.disposables.Disposable;

/* loaded from: classes4.dex */
public final /* synthetic */ class log implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ Disposable f76713e;

    public /* synthetic */ log(Disposable disposable) {
        this.f76713e = disposable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f76713e.dispose();
    }
}
