package com.tencent.qimei.p082c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Process;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p097r.RunnableC16827f;
import com.tencent.qimei.p105y.C16858d;

/* renamed from: com.tencent.qimei.c.c */
/* loaded from: classes10.dex */
public class C16766c extends BroadcastReceiver {

    /* renamed from: a */
    public final InterfaceC16765b f93444a;

    /* renamed from: b */
    public final Context f93445b = C16858d.m60143b().mo60059c();

    public C16766c(InterfaceC16765b interfaceC16765b) {
        this.f93444a = interfaceC16765b;
    }

    /* renamed from: a */
    public void m59893a() {
        IntentFilter intentFilter = new IntentFilter(C16764a.f93442a);
        Context context = this.f93445b;
        if (context != null) {
            context.registerReceiver(this, intentFilter);
            Process.myPid();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        InterfaceC16765b interfaceC16765b;
        try {
            str = intent.getAction();
        } catch (Exception e) {
            C16806a.m59992a(e);
            str = null;
        }
        if (str == null || !str.equals(C16764a.f93442a) || (interfaceC16765b = this.f93444a) == null) {
            return;
        }
        ((RunnableC16827f) interfaceC16765b).m60047b();
    }
}
