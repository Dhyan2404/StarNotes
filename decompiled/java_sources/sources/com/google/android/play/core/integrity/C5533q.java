package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C5553ak;

/* renamed from: com.google.android.play.core.integrity.q */
/* loaded from: classes6.dex */
final class C5533q implements InterfaceC5492ai {

    /* renamed from: a */
    private Context f33445a;

    public /* synthetic */ C5533q(C5532p c5532p) {
    }

    /* renamed from: a */
    public final C5533q m25695a(Context context) {
        context.getClass();
        this.f33445a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.InterfaceC5492ai
    /* renamed from: b */
    public final C5535s mo25670b() {
        C5553ak.m25730a(this.f33445a, Context.class);
        return new C5535s(this.f33445a, null);
    }

    private C5533q() {
    }
}
