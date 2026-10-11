package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import androidx.annotation.Nullable;
import com.google.android.play.integrity.internal.C5569q;

/* renamed from: com.google.android.play.core.integrity.ah */
/* loaded from: classes6.dex */
final class C5491ah extends IntegrityTokenResponse {

    /* renamed from: a */
    private final String f33383a;

    /* renamed from: b */
    private final C5537u f33384b;

    public C5491ah(String str, C5569q c5569q, @Nullable PendingIntent pendingIntent) {
        this.f33383a = str;
        this.f33384b = new C5537u(c5569q, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenResponse
    public final String token() {
        return this.f33383a;
    }
}
