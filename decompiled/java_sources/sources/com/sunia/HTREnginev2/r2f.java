package com.sunia.HTREnginev2;

import androidx.work.impl.background.systemalarm.DelayMetCommandHandler;

/* loaded from: classes3.dex */
public final /* synthetic */ class r2f implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ DelayMetCommandHandler f82667e;

    public /* synthetic */ r2f(DelayMetCommandHandler delayMetCommandHandler) {
        this.f82667e = delayMetCommandHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f82667e.m7054f();
    }
}
