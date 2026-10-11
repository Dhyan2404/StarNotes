package com.google.android.recaptcha.internal;

import com.sunia.HTREnginev2.C14063lv;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.ThreadPoolDispatcherKt;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzt {

    @NotNull
    public static final zzr zza = new zzr(null);

    @NotNull
    private final CoroutineScope zzb = CoroutineScopeKt.MainScope();

    @NotNull
    private final CoroutineScope zzc;

    @NotNull
    private final CoroutineScope zzd;

    public zzt() {
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(ThreadPoolDispatcherKt.newSingleThreadContext("reCaptcha"));
        C14063lv.m55522f(CoroutineScope, null, null, new zzs(null), 3, null);
        this.zzc = CoroutineScope;
        this.zzd = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
    }

    @NotNull
    public final CoroutineScope zza() {
        return this.zzd;
    }

    @NotNull
    public final CoroutineScope zzb() {
        return this.zzb;
    }

    @NotNull
    public final CoroutineScope zzc() {
        return this.zzc;
    }
}
