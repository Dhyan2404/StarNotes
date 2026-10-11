package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import com.google.android.play.integrity.internal.C5569q;

/* renamed from: com.google.android.play.core.integrity.b */
/* loaded from: classes6.dex */
final class C5510b extends AbstractC5511ba {

    /* renamed from: a */
    private String f33416a;

    /* renamed from: b */
    private C5569q f33417b;

    /* renamed from: c */
    private PendingIntent f33418c;

    @Override // com.google.android.play.core.integrity.AbstractC5511ba
    /* renamed from: a */
    public final AbstractC5511ba mo25685a(PendingIntent pendingIntent) {
        this.f33418c = pendingIntent;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC5511ba
    /* renamed from: b */
    public final AbstractC5511ba mo25686b(C5569q c5569q) {
        if (c5569q == null) {
            throw new NullPointerException("Null logger");
        }
        this.f33417b = c5569q;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC5511ba
    /* renamed from: c */
    public final AbstractC5511ba mo25687c(String str) {
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.f33416a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.AbstractC5511ba
    /* renamed from: d */
    public final C5512bb mo25688d() {
        C5569q c5569q;
        String str = this.f33416a;
        if (str != null && (c5569q = this.f33417b) != null) {
            return new C5512bb(str, c5569q, this.f33418c);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f33416a == null) {
            sb.append(" token");
        }
        if (this.f33417b == null) {
            sb.append(" logger");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
