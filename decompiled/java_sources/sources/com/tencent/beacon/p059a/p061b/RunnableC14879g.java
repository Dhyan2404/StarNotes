package com.tencent.beacon.p059a.p061b;

import android.content.Context;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.HttpMethod;
import com.tencent.beacon.base.net.call.HttpRequestEntity;
import com.tencent.beacon.p059a.p062c.C14888c;
import java.util.LinkedHashMap;

/* renamed from: com.tencent.beacon.a.b.g */
/* loaded from: classes10.dex */
public class RunnableC14879g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f92559a;

    /* renamed from: b */
    final /* synthetic */ String f92560b;

    /* renamed from: c */
    final /* synthetic */ String f92561c;

    /* renamed from: d */
    final /* synthetic */ Context f92562d;

    /* renamed from: e */
    final /* synthetic */ AbstractC14880h f92563e;

    public RunnableC14879g(AbstractC14880h abstractC14880h, String str, String str2, String str3, Context context) {
        this.f92563e = abstractC14880h;
        this.f92559a = str;
        this.f92560b = str2;
        this.f92561c = str3;
        this.f92562d = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        obj = this.f92563e.f92567d;
        synchronized (obj) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("attaid", this.f92563e.mo58957b());
            linkedHashMap.put("token", this.f92563e.mo58958c());
            linkedHashMap.put("platform", "Android");
            linkedHashMap.put("uin", "");
            linkedHashMap.put("model", "");
            linkedHashMap.put("os", "");
            linkedHashMap.put("error_stack_full", "");
            linkedHashMap.put("app_version", "");
            linkedHashMap.put("sdk_version", C14888c.m58989c().m59006i());
            linkedHashMap.put("product_id", this.f92559a);
            linkedHashMap.put("error_code", this.f92560b);
            linkedHashMap.put("error_msg", this.f92561c);
            linkedHashMap.put(PrivilegedApp.f6526c, this.f92562d.getPackageName());
            linkedHashMap.put("_dc", String.valueOf(Math.random()));
            C14937c.m59312d().m59316a(HttpRequestEntity.builder().m59332b("https://h.trace.qq.com/kv").m59329a("atta").m59330a(linkedHashMap).m59328a(HttpMethod.POST).m59331a()).m59345a(new C14878f(this));
        }
    }
}
