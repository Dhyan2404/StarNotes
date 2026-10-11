package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "BeginSignInRequestCreator")
/* loaded from: classes5.dex */
public final class BeginSignInRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new zbf();

    @SafeParcelable.Field(getter = "getPasswordRequestOptions", m22176id = 1)
    private final PasswordRequestOptions zba;

    @SafeParcelable.Field(getter = "getGoogleIdTokenRequestOptions", m22176id = 2)
    private final GoogleIdTokenRequestOptions zbb;

    @Nullable
    @SafeParcelable.Field(getter = "getSessionId", m22176id = 3)
    private final String zbc;

    @SafeParcelable.Field(getter = "isAutoSelectEnabled", m22176id = 4)
    private final boolean zbd;

    @SafeParcelable.Field(getter = "getTheme", m22176id = 5)
    private final int zbe;

    @SafeParcelable.Field(getter = "getPasskeysRequestOptions", m22176id = 6)
    private final PasskeysRequestOptions zbf;

    @SafeParcelable.Field(getter = "getPasskeyJsonRequestOptions", m22176id = 7)
    private final PasskeyJsonRequestOptions zbg;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public PasswordRequestOptions f28903a;

        /* renamed from: b */
        public GoogleIdTokenRequestOptions f28904b;

        /* renamed from: c */
        public PasskeysRequestOptions f28905c;

        /* renamed from: d */
        public PasskeyJsonRequestOptions f28906d;

        /* renamed from: e */
        @Nullable
        public String f28907e;

        /* renamed from: f */
        public boolean f28908f;

        /* renamed from: g */
        public int f28909g;

        public Builder() {
            PasswordRequestOptions.Builder builder = PasswordRequestOptions.builder();
            builder.setSupported(false);
            this.f28903a = builder.build();
            GoogleIdTokenRequestOptions.Builder builder2 = GoogleIdTokenRequestOptions.builder();
            builder2.setSupported(false);
            this.f28904b = builder2.build();
            PasskeysRequestOptions.Builder builder3 = PasskeysRequestOptions.builder();
            builder3.setSupported(false);
            this.f28905c = builder3.build();
            PasskeyJsonRequestOptions.Builder builder4 = PasskeyJsonRequestOptions.builder();
            builder4.setSupported(false);
            this.f28906d = builder4.build();
        }

        @NonNull
        public BeginSignInRequest build() {
            return new BeginSignInRequest(this.f28903a, this.f28904b, this.f28907e, this.f28908f, this.f28909g, this.f28905c, this.f28906d);
        }

        @NonNull
        public Builder setAutoSelectEnabled(boolean z) {
            this.f28908f = z;
            return this;
        }

        @NonNull
        public Builder setGoogleIdTokenRequestOptions(@NonNull GoogleIdTokenRequestOptions googleIdTokenRequestOptions) {
            this.f28904b = (GoogleIdTokenRequestOptions) Preconditions.checkNotNull(googleIdTokenRequestOptions);
            return this;
        }

        @NonNull
        public Builder setPasskeyJsonSignInRequestOptions(@NonNull PasskeyJsonRequestOptions passkeyJsonRequestOptions) {
            this.f28906d = (PasskeyJsonRequestOptions) Preconditions.checkNotNull(passkeyJsonRequestOptions);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setPasskeysSignInRequestOptions(@NonNull PasskeysRequestOptions passkeysRequestOptions) {
            this.f28905c = (PasskeysRequestOptions) Preconditions.checkNotNull(passkeysRequestOptions);
            return this;
        }

        @NonNull
        public Builder setPasswordRequestOptions(@NonNull PasswordRequestOptions passwordRequestOptions) {
            this.f28903a = (PasswordRequestOptions) Preconditions.checkNotNull(passwordRequestOptions);
            return this;
        }

        @NonNull
        public final Builder zba(@NonNull String str) {
            this.f28907e = str;
            return this;
        }

        @NonNull
        public final Builder zbb(int i) {
            this.f28909g = i;
            return this;
        }
    }

    @SafeParcelable.Class(creator = "GoogleIdTokenRequestOptionsCreator")
    /* loaded from: classes5.dex */
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new zbl();

        @SafeParcelable.Field(getter = "isSupported", m22176id = 1)
        private final boolean zba;

        @Nullable
        @SafeParcelable.Field(getter = "getServerClientId", m22176id = 2)
        private final String zbb;

        @Nullable
        @SafeParcelable.Field(getter = "getNonce", m22176id = 3)
        private final String zbc;

        @SafeParcelable.Field(getter = "filterByAuthorizedAccounts", m22176id = 4)
        private final boolean zbd;

        @Nullable
        @SafeParcelable.Field(getter = "getLinkedServiceId", m22176id = 5)
        private final String zbe;

        @Nullable
        @SafeParcelable.Field(getter = "getIdTokenDepositionScopes", m22176id = 6)
        private final List zbf;

        @SafeParcelable.Field(getter = "requestVerifiedPhoneNumber", m22176id = 7)
        private final boolean zbg;

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            public boolean f28910a = false;

            /* renamed from: b */
            @Nullable
            public String f28911b = null;

            /* renamed from: c */
            @Nullable
            public String f28912c = null;

            /* renamed from: d */
            public boolean f28913d = true;

            /* renamed from: e */
            @Nullable
            public String f28914e = null;

            /* renamed from: f */
            @Nullable
            public List f28915f = null;

            /* renamed from: g */
            public boolean f28916g = false;

            @NonNull
            public Builder associateLinkedAccounts(@NonNull String str, @Nullable List<String> list) {
                this.f28914e = (String) Preconditions.checkNotNull(str, "linkedServiceId must be provided if you want to associate linked accounts.");
                this.f28915f = list;
                return this;
            }

            @NonNull
            public GoogleIdTokenRequestOptions build() {
                return new GoogleIdTokenRequestOptions(this.f28910a, this.f28911b, this.f28912c, this.f28913d, this.f28914e, this.f28915f, this.f28916g);
            }

            @NonNull
            public Builder setFilterByAuthorizedAccounts(boolean z) {
                this.f28913d = z;
                return this;
            }

            @NonNull
            public Builder setNonce(@Nullable String str) {
                this.f28912c = str;
                return this;
            }

            @NonNull
            @Deprecated
            public Builder setRequestVerifiedPhoneNumber(boolean z) {
                this.f28916g = z;
                return this;
            }

            @NonNull
            public Builder setServerClientId(@NonNull String str) {
                this.f28911b = Preconditions.checkNotEmpty(str);
                return this;
            }

            @NonNull
            public Builder setSupported(boolean z) {
                this.f28910a = z;
                return this;
            }
        }

        @SafeParcelable.Constructor
        public GoogleIdTokenRequestOptions(@SafeParcelable.Param(m22177id = 1) boolean z, @Nullable @SafeParcelable.Param(m22177id = 2) String str, @Nullable @SafeParcelable.Param(m22177id = 3) String str2, @SafeParcelable.Param(m22177id = 4) boolean z2, @Nullable @SafeParcelable.Param(m22177id = 5) String str3, @Nullable @SafeParcelable.Param(m22177id = 6) List list, @SafeParcelable.Param(m22177id = 7) boolean z3) {
            boolean z4 = true;
            if (z2 && z3) {
                z4 = false;
            }
            Preconditions.checkArgument(z4, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.");
            this.zba = z;
            if (z) {
                Preconditions.checkNotNull(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.zbb = str;
            this.zbc = str2;
            this.zbd = z2;
            Parcelable.Creator<BeginSignInRequest> creator = BeginSignInRequest.CREATOR;
            ArrayList arrayList = null;
            if (list != null && !list.isEmpty()) {
                arrayList = new ArrayList(list);
                Collections.sort(arrayList);
            }
            this.zbf = arrayList;
            this.zbe = str3;
            this.zbg = z3;
        }

        @NonNull
        public static Builder builder() {
            return new Builder();
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.zba == googleIdTokenRequestOptions.zba && Objects.equal(this.zbb, googleIdTokenRequestOptions.zbb) && Objects.equal(this.zbc, googleIdTokenRequestOptions.zbc) && this.zbd == googleIdTokenRequestOptions.zbd && Objects.equal(this.zbe, googleIdTokenRequestOptions.zbe) && Objects.equal(this.zbf, googleIdTokenRequestOptions.zbf) && this.zbg == googleIdTokenRequestOptions.zbg;
        }

        public boolean filterByAuthorizedAccounts() {
            return this.zbd;
        }

        @Nullable
        public List<String> getIdTokenDepositionScopes() {
            return this.zbf;
        }

        @Nullable
        public String getLinkedServiceId() {
            return this.zbe;
        }

        @Nullable
        public String getNonce() {
            return this.zbc;
        }

        @Nullable
        public String getServerClientId() {
            return this.zbb;
        }

        public int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.zba), this.zbb, this.zbc, Boolean.valueOf(this.zbd), this.zbe, this.zbf, Boolean.valueOf(this.zbg));
        }

        public boolean isSupported() {
            return this.zba;
        }

        @Deprecated
        public boolean requestVerifiedPhoneNumber() {
            return this.zbg;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
            SafeParcelWriter.writeString(parcel, 2, getServerClientId(), false);
            SafeParcelWriter.writeString(parcel, 3, getNonce(), false);
            SafeParcelWriter.writeBoolean(parcel, 4, filterByAuthorizedAccounts());
            SafeParcelWriter.writeString(parcel, 5, getLinkedServiceId(), false);
            SafeParcelWriter.writeStringList(parcel, 6, getIdTokenDepositionScopes(), false);
            SafeParcelWriter.writeBoolean(parcel, 7, requestVerifiedPhoneNumber());
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    @SafeParcelable.Class(creator = "PasskeyJsonRequestOptionsCreator")
    /* loaded from: classes5.dex */
    public static final class PasskeyJsonRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<PasskeyJsonRequestOptions> CREATOR = new zbm();

        @SafeParcelable.Field(getter = "isSupported", m22176id = 1)
        private final boolean zba;

        @SafeParcelable.Field(getter = "getRequestJson", m22176id = 2)
        private final String zbb;

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            public boolean f28917a = false;

            /* renamed from: b */
            public String f28918b;

            @NonNull
            public PasskeyJsonRequestOptions build() {
                return new PasskeyJsonRequestOptions(this.f28917a, this.f28918b);
            }

            @NonNull
            public Builder setRequestJson(@NonNull String str) {
                this.f28918b = str;
                return this;
            }

            @NonNull
            public Builder setSupported(boolean z) {
                this.f28917a = z;
                return this;
            }
        }

        @SafeParcelable.Constructor
        public PasskeyJsonRequestOptions(@SafeParcelable.Param(m22177id = 1) boolean z, @SafeParcelable.Param(m22177id = 2) String str) {
            if (z) {
                Preconditions.checkNotNull(str);
            }
            this.zba = z;
            this.zbb = str;
        }

        @NonNull
        public static Builder builder() {
            return new Builder();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PasskeyJsonRequestOptions)) {
                return false;
            }
            PasskeyJsonRequestOptions passkeyJsonRequestOptions = (PasskeyJsonRequestOptions) obj;
            return this.zba == passkeyJsonRequestOptions.zba && Objects.equal(this.zbb, passkeyJsonRequestOptions.zbb);
        }

        @NonNull
        public String getRequestJson() {
            return this.zbb;
        }

        public int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.zba), this.zbb);
        }

        public boolean isSupported() {
            return this.zba;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
            SafeParcelWriter.writeString(parcel, 2, getRequestJson(), false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    @SafeParcelable.Class(creator = "PasskeysRequestOptionsCreator")
    @Deprecated
    /* loaded from: classes5.dex */
    public static final class PasskeysRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<PasskeysRequestOptions> CREATOR = new zbn();

        @SafeParcelable.Field(getter = "isSupported", m22176id = 1)
        private final boolean zba;

        @SafeParcelable.Field(getter = "getChallenge", m22176id = 2)
        private final byte[] zbb;

        @SafeParcelable.Field(getter = "getRpId", m22176id = 3)
        private final String zbc;

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            public boolean f28919a = false;

            /* renamed from: b */
            public byte[] f28920b;

            /* renamed from: c */
            public String f28921c;

            @NonNull
            public PasskeysRequestOptions build() {
                return new PasskeysRequestOptions(this.f28919a, this.f28920b, this.f28921c);
            }

            @NonNull
            public Builder setChallenge(@NonNull byte[] bArr) {
                this.f28920b = bArr;
                return this;
            }

            @NonNull
            public Builder setRpId(@NonNull String str) {
                this.f28921c = str;
                return this;
            }

            @NonNull
            public Builder setSupported(boolean z) {
                this.f28919a = z;
                return this;
            }
        }

        @SafeParcelable.Constructor
        public PasskeysRequestOptions(@SafeParcelable.Param(m22177id = 1) boolean z, @SafeParcelable.Param(m22177id = 2) byte[] bArr, @SafeParcelable.Param(m22177id = 3) String str) {
            if (z) {
                Preconditions.checkNotNull(bArr);
                Preconditions.checkNotNull(str);
            }
            this.zba = z;
            this.zbb = bArr;
            this.zbc = str;
        }

        @NonNull
        public static Builder builder() {
            return new Builder();
        }

        public boolean equals(@Nullable Object obj) {
            String str;
            String str2;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PasskeysRequestOptions)) {
                return false;
            }
            PasskeysRequestOptions passkeysRequestOptions = (PasskeysRequestOptions) obj;
            return this.zba == passkeysRequestOptions.zba && Arrays.equals(this.zbb, passkeysRequestOptions.zbb) && ((str = this.zbc) == (str2 = passkeysRequestOptions.zbc) || (str != null && str.equals(str2)));
        }

        @NonNull
        public byte[] getChallenge() {
            return this.zbb;
        }

        @NonNull
        public String getRpId() {
            return this.zbc;
        }

        public int hashCode() {
            return (Arrays.hashCode(new Object[]{Boolean.valueOf(this.zba), this.zbc}) * 31) + Arrays.hashCode(this.zbb);
        }

        public boolean isSupported() {
            return this.zba;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
            SafeParcelWriter.writeByteArray(parcel, 2, getChallenge(), false);
            SafeParcelWriter.writeString(parcel, 3, getRpId(), false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    @SafeParcelable.Class(creator = "PasswordRequestOptionsCreator")
    /* loaded from: classes5.dex */
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new zbo();

        @SafeParcelable.Field(getter = "isSupported", m22176id = 1)
        private final boolean zba;

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            public boolean f28922a = false;

            @NonNull
            public PasswordRequestOptions build() {
                return new PasswordRequestOptions(this.f28922a);
            }

            @NonNull
            public Builder setSupported(boolean z) {
                this.f28922a = z;
                return this;
            }
        }

        @SafeParcelable.Constructor
        public PasswordRequestOptions(@SafeParcelable.Param(m22177id = 1) boolean z) {
            this.zba = z;
        }

        @NonNull
        public static Builder builder() {
            return new Builder();
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.zba == ((PasswordRequestOptions) obj).zba;
        }

        public int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.zba));
        }

        public boolean isSupported() {
            return this.zba;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    @SafeParcelable.Constructor
    public BeginSignInRequest(@SafeParcelable.Param(m22177id = 1) PasswordRequestOptions passwordRequestOptions, @SafeParcelable.Param(m22177id = 2) GoogleIdTokenRequestOptions googleIdTokenRequestOptions, @Nullable @SafeParcelable.Param(m22177id = 3) String str, @SafeParcelable.Param(m22177id = 4) boolean z, @SafeParcelable.Param(m22177id = 5) int i, @Nullable @SafeParcelable.Param(m22177id = 6) PasskeysRequestOptions passkeysRequestOptions, @Nullable @SafeParcelable.Param(m22177id = 7) PasskeyJsonRequestOptions passkeyJsonRequestOptions) {
        this.zba = (PasswordRequestOptions) Preconditions.checkNotNull(passwordRequestOptions);
        this.zbb = (GoogleIdTokenRequestOptions) Preconditions.checkNotNull(googleIdTokenRequestOptions);
        this.zbc = str;
        this.zbd = z;
        this.zbe = i;
        if (passkeysRequestOptions == null) {
            PasskeysRequestOptions.Builder builder = PasskeysRequestOptions.builder();
            builder.setSupported(false);
            passkeysRequestOptions = builder.build();
        }
        this.zbf = passkeysRequestOptions;
        if (passkeyJsonRequestOptions == null) {
            PasskeyJsonRequestOptions.Builder builder2 = PasskeyJsonRequestOptions.builder();
            builder2.setSupported(false);
            passkeyJsonRequestOptions = builder2.build();
        }
        this.zbg = passkeyJsonRequestOptions;
    }

    @NonNull
    public static Builder builder() {
        return new Builder();
    }

    @NonNull
    public static Builder zba(@NonNull BeginSignInRequest beginSignInRequest) {
        Preconditions.checkNotNull(beginSignInRequest);
        Builder builder = builder();
        builder.setGoogleIdTokenRequestOptions(beginSignInRequest.getGoogleIdTokenRequestOptions());
        builder.setPasswordRequestOptions(beginSignInRequest.getPasswordRequestOptions());
        builder.setPasskeysSignInRequestOptions(beginSignInRequest.getPasskeysRequestOptions());
        builder.setPasskeyJsonSignInRequestOptions(beginSignInRequest.getPasskeyJsonRequestOptions());
        builder.setAutoSelectEnabled(beginSignInRequest.zbd);
        builder.zbb(beginSignInRequest.zbe);
        String str = beginSignInRequest.zbc;
        if (str != null) {
            builder.zba(str);
        }
        return builder;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        return Objects.equal(this.zba, beginSignInRequest.zba) && Objects.equal(this.zbb, beginSignInRequest.zbb) && Objects.equal(this.zbf, beginSignInRequest.zbf) && Objects.equal(this.zbg, beginSignInRequest.zbg) && Objects.equal(this.zbc, beginSignInRequest.zbc) && this.zbd == beginSignInRequest.zbd && this.zbe == beginSignInRequest.zbe;
    }

    @NonNull
    public GoogleIdTokenRequestOptions getGoogleIdTokenRequestOptions() {
        return this.zbb;
    }

    @NonNull
    public PasskeyJsonRequestOptions getPasskeyJsonRequestOptions() {
        return this.zbg;
    }

    @NonNull
    public PasskeysRequestOptions getPasskeysRequestOptions() {
        return this.zbf;
    }

    @NonNull
    public PasswordRequestOptions getPasswordRequestOptions() {
        return this.zba;
    }

    public int hashCode() {
        return Objects.hashCode(this.zba, this.zbb, this.zbf, this.zbg, this.zbc, Boolean.valueOf(this.zbd));
    }

    public boolean isAutoSelectEnabled() {
        return this.zbd;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getPasswordRequestOptions(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, getGoogleIdTokenRequestOptions(), i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zbc, false);
        SafeParcelWriter.writeBoolean(parcel, 4, isAutoSelectEnabled());
        SafeParcelWriter.writeInt(parcel, 5, this.zbe);
        SafeParcelWriter.writeParcelable(parcel, 6, getPasskeysRequestOptions(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, getPasskeyJsonRequestOptions(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
