package com.sunia.HTREnginev2;

import androidx.work.impl.background.systemalarm.DelayMetCommandHandler;

/* loaded from: classes3.dex */
public final /* synthetic */ class q2f implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ DelayMetCommandHandler f81542e;

    public /* synthetic */ q2f(DelayMetCommandHandler delayMetCommandHandler) {
        this.f81542e = delayMetCommandHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DelayMetCommandHandler.m7050b(this.f81542e);
    }
}
