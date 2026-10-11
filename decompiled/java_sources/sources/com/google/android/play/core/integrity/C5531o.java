package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C5550ah;
import com.google.android.play.integrity.internal.C5552aj;
import com.google.android.play.integrity.internal.InterfaceC5551ai;
import com.google.android.play.integrity.internal.InterfaceC5554al;

/* renamed from: com.google.android.play.core.integrity.o */
/* loaded from: classes6.dex */
final class C5531o {

    /* renamed from: a */
    private final C5531o f33440a = this;

    /* renamed from: b */
    private final InterfaceC5554al f33441b;

    /* renamed from: c */
    private final InterfaceC5554al f33442c;

    /* renamed from: d */
    private final InterfaceC5554al f33443d;

    /* renamed from: e */
    private final InterfaceC5554al f33444e;

    public /* synthetic */ C5531o(Context context, C5530n c5530n) {
        C5542z c5542z;
        InterfaceC5551ai m25729b = C5552aj.m25729b(context);
        this.f33441b = m25729b;
        c5542z = C5541y.f33457a;
        InterfaceC5554al m25728b = C5550ah.m25728b(c5542z);
        this.f33442c = m25728b;
        InterfaceC5554al m25728b2 = C5550ah.m25728b(new C5489af(m25729b, m25728b));
        this.f33443d = m25728b2;
        this.f33444e = C5550ah.m25728b(new C5540x(m25728b2));
    }

    /* renamed from: a */
    public final IntegrityManager m25694a() {
        return (IntegrityManager) this.f33444e.mo25669a();
    }
}
