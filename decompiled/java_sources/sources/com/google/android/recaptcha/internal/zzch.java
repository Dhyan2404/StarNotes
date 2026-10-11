package com.google.android.recaptcha.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzch extends zzce {

    @NotNull
    private final zzcg zza;

    @NotNull
    private final String zzb;

    public zzch(@NotNull zzcg zzcgVar, @NotNull String str, @Nullable Object obj) {
        super(obj);
        this.zza = zzcgVar;
        this.zzb = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
    
        r1 = kotlin.collections.ArraysKt___ArraysJvmKt.asList(r3);
     */
    @Override // com.google.android.recaptcha.internal.zzce
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(@org.jetbrains.annotations.NotNull java.lang.Object r1, @org.jetbrains.annotations.NotNull java.lang.reflect.Method r2, @org.jetbrains.annotations.Nullable java.lang.Object[] r3) {
        /*
            r0 = this;
            java.lang.String r1 = r2.getName()
            java.lang.String r2 = r0.zzb
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 == 0) goto L1f
            com.google.android.recaptcha.internal.zzcg r0 = r0.zza
            if (r3 == 0) goto L16
            java.util.List r1 = kotlin.collections.ArraysKt.asList(r3)
            if (r1 != 0) goto L1a
        L16:
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
        L1a:
            r0.zzb(r1)
            r0 = 1
            return r0
        L1f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzch.zza(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):boolean");
    }
}
