package com.liulishuo.okdownload.core.breakpoint;

import androidx.annotation.NonNull;
import com.liulishuo.okdownload.core.breakpoint.RemitSyncExecutor;

/* renamed from: com.liulishuo.okdownload.core.breakpoint.a */
/* loaded from: classes4.dex */
public class C6962a {

    /* renamed from: a */
    public final RemitSyncExecutor f39308a;

    /* renamed from: b */
    public long f39309b;

    public C6962a(@NonNull RemitSyncExecutor.InterfaceC6961a interfaceC6961a) {
        this(new RemitSyncExecutor(interfaceC6961a));
    }

    /* renamed from: a */
    public void m31001a(int i) {
        this.f39308a.m30998b(i);
        this.f39308a.postRemoveInfo(i);
    }

    /* renamed from: b */
    public void m31002b(int i) {
        this.f39308a.m30998b(i);
        try {
            if (this.f39308a.m30997a(i)) {
                return;
            }
            this.f39308a.postSync(i);
        } finally {
            this.f39308a.postRemoveFreeId(i);
        }
    }

    /* renamed from: c */
    public boolean m31003c(int i) {
        return !this.f39308a.m30997a(i);
    }

    /* renamed from: d */
    public void m31004d(int i) {
        this.f39308a.m30998b(i);
        this.f39308a.postSyncInfoDelay(i, this.f39309b);
    }

    /* renamed from: e */
    public void m31005e() {
        this.f39308a.m31000d();
    }

    public C6962a(@NonNull RemitSyncExecutor remitSyncExecutor) {
        this.f39308a = remitSyncExecutor;
        this.f39309b = 1500L;
    }
}
