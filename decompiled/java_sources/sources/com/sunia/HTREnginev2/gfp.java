package com.sunia.HTREnginev2;

import android.os.Process;

/* loaded from: classes5.dex */
public final class gfp implements Runnable {

    /* renamed from: e */
    public final Runnable f70998e;

    public gfp(Runnable runnable, int i) {
        this.f70998e = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f70998e.run();
    }
}
