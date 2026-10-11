package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AuthenticationExtensionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes5.dex */
public class AuthenticationExtensions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthenticationExtensions> CREATOR = new zzd();

    @Nullable
    @SafeParcelable.Field(getter = "getFidoAppIdExtension", m22176id = 2)
    private final FidoAppIdExtension zza;

    @Nullable
    @SafeParcelable.Field(getter = "getCableAuthenticationExtension", m22176id = 3)
    private final zzs zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getUserVerificationMethodExtension", m22176id = 4)
    private final UserVerificationMethodExtension zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getGoogleMultiAssertionExtension", m22176id = 5)
    private final zzz zzd;

    @Nullable
    @SafeParcelable.Field(getter = "getGoogleSessionIdExtension", m22176id = 6)
    private final zzab zze;

    @Nullable
    @SafeParcelable.Field(getter = "getGoogleSilentVerificationExtension", m22176id = 7)
    private final zzad zzf;

    @Nullable
    @SafeParcelable.Field(getter = "getDevicePublicKeyExtension", m22176id = 8)
    private final zzu zzg;

    @Nullable
    @SafeParcelable.Field(getter = "getGoogleTunnelServerIdExtension", m22176id = 9)
    private final zzag zzh;

    @Nullable
    @SafeParcelable.Field(getter = "getGoogleThirdPartyPaymentExtension", m22176id = 10)
    private final GoogleThirdPartyPaymentExtension zzi;

    @Nullable
    @SafeParcelable.Field(getter = "getPrfExtension", m22176id = 11)
    private final zzai zzj;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public FidoAppIdExtension f29541a;

        /* renamed from: b */
        public UserVerificationMethodExtension f29542b;

        /* renamed from: c */
        public zzs f29543c;

        /* renamed from: d */
        public zzz f29544d;

        /* renamed from: e */
        public zzab f29545e;

        /* renamed from: f */
        public zzad f29546f;

        /* renamed from: g */
        public zzu f29547g;

        /* renamed from: h */
        public zzag f29548h;

        /* renamed from: i */
        public GoogleThirdPartyPaymentExtension f29549i;

        /* renamed from: j */
        public zzai f29550j;

        public Builder() {
        }

        @NonNull
        public AuthenticationExtensions build() {
            return new AuthenticationExtensions(this.f29541a, this.f29543c, this.f29542b, this.f29544d, this.f29545e, this.f29546f, this.f29547g, this.f29548h, this.f29549i, this.f29550j);
        }

        @NonNull
        public Builder setFido2Extension(@Nullable FidoAppIdExtension fidoAppIdExtension) {
            this.f29541a = fidoAppIdExtension;
            return this;
        }

        @NonNull
        public Builder setGoogleThirdPartyPaymentExtension(@Nullable GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension) {
            this.f29549i = googleThirdPartyPaymentExtension;
            return this;
        }

        @NonNull
        public Builder setUserVerificationMethodExtension(@Nullable UserVerificationMethodExtension userVerificationMethodExtension) {
            this.f29542b = userVerificationMethodExtension;
            return this;
        }

        public Builder(@Nullable AuthenticationExtensions authenticationExtensions) {
            if (authenticationExtensions != null) {
                this.f29541a = authenticationExtensions.getFidoAppIdExtension();
                this.f29542b = authenticationExtensions.getUserVerificationMethodExtension();
                this.f29543c = authenticationExtensions.zza();
                this.f29544d = authenticationExtensions.zzc();
                this.f29545e = authenticationExtensions.zzd();
                this.f29546f = authenticationExtensions.zze();
                this.f29547g = authenticationExtensions.zzb();
                this.f29548h = authenticationExtensions.zzg();
                this.f29549i = authenticationExtensions.zzf();
                this.f29550j = authenticationExtensions.zzh();
            }
        }
    }

    @SafeParcelable.Constructor
    public AuthenticationExtensions(@Nullable @SafeParcelable.Param(m22177id = 2) FidoAppIdExtension fidoAppIdExtension, @Nullable @SafeParcelable.Param(m22177id = 3) zzs zzsVar, @Nullable @SafeParcelable.Param(m22177id = 4) UserVerificationMethodExtension userVerificationMethodExtension, @Nullable @SafeParcelable.Param(m22177id = 5) zzz zzzVar, @Nullable @SafeParcelable.Param(m22177id = 6) zzab zzabVar, @Nullable @SafeParcelable.Param(m22177id = 7) zzad zzadVar, @Nullable @SafeParcelable.Param(m22177id = 8) zzu zzuVar, @Nullable @SafeParcelable.Param(m22177id = 9) zzag zzagVar, @Nullable @SafeParcelable.Param(m22177id = 10) GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension, @Nullable @SafeParcelable.Param(m22177id = 11) zzai zzaiVar) {
        this.zza = fidoAppIdExtension;
        this.zzc = userVerificationMethodExtension;
        this.zzb = zzsVar;
        this.zzd = zzzVar;
        this.zze = zzabVar;
        this.zzf = zzadVar;
        this.zzg = zzuVar;
        this.zzh = zzagVar;
        this.zzi = googleThirdPartyPaymentExtension;
        this.zzj = zzaiVar;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof AuthenticationExtensions)) {
            return false;
        }
        AuthenticationExtensions authenticationExtensions = (AuthenticationExtensions) obj;
        return Objects.equal(this.zza, authenticationExtensions.zza) && Objects.equal(this.zzb, authenticationExtensions.zzb) && Objects.equal(this.zzc, authenticationExtensions.zzc) && Objects.equal(this.zzd, authenticationExtensions.zzd) && Objects.equal(this.zze, authenticationExtensions.zze) && Objects.equal(this.zzf, authenticationExtensions.zzf) && Objects.equal(this.zzg, authenticationExtensions.zzg) && Objects.equal(this.zzh, authenticationExtensions.zzh) && Objects.equal(this.zzi, authenticationExtensions.zzi) && Objects.equal(this.zzj, authenticationExtensions.zzj);
    }

    @Nullable
    public FidoAppIdExtension getFidoAppIdExtension() {
        return this.zza;
    }

    @Nullable
    public UserVerificationMethodExtension getUserVerificationMethodExtension() {
        return this.zzc;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getFidoAppIdExtension(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, getUserVerificationMethodExtension(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zze, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzf, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.zzh, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzj, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final zzs zza() {
        return this.zzb;
    }

    @Nullable
    public final zzu zzb() {
        return this.zzg;
    }

    @Nullable
    public final zzz zzc() {
        return this.zzd;
    }

    @Nullable
    public final zzab zzd() {
        return this.zze;
    }

    @Nullable
    public final zzad zze() {
        return this.zzf;
    }

    @Nullable
    public final GoogleThirdPartyPaymentExtension zzf() {
        return this.zzi;
    }

    @Nullable
    public final zzag zzg() {
        return this.zzh;
    }

    @Nullable
    public final zzai zzh() {
        return this.zzj;
    }
}
