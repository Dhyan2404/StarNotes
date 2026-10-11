package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.C5051R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.internal.zzah;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.firebase.FirebaseOptions;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;

@KeepForSdk
@Deprecated
/* loaded from: classes5.dex */
public final class GoogleServices {

    /* renamed from: e */
    public static final Object f29108e = new Object();

    /* renamed from: f */
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public static GoogleServices f29109f;

    /* renamed from: a */
    @Nullable
    public final String f29110a;

    /* renamed from: b */
    public final Status f29111b;

    /* renamed from: c */
    public final boolean f29112c;

    /* renamed from: d */
    public final boolean f29113d;

    @KeepForSdk
    @VisibleForTesting
    public GoogleServices(String str, boolean z) {
        this.f29110a = str;
        this.f29111b = Status.RESULT_SUCCESS;
        this.f29112c = z;
        this.f29113d = !z;
    }

    @KeepForSdk
    /* renamed from: b */
    public static GoogleServices m21999b(String str) {
        GoogleServices googleServices;
        synchronized (f29108e) {
            googleServices = f29109f;
            if (googleServices == null) {
                throw new IllegalStateException("Initialize must be called before " + str + ".");
            }
        }
        return googleServices;
    }

    @KeepForSdk
    @VisibleForTesting
    /* renamed from: c */
    public static void m22000c() {
        synchronized (f29108e) {
            f29109f = null;
        }
    }

    @Nullable
    @KeepForSdk
    public static String getGoogleAppId() {
        return m21999b("getGoogleAppId").f29110a;
    }

    @NonNull
    @KeepForSdk
    public static Status initialize(@NonNull Context context) {
        Status status;
        Preconditions.checkNotNull(context, "Context must not be null.");
        synchronized (f29108e) {
            if (f29109f == null) {
                f29109f = new GoogleServices(context);
            }
            status = f29109f.f29111b;
        }
        return status;
    }

    @KeepForSdk
    public static boolean isMeasurementEnabled() {
        GoogleServices m21999b = m21999b("isMeasurementEnabled");
        return m21999b.f29111b.isSuccess() && m21999b.f29112c;
    }

    @KeepForSdk
    public static boolean isMeasurementExplicitlyDisabled() {
        return m21999b("isMeasurementExplicitlyDisabled").f29113d;
    }

    @KeepForSdk
    @VisibleForTesting
    /* renamed from: a */
    public Status m22001a(String str) {
        String str2 = this.f29110a;
        if (str2 == null || str2.equals(str)) {
            return Status.RESULT_SUCCESS;
        }
        return new Status(10, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: '" + this.f29110a + "'.");
    }

    @KeepForSdk
    @VisibleForTesting
    public GoogleServices(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(C5051R.string.common_google_play_services_unknown_issue));
        if (identifier != 0) {
            int integer = resources.getInteger(identifier);
            boolean z = integer == 0;
            r2 = integer != 0;
            this.f29113d = z;
        } else {
            this.f29113d = false;
        }
        this.f29112c = r2;
        String zzb = zzah.zzb(context);
        zzb = zzb == null ? new StringResourceValueReader(context).getString(FirebaseOptions.f35530i) : zzb;
        if (TextUtils.isEmpty(zzb)) {
            this.f29111b = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f29110a = null;
        } else {
            this.f29110a = zzb;
            this.f29111b = Status.RESULT_SUCCESS;
        }
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static Status initialize(@NonNull Context context, @NonNull String str, boolean z) {
        Preconditions.checkNotNull(context, "Context must not be null.");
        Preconditions.checkNotEmpty(str, "App ID must be nonempty.");
        synchronized (f29108e) {
            GoogleServices googleServices = f29109f;
            if (googleServices != null) {
                return googleServices.m22001a(str);
            }
            GoogleServices googleServices2 = new GoogleServices(str, z);
            f29109f = googleServices2;
            return googleServices2.f29111b;
        }
    }
}
