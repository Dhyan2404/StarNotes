package com.google.android.recaptcha.internal;

import android.content.Context;
import androidx.appcompat.widget.ActivityChooserModel;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzeo implements zzen {

    @NotNull
    private final Context zzb;

    @NotNull
    private final Map zzc;

    public zzeo(@NotNull Context context) {
        Map mapOf;
        this.zzb = context;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m61535to(2, ActivityChooserModel.f1429r), TuplesKt.m61535to(3, "phone"), TuplesKt.m61535to(4, "input_method"), TuplesKt.m61535to(5, "audio"));
        this.zzc = mapOf;
    }

    @Override // com.google.android.recaptcha.internal.zzen
    /* renamed from: cs */
    public final /* synthetic */ Object mo25752cs(Object[] objArr) {
        return zzel.zza(this, objArr);
    }

    @Override // com.google.android.recaptcha.internal.zzen
    @Nullable
    public final Object zza(@NotNull Object... objArr) {
        Object obj = objArr[0];
        if (true != (obj instanceof Integer)) {
            obj = null;
        }
        Integer num = (Integer) obj;
        if (num == null) {
            throw new zzae(4, 5, null);
        }
        Object obj2 = this.zzc.get(Integer.valueOf(num.intValue()));
        if (obj2 != null) {
            return this.zzb.getSystemService((String) obj2);
        }
        throw new zzae(4, 4, null);
    }
}
