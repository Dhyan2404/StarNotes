package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;

/* renamed from: com.google.android.gms.common.internal.d */
/* loaded from: classes5.dex */
public final class C5067d implements PendingResultUtil.ResultConverter {

    /* renamed from: a */
    public final /* synthetic */ Response f29381a;

    public C5067d(Response response) {
        this.f29381a = response;
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    public final /* bridge */ /* synthetic */ Object convert(Result result) {
        this.f29381a.setResult(result);
        return this.f29381a;
    }
}
