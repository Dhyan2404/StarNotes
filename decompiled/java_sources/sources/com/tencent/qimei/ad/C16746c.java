package com.tencent.qimei.ad;

import android.os.MessageQueue;

/* renamed from: com.tencent.qimei.ad.c */
/* loaded from: classes10.dex */
public class C16746c implements MessageQueue.IdleHandler {

    /* renamed from: a */
    public final /* synthetic */ RunnableC16748e f93397a;

    public C16746c(RunnableC16748e runnableC16748e) {
        this.f93397a = runnableC16748e;
    }

    @Override // android.os.MessageQueue.IdleHandler
    public boolean queueIdle() {
        this.f93397a.m59844a();
        return false;
    }
}
