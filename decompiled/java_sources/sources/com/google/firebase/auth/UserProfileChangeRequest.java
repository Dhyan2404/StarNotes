package com.google.firebase.auth;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "UserProfileChangeRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes6.dex */
public class UserProfileChangeRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<UserProfileChangeRequest> CREATOR = new zzav();

    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", m22176id = 2)
    private String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getPhotoUrl", m22176id = 3)
    private String zzb;

    @SafeParcelable.Field(getter = "shouldRemoveDisplayName", m22176id = 4)
    private boolean zzc;

    @SafeParcelable.Field(getter = "shouldRemovePhotoUri", m22176id = 5)
    private boolean zzd;

    @Nullable
    private Uri zze;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @Nullable
        public String f35660a;

        /* renamed from: b */
        @Nullable
        public Uri f35661b;

        /* renamed from: c */
        public boolean f35662c;

        /* renamed from: d */
        public boolean f35663d;

        @NonNull
        public UserProfileChangeRequest build() {
            String str = this.f35660a;
            Uri uri = this.f35661b;
            return new UserProfileChangeRequest(str, uri == null ? null : uri.toString(), this.f35662c, this.f35663d);
        }

        @Nullable
        @KeepForSdk
        public String getDisplayName() {
            return this.f35660a;
        }

        @Nullable
        @KeepForSdk
        public Uri getPhotoUri() {
            return this.f35661b;
        }

        @NonNull
        public Builder setDisplayName(@Nullable String str) {
            if (str == null) {
                this.f35662c = true;
            } else {
                this.f35660a = str;
            }
            return this;
        }

        @NonNull
        public Builder setPhotoUri(@Nullable Uri uri) {
            if (uri == null) {
                this.f35663d = true;
            } else {
                this.f35661b = uri;
            }
            return this;
        }
    }

    @SafeParcelable.Constructor
    public UserProfileChangeRequest(@Nullable @SafeParcelable.Param(m22177id = 2) String str, @Nullable @SafeParcelable.Param(m22177id = 3) String str2, @SafeParcelable.Param(m22177id = 4) boolean z, @SafeParcelable.Param(m22177id = 5) boolean z2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = z;
        this.zzd = z2;
        this.zze = TextUtils.isEmpty(str2) ? null : Uri.parse(str2);
    }

    @Nullable
    public String getDisplayName() {
        return this.zza;
    }

    @Nullable
    public Uri getPhotoUri() {
        return this.zze;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getDisplayName(), false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final String zza() {
        return this.zzb;
    }

    public final boolean zzb() {
        return this.zzc;
    }

    public final boolean zzc() {
        return this.zzd;
    }
}
