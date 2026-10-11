package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaException;
import com.sunia.HTREnginev2.C14063lv;
import java.util.UUID;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzam {

    @Nullable
    private static zzaw zzb;

    @NotNull
    public static final zzam zza = new zzam();

    @NotNull
    private static final String zzc = UUID.randomUUID().toString();

    @NotNull
    private static final Mutex zzd = MutexKt.Mutex$default(false, 1, null);

    @NotNull
    private static final zzt zze = new zzt();

    @NotNull
    private static zzg zzf = new zzg(null, 1, 0 == true ? 1 : 0);

    private zzam() {
    }

    @Nullable
    public static final Object zzc(@NotNull Application application, @NotNull String str, long j, @Nullable zzbq zzbqVar, @NotNull Continuation continuation) throws TimeoutCancellationException, ApiException, RecaptchaException {
        return BuildersKt.withContext(zze.zzb().getCoroutineContext(), new zzah(application, str, j, null, null), continuation);
    }

    @NotNull
    public static final Task zzd(@NotNull Application application, @NotNull String str, long j) throws TimeoutCancellationException, ApiException, RecaptchaException {
        Deferred m55518b;
        m55518b = C14063lv.m55518b(zze.zzb(), null, null, new zzak(application, str, j, null), 3, null);
        return zzj.zza(m55518b);
    }

    @NotNull
    public static final zzg zze() {
        return zzf;
    }

    public static final void zzf(@NotNull zzg zzgVar) {
        zzf = zzgVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d2 A[Catch: all -> 0x019b, Exception -> 0x01a1, RecaptchaException -> 0x01ae, TryCatch #5 {RecaptchaException -> 0x01ae, Exception -> 0x01a1, all -> 0x019b, blocks: (B:29:0x008e, B:32:0x00d2, B:34:0x00da, B:36:0x00e8, B:38:0x00f2, B:39:0x00fa, B:40:0x011e, B:41:0x011f), top: B:28:0x008e }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x017b A[Catch: all -> 0x0197, RecaptchaException -> 0x0199, Exception -> 0x01a3, TryCatch #6 {RecaptchaException -> 0x0199, Exception -> 0x01a3, all -> 0x0197, blocks: (B:43:0x013d, B:48:0x0162, B:49:0x017a, B:50:0x017b, B:51:0x0196), top: B:30:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.recaptcha.internal.zzai, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v4 */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zza(@org.jetbrains.annotations.NotNull android.app.Application r22, @org.jetbrains.annotations.NotNull java.lang.String r23, long r24, @org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzab r26, @org.jetbrains.annotations.Nullable android.webkit.WebView r27, @org.jetbrains.annotations.Nullable com.google.android.recaptcha.internal.zzbq r28, @org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzt r29, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r30) throws kotlinx.coroutines.TimeoutCancellationException, com.google.android.gms.common.api.ApiException, com.google.android.recaptcha.RecaptchaException {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzam.zza(android.app.Application, java.lang.String, long, com.google.android.recaptcha.internal.zzab, android.webkit.WebView, com.google.android.recaptcha.internal.zzbq, com.google.android.recaptcha.internal.zzt, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
