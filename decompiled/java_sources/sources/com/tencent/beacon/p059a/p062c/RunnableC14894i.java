package com.tencent.beacon.p059a.p062c;

import android.content.Context;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.qimei.sdk.IAsyncQimeiListener;
import com.tencent.qimei.sdk.QimeiSDK;

/* renamed from: com.tencent.beacon.a.c.i */
/* loaded from: classes10.dex */
public class RunnableC14894i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f92634a;

    /* renamed from: b */
    final /* synthetic */ Context f92635b;

    /* renamed from: c */
    final /* synthetic */ IAsyncQimeiListener f92636c;

    public RunnableC14894i(String str, Context context, IAsyncQimeiListener iAsyncQimeiListener) {
        this.f92634a = str;
        this.f92635b = context;
        this.f92636c = iAsyncQimeiListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        C14954c.m59391a("QimeiWrapper", "async getQimeiWithAppkey  appkey is %s", this.f92634a);
        C14895j.m59077c(this.f92635b.getApplicationContext(), this.f92634a);
        QimeiSDK.getInstance(this.f92634a).getQimei(this.f92636c);
    }
}
