package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcel;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Constants;
import com.google.android.gms.location.Geofence;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class GeofencingEvent {

    /* renamed from: a */
    public final int f29632a;

    /* renamed from: b */
    @Geofence.GeofenceTransition
    public final int f29633b;

    /* renamed from: c */
    public final List<Geofence> f29634c;

    /* renamed from: d */
    public final Location f29635d;

    public GeofencingEvent(int i, @Geofence.GeofenceTransition int i2, List<Geofence> list, Location location) {
        this.f29632a = i;
        this.f29633b = i2;
        this.f29634c = list;
        this.f29635d = location;
    }

    @NonNull
    public static GeofencingEvent fromIntent(@NonNull Intent intent) {
        ArrayList arrayList = null;
        if (intent == null) {
            return null;
        }
        int i = -1;
        int intExtra = intent.getIntExtra(Constants.KEY_GMS_ERROR_CODE, -1);
        int intExtra2 = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
        if (intExtra2 != -1) {
            if (intExtra2 == 1 || intExtra2 == 2) {
                i = intExtra2;
            } else if (intExtra2 == 4) {
                i = 4;
            }
        }
        ArrayList arrayList2 = (ArrayList) intent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
        if (arrayList2 != null) {
            arrayList = new ArrayList(arrayList2.size());
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                byte[] bArr = (byte[]) arrayList2.get(i2);
                Parcel obtain = Parcel.obtain();
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                com.google.android.gms.internal.location.zzbe createFromParcel = com.google.android.gms.internal.location.zzbe.CREATOR.createFromParcel(obtain);
                obtain.recycle();
                arrayList.add(createFromParcel);
            }
        }
        return new GeofencingEvent(intExtra, i, arrayList, (Location) intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
    }

    public int getErrorCode() {
        return this.f29632a;
    }

    @Geofence.GeofenceTransition
    public int getGeofenceTransition() {
        return this.f29633b;
    }

    @NonNull
    public List<Geofence> getTriggeringGeofences() {
        return this.f29634c;
    }

    @NonNull
    public Location getTriggeringLocation() {
        return this.f29635d;
    }

    public boolean hasError() {
        return this.f29632a != -1;
    }
}
