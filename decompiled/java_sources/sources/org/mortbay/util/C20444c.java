package org.mortbay.util;

import java.util.TimerTask;

/* renamed from: org.mortbay.util.c */
/* loaded from: classes13.dex */
public class C20444c extends TimerTask {

    /* renamed from: e */
    public final /* synthetic */ Scanner f115441e;

    public C20444c(Scanner scanner) {
        this.f115441e = scanner;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        this.f115441e.scan();
    }
}
