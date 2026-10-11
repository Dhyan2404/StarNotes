package com.google.android.recaptcha.internal;

import android.content.Context;
import android.webkit.WebView;
import com.sunia.HTREnginev2.C14063lv;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.TimeoutCancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzez implements zza {

    @NotNull
    public static final zzep zza = new zzep(null);
    public CompletableDeferred zzb;
    public zzbu zzc;

    @NotNull
    private final WebView zzd;

    @NotNull
    private final String zze;

    @NotNull
    private final Context zzf;

    @NotNull
    private final zzab zzg;

    @NotNull
    private final zzbd zzh;

    @Nullable
    private final zzbg zzi;

    @NotNull
    private final zzbq zzj;

    @NotNull
    private final Map zzk = zzfa.zza();

    @NotNull
    private final Map zzl;

    @NotNull
    private final Map zzm;

    @NotNull
    private final zzfh zzn;

    @NotNull
    private final zzeq zzo;

    @NotNull
    private final zzbd zzp;

    @NotNull
    private final zzt zzq;

    public zzez(@NotNull WebView webView, @NotNull String str, @NotNull Context context, @NotNull zzab zzabVar, @NotNull zzbd zzbdVar, @NotNull zzt zztVar, @Nullable zzbg zzbgVar, @NotNull zzbq zzbqVar) {
        this.zzd = webView;
        this.zze = str;
        this.zzf = context;
        this.zzg = zzabVar;
        this.zzh = zzbdVar;
        this.zzq = zztVar;
        this.zzi = zzbgVar;
        this.zzj = zzbqVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzl = linkedHashMap;
        this.zzm = linkedHashMap;
        this.zzn = zzfh.zzc();
        zzeq zzeqVar = new zzeq(this);
        this.zzo = zzeqVar;
        zzbd zzb = zzbdVar.zzb();
        zzb.zzc(zzbdVar.zzd());
        this.zzp = zzb;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.addJavascriptInterface(zzeqVar, "RN");
        webView.setWebViewClient(new zzeu(this));
    }

    public static final /* synthetic */ void zzl(zzez zzezVar, zzoe zzoeVar) {
        zzezVar.zzd.clearCache(true);
        zzbb zza2 = zzezVar.zzp.zza(zzne.INIT_NETWORK);
        r1.zze.put(zza2, new zzbf(zza2, zzezVar.zzi.zza, new zzac()));
        C14063lv.m55522f(zzezVar.zzq.zza(), null, null, new zzey(zzezVar, zzoeVar, zza2, null), 3, null);
    }

    public static final /* synthetic */ void zzm(zzez zzezVar, String str) {
        zzbb zza2 = zzezVar.zzp.zza(zzne.LOAD_WEBVIEW);
        try {
            r2.zze.put(zza2, new zzbf(zza2, zzezVar.zzi.zza, new zzac()));
            zzezVar.zzd.loadDataWithBaseURL(zzezVar.zzg.zza(), str, "text/html", "utf-8", null);
        } catch (Exception unused) {
            zzp zzpVar = new zzp(zzn.zzc, zzl.zzag, null);
            zzezVar.zzi.zzb(zza2, zzpVar, null);
            zzezVar.zzk().completeExceptionally(zzpVar);
        }
    }

    private final zzp zzp(Exception exc, zzp zzpVar) {
        return exc instanceof TimeoutCancellationException ? new zzp(zzn.zzc, zzl.zzj, null) : exc instanceof zzp ? (zzp) exc : zzpVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Override // com.google.android.recaptcha.internal.zza
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zza(@org.jetbrains.annotations.NotNull java.lang.String r5, long r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.google.android.recaptcha.internal.zzer
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.recaptcha.internal.zzer r0 = (com.google.android.recaptcha.internal.zzer) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzer r0 = new com.google.android.recaptcha.internal.zzer
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zzc
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.String r5 = r0.zze
            com.google.android.recaptcha.internal.zzez r4 = r0.zzd
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L2d
            goto L4d
        L2d:
            r6 = move-exception
            goto L56
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r8)
            com.google.android.recaptcha.internal.zzet r8 = new com.google.android.recaptcha.internal.zzet     // Catch: java.lang.Exception -> L2d
            r2 = 0
            r8.<init>(r5, r4, r2)     // Catch: java.lang.Exception -> L2d
            r0.zzd = r4     // Catch: java.lang.Exception -> L2d
            r0.zze = r5     // Catch: java.lang.Exception -> L2d
            r0.zzc = r3     // Catch: java.lang.Exception -> L2d
            java.lang.Object r8 = kotlinx.coroutines.TimeoutKt.withTimeout(r6, r8, r0)     // Catch: java.lang.Exception -> L2d
            if (r8 != r1) goto L4d
            return r1
        L4d:
            com.google.android.recaptcha.internal.zzog r8 = (com.google.android.recaptcha.internal.zzog) r8     // Catch: java.lang.Exception -> L2d
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Exception -> L2d
            java.lang.Object r4 = kotlin.Result.m72621constructorimpl(r8)     // Catch: java.lang.Exception -> L2d
            goto L86
        L56:
            java.lang.Class r7 = r6.getClass()
            com.google.android.recaptcha.internal.zzp r8 = new com.google.android.recaptcha.internal.zzp
            com.google.android.recaptcha.internal.zzn r0 = com.google.android.recaptcha.internal.zzn.zzc
            com.google.android.recaptcha.internal.zzl r1 = com.google.android.recaptcha.internal.zzl.zzai
            java.lang.String r7 = r7.getSimpleName()
            r8.<init>(r0, r1, r7)
            com.google.android.recaptcha.internal.zzp r6 = r4.zzp(r6, r8)
            java.util.Map r4 = r4.zzl
            java.lang.Object r4 = r4.remove(r5)
            kotlinx.coroutines.CompletableDeferred r4 = (kotlinx.coroutines.CompletableDeferred) r4
            if (r4 == 0) goto L7c
            boolean r4 = r4.completeExceptionally(r6)
            kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
        L7c:
            kotlin.Result$Companion r4 = kotlin.Result.INSTANCE
            java.lang.Object r4 = kotlin.ResultKt.createFailure(r6)
            java.lang.Object r4 = kotlin.Result.m72621constructorimpl(r4)
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzez.zza(java.lang.String, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b2, code lost:
    
        if (r1.longValue() > (r7 - 2000)) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00dd A[LOOP:0: B:33:0x00d7->B:35:0x00dd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    @Override // com.google.android.recaptcha.internal.zza
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzb(long r7, @org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzoe r9, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzez.zzb(long, com.google.android.recaptcha.internal.zzoe, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @NotNull
    public final WebView zzc() {
        return this.zzd;
    }

    @NotNull
    public final zzbq zzf() {
        return this.zzj;
    }

    @NotNull
    public final zzeq zzg() {
        return this.zzo;
    }

    @NotNull
    public final CompletableDeferred zzk() {
        CompletableDeferred completableDeferred = this.zzb;
        if (completableDeferred != null) {
            return completableDeferred;
        }
        return null;
    }

    @NotNull
    public final zzca zzo(@NotNull zzoe zzoeVar, @NotNull zzag zzagVar) {
        long[] longArray;
        zzcd zzcdVar = new zzcd(this.zzd, this.zzq.zzb());
        zzef zzefVar = new zzef();
        longArray = CollectionsKt___CollectionsKt.toLongArray(zzoeVar.zzK());
        zzefVar.zzb(longArray);
        zzcl zzclVar = new zzcl(zzcdVar, zzagVar, new zzaa());
        zzeg zzegVar = new zzeg(zzefVar, new zzed());
        zzclVar.zzf(3, this.zzf);
        zzclVar.zzf(5, zzen.class.getMethod("cs", new Object[0].getClass()));
        zzclVar.zzf(6, new zzeh(this.zzf));
        zzclVar.zzf(7, new zzej());
        zzclVar.zzf(8, new zzeo(this.zzf));
        zzclVar.zzf(9, new zzek(this.zzf));
        zzclVar.zzf(10, new zzei(this.zzf));
        return new zzca(this.zzq.zzc(), zzclVar, zzegVar, zzbt.zza());
    }
}
