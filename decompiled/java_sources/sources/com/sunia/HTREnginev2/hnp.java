package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;

/* loaded from: classes6.dex */
public final class hnp extends com.google.firebase.auth.internal.zzg {

    /* renamed from: a */
    @Nullable
    public final String f72393a;

    /* renamed from: b */
    @Nullable
    public final String f72394b;

    /* renamed from: c */
    @Nullable
    public final String f72395c;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof com.google.firebase.auth.internal.zzg) {
            com.google.firebase.auth.internal.zzg zzgVar = (com.google.firebase.auth.internal.zzg) obj;
            String str = this.f72393a;
            if (str != null ? str.equals(zzgVar.zzc()) : zzgVar.zzc() == null) {
                String str2 = this.f72394b;
                if (str2 != null ? str2.equals(zzgVar.zza()) : zzgVar.zza() == null) {
                    String str3 = this.f72395c;
                    if (str3 != null ? str3.equals(zzgVar.zzb()) : zzgVar.zzb() == null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f72393a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f72394b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f72395c;
        return hashCode2 ^ (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "AttestationResult{recaptchaV2Token=" + this.f72393a + ", playIntegrityToken=" + this.f72394b + ", recaptchaEnterpriseToken=" + this.f72395c + "}";
    }

    @Override // com.google.firebase.auth.internal.zzg
    @Nullable
    public final String zza() {
        return this.f72394b;
    }

    @Override // com.google.firebase.auth.internal.zzg
    @Nullable
    public final String zzb() {
        return this.f72395c;
    }

    @Override // com.google.firebase.auth.internal.zzg
    @Nullable
    public final String zzc() {
        return this.f72393a;
    }

    public hnp(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.f72393a = str;
        this.f72394b = str2;
        this.f72395c = null;
    }
}
