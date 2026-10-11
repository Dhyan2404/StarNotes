package com.google.android.gms.common;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.RestrictedInheritance;
import com.sunia.HTREnginev2.bsp;
import com.sunia.HTREnginev2.rfp;
import com.sunia.HTREnginev2.tfp;
import com.sunia.HTREnginev2.ypp;

@CheckReturnValue
@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*javatests.*/com/google/android/gms/common/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes5.dex */
public class PackageSignatureVerifier {

    /* renamed from: a */
    @Nullable
    public static tfp f29028a;

    /* renamed from: b */
    @Nullable
    @VisibleForTesting
    public static volatile rfp f29029b;

    /* renamed from: a */
    public static tfp m21955a(Context context) {
        tfp tfpVar;
        synchronized (PackageSignatureVerifier.class) {
            if (f29028a == null) {
                f29028a = new tfp(context);
            }
            tfpVar = f29028a;
        }
        return tfpVar;
    }

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public PackageVerificationResult queryPackageSignatureVerified(@NonNull Context context, @NonNull String str) {
        PackageVerificationResult packageVerificationResult;
        String str2;
        PackageVerificationResult packageVerificationResult2;
        boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(context);
        m21955a(context);
        if (!ypp.m58465f()) {
            throw new zzae();
        }
        String concat = String.valueOf(str).concat(true != honorsDebugCertificates ? "-0" : "-1");
        if (f29029b != null) {
            str2 = f29029b.f83057a;
            if (str2.equals(concat)) {
                packageVerificationResult2 = f29029b.f83058b;
                return packageVerificationResult2;
            }
        }
        m21955a(context);
        bsp m58462c = ypp.m58462c(str, honorsDebugCertificates, false, false);
        if (!m58462c.f66104a) {
            Preconditions.checkNotNull(m58462c.f66105b);
            return PackageVerificationResult.zza(str, m58462c.f66105b, m58462c.f66106c);
        }
        f29029b = new rfp(concat, PackageVerificationResult.zzd(str, m58462c.f66107d));
        packageVerificationResult = f29029b.f83058b;
        return packageVerificationResult;
    }

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public PackageVerificationResult queryPackageSignatureVerifiedWithRetry(@NonNull Context context, @NonNull String str) {
        try {
            PackageVerificationResult queryPackageSignatureVerified = queryPackageSignatureVerified(context, str);
            queryPackageSignatureVerified.zzb();
            return queryPackageSignatureVerified;
        } catch (SecurityException e) {
            PackageVerificationResult queryPackageSignatureVerified2 = queryPackageSignatureVerified(context, str);
            if (!queryPackageSignatureVerified2.zzc()) {
                return queryPackageSignatureVerified2;
            }
            Log.e("PkgSignatureVerifier", "Got flaky result during package signature verification", e);
            return queryPackageSignatureVerified2;
        }
    }
}
