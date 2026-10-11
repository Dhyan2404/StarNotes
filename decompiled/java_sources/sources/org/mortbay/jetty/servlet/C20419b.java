package org.mortbay.jetty.servlet;

import java.util.TimerTask;
import org.mortbay.log.Log;

/* renamed from: org.mortbay.jetty.servlet.b */
/* loaded from: classes13.dex */
public class C20419b extends TimerTask {

    /* renamed from: e */
    public final /* synthetic */ HashSessionManager f115191e;

    public C20419b(HashSessionManager hashSessionManager) {
        this.f115191e = hashSessionManager;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        try {
            this.f115191e.saveSessions();
        } catch (Exception e) {
            Log.warn(e);
        }
    }
}
