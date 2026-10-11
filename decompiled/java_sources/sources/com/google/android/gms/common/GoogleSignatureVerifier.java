package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.RestrictedInheritance;
import com.sunia.HTREnginev2.bsp;
import com.sunia.HTREnginev2.fnp;
import com.sunia.HTREnginev2.rmp;
import com.sunia.HTREnginev2.ypp;
import java.util.Set;
import javax.annotation.Nullable;

@CheckReturnValue
@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes5.dex */
public class GoogleSignatureVerifier {

    /* renamed from: c */
    @Nullable
    public static GoogleSignatureVerifier f29024c;

    /* renamed from: d */
    @Nullable
    public static volatile Set f29025d;

    /* renamed from: a */
    public final Context f29026a;

    /* renamed from: b */
    public volatile String f29027b;

    public GoogleSignatureVerifier(@NonNull Context context) {
        this.f29026a = context.getApplicationContext();
    }

    @Nullable
    /* renamed from: a */
    public static final rmp m21953a(PackageInfo packageInfo, rmp... rmpVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            fnp fnpVar = new fnp(packageInfo.signatures[0].toByteArray());
            for (int i = 0; i < rmpVarArr.length; i++) {
                if (rmpVarArr[i].equals(fnpVar)) {
                    return rmpVarArr[i];
                }
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static GoogleSignatureVerifier getInstance(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        synchronized (GoogleSignatureVerifier.class) {
            if (f29024c == null) {
                ypp.m58464e(context);
                f29024c = new GoogleSignatureVerifier(context);
            }
        }
        return f29024c;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean zzb(@androidx.annotation.NonNull android.content.pm.PackageInfo r4, boolean r5) {
        /*
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L2a
            if (r4 == 0) goto L28
            java.lang.String r2 = "com.android.vending"
            java.lang.String r3 = r4.packageName
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L1a
            java.lang.String r2 = r4.packageName
            java.lang.String r3 = "com.google.android.gms"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L2a
        L1a:
            android.content.pm.ApplicationInfo r5 = r4.applicationInfo
            if (r5 != 0) goto L20
        L1e:
            r5 = r1
            goto L2a
        L20:
            int r5 = r5.flags
            r5 = r5 & 129(0x81, float:1.81E-43)
            if (r5 == 0) goto L1e
            r5 = r0
            goto L2a
        L28:
            r2 = 0
            goto L2b
        L2a:
            r2 = r4
        L2b:
            if (r4 == 0) goto L49
            android.content.pm.Signature[] r4 = r2.signatures
            if (r4 == 0) goto L49
            if (r5 == 0) goto L3a
            com.sunia.HTREnginev2.rmp[] r4 = com.sunia.HTREnginev2.zop.f92050a
            com.sunia.HTREnginev2.rmp r4 = m21953a(r2, r4)
            goto L46
        L3a:
            com.sunia.HTREnginev2.rmp[] r4 = new com.sunia.HTREnginev2.rmp[r0]
            com.sunia.HTREnginev2.rmp[] r5 = com.sunia.HTREnginev2.zop.f92050a
            r5 = r5[r1]
            r4[r1] = r5
            com.sunia.HTREnginev2.rmp r4 = m21953a(r2, r4)
        L46:
            if (r4 == 0) goto L49
            return r0
        L49:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.GoogleSignatureVerifier.zzb(android.content.pm.PackageInfo, boolean):boolean");
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    /* renamed from: b */
    public final bsp m21954b(@Nullable String str, boolean z, boolean z2) {
        bsp m53338c;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return bsp.m53338c("null pkg");
        }
        if (str.equals(this.f29027b)) {
            return bsp.m53337b();
        }
        if (ypp.m58466g()) {
            m53338c = ypp.m58461b(str, GooglePlayServicesUtilLight.honorsDebugCertificates(this.f29026a), false, false);
        } else {
            try {
                PackageInfo packageInfo = this.f29026a.getPackageManager().getPackageInfo(str, 64);
                boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.f29026a);
                if (packageInfo == null) {
                    m53338c = bsp.m53338c("null pkg");
                } else {
                    Signature[] signatureArr = packageInfo.signatures;
                    if (signatureArr == null || signatureArr.length != 1) {
                        m53338c = bsp.m53338c("single cert required");
                    } else {
                        fnp fnpVar = new fnp(packageInfo.signatures[0].toByteArray());
                        String str2 = packageInfo.packageName;
                        bsp m58460a = ypp.m58460a(str2, fnpVar, honorsDebugCertificates, false);
                        m53338c = (!m58460a.f66104a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !ypp.m58460a(str2, fnpVar, false, true).f66104a) ? m58460a : bsp.m53338c("debuggable release cert app rejected");
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                return bsp.m53339d("no pkg ".concat(str), e);
            }
        }
        if (m53338c.f66104a) {
            this.f29027b = str;
        }
        return m53338c;
    }

    @KeepForSdk
    public boolean isGooglePublicSignedPackage(@NonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zzb(packageInfo, false)) {
            return true;
        }
        if (zzb(packageInfo, true)) {
            if (GooglePlayServicesUtilLight.honorsDebugCertificates(this.f29026a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean isPackageGoogleSigned(@Nullable String str) {
        bsp m21954b = m21954b(str, false, false);
        m21954b.m53343e();
        return m21954b.f66104a;
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean isUidGoogleSigned(int i) {
        bsp m53338c;
        int length;
        String[] packagesForUid = this.f29026a.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            m53338c = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    Preconditions.checkNotNull(m53338c);
                    break;
                }
                m53338c = m21954b(packagesForUid[i2], false, false);
                if (m53338c.f66104a) {
                    break;
                }
                i2++;
            }
        } else {
            m53338c = bsp.m53338c("no pkgs");
        }
        m53338c.m53343e();
        return m53338c.f66104a;
    }
}
