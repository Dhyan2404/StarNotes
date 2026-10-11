package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.collections4.IteratorUtils;

@SafeParcelable.Class(creator = "GeofencingRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes5.dex */
public class GeofencingRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new zzau();
    public static final int INITIAL_TRIGGER_DWELL = 4;
    public static final int INITIAL_TRIGGER_ENTER = 1;
    public static final int INITIAL_TRIGGER_EXIT = 2;

    @SafeParcelable.Field(getter = "getParcelableGeofences", m22176id = 1)
    private final List<com.google.android.gms.internal.location.zzbe> zza;

    @InitialTrigger
    @SafeParcelable.Field(getter = "getInitialTrigger", m22176id = 2)
    private final int zzb;

    @SafeParcelable.Field(defaultValue = "", getter = "getTag", m22176id = 3)
    private final String zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getContextAttributionTag", m22176id = 4)
    private final String zzd;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final List<com.google.android.gms.internal.location.zzbe> f29636a = new ArrayList();

        /* renamed from: b */
        @InitialTrigger
        public int f29637b = 5;

        /* renamed from: c */
        public String f29638c = "";

        @NonNull
        public Builder addGeofence(@NonNull Geofence geofence) {
            Preconditions.checkNotNull(geofence, "geofence can't be null.");
            Preconditions.checkArgument(geofence instanceof com.google.android.gms.internal.location.zzbe, "Geofence must be created using Geofence.Builder.");
            this.f29636a.add((com.google.android.gms.internal.location.zzbe) geofence);
            return this;
        }

        @NonNull
        public Builder addGeofences(@NonNull List<Geofence> list) {
            if (list != null && !list.isEmpty()) {
                for (Geofence geofence : list) {
                    if (geofence != null) {
                        addGeofence(geofence);
                    }
                }
            }
            return this;
        }

        @NonNull
        public GeofencingRequest build() {
            Preconditions.checkArgument(!this.f29636a.isEmpty(), "No geofence has been added to this request.");
            return new GeofencingRequest(this.f29636a, this.f29637b, this.f29638c, null);
        }

        @NonNull
        public Builder setInitialTrigger(@InitialTrigger int i) {
            this.f29637b = i & 7;
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public @interface InitialTrigger {
    }

    @SafeParcelable.Constructor
    public GeofencingRequest(@SafeParcelable.Param(m22177id = 1) List<com.google.android.gms.internal.location.zzbe> list, @SafeParcelable.Param(m22177id = 2) @InitialTrigger int i, @SafeParcelable.Param(m22177id = 3) String str, @Nullable @SafeParcelable.Param(m22177id = 4) String str2) {
        this.zza = list;
        this.zzb = i;
        this.zzc = str;
        this.zzd = str2;
    }

    @NonNull
    public List<Geofence> getGeofences() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.zza);
        return arrayList;
    }

    @InitialTrigger
    public int getInitialTrigger() {
        return this.zzb;
    }

    @NonNull
    public String toString() {
        return "GeofencingRequest[geofences=" + this.zza + ", initialTrigger=" + this.zzb + ", tag=" + this.zzc + ", attributionTag=" + this.zzd + IteratorUtils.f104924b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.zza, false);
        SafeParcelWriter.writeInt(parcel, 2, getInitialTrigger());
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @NonNull
    public final GeofencingRequest zza(@Nullable String str) {
        return new GeofencingRequest(this.zza, this.zzb, this.zzc, str);
    }
}
