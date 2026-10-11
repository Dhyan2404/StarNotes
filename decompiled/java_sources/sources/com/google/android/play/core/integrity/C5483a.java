package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C5569q;

/* renamed from: com.google.android.play.core.integrity.a */
/* loaded from: classes6.dex */
final class C5483a extends AbstractC5490ag {

    /* renamed from: a */
    private String f33365a;

    /* renamed from: b */
    private C5569q f33366b;

    /* renamed from: c */
    private PendingIntent f33367c;

    @Override // com.google.android.play.core.integrity.AbstractC5490ag
    /* renamed from: a */
    public final AbstractC5490ag mo25658a(PendingIntent pendingIntent) {
        this.f33367c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC5490ag
    /* renamed from: b */
    public final AbstractC5490ag mo25659b(C5569q c5569q) {
        if (c5569q == null) {
            throw new NullPointerException("Null logger");
        }
        this.f33366b = c5569q;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC5490ag
    /* renamed from: c */
    public final AbstractC5490ag mo25660c(String str) {
        this.f33365a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC5490ag
    /* renamed from: d */
    public final C5491ah mo25661d() {
        C5569q c5569q;
        String str = this.f33365a;
        if (str != null && (c5569q = this.f33366b) != null) {
            return new C5491ah(str, c5569q, this.f33367c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f33365a == null) {
            sb.append(" token");
        }
        if (this.f33366b == null) {
            sb.append(" logger");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
