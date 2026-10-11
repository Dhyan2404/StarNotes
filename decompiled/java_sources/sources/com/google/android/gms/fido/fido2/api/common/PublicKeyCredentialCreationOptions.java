package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;
import java.util.Arrays;
import java.util.List;

@SafeParcelable.Class(creator = "PublicKeyCredentialCreationOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes5.dex */
public class PublicKeyCredentialCreationOptions extends RequestOptions {

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialCreationOptions> CREATOR = new zzak();

    @NonNull
    @SafeParcelable.Field(getter = "getRp", m22176id = 2)
    private final PublicKeyCredentialRpEntity zza;

    @NonNull
    @SafeParcelable.Field(getter = "getUser", m22176id = 3)
    private final PublicKeyCredentialUserEntity zzb;

    @NonNull
    @SafeParcelable.Field(getter = "getChallenge", m22176id = 4)
    private final byte[] zzc;

    @NonNull
    @SafeParcelable.Field(getter = "getParameters", m22176id = 5)
    private final List zzd;

    @Nullable
    @SafeParcelable.Field(getter = "getTimeoutSeconds", m22176id = 6)
    private final Double zze;

    @Nullable
    @SafeParcelable.Field(getter = "getExcludeList", m22176id = 7)
    private final List zzf;

    @Nullable
    @SafeParcelable.Field(getter = "getAuthenticatorSelection", m22176id = 8)
    private final AuthenticatorSelectionCriteria zzg;

    @Nullable
    @SafeParcelable.Field(getter = "getRequestId", m22176id = 9)
    private final Integer zzh;

    @Nullable
    @SafeParcelable.Field(getter = "getTokenBinding", m22176id = 10)
    private final TokenBinding zzi;

    @Nullable
    @SafeParcelable.Field(getter = "getAttestationConveyancePreferenceAsString", m22176id = 11, type = "java.lang.String")
    private final AttestationConveyancePreference zzj;

    @Nullable
    @SafeParcelable.Field(getter = "getAuthenticationExtensions", m22176id = 12)
    private final AuthenticationExtensions zzk;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public PublicKeyCredentialRpEntity f29567a;

        /* renamed from: b */
        public PublicKeyCredentialUserEntity f29568b;

        /* renamed from: c */
        public byte[] f29569c;

        /* renamed from: d */
        public List f29570d;

        /* renamed from: e */
        public Double f29571e;

        /* renamed from: f */
        public List f29572f;

        /* renamed from: g */
        public AuthenticatorSelectionCriteria f29573g;

        /* renamed from: h */
        public Integer f29574h;

        /* renamed from: i */
        public TokenBinding f29575i;

        /* renamed from: j */
        public AttestationConveyancePreference f29576j;

        /* renamed from: k */
        public AuthenticationExtensions f29577k;

        @NonNull
        public PublicKeyCredentialCreationOptions build() {
            PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = this.f29567a;
            PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = this.f29568b;
            byte[] bArr = this.f29569c;
            List list = this.f29570d;
            Double d = this.f29571e;
            List list2 = this.f29572f;
            AuthenticatorSelectionCriteria authenticatorSelectionCriteria = this.f29573g;
            Integer num = this.f29574h;
            TokenBinding tokenBinding = this.f29575i;
            AttestationConveyancePreference attestationConveyancePreference = this.f29576j;
            return new PublicKeyCredentialCreationOptions(publicKeyCredentialRpEntity, publicKeyCredentialUserEntity, bArr, list, d, list2, authenticatorSelectionCriteria, num, tokenBinding, attestationConveyancePreference == null ? null : attestationConveyancePreference.toString(), this.f29577k);
        }

        @NonNull
        public Builder setAttestationConveyancePreference(@Nullable AttestationConveyancePreference attestationConveyancePreference) {
            this.f29576j = attestationConveyancePreference;
            return this;
        }

        @NonNull
        public Builder setAuthenticationExtensions(@Nullable AuthenticationExtensions authenticationExtensions) {
            this.f29577k = authenticationExtensions;
            return this;
        }

        @NonNull
        public Builder setAuthenticatorSelection(@Nullable AuthenticatorSelectionCriteria authenticatorSelectionCriteria) {
            this.f29573g = authenticatorSelectionCriteria;
            return this;
        }

        @NonNull
        public Builder setChallenge(@NonNull byte[] bArr) {
            this.f29569c = (byte[]) Preconditions.checkNotNull(bArr);
            return this;
        }

        @NonNull
        public Builder setExcludeList(@Nullable List<PublicKeyCredentialDescriptor> list) {
            this.f29572f = list;
            return this;
        }

        @NonNull
        public Builder setParameters(@NonNull List<PublicKeyCredentialParameters> list) {
            this.f29570d = (List) Preconditions.checkNotNull(list);
            return this;
        }

        @NonNull
        public Builder setRequestId(@Nullable Integer num) {
            this.f29574h = num;
            return this;
        }

        @NonNull
        public Builder setRp(@NonNull PublicKeyCredentialRpEntity publicKeyCredentialRpEntity) {
            this.f29567a = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(publicKeyCredentialRpEntity);
            return this;
        }

        @NonNull
        public Builder setTimeoutSeconds(@Nullable Double d) {
            this.f29571e = d;
            return this;
        }

        @NonNull
        public Builder setTokenBinding(@Nullable TokenBinding tokenBinding) {
            this.f29575i = tokenBinding;
            return this;
        }

        @NonNull
        public Builder setUser(@NonNull PublicKeyCredentialUserEntity publicKeyCredentialUserEntity) {
            this.f29568b = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
            return this;
        }
    }

    @SafeParcelable.Constructor
    public PublicKeyCredentialCreationOptions(@NonNull @SafeParcelable.Param(m22177id = 2) PublicKeyCredentialRpEntity publicKeyCredentialRpEntity, @NonNull @SafeParcelable.Param(m22177id = 3) PublicKeyCredentialUserEntity publicKeyCredentialUserEntity, @NonNull @SafeParcelable.Param(m22177id = 4) byte[] bArr, @NonNull @SafeParcelable.Param(m22177id = 5) List list, @Nullable @SafeParcelable.Param(m22177id = 6) Double d, @Nullable @SafeParcelable.Param(m22177id = 7) List list2, @Nullable @SafeParcelable.Param(m22177id = 8) AuthenticatorSelectionCriteria authenticatorSelectionCriteria, @Nullable @SafeParcelable.Param(m22177id = 9) Integer num, @Nullable @SafeParcelable.Param(m22177id = 10) TokenBinding tokenBinding, @Nullable @SafeParcelable.Param(m22177id = 11) String str, @Nullable @SafeParcelable.Param(m22177id = 12) AuthenticationExtensions authenticationExtensions) {
        this.zza = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(publicKeyCredentialRpEntity);
        this.zzb = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
        this.zzc = (byte[]) Preconditions.checkNotNull(bArr);
        this.zzd = (List) Preconditions.checkNotNull(list);
        this.zze = d;
        this.zzf = list2;
        this.zzg = authenticatorSelectionCriteria;
        this.zzh = num;
        this.zzi = tokenBinding;
        if (str != null) {
            try {
                this.zzj = AttestationConveyancePreference.fromString(str);
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            this.zzj = null;
        }
        this.zzk = authenticationExtensions;
    }

    @NonNull
    public static PublicKeyCredentialCreationOptions deserializeFromBytes(@NonNull byte[] bArr) {
        return (PublicKeyCredentialCreationOptions) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(@NonNull Object obj) {
        List list;
        List list2;
        if (!(obj instanceof PublicKeyCredentialCreationOptions)) {
            return false;
        }
        PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) obj;
        return Objects.equal(this.zza, publicKeyCredentialCreationOptions.zza) && Objects.equal(this.zzb, publicKeyCredentialCreationOptions.zzb) && Arrays.equals(this.zzc, publicKeyCredentialCreationOptions.zzc) && Objects.equal(this.zze, publicKeyCredentialCreationOptions.zze) && this.zzd.containsAll(publicKeyCredentialCreationOptions.zzd) && publicKeyCredentialCreationOptions.zzd.containsAll(this.zzd) && (((list = this.zzf) == null && publicKeyCredentialCreationOptions.zzf == null) || (list != null && (list2 = publicKeyCredentialCreationOptions.zzf) != null && list.containsAll(list2) && publicKeyCredentialCreationOptions.zzf.containsAll(this.zzf))) && Objects.equal(this.zzg, publicKeyCredentialCreationOptions.zzg) && Objects.equal(this.zzh, publicKeyCredentialCreationOptions.zzh) && Objects.equal(this.zzi, publicKeyCredentialCreationOptions.zzi) && Objects.equal(this.zzj, publicKeyCredentialCreationOptions.zzj) && Objects.equal(this.zzk, publicKeyCredentialCreationOptions.zzk);
    }

    @Nullable
    public AttestationConveyancePreference getAttestationConveyancePreference() {
        return this.zzj;
    }

    @Nullable
    public String getAttestationConveyancePreferenceAsString() {
        AttestationConveyancePreference attestationConveyancePreference = this.zzj;
        if (attestationConveyancePreference == null) {
            return null;
        }
        return attestationConveyancePreference.toString();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @Nullable
    public AuthenticationExtensions getAuthenticationExtensions() {
        return this.zzk;
    }

    @Nullable
    public AuthenticatorSelectionCriteria getAuthenticatorSelection() {
        return this.zzg;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @NonNull
    public byte[] getChallenge() {
        return this.zzc;
    }

    @Nullable
    public List<PublicKeyCredentialDescriptor> getExcludeList() {
        return this.zzf;
    }

    @NonNull
    public List<PublicKeyCredentialParameters> getParameters() {
        return this.zzd;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @Nullable
    public Integer getRequestId() {
        return this.zzh;
    }

    @NonNull
    public PublicKeyCredentialRpEntity getRp() {
        return this.zza;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @Nullable
    public Double getTimeoutSeconds() {
        return this.zze;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @Nullable
    public TokenBinding getTokenBinding() {
        return this.zzi;
    }

    @NonNull
    public PublicKeyCredentialUserEntity getUser() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, Integer.valueOf(Arrays.hashCode(this.zzc)), this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    @NonNull
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getRp(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, getUser(), i, false);
        SafeParcelWriter.writeByteArray(parcel, 4, getChallenge(), false);
        SafeParcelWriter.writeTypedList(parcel, 5, getParameters(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 6, getTimeoutSeconds(), false);
        SafeParcelWriter.writeTypedList(parcel, 7, getExcludeList(), false);
        SafeParcelWriter.writeParcelable(parcel, 8, getAuthenticatorSelection(), i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 9, getRequestId(), false);
        SafeParcelWriter.writeParcelable(parcel, 10, getTokenBinding(), i, false);
        SafeParcelWriter.writeString(parcel, 11, getAttestationConveyancePreferenceAsString(), false);
        SafeParcelWriter.writeParcelable(parcel, 12, getAuthenticationExtensions(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
