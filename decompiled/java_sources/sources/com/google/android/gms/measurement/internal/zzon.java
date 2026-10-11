package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.sunia.HTREnginev2.yqp;

@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
/* loaded from: classes5.dex */
public final class zzon extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzon> CREATOR = new zzoq();

    @SafeParcelable.Field(m22176id = 2)
    public final String zza;

    @SafeParcelable.Field(m22176id = 3)
    public final long zzb;

    @Nullable
    @SafeParcelable.Field(m22176id = 4)
    public final Long zzc;

    @Nullable
    @SafeParcelable.Field(m22176id = 6)
    public final String zzd;

    @SafeParcelable.Field(m22176id = 7)
    public final String zze;

    @Nullable
    @SafeParcelable.Field(m22176id = 8)
    public final Double zzf;

    @SafeParcelable.Field(m22176id = 1)
    private final int zzg;

    public zzon(yqp yqpVar) {
        this(yqpVar.f90992c, yqpVar.f90993d, yqpVar.f90994e, yqpVar.f90991b);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzg);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzb);
        SafeParcelWriter.writeLongObject(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 7, this.zze, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, this.zzf, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final Object zza() {
        Long l = this.zzc;
        if (l != null) {
            return l;
        }
        Double d = this.zzf;
        if (d != null) {
            return d;
        }
        String str = this.zzd;
        if (str != null) {
            return str;
        }
        return null;
    }

    public zzon(String str, long j, @Nullable Object obj, String str2) {
        Preconditions.checkNotEmpty(str);
        this.zzg = 2;
        this.zza = str;
        this.zzb = j;
        this.zze = str2;
        if (obj == null) {
            this.zzc = null;
            this.zzf = null;
            this.zzd = null;
            return;
        }
        if (obj instanceof Long) {
            this.zzc = (Long) obj;
            this.zzf = null;
            this.zzd = null;
        } else if (obj instanceof String) {
            this.zzc = null;
            this.zzf = null;
            this.zzd = (String) obj;
        } else {
            if (obj instanceof Double) {
                this.zzc = null;
                this.zzf = (Double) obj;
                this.zzd = null;
                return;
            }
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    @SafeParcelable.Constructor
    public zzon(@SafeParcelable.Param(m22177id = 1) int i, @SafeParcelable.Param(m22177id = 2) String str, @SafeParcelable.Param(m22177id = 3) long j, @Nullable @SafeParcelable.Param(m22177id = 4) Long l, @SafeParcelable.Param(m22177id = 5) Float f, @Nullable @SafeParcelable.Param(m22177id = 6) String str2, @SafeParcelable.Param(m22177id = 7) String str3, @Nullable @SafeParcelable.Param(m22177id = 8) Double d) {
        this.zzg = i;
        this.zza = str;
        this.zzb = j;
        this.zzc = l;
        if (i == 1) {
            this.zzf = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.zzf = d;
        }
        this.zzd = str2;
        this.zze = str3;
    }
}
