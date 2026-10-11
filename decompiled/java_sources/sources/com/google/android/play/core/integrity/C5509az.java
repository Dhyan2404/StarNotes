package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C5569q;
import com.google.android.play.integrity.internal.InterfaceC5551ai;
import com.google.android.play.integrity.internal.InterfaceC5554al;

/* renamed from: com.google.android.play.core.integrity.az */
/* loaded from: classes6.dex */
public final class C5509az implements InterfaceC5551ai {

    /* renamed from: a */
    private final InterfaceC5554al f33414a;

    /* renamed from: b */
    private final InterfaceC5554al f33415b;

    public C5509az(InterfaceC5554al interfaceC5554al, InterfaceC5554al interfaceC5554al2) {
        this.f33414a = interfaceC5554al;
        this.f33415b = interfaceC5554al2;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC5554al
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo25669a() {
        return new C5507ax((Context) this.f33414a.mo25669a(), (C5569q) this.f33415b.mo25669a());
    }
}
