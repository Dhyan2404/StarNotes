package com.google.android.gms.common;

import androidx.annotation.NonNull;
import com.google.errorprone.annotations.CheckReturnValue;
import javax.annotation.Nullable;

@CheckReturnValue
/* loaded from: classes5.dex */
public class PackageVerificationResult {

    /* renamed from: a */
    public final String f29030a;

    /* renamed from: b */
    public final boolean f29031b;

    /* renamed from: c */
    @Nullable
    public final String f29032c;

    /* renamed from: d */
    @Nullable
    public final Throwable f29033d;

    public PackageVerificationResult(String str, int i, boolean z, @Nullable String str2, @Nullable Throwable th) {
        this.f29030a = str;
        this.f29031b = z;
        this.f29032c = str2;
        this.f29033d = th;
    }

    @NonNull
    public static PackageVerificationResult zza(@NonNull String str, @NonNull String str2, @Nullable Throwable th) {
        return new PackageVerificationResult(str, 1, false, str2, th);
    }

    @NonNull
    public static PackageVerificationResult zzd(@NonNull String str, int i) {
        return new PackageVerificationResult(str, i, true, null, null);
    }

    public final void zzb() {
        if (this.f29031b) {
            return;
        }
        String str = this.f29032c;
        Throwable th = this.f29033d;
        String concat = "PackageVerificationRslt: ".concat(String.valueOf(str));
        if (th == null) {
            throw new SecurityException(concat);
        }
        throw new SecurityException(concat, th);
    }

    public final boolean zzc() {
        return this.f29031b;
    }
}
