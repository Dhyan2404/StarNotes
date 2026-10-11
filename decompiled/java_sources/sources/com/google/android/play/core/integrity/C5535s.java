package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C5550ah;
import com.google.android.play.integrity.internal.C5552aj;
import com.google.android.play.integrity.internal.InterfaceC5551ai;
import com.google.android.play.integrity.internal.InterfaceC5554al;

/* renamed from: com.google.android.play.core.integrity.s */
/* loaded from: classes6.dex */
final class C5535s {

    /* renamed from: a */
    private final C5535s f33446a = this;

    /* renamed from: b */
    private final InterfaceC5554al f33447b;

    /* renamed from: c */
    private final InterfaceC5554al f33448c;

    /* renamed from: d */
    private final InterfaceC5554al f33449d;

    /* renamed from: e */
    private final InterfaceC5554al f33450e;

    /* renamed from: f */
    private final InterfaceC5554al f33451f;

    public /* synthetic */ C5535s(Context context, C5534r c5534r) {
        C5498ao c5498ao;
        InterfaceC5551ai m25729b = C5552aj.m25729b(context);
        this.f33447b = m25729b;
        c5498ao = C5497an.f33392a;
        InterfaceC5554al m25728b = C5550ah.m25728b(c5498ao);
        this.f33448c = m25728b;
        InterfaceC5554al m25728b2 = C5550ah.m25728b(new C5509az(m25729b, m25728b));
        this.f33449d = m25728b2;
        InterfaceC5554al m25728b3 = C5550ah.m25728b(new C5515be(m25728b2));
        this.f33450e = m25728b3;
        this.f33451f = C5550ah.m25728b(new C5496am(m25728b2, m25728b3));
    }

    /* renamed from: a */
    public final StandardIntegrityManager m25696a() {
        return (StandardIntegrityManager) this.f33451f.mo25669a();
    }
}
