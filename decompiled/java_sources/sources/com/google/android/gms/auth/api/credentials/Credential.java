package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;

@SafeParcelable.Class(creator = "CredentialCreator")
@SafeParcelable.Reserved({1000, 1001, 1002})
@Deprecated
/* loaded from: classes5.dex */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<Credential> CREATOR = new zba();

    @NonNull
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";

    @Nonnull
    @SafeParcelable.Field(getter = "getId", m22176id = 1)
    private final String zba;

    @Nullable
    @SafeParcelable.Field(getter = "getName", m22176id = 2)
    private final String zbb;

    @Nullable
    @SafeParcelable.Field(getter = "getProfilePictureUri", m22176id = 3)
    private final Uri zbc;

    @Nonnull
    @SafeParcelable.Field(getter = "getIdTokens", m22176id = 4)
    private final List zbd;

    @Nullable
    @SafeParcelable.Field(getter = "getPassword", m22176id = 5)
    private final String zbe;

    @Nullable
    @SafeParcelable.Field(getter = "getAccountType", m22176id = 6)
    private final String zbf;

    @Nullable
    @SafeParcelable.Field(getter = "getGivenName", m22176id = 9)
    private final String zbg;

    @Nullable
    @SafeParcelable.Field(getter = "getFamilyName", m22176id = 10)
    private final String zbh;

    @Deprecated
    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a */
        public final String f28870a;

        /* renamed from: b */
        @Nullable
        public String f28871b;

        /* renamed from: c */
        @Nullable
        public Uri f28872c;

        /* renamed from: d */
        public List f28873d;

        /* renamed from: e */
        @Nullable
        public String f28874e;

        /* renamed from: f */
        @Nullable
        public String f28875f;

        /* renamed from: g */
        @Nullable
        public String f28876g;

        /* renamed from: h */
        @Nullable
        public String f28877h;

        public Builder(@NonNull String str) {
            this.f28870a = str;
        }

        @NonNull
        public Credential build() {
            return new Credential(this.f28870a, this.f28871b, this.f28872c, this.f28873d, this.f28874e, this.f28875f, this.f28876g, this.f28877h);
        }

        @NonNull
        public Builder setAccountType(@NonNull String str) {
            this.f28875f = str;
            return this;
        }

        @NonNull
        public Builder setName(@NonNull String str) {
            this.f28871b = str;
            return this;
        }

        @NonNull
        public Builder setPassword(@Nullable String str) {
            this.f28874e = str;
            return this;
        }

        @NonNull
        public Builder setProfilePictureUri(@NonNull Uri uri) {
            this.f28872c = uri;
            return this;
        }

        public Builder(@NonNull Credential credential) {
            this.f28870a = credential.zba;
            this.f28871b = credential.zbb;
            this.f28872c = credential.zbc;
            this.f28873d = credential.zbd;
            this.f28874e = credential.zbe;
            this.f28875f = credential.zbf;
            this.f28876g = credential.zbg;
            this.f28877h = credential.zbh;
        }
    }

    @SafeParcelable.Constructor
    public Credential(@SafeParcelable.Param(m22177id = 1) String str, @Nullable @SafeParcelable.Param(m22177id = 2) String str2, @Nullable @SafeParcelable.Param(m22177id = 3) Uri uri, @SafeParcelable.Param(m22177id = 4) List list, @Nullable @SafeParcelable.Param(m22177id = 5) String str3, @Nullable @SafeParcelable.Param(m22177id = 6) String str4, @Nullable @SafeParcelable.Param(m22177id = 9) String str5, @Nullable @SafeParcelable.Param(m22177id = 10) String str6) {
        Boolean bool;
        String trim = ((String) Preconditions.checkNotNull(str, "credential identifier cannot be null")).trim();
        Preconditions.checkNotEmpty(trim, "credential identifier cannot be empty");
        if (str3 != null && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password must not be empty if set");
        }
        if (str4 != null) {
            if (TextUtils.isEmpty(str4)) {
                bool = Boolean.FALSE;
            } else {
                Uri parse = Uri.parse(str4);
                if (!parse.isAbsolute() || !parse.isHierarchical() || TextUtils.isEmpty(parse.getScheme()) || TextUtils.isEmpty(parse.getAuthority())) {
                    bool = Boolean.FALSE;
                } else {
                    boolean z = true;
                    if (!"http".equalsIgnoreCase(parse.getScheme()) && !"https".equalsIgnoreCase(parse.getScheme())) {
                        z = false;
                    }
                    bool = Boolean.valueOf(z);
                }
            }
            if (!bool.booleanValue()) {
                throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
            }
        }
        if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
        }
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.zbb = str2;
        this.zbc = uri;
        this.zbd = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zba = trim;
        this.zbe = str3;
        this.zbf = str4;
        this.zbg = str5;
        this.zbh = str6;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.zba, credential.zba) && TextUtils.equals(this.zbb, credential.zbb) && Objects.equal(this.zbc, credential.zbc) && TextUtils.equals(this.zbe, credential.zbe) && TextUtils.equals(this.zbf, credential.zbf);
    }

    @Nullable
    public String getAccountType() {
        return this.zbf;
    }

    @Nullable
    public String getFamilyName() {
        return this.zbh;
    }

    @Nullable
    public String getGivenName() {
        return this.zbg;
    }

    @Nonnull
    public String getId() {
        return this.zba;
    }

    @Nonnull
    public List<IdToken> getIdTokens() {
        return this.zbd;
    }

    @Nullable
    public String getName() {
        return this.zbb;
    }

    @Nullable
    public String getPassword() {
        return this.zbe;
    }

    @Nullable
    public Uri getProfilePictureUri() {
        return this.zbc;
    }

    public int hashCode() {
        return Objects.hashCode(this.zba, this.zbb, this.zbc, this.zbe, this.zbf);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getId(), false);
        SafeParcelWriter.writeString(parcel, 2, getName(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getProfilePictureUri(), i, false);
        SafeParcelWriter.writeTypedList(parcel, 4, getIdTokens(), false);
        SafeParcelWriter.writeString(parcel, 5, getPassword(), false);
        SafeParcelWriter.writeString(parcel, 6, getAccountType(), false);
        SafeParcelWriter.writeString(parcel, 9, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 10, getFamilyName(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
