package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C5553ak;

/* renamed from: com.google.android.play.core.integrity.m */
/* loaded from: classes6.dex */
final class C5527m implements InterfaceC5536t {

    /* renamed from: a */
    private Context f33435a;

    public /* synthetic */ C5527m(C5526l c5526l) {
    }

    /* renamed from: a */
    public final C5527m m25690a(Context context) {
        context.getClass();
        this.f33435a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.InterfaceC5536t
    /* renamed from: b */
    public final C5531o mo25691b() {
        C5553ak.m25730a(this.f33435a, Context.class);
        return new C5531o(this.f33435a, null);
    }

    private C5527m() {
    }
}
