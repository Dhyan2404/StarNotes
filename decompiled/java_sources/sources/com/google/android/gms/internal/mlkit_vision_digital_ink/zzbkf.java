package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
final class zzbkf extends zzbki {
    final /* synthetic */ Method zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbkf(Method method) {
        super(null);
        this.zza = method;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbki
    public final boolean zza(AccessibleObject accessibleObject, Object obj) {
        try {
            return ((Boolean) this.zza.invoke(accessibleObject, obj)).booleanValue();
        } catch (Exception e) {
            throw new RuntimeException("Failed invoking canAccess", e);
        }
    }
}
