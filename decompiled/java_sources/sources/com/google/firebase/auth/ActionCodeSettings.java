package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ActionCodeSettingsCreator")
/* loaded from: classes6.dex */
public class ActionCodeSettings extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ActionCodeSettings> CREATOR = new zzb();

    @SafeParcelable.Field(getter = "getUrl", m22176id = 1)
    private final String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getIOSBundle", m22176id = 2)
    private final String zzb;

    @SafeParcelable.Field(getter = "getIOSAppStoreId", m22176id = 3)
    private final String zzc;

    @SafeParcelable.Field(getter = "getAndroidPackageName", m22176id = 4)
    private final String zzd;

    @SafeParcelable.Field(getter = "getAndroidInstallApp", m22176id = 5)
    private final boolean zze;

    @Nullable
    @SafeParcelable.Field(getter = "getAndroidMinimumVersion", m22176id = 6)
    private final String zzf;

    @SafeParcelable.Field(getter = "canHandleCodeInApp", m22176id = 7)
    private final boolean zzg;

    @SafeParcelable.Field(getter = "getLocaleHeader", m22176id = 8)
    private String zzh;

    @SafeParcelable.Field(getter = "getRequestType", m22176id = 9)
    private int zzi;

    @SafeParcelable.Field(getter = "getDynamicLinkDomain", m22176id = 10)
    private String zzj;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        public String f35583a;

        /* renamed from: b */
        @Nullable
        public String f35584b;

        /* renamed from: c */
        public String f35585c;

        /* renamed from: d */
        public boolean f35586d;

        /* renamed from: e */
        @Nullable
        public String f35587e;

        /* renamed from: f */
        public boolean f35588f;

        /* renamed from: g */
        public String f35589g;

        @NonNull
        public ActionCodeSettings build() {
            if (this.f35583a != null) {
                return new ActionCodeSettings(this);
            }
            throw new IllegalArgumentException("Cannot build ActionCodeSettings with null URL. Call #setUrl(String) before calling build()");
        }

        @NonNull
        public String getDynamicLinkDomain() {
            return this.f35589g;
        }

        public boolean getHandleCodeInApp() {
            return this.f35588f;
        }

        @Nullable
        public String getIOSBundleId() {
            return this.f35584b;
        }

        @NonNull
        public String getUrl() {
            return this.f35583a;
        }

        @NonNull
        public Builder setAndroidPackageName(@NonNull String str, boolean z, @Nullable String str2) {
            this.f35585c = str;
            this.f35586d = z;
            this.f35587e = str2;
            return this;
        }

        @NonNull
        public Builder setDynamicLinkDomain(@NonNull String str) {
            this.f35589g = str;
            return this;
        }

        @NonNull
        public Builder setHandleCodeInApp(boolean z) {
            this.f35588f = z;
            return this;
        }

        @NonNull
        public Builder setIOSBundleId(@Nullable String str) {
            this.f35584b = str;
            return this;
        }

        @NonNull
        public Builder setUrl(@NonNull String str) {
            this.f35583a = str;
            return this;
        }

        public Builder() {
            this.f35588f = false;
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }

    @NonNull
    public static ActionCodeSettings zzb() {
        return new ActionCodeSettings(new Builder());
    }

    public boolean canHandleCodeInApp() {
        return this.zzg;
    }

    public boolean getAndroidInstallApp() {
        return this.zze;
    }

    @Nullable
    public String getAndroidMinimumVersion() {
        return this.zzf;
    }

    @Nullable
    public String getAndroidPackageName() {
        return this.zzd;
    }

    @Nullable
    public String getIOSBundle() {
        return this.zzb;
    }

    @NonNull
    public String getUrl() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getUrl(), false);
        SafeParcelWriter.writeString(parcel, 2, getIOSBundle(), false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, getAndroidPackageName(), false);
        SafeParcelWriter.writeBoolean(parcel, 5, getAndroidInstallApp());
        SafeParcelWriter.writeString(parcel, 6, getAndroidMinimumVersion(), false);
        SafeParcelWriter.writeBoolean(parcel, 7, canHandleCodeInApp());
        SafeParcelWriter.writeString(parcel, 8, this.zzh, false);
        SafeParcelWriter.writeInt(parcel, 9, this.zzi);
        SafeParcelWriter.writeString(parcel, 10, this.zzj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zza() {
        return this.zzi;
    }

    @NonNull
    public final String zzc() {
        return this.zzj;
    }

    @Nullable
    public final String zzd() {
        return this.zzc;
    }

    @NonNull
    public final String zze() {
        return this.zzh;
    }

    private ActionCodeSettings(Builder builder) {
        this.zza = builder.f35583a;
        this.zzb = builder.f35584b;
        this.zzc = null;
        this.zzd = builder.f35585c;
        this.zze = builder.f35586d;
        this.zzf = builder.f35587e;
        this.zzg = builder.f35588f;
        this.zzj = builder.f35589g;
    }

    public final void zza(@NonNull String str) {
        this.zzh = str;
    }

    public final void zza(int i) {
        this.zzi = i;
    }

    @SafeParcelable.Constructor
    public ActionCodeSettings(@SafeParcelable.Param(m22177id = 1) String str, @SafeParcelable.Param(m22177id = 2) String str2, @SafeParcelable.Param(m22177id = 3) String str3, @SafeParcelable.Param(m22177id = 4) String str4, @SafeParcelable.Param(m22177id = 5) boolean z, @SafeParcelable.Param(m22177id = 6) String str5, @SafeParcelable.Param(m22177id = 7) boolean z2, @SafeParcelable.Param(m22177id = 8) String str6, @SafeParcelable.Param(m22177id = 9) int i, @SafeParcelable.Param(m22177id = 10) String str7) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = z;
        this.zzf = str5;
        this.zzg = z2;
        this.zzh = str6;
        this.zzi = i;
        this.zzj = str7;
    }
}
