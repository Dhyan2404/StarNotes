package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@SafeParcelable.Class(creator = "CredentialPickerConfigCreator")
@Deprecated
/* loaded from: classes5.dex */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new zbb();

    @SafeParcelable.Field(m22176id = 1000)
    final int zba;

    @SafeParcelable.Field(getter = "shouldShowAddAccountButton", m22176id = 1)
    private final boolean zbb;

    @SafeParcelable.Field(getter = "shouldShowCancelButton", m22176id = 2)
    private final boolean zbc;

    @SafeParcelable.Field(getter = "getPromptInternalId", m22176id = 4)
    private final int zbd;

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a */
        public boolean f28878a = false;

        /* renamed from: b */
        public boolean f28879b = true;

        /* renamed from: c */
        public int f28880c = 1;

        @NonNull
        public CredentialPickerConfig build() {
            return new CredentialPickerConfig(2, this.f28878a, this.f28879b, false, this.f28880c);
        }

        @NonNull
        @Deprecated
        public Builder setForNewAccount(boolean z) {
            this.f28880c = true == z ? 3 : 1;
            return this;
        }

        @NonNull
        public Builder setPrompt(int i) {
            this.f28880c = i;
            return this;
        }

        @NonNull
        public Builder setShowAddAccountButton(boolean z) {
            this.f28878a = z;
            return this;
        }

        @NonNull
        public Builder setShowCancelButton(boolean z) {
            this.f28879b = z;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Prompt {
        public static final int CONTINUE = 1;
        public static final int SIGN_IN = 2;
        public static final int SIGN_UP = 3;
    }

    @SafeParcelable.Constructor
    public CredentialPickerConfig(@SafeParcelable.Param(m22177id = 1000) int i, @SafeParcelable.Param(m22177id = 1) boolean z, @SafeParcelable.Param(m22177id = 2) boolean z2, @SafeParcelable.Param(m22177id = 3) boolean z3, @SafeParcelable.Param(m22177id = 4) int i2) {
        this.zba = i;
        this.zbb = z;
        this.zbc = z2;
        if (i < 2) {
            this.zbd = true == z3 ? 3 : 1;
        } else {
            this.zbd = i2;
        }
    }

    @Deprecated
    public boolean isForNewAccount() {
        return this.zbd == 3;
    }

    public boolean shouldShowAddAccountButton() {
        return this.zbb;
    }

    public boolean shouldShowCancelButton() {
        return this.zbc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, shouldShowAddAccountButton());
        SafeParcelWriter.writeBoolean(parcel, 2, shouldShowCancelButton());
        SafeParcelWriter.writeBoolean(parcel, 3, isForNewAccount());
        SafeParcelWriter.writeInt(parcel, 4, this.zbd);
        SafeParcelWriter.writeInt(parcel, 1000, this.zba);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
