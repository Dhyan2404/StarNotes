package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaErrorCode;
import com.google.android.recaptcha.RecaptchaException;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzp extends Exception {

    @NotNull
    public static final zzo zza = new zzo(null);

    @NotNull
    private static final Map zzb;

    @NotNull
    private final zzn zzc;

    @NotNull
    private final zzl zzd;

    @Nullable
    private final String zze;

    @NotNull
    private final Map zzf;

    static {
        Map mapOf;
        Pair m61535to = TuplesKt.m61535to(zzpb.JS_NETWORK_ERROR, new zzp(zzn.zze, zzl.zzm, null));
        zzpb zzpbVar = zzpb.JS_INTERNAL_ERROR;
        zzn zznVar = zzn.zzc;
        mapOf = MapsKt__MapsKt.mapOf(m61535to, TuplesKt.m61535to(zzpbVar, new zzp(zznVar, zzl.zzk, null)), TuplesKt.m61535to(zzpb.JS_INVALID_SITE_KEY, new zzp(zzn.zzf, zzl.zzn, null)), TuplesKt.m61535to(zzpb.JS_INVALID_SITE_KEY_TYPE, new zzp(zzn.zzg, zzl.zzo, null)), TuplesKt.m61535to(zzpb.JS_THIRD_PARTY_APP_PACKAGE_NAME_NOT_ALLOWED, new zzp(zzn.zzh, zzl.zzp, null)), TuplesKt.m61535to(zzpb.JS_INVALID_ACTION, new zzp(zzn.zzi, zzl.zzq, null)), TuplesKt.m61535to(zzpb.JS_PROGRAM_ERROR, new zzp(zznVar, zzl.zzu, null)));
        zzb = mapOf;
    }

    public zzp(@NotNull zzn zznVar, @NotNull zzl zzlVar, @Nullable String str) {
        Map mapOf;
        this.zzc = zznVar;
        this.zzd = zzlVar;
        this.zze = str;
        zzn zznVar2 = zzn.zze;
        RecaptchaErrorCode recaptchaErrorCode = RecaptchaErrorCode.NETWORK_ERROR;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m61535to(zznVar2, new RecaptchaException(recaptchaErrorCode, null, 2, null)), TuplesKt.m61535to(zzn.zzk, new RecaptchaException(recaptchaErrorCode, null, 2, null)), TuplesKt.m61535to(zzn.zzf, new RecaptchaException(RecaptchaErrorCode.INVALID_SITEKEY, null, 2, null)), TuplesKt.m61535to(zzn.zzg, new RecaptchaException(RecaptchaErrorCode.INVALID_KEYTYPE, null, 2, null)), TuplesKt.m61535to(zzn.zzh, new RecaptchaException(RecaptchaErrorCode.INVALID_PACKAGE_NAME, null, 2, null)), TuplesKt.m61535to(zzn.zzi, new RecaptchaException(RecaptchaErrorCode.INVALID_ACTION, null, 2, null)), TuplesKt.m61535to(zzn.zzc, new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null)));
        this.zzf = mapOf;
    }

    @NotNull
    public final zzl zza() {
        return this.zzd;
    }

    @NotNull
    public final zzn zzb() {
        return this.zzc;
    }

    @NotNull
    public final RecaptchaException zzc() {
        if (Intrinsics.areEqual(this.zzd, zzl.zzT)) {
            return new RecaptchaException(RecaptchaErrorCode.INVALID_TIMEOUT, null, 2, null);
        }
        RecaptchaException recaptchaException = (RecaptchaException) this.zzf.get(this.zzc);
        return recaptchaException == null ? new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null) : recaptchaException;
    }

    @Nullable
    public final String zzd() {
        return this.zze;
    }
}
