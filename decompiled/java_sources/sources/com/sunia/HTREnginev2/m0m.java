package com.sunia.HTREnginev2;

import com.google.android.datatransport.runtime.logging.Logging;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public class m0m implements Executor {

    /* renamed from: e */
    public final Executor f77064e;

    /* renamed from: com.sunia.HTREnginev2.m0m$a */
    /* loaded from: classes4.dex */
    public static class RunnableC14071a implements Runnable {

        /* renamed from: e */
        public final Runnable f77065e;

        public RunnableC14071a(Runnable runnable) {
            this.f77065e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f77065e.run();
            } catch (Exception e) {
                Logging.m17455e("Executor", "Background execution failure.", e);
            }
        }
    }

    public m0m(Executor executor) {
        this.f77064e = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f77064e.execute(new RunnableC14071a(runnable));
    }
}
