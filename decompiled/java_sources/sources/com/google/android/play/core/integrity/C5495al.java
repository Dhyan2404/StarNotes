package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.integrity.al */
/* loaded from: classes6.dex */
public final class C5495al implements StandardIntegrityManager {

    /* renamed from: a */
    private final C5507ax f33388a;

    /* renamed from: b */
    private final C5514bd f33389b;

    public C5495al(C5507ax c5507ax, C5514bd c5514bd) {
        this.f33388a = c5507ax;
        this.f33389b = c5514bd;
    }

    /* renamed from: a */
    public final /* synthetic */ Task m25672a(StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest, Long l) throws Exception {
        final C5514bd c5514bd = this.f33389b;
        final long mo25656a = prepareIntegrityTokenRequest.mo25656a();
        final long longValue = l.longValue();
        return Tasks.forResult(new StandardIntegrityManager.StandardIntegrityTokenProvider() { // from class: com.google.android.play.core.integrity.bc
            @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
            public final Task request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
                return C5514bd.this.m25689a(mo25656a, longValue, standardIntegrityTokenRequest);
            }
        });
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager
    public final Task<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        return this.f33388a.m25684d(prepareIntegrityTokenRequest.mo25656a()).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.play.core.integrity.ak
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return C5495al.this.m25672a(prepareIntegrityTokenRequest, (Long) obj);
            }
        });
    }
}
