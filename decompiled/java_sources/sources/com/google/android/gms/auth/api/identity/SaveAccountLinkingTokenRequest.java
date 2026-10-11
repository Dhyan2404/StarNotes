package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
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
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "SaveAccountLinkingTokenRequestCreator")
/* loaded from: classes5.dex */
public class SaveAccountLinkingTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new zbp();

    @NonNull
    public static final String EXTRA_TOKEN = "extra_token";

    @NonNull
    public static final String TOKEN_TYPE_AUTH_CODE = "auth_code";

    @SafeParcelable.Field(getter = "getConsentPendingIntent", m22176id = 1)
    private final PendingIntent zba;

    @SafeParcelable.Field(getter = "getTokenType", m22176id = 2)
    private final String zbb;

    @SafeParcelable.Field(getter = "getServiceId", m22176id = 3)
    private final String zbc;

    @SafeParcelable.Field(getter = "getScopes", m22176id = 4)
    private final List zbd;

    @Nullable
    @SafeParcelable.Field(getter = "getSessionId", m22176id = 5)
    private final String zbe;

    @SafeParcelable.Field(getter = "getTheme", m22176id = 6)
    private final int zbf;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public PendingIntent f28929a;

        /* renamed from: b */
        public String f28930b;

        /* renamed from: c */
        public String f28931c;

        /* renamed from: d */
        public List f28932d = new ArrayList();

        /* renamed from: e */
        public String f28933e;

        /* renamed from: f */
        public int f28934f;

        @NonNull
        public SaveAccountLinkingTokenRequest build() {
            Preconditions.checkArgument(this.f28929a != null, "Consent PendingIntent cannot be null");
            Preconditions.checkArgument(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE.equals(this.f28930b), "Invalid tokenType");
            Preconditions.checkArgument(!TextUtils.isEmpty(this.f28931c), "serviceId cannot be null or empty");
            Preconditions.checkArgument(this.f28932d != null, "scopes cannot be null");
            return new SaveAccountLinkingTokenRequest(this.f28929a, this.f28930b, this.f28931c, this.f28932d, this.f28933e, this.f28934f);
        }

        @NonNull
        public Builder setConsentPendingIntent(@NonNull PendingIntent pendingIntent) {
            this.f28929a = pendingIntent;
            return this;
        }

        @NonNull
        public Builder setScopes(@NonNull List<String> list) {
            this.f28932d = list;
            return this;
        }

        @NonNull
        public Builder setServiceId(@NonNull String str) {
            this.f28931c = str;
            return this;
        }

        @NonNull
        public Builder setTokenType(@NonNull String str) {
            this.f28930b = str;
            return this;
        }

        @NonNull
        public final Builder zba(@NonNull String str) {
            this.f28933e = str;
            return this;
        }

        @NonNull
        public final Builder zbb(int i) {
            this.f28934f = i;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public SaveAccountLinkingTokenRequest(@SafeParcelable.Param(m22177id = 1) PendingIntent pendingIntent, @SafeParcelable.Param(m22177id = 2) String str, @SafeParcelable.Param(m22177id = 3) String str2, @SafeParcelable.Param(m22177id = 4) List list, @Nullable @SafeParcelable.Param(m22177id = 5) String str3, @SafeParcelable.Param(m22177id = 6) int i) {
        this.zba = pendingIntent;
        this.zbb = str;
        this.zbc = str2;
        this.zbd = list;
        this.zbe = str3;
        this.zbf = i;
    }

    @NonNull
    public static Builder builder() {
        return new Builder();
    }

    @NonNull
    public static Builder zba(@NonNull SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        Preconditions.checkNotNull(saveAccountLinkingTokenRequest);
        Builder builder = builder();
        builder.setScopes(saveAccountLinkingTokenRequest.getScopes());
        builder.setServiceId(saveAccountLinkingTokenRequest.getServiceId());
        builder.setConsentPendingIntent(saveAccountLinkingTokenRequest.getConsentPendingIntent());
        builder.setTokenType(saveAccountLinkingTokenRequest.getTokenType());
        builder.zbb(saveAccountLinkingTokenRequest.zbf);
        String str = saveAccountLinkingTokenRequest.zbe;
        if (!TextUtils.isEmpty(str)) {
            builder.zba(str);
        }
        return builder;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenRequest)) {
            return false;
        }
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
        return this.zbd.size() == saveAccountLinkingTokenRequest.zbd.size() && this.zbd.containsAll(saveAccountLinkingTokenRequest.zbd) && Objects.equal(this.zba, saveAccountLinkingTokenRequest.zba) && Objects.equal(this.zbb, saveAccountLinkingTokenRequest.zbb) && Objects.equal(this.zbc, saveAccountLinkingTokenRequest.zbc) && Objects.equal(this.zbe, saveAccountLinkingTokenRequest.zbe) && this.zbf == saveAccountLinkingTokenRequest.zbf;
    }

    @NonNull
    public PendingIntent getConsentPendingIntent() {
        return this.zba;
    }

    @NonNull
    public List<String> getScopes() {
        return this.zbd;
    }

    @NonNull
    public String getServiceId() {
        return this.zbc;
    }

    @NonNull
    public String getTokenType() {
        return this.zbb;
    }

    public int hashCode() {
        return Objects.hashCode(this.zba, this.zbb, this.zbc, this.zbd, this.zbe);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getConsentPendingIntent(), i, false);
        SafeParcelWriter.writeString(parcel, 2, getTokenType(), false);
        SafeParcelWriter.writeString(parcel, 3, getServiceId(), false);
        SafeParcelWriter.writeStringList(parcel, 4, getScopes(), false);
        SafeParcelWriter.writeString(parcel, 5, this.zbe, false);
        SafeParcelWriter.writeInt(parcel, 6, this.zbf);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
