package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "HintRequestCreator")
@Deprecated
/* loaded from: classes5.dex */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<HintRequest> CREATOR = new zbe();

    @SafeParcelable.Field(m22176id = 1000)
    final int zba;

    @SafeParcelable.Field(getter = "getHintPickerConfig", m22176id = 1)
    private final CredentialPickerConfig zbb;

    @SafeParcelable.Field(getter = "isEmailAddressIdentifierSupported", m22176id = 2)
    private final boolean zbc;

    @SafeParcelable.Field(getter = "isPhoneNumberIdentifierSupported", m22176id = 3)
    private final boolean zbd;

    @SafeParcelable.Field(getter = "getAccountTypes", m22176id = 4)
    private final String[] zbe;

    @SafeParcelable.Field(getter = "isIdTokenRequested", m22176id = 5)
    private final boolean zbf;

    @Nullable
    @SafeParcelable.Field(getter = "getServerClientId", m22176id = 6)
    private final String zbg;

    @Nullable
    @SafeParcelable.Field(getter = "getIdTokenNonce", m22176id = 7)
    private final String zbh;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public boolean f28888a;

        /* renamed from: b */
        public boolean f28889b;

        /* renamed from: c */
        public String[] f28890c;

        /* renamed from: d */
        public CredentialPickerConfig f28891d = new CredentialPickerConfig.Builder().build();

        /* renamed from: e */
        public boolean f28892e = false;

        /* renamed from: f */
        @Nullable
        public String f28893f;

        /* renamed from: g */
        @Nullable
        public String f28894g;

        @NonNull
        public HintRequest build() {
            if (this.f28890c == null) {
                this.f28890c = new String[0];
            }
            if (this.f28888a || this.f28889b || this.f28890c.length != 0) {
                return new HintRequest(2, this.f28891d, this.f28888a, this.f28889b, this.f28890c, this.f28892e, this.f28893f, this.f28894g);
            }
            throw new IllegalStateException("At least one authentication method must be specified");
        }

        @NonNull
        public Builder setAccountTypes(@NonNull String... strArr) {
            if (strArr == null) {
                strArr = new String[0];
            }
            this.f28890c = strArr;
            return this;
        }

        @NonNull
        public Builder setEmailAddressIdentifierSupported(boolean z) {
            this.f28888a = z;
            return this;
        }

        @NonNull
        public Builder setHintPickerConfig(@NonNull CredentialPickerConfig credentialPickerConfig) {
            this.f28891d = (CredentialPickerConfig) Preconditions.checkNotNull(credentialPickerConfig);
            return this;
        }

        @NonNull
        public Builder setIdTokenNonce(@Nullable String str) {
            this.f28894g = str;
            return this;
        }

        @NonNull
        public Builder setIdTokenRequested(boolean z) {
            this.f28892e = z;
            return this;
        }

        @NonNull
        public Builder setPhoneNumberIdentifierSupported(boolean z) {
            this.f28889b = z;
            return this;
        }

        @NonNull
        public Builder setServerClientId(@Nullable String str) {
            this.f28893f = str;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public HintRequest(@SafeParcelable.Param(m22177id = 1000) int i, @SafeParcelable.Param(m22177id = 1) CredentialPickerConfig credentialPickerConfig, @SafeParcelable.Param(m22177id = 2) boolean z, @SafeParcelable.Param(m22177id = 3) boolean z2, @SafeParcelable.Param(m22177id = 4) String[] strArr, @SafeParcelable.Param(m22177id = 5) boolean z3, @Nullable @SafeParcelable.Param(m22177id = 6) String str, @Nullable @SafeParcelable.Param(m22177id = 7) String str2) {
        this.zba = i;
        this.zbb = (CredentialPickerConfig) Preconditions.checkNotNull(credentialPickerConfig);
        this.zbc = z;
        this.zbd = z2;
        this.zbe = (String[]) Preconditions.checkNotNull(strArr);
        if (i < 2) {
            this.zbf = true;
            this.zbg = null;
            this.zbh = null;
        } else {
            this.zbf = z3;
            this.zbg = str;
            this.zbh = str2;
        }
    }

    @NonNull
    public String[] getAccountTypes() {
        return this.zbe;
    }

    @NonNull
    public CredentialPickerConfig getHintPickerConfig() {
        return this.zbb;
    }

    @Nullable
    public String getIdTokenNonce() {
        return this.zbh;
    }

    @Nullable
    public String getServerClientId() {
        return this.zbg;
    }

    public boolean isEmailAddressIdentifierSupported() {
        return this.zbc;
    }

    public boolean isIdTokenRequested() {
        return this.zbf;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getHintPickerConfig(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 2, isEmailAddressIdentifierSupported());
        SafeParcelWriter.writeBoolean(parcel, 3, this.zbd);
        SafeParcelWriter.writeStringArray(parcel, 4, getAccountTypes(), false);
        SafeParcelWriter.writeBoolean(parcel, 5, isIdTokenRequested());
        SafeParcelWriter.writeString(parcel, 6, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 7, getIdTokenNonce(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.zba);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
