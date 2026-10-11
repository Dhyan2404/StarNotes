package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: classes5.dex */
final class zzcbc extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateUtil.f12953a, Locale.US);
        simpleDateFormat.setLenient(false);
        simpleDateFormat.setTimeZone(zzcbo.zzb);
        return simpleDateFormat;
    }
}
