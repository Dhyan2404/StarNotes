package com.sunia.HTREnginev2;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zznb;
import com.google.android.gms.measurement.internal.zzos;

@MainThread
@VisibleForTesting
/* loaded from: classes5.dex */
public final class eop implements Application.ActivityLifecycleCallbacks {

    /* renamed from: e */
    public final /* synthetic */ zzjq f69172e;

    public eop(zzjq zzjqVar) {
        this.f69172e = zzjqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00ad A[Catch: RuntimeException -> 0x0198, TRY_ENTER, TryCatch #0 {RuntimeException -> 0x0198, blocks: (B:3:0x000b, B:5:0x0019, B:8:0x002a, B:14:0x00ad, B:16:0x00b9, B:19:0x00ce, B:21:0x00d4, B:24:0x00e1, B:26:0x00e7, B:27:0x00fa, B:29:0x0106, B:33:0x010d, B:37:0x0130, B:38:0x014c, B:40:0x013d, B:41:0x0153, B:43:0x0159, B:45:0x015f, B:47:0x0165, B:49:0x016b, B:51:0x0173, B:55:0x017e, B:57:0x018c, B:59:0x0192, B:62:0x003e, B:65:0x0046, B:67:0x004e, B:69:0x0054, B:71:0x005a, B:73:0x0060, B:75:0x0068, B:77:0x0070, B:79:0x0078, B:81:0x0080, B:82:0x008c, B:84:0x00a4), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010d A[Catch: RuntimeException -> 0x0198, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0198, blocks: (B:3:0x000b, B:5:0x0019, B:8:0x002a, B:14:0x00ad, B:16:0x00b9, B:19:0x00ce, B:21:0x00d4, B:24:0x00e1, B:26:0x00e7, B:27:0x00fa, B:29:0x0106, B:33:0x010d, B:37:0x0130, B:38:0x014c, B:40:0x013d, B:41:0x0153, B:43:0x0159, B:45:0x015f, B:47:0x0165, B:49:0x016b, B:51:0x0173, B:55:0x017e, B:57:0x018c, B:59:0x0192, B:62:0x003e, B:65:0x0046, B:67:0x004e, B:69:0x0054, B:71:0x005a, B:73:0x0060, B:75:0x0068, B:77:0x0070, B:79:0x0078, B:81:0x0080, B:82:0x008c, B:84:0x00a4), top: B:2:0x000b }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m53999a(com.sunia.HTREnginev2.eop r17, boolean r18, android.net.Uri r19, java.lang.String r20, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.eop.m53999a(com.sunia.HTREnginev2.eop, boolean, android.net.Uri, java.lang.String, java.lang.String):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            this.f69172e.zzj().zzp().zza("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent == null) {
                return;
            }
            Uri data = intent.getData();
            if (data == null || !data.isHierarchical()) {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    String string = extras.getString("com.android.vending.referral_url");
                    if (!TextUtils.isEmpty(string)) {
                        data = Uri.parse(string);
                    }
                }
                data = null;
            }
            Uri uri = data;
            if (uri != null && uri.isHierarchical()) {
                this.f69172e.zzq();
                this.f69172e.zzl().zzb(new lop(this, bundle == null, uri, zzos.m22739t(intent) ? "gs" : "auto", uri.getQueryParameter("referrer")));
            }
        } catch (RuntimeException e) {
            this.f69172e.zzj().zzg().zza("Throwable caught in onActivityCreated", e);
        } finally {
            this.f69172e.zzn().zza(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f69172e.zzn().zza(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.f69172e.zzn().zzb(activity);
        zznb zzp = this.f69172e.zzp();
        zzp.zzl().zzb(new dqp(zzp, zzp.zzb().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        zznb zzp = this.f69172e.zzp();
        zzp.zzl().zzb(new eqp(zzp, zzp.zzb().elapsedRealtime()));
        this.f69172e.zzn().zzc(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f69172e.zzn().zzb(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
