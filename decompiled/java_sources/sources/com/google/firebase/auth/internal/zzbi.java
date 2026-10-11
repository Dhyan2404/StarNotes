package com.google.firebase.auth.internal;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.p124firebaseauthapi.zzags;
import com.google.android.gms.internal.p124firebaseauthapi.zzaq;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

/* loaded from: classes6.dex */
public final class zzbi {

    /* renamed from: d */
    @VisibleForTesting
    public static long f35721d = 3600000;

    /* renamed from: e */
    public static final zzaq<String> f35722e = zzaq.zza("firebaseAppName", "firebaseUserUid", "operation", "tenantId", "verifyAssertionRequest", "statusCode", "statusMessage", NotificationCompat.CarExtender.f4980p);

    /* renamed from: f */
    public static final zzbi f35723f = new zzbi();

    /* renamed from: a */
    public Task<AuthResult> f35724a;

    /* renamed from: b */
    public Task<String> f35725b;

    /* renamed from: c */
    public long f35726c = 0;

    /* renamed from: a */
    public static void m27992a(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        zzaq<String> zzaqVar = f35722e;
        int size = zzaqVar.size();
        int i = 0;
        while (i < size) {
            String str = zzaqVar.get(i);
            i++;
            edit.remove(str);
        }
        edit.commit();
    }

    public static zzbi zzc() {
        return f35723f;
    }

    @Nullable
    public final Task<AuthResult> zza() {
        if (DefaultClock.getInstance().currentTimeMillis() - this.f35726c < f35721d) {
            return this.f35724a;
        }
        return null;
    }

    @Nullable
    public final Task<String> zzb() {
        if (DefaultClock.getInstance().currentTimeMillis() - this.f35726c < f35721d) {
            return this.f35725b;
        }
        return null;
    }

    public final void zza(Context context) {
        Preconditions.checkNotNull(context);
        m27992a(context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0));
        this.f35724a = null;
        this.f35726c = 0L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008b, code lost:
    
        if (r4.equals("com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.firebase.auth.FirebaseAuth r12) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.auth.internal.zzbi.zza(com.google.firebase.auth.FirebaseAuth):void");
    }

    public static void zza(Context context, Status status) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putInt("statusCode", status.getStatusCode());
        edit.putString("statusMessage", status.getStatusMessage());
        edit.putLong(NotificationCompat.CarExtender.f4980p, DefaultClock.getInstance().currentTimeMillis());
        edit.commit();
    }

    public static void zza(Context context, FirebaseAuth firebaseAuth) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(firebaseAuth);
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putString("firebaseAppName", firebaseAuth.getApp().getName());
        edit.commit();
    }

    public static void zza(Context context, FirebaseAuth firebaseAuth, FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(firebaseAuth);
        Preconditions.checkNotNull(firebaseUser);
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putString("firebaseAppName", firebaseAuth.getApp().getName());
        edit.putString("firebaseUserUid", firebaseUser.getUid());
        edit.commit();
    }

    public static void zza(Context context, zzags zzagsVar, String str, @Nullable String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putString("verifyAssertionRequest", SafeParcelableSerializer.serializeToString(zzagsVar));
        edit.putString("operation", str);
        edit.putString("tenantId", str2);
        edit.putLong(NotificationCompat.CarExtender.f4980p, DefaultClock.getInstance().currentTimeMillis());
        edit.commit();
    }

    public static void zza(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        edit.putString("recaptchaToken", str);
        edit.putString("operation", str2);
        edit.putLong(NotificationCompat.CarExtender.f4980p, DefaultClock.getInstance().currentTimeMillis());
        edit.commit();
    }
}
