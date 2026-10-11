package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import androidx.annotation.Nullable;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.C5569q;

/* renamed from: com.google.android.play.core.integrity.bb */
/* loaded from: classes6.dex */
final class C5512bb extends StandardIntegrityManager.StandardIntegrityToken {

    /* renamed from: a */
    private final String f33419a;

    /* renamed from: b */
    private final C5537u f33420b;

    public C5512bb(String str, C5569q c5569q, @Nullable PendingIntent pendingIntent) {
        this.f33419a = str;
        this.f33420b = new C5537u(c5569q, pendingIntent);
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken
    public final String token() {
        return this.f33419a;
    }
}
