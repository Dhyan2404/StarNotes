package com.tencent.qimei.p100t;

import android.text.TextUtils;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p103w.C16851b;

/* renamed from: com.tencent.qimei.t.c */
/* loaded from: classes10.dex */
public class C16839c {
    /* renamed from: a */
    public static void m60108a(String str) {
        if (TextUtils.isEmpty(C16799g.m59964b(str).m59971d("is_first"))) {
            AbstractC16769a.m59895a().mo59896a(r0 * 1000, new RunnableC16838b(str, C16851b.f93697a.nextInt(3) + 1));
        }
    }
}
