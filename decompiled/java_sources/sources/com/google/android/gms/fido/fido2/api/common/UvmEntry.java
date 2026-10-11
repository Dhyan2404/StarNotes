package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "UvmEntryCreator")
/* loaded from: classes5.dex */
public class UvmEntry extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<UvmEntry> CREATOR = new zzba();

    @SafeParcelable.Field(getter = "getUserVerificationMethod", m22176id = 1)
    private final int zza;

    @SafeParcelable.Field(getter = "getKeyProtectionType", m22176id = 2)
    private final short zzb;

    @SafeParcelable.Field(getter = "getMatcherProtectionType", m22176id = 3)
    private final short zzc;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public int f29587a;

        /* renamed from: b */
        public short f29588b;

        /* renamed from: c */
        public short f29589c;

        @NonNull
        public UvmEntry build() {
            return new UvmEntry(this.f29587a, this.f29588b, this.f29589c);
        }

        @NonNull
        public Builder setKeyProtectionType(short s) {
            this.f29588b = s;
            return this;
        }

        @NonNull
        public Builder setMatcherProtectionType(short s) {
            this.f29589c = s;
            return this;
        }

        @NonNull
        public Builder setUserVerificationMethod(int i) {
            this.f29587a = i;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public UvmEntry(@SafeParcelable.Param(m22177id = 1) int i, @SafeParcelable.Param(m22177id = 2) short s, @SafeParcelable.Param(m22177id = 3) short s2) {
        this.zza = i;
        this.zzb = s;
        this.zzc = s2;
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof UvmEntry)) {
            return false;
        }
        UvmEntry uvmEntry = (UvmEntry) obj;
        return this.zza == uvmEntry.zza && this.zzb == uvmEntry.zzb && this.zzc == uvmEntry.zzc;
    }

    public short getKeyProtectionType() {
        return this.zzb;
    }

    public short getMatcherProtectionType() {
        return this.zzc;
    }

    public int getUserVerificationMethod() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Short.valueOf(this.zzb), Short.valueOf(this.zzc));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getUserVerificationMethod());
        SafeParcelWriter.writeShort(parcel, 2, getKeyProtectionType());
        SafeParcelWriter.writeShort(parcel, 3, getMatcherProtectionType());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
