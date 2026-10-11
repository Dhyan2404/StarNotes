package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "LocationSettingsRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes5.dex */
public final class LocationSettingsRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new zzbl();

    @SafeParcelable.Field(getter = "getLocationRequests", m22176id = 1)
    private final List<LocationRequest> zza;

    @SafeParcelable.Field(defaultValue = "false", getter = "alwaysShow", m22176id = 2)
    private final boolean zzb;

    @SafeParcelable.Field(getter = "needBle", m22176id = 3)
    private final boolean zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getConfiguration", m22176id = 5)
    private zzbj zzd;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final ArrayList<LocationRequest> f29641a = new ArrayList<>();

        /* renamed from: b */
        public boolean f29642b = false;

        /* renamed from: c */
        public boolean f29643c = false;

        @NonNull
        public Builder addAllLocationRequests(@NonNull Collection<LocationRequest> collection) {
            for (LocationRequest locationRequest : collection) {
                if (locationRequest != null) {
                    this.f29641a.add(locationRequest);
                }
            }
            return this;
        }

        @NonNull
        public Builder addLocationRequest(@NonNull LocationRequest locationRequest) {
            if (locationRequest != null) {
                this.f29641a.add(locationRequest);
            }
            return this;
        }

        @NonNull
        public LocationSettingsRequest build() {
            return new LocationSettingsRequest(this.f29641a, this.f29642b, this.f29643c, null);
        }

        @NonNull
        public Builder setAlwaysShow(boolean z) {
            this.f29642b = z;
            return this;
        }

        @NonNull
        public Builder setNeedBle(boolean z) {
            this.f29643c = z;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public LocationSettingsRequest(@SafeParcelable.Param(m22177id = 1) List<LocationRequest> list, @SafeParcelable.Param(m22177id = 2) boolean z, @SafeParcelable.Param(m22177id = 3) boolean z2, @Nullable @SafeParcelable.Param(m22177id = 5) zzbj zzbjVar) {
        this.zza = list;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = zzbjVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, Collections.unmodifiableList(this.zza), false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzb);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
