package com.tencent.qimei.p098s;

import android.annotation.SuppressLint;
import com.tencent.qimei.p092m.C16801b;
import com.tencent.qimei.sdk.debug.IDebugger;

/* renamed from: com.tencent.qimei.s.a */
/* loaded from: classes10.dex */
public class C16836a implements IDebugger {

    /* renamed from: a */
    public final String f93654a;

    public C16836a(String str) {
        this.f93654a = str;
    }

    @Override // com.tencent.qimei.sdk.debug.IDebugger
    @SuppressLint({"MissingPermission"})
    public void requestQm() {
    }

    @Override // com.tencent.qimei.sdk.debug.IDebugger
    public void requestStrategy() {
    }

    @Override // com.tencent.qimei.sdk.debug.IDebugger
    public void setDebug(boolean z) {
        C16801b.f93541a = z;
    }
}
