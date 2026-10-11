package com.tencent.qimei.p094o;

import android.text.TextUtils;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p084e.InterfaceC16776d;
import com.tencent.qimei.p091l.C16799g;

/* renamed from: com.tencent.qimei.o.a */
/* loaded from: classes10.dex */
public class RunnableC16807a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC16776d f93553a;

    /* renamed from: b */
    public final /* synthetic */ C16810d f93554b;

    public RunnableC16807a(C16810d c16810d, InterfaceC16776d interfaceC16776d) {
        this.f93554b = c16810d;
        this.f93553a = interfaceC16776d;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2;
        str = this.f93554b.f93560b;
        String m59971d = C16799g.m59964b(str).m59971d("is_first");
        str2 = this.f93554b.f93560b;
        if (!C16734a.m59797a(str2).m59798a().m59821c() || TextUtils.isEmpty(m59971d)) {
            this.f93553a.mo59929a(2);
        } else {
            C16810d.m60000a(this.f93554b, this.f93553a);
        }
    }
}
