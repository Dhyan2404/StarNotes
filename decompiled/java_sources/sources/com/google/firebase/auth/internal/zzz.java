package com.google.firebase.auth.internal;

import androidx.annotation.Nullable;
import com.google.firebase.auth.FirebaseAuthSettings;

/* loaded from: classes6.dex */
public final class zzz extends FirebaseAuthSettings {

    /* renamed from: a */
    public String f35778a;

    /* renamed from: b */
    public String f35779b;

    /* renamed from: c */
    public boolean f35780c = false;

    /* renamed from: d */
    public boolean f35781d = false;

    @Override // com.google.firebase.auth.FirebaseAuthSettings
    public final void forceRecaptchaFlowForTesting(boolean z) {
        this.f35781d = z;
    }

    @Override // com.google.firebase.auth.FirebaseAuthSettings
    public final void setAppVerificationDisabledForTesting(boolean z) {
        this.f35780c = z;
    }

    @Override // com.google.firebase.auth.FirebaseAuthSettings
    public final void setAutoRetrievedSmsCodeForPhoneNumber(@Nullable String str, @Nullable String str2) {
        this.f35778a = str;
        this.f35779b = str2;
    }

    @Nullable
    public final String zza() {
        return this.f35778a;
    }

    @Nullable
    public final String zzb() {
        return this.f35779b;
    }

    public final boolean zzc() {
        return this.f35781d;
    }

    public final boolean zzd() {
        return (this.f35778a == null || this.f35779b == null) ? false : true;
    }

    public final boolean zze() {
        return this.f35780c;
    }
}
