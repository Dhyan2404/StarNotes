package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;

/* renamed from: com.google.android.play.core.integrity.w */
/* loaded from: classes6.dex */
final class C5539w implements IntegrityManager {

    /* renamed from: a */
    private final C5487ad f33455a;

    public C5539w(C5487ad c5487ad) {
        this.f33455a = c5487ad;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.f33455a.m25668b(integrityTokenRequest);
    }
}
