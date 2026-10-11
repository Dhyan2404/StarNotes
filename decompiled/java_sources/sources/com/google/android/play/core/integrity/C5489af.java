package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C5569q;
import com.google.android.play.integrity.internal.InterfaceC5551ai;
import com.google.android.play.integrity.internal.InterfaceC5554al;

/* renamed from: com.google.android.play.core.integrity.af */
/* loaded from: classes6.dex */
public final class C5489af implements InterfaceC5551ai {

    /* renamed from: a */
    private final InterfaceC5554al f33381a;

    /* renamed from: b */
    private final InterfaceC5554al f33382b;

    public C5489af(InterfaceC5554al interfaceC5554al, InterfaceC5554al interfaceC5554al2) {
        this.f33381a = interfaceC5554al;
        this.f33382b = interfaceC5554al2;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC5554al
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo25669a() {
        return new C5487ad((Context) this.f33381a.mo25669a(), (C5569q) this.f33382b.mo25669a());
    }
}
