package org.mortbay.jetty.servlet;

import java.util.TimerTask;

/* renamed from: org.mortbay.jetty.servlet.c */
/* loaded from: classes13.dex */
public class C20420c extends TimerTask {

    /* renamed from: e */
    public final /* synthetic */ HashSessionManager f115192e;

    public C20420c(HashSessionManager hashSessionManager) {
        this.f115192e = hashSessionManager;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        this.f115192e.m71617j();
    }
}
