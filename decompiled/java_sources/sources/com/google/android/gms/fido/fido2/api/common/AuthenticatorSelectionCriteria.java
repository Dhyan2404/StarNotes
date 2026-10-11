package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;

@SafeParcelable.Class(creator = "AuthenticatorSelectionCriteriaCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes5.dex */
public class AuthenticatorSelectionCriteria extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthenticatorSelectionCriteria> CREATOR = new zzm();

    @Nullable
    @SafeParcelable.Field(getter = "getAttachmentAsString", m22176id = 2, type = "java.lang.String")
    private final Attachment zza;

    @Nullable
    @SafeParcelable.Field(getter = "getRequireResidentKey", m22176id = 3)
    private final Boolean zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getRequireUserVerificationAsString", m22176id = 4, type = "java.lang.String")
    private final zzay zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getResidentKeyRequirementAsString", m22176id = 5, type = "java.lang.String")
    private final ResidentKeyRequirement zzd;

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a */
        public Attachment f29553a;

        /* renamed from: b */
        public Boolean f29554b;

        /* renamed from: c */
        public ResidentKeyRequirement f29555c;

        @NonNull
        public AuthenticatorSelectionCriteria build() {
            Attachment attachment = this.f29553a;
            String attachment2 = attachment == null ? null : attachment.toString();
            Boolean bool = this.f29554b;
            ResidentKeyRequirement residentKeyRequirement = this.f29555c;
            return new AuthenticatorSelectionCriteria(attachment2, bool, null, residentKeyRequirement == null ? null : residentKeyRequirement.toString());
        }

        @NonNull
        public Builder setAttachment(@Nullable Attachment attachment) {
            this.f29553a = attachment;
            return this;
        }

        @NonNull
        public Builder setRequireResidentKey(@Nullable Boolean bool) {
            this.f29554b = bool;
            return this;
        }

        @NonNull
        public Builder setResidentKeyRequirement(@Nullable ResidentKeyRequirement residentKeyRequirement) {
            this.f29555c = residentKeyRequirement;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public AuthenticatorSelectionCriteria(@Nullable @SafeParcelable.Param(m22177id = 2) String str, @Nullable @SafeParcelable.Param(m22177id = 3) Boolean bool, @Nullable @SafeParcelable.Param(m22177id = 4) String str2, @Nullable @SafeParcelable.Param(m22177id = 5) String str3) {
        Attachment fromString;
        ResidentKeyRequirement residentKeyRequirement = null;
        if (str == null) {
            fromString = null;
        } else {
            try {
                fromString = Attachment.fromString(str);
            } catch (Attachment.UnsupportedAttachmentException | ResidentKeyRequirement.UnsupportedResidentKeyRequirementException | zzax e) {
                throw new IllegalArgumentException(e);
            }
        }
        this.zza = fromString;
        this.zzb = bool;
        this.zzc = str2 == null ? null : zzay.zza(str2);
        if (str3 != null) {
            residentKeyRequirement = ResidentKeyRequirement.fromString(str3);
        }
        this.zzd = residentKeyRequirement;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof AuthenticatorSelectionCriteria)) {
            return false;
        }
        AuthenticatorSelectionCriteria authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) obj;
        return Objects.equal(this.zza, authenticatorSelectionCriteria.zza) && Objects.equal(this.zzb, authenticatorSelectionCriteria.zzb) && Objects.equal(this.zzc, authenticatorSelectionCriteria.zzc) && Objects.equal(getResidentKeyRequirement(), authenticatorSelectionCriteria.getResidentKeyRequirement());
    }

    @Nullable
    public Attachment getAttachment() {
        return this.zza;
    }

    @Nullable
    public String getAttachmentAsString() {
        Attachment attachment = this.zza;
        if (attachment == null) {
            return null;
        }
        return attachment.toString();
    }

    @Nullable
    public Boolean getRequireResidentKey() {
        return this.zzb;
    }

    @Nullable
    public ResidentKeyRequirement getResidentKeyRequirement() {
        ResidentKeyRequirement residentKeyRequirement = this.zzd;
        if (residentKeyRequirement == null) {
            Boolean bool = this.zzb;
            residentKeyRequirement = null;
            if (bool != null && bool.booleanValue()) {
                return ResidentKeyRequirement.RESIDENT_KEY_REQUIRED;
            }
        }
        return residentKeyRequirement;
    }

    @Nullable
    public String getResidentKeyRequirementAsString() {
        if (getResidentKeyRequirement() == null) {
            return null;
        }
        return getResidentKeyRequirement().toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, getResidentKeyRequirement());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAttachmentAsString(), false);
        SafeParcelWriter.writeBooleanObject(parcel, 3, getRequireResidentKey(), false);
        zzay zzayVar = this.zzc;
        SafeParcelWriter.writeString(parcel, 4, zzayVar == null ? null : zzayVar.toString(), false);
        SafeParcelWriter.writeString(parcel, 5, getResidentKeyRequirementAsString(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
