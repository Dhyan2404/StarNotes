package com.sunia.HTREnginev2;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.core.location.GnssStatusCompat;
import androidx.core.util.Preconditions;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class t4h extends GnssStatusCompat {

    /* renamed from: f */
    public static final int f84860f = 0;

    /* renamed from: g */
    public static final int f84861g = 32;

    /* renamed from: h */
    public static final int f84862h = 33;

    /* renamed from: i */
    public static final int f84863i = 64;

    /* renamed from: j */
    public static final int f84864j = -87;

    /* renamed from: k */
    public static final int f84865k = 64;

    /* renamed from: l */
    public static final int f84866l = 24;

    /* renamed from: m */
    public static final int f84867m = 193;

    /* renamed from: n */
    public static final int f84868n = 200;

    /* renamed from: o */
    public static final int f84869o = 200;

    /* renamed from: p */
    public static final int f84870p = 35;

    /* renamed from: a */
    public final GpsStatus f84871a;

    /* renamed from: b */
    @GuardedBy("mWrapped")
    public int f84872b;

    /* renamed from: c */
    @GuardedBy("mWrapped")
    public Iterator<GpsSatellite> f84873c;

    /* renamed from: d */
    @GuardedBy("mWrapped")
    public int f84874d;

    /* renamed from: e */
    @GuardedBy("mWrapped")
    public GpsSatellite f84875e;

    public t4h(GpsStatus gpsStatus) {
        GpsStatus gpsStatus2 = (GpsStatus) Preconditions.checkNotNull(gpsStatus);
        this.f84871a = gpsStatus2;
        this.f84872b = -1;
        this.f84873c = gpsStatus2.getSatellites().iterator();
        this.f84874d = -1;
        this.f84875e = null;
    }

    /* renamed from: a */
    public static int m57299a(int i) {
        if (i > 0 && i <= 32) {
            return 1;
        }
        if (i >= 33 && i <= 64) {
            return 2;
        }
        if (i > 64 && i <= 88) {
            return 3;
        }
        if (i <= 200 || i > 235) {
            return (i < 193 || i > 200) ? 0 : 4;
        }
        return 5;
    }

    /* renamed from: c */
    public static int m57300c(int i) {
        int m57299a = m57299a(i);
        return m57299a != 2 ? m57299a != 3 ? m57299a != 5 ? i : i - 200 : i - 64 : i + 87;
    }

    /* renamed from: b */
    public final GpsSatellite m57301b(int i) {
        GpsSatellite gpsSatellite;
        synchronized (this.f84871a) {
            if (i < this.f84874d) {
                this.f84873c = this.f84871a.getSatellites().iterator();
                this.f84874d = -1;
            }
            while (true) {
                int i2 = this.f84874d;
                if (i2 >= i) {
                    break;
                }
                this.f84874d = i2 + 1;
                if (!this.f84873c.hasNext()) {
                    this.f84875e = null;
                    break;
                }
                this.f84875e = this.f84873c.next();
            }
            gpsSatellite = this.f84875e;
        }
        return (GpsSatellite) Preconditions.checkNotNull(gpsSatellite);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t4h) {
            return this.f84871a.equals(((t4h) obj).f84871a);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int i) {
        return m57301b(i).getAzimuth();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int i) {
        return m57301b(i).getSnr();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int i) {
        return m57299a(m57301b(i).getPrn());
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int i) {
        return m57301b(i).getElevation();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        int i;
        synchronized (this.f84871a) {
            if (this.f84872b == -1) {
                for (GpsSatellite gpsSatellite : this.f84871a.getSatellites()) {
                    this.f84872b++;
                }
                this.f84872b++;
            }
            i = this.f84872b;
        }
        return i;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int i) {
        return m57300c(m57301b(i).getPrn());
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int i) {
        return m57301b(i).hasAlmanac();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int i) {
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int i) {
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int i) {
        return m57301b(i).hasEphemeris();
    }

    public int hashCode() {
        return this.f84871a.hashCode();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int i) {
        return m57301b(i).usedInFix();
    }
}
