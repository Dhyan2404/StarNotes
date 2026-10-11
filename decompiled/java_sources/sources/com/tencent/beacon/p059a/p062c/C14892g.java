package com.tencent.beacon.p059a.p062c;

import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.qimei.sdk.IAsyncQimeiListener;
import com.tencent.qimei.sdk.Qimei;

/* renamed from: com.tencent.beacon.a.c.g */
/* loaded from: classes10.dex */
public class C14892g implements IAsyncQimeiListener {
    @Override // com.tencent.qimei.sdk.IAsyncQimeiListener
    public void onQimeiDispatch(Qimei qimei) {
        C14954c.m59391a("QimeiWrapper", "init onQimeiDispatch : qimei is %s", qimei.toString());
        C14870b.m58921a().m58928a(new C14871c(1));
    }
}
