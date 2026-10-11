package com.tencent.beacon.p059a.p061b;

import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.HttpMethod;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.net.call.HttpRequestEntity;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: com.tencent.beacon.a.b.d */
/* loaded from: classes10.dex */
public class RunnableC14876d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f92551a;

    /* renamed from: b */
    final /* synthetic */ String f92552b;

    /* renamed from: c */
    final /* synthetic */ Throwable f92553c;

    /* renamed from: d */
    final /* synthetic */ boolean f92554d;

    /* renamed from: e */
    final /* synthetic */ Callback f92555e;

    /* renamed from: f */
    final /* synthetic */ AbstractC14880h f92556f;

    public RunnableC14876d(AbstractC14880h abstractC14880h, String str, String str2, Throwable th, boolean z, Callback callback) {
        this.f92556f = abstractC14880h;
        this.f92551a = str;
        this.f92552b = str2;
        this.f92553c = th;
        this.f92554d = z;
        this.f92555e = callback;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Map map;
        obj = this.f92556f.f92567d;
        synchronized (obj) {
            map = AbstractC14880h.f92564a;
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            linkedHashMap.put("error_code", this.f92551a);
            linkedHashMap.put("error_msg", this.f92552b);
            linkedHashMap.put("error_stack_full", C14953b.m59362a(this.f92553c));
            linkedHashMap.put("_dc", String.valueOf(Math.random()));
            C14937c.m59312d().m59316a(HttpRequestEntity.builder().m59332b(this.f92554d ? "https://htrace.wetvinfo.com/kv" : "https://h.trace.qq.com/kv").m59329a("atta").m59330a(linkedHashMap).m59328a(HttpMethod.POST).m59331a()).m59345a(this.f92555e);
            C14954c.m59400d("[atta] upload a new error, errorCode: %s, message: %s, stack: %s", this.f92551a, this.f92552b, C14953b.m59362a(this.f92553c));
        }
    }
}
