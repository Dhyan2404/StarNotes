package androidx.core.location;

import android.annotation.SuppressLint;
import android.location.LocationRequest;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.core.util.TimeUtils;
import com.sunia.HTREnginev2.s2j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class LocationRequestCompat {
    public static final long PASSIVE_INTERVAL = Long.MAX_VALUE;
    public static final int QUALITY_BALANCED_POWER_ACCURACY = 102;
    public static final int QUALITY_HIGH_ACCURACY = 100;
    public static final int QUALITY_LOW_POWER = 104;

    /* renamed from: h */
    public static final long f5503h = -1;

    /* renamed from: a */
    public final int f5504a;

    /* renamed from: b */
    public final long f5505b;

    /* renamed from: c */
    public final long f5506c;

    /* renamed from: d */
    public final long f5507d;

    /* renamed from: e */
    public final int f5508e;

    /* renamed from: f */
    public final float f5509f;

    /* renamed from: g */
    public final long f5510g;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface Quality {
    }

    /* renamed from: androidx.core.location.LocationRequestCompat$a */
    /* loaded from: classes3.dex */
    public static class C0696a {

        /* renamed from: a */
        public static Class<?> f5518a;

        /* renamed from: b */
        public static Method f5519b;

        /* renamed from: c */
        public static Method f5520c;

        /* renamed from: d */
        public static Method f5521d;

        /* renamed from: e */
        public static Method f5522e;

        /* renamed from: f */
        public static Method f5523f;

        @SuppressLint({"BanUncheckedReflection"})
        /* renamed from: a */
        public static Object m3099a(LocationRequestCompat locationRequestCompat, String str) {
            try {
                if (f5518a == null) {
                    f5518a = Class.forName("android.location.LocationRequest");
                }
                if (f5519b == null) {
                    Method declaredMethod = f5518a.getDeclaredMethod("createFromDeprecatedProvider", String.class, Long.TYPE, Float.TYPE, Boolean.TYPE);
                    f5519b = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                Object invoke = f5519b.invoke(null, str, Long.valueOf(locationRequestCompat.getIntervalMillis()), Float.valueOf(locationRequestCompat.getMinUpdateDistanceMeters()), Boolean.FALSE);
                if (invoke == null) {
                    return null;
                }
                if (f5520c == null) {
                    Method declaredMethod2 = f5518a.getDeclaredMethod("setQuality", Integer.TYPE);
                    f5520c = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                }
                f5520c.invoke(invoke, Integer.valueOf(locationRequestCompat.getQuality()));
                if (f5521d == null) {
                    Method declaredMethod3 = f5518a.getDeclaredMethod("setFastestInterval", Long.TYPE);
                    f5521d = declaredMethod3;
                    declaredMethod3.setAccessible(true);
                }
                f5521d.invoke(invoke, Long.valueOf(locationRequestCompat.getMinUpdateIntervalMillis()));
                if (locationRequestCompat.getMaxUpdates() < Integer.MAX_VALUE) {
                    if (f5522e == null) {
                        Method declaredMethod4 = f5518a.getDeclaredMethod("setNumUpdates", Integer.TYPE);
                        f5522e = declaredMethod4;
                        declaredMethod4.setAccessible(true);
                    }
                    f5522e.invoke(invoke, Integer.valueOf(locationRequestCompat.getMaxUpdates()));
                }
                if (locationRequestCompat.getDurationMillis() < Long.MAX_VALUE) {
                    if (f5523f == null) {
                        Method declaredMethod5 = f5518a.getDeclaredMethod("setExpireIn", Long.TYPE);
                        f5523f = declaredMethod5;
                        declaredMethod5.setAccessible(true);
                    }
                    f5523f.invoke(invoke, Long.valueOf(locationRequestCompat.getDurationMillis()));
                }
                return invoke;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.location.LocationRequestCompat$b */
    /* loaded from: classes3.dex */
    public static class C0697b {
        @DoNotInline
        /* renamed from: a */
        public static LocationRequest m3100a(LocationRequestCompat locationRequestCompat) {
            return new LocationRequest.Builder(locationRequestCompat.getIntervalMillis()).setQuality(locationRequestCompat.getQuality()).setMinUpdateIntervalMillis(locationRequestCompat.getMinUpdateIntervalMillis()).setDurationMillis(locationRequestCompat.getDurationMillis()).setMaxUpdates(locationRequestCompat.getMaxUpdates()).setMinUpdateDistanceMeters(locationRequestCompat.getMinUpdateDistanceMeters()).setMaxUpdateDelayMillis(locationRequestCompat.getMaxUpdateDelayMillis()).build();
        }
    }

    public LocationRequestCompat(long j, int i, long j2, int i2, long j3, float f, long j4) {
        this.f5505b = j;
        this.f5504a = i;
        this.f5506c = j3;
        this.f5507d = j2;
        this.f5508e = i2;
        this.f5509f = f;
        this.f5510g = j4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequestCompat)) {
            return false;
        }
        LocationRequestCompat locationRequestCompat = (LocationRequestCompat) obj;
        return this.f5504a == locationRequestCompat.f5504a && this.f5505b == locationRequestCompat.f5505b && this.f5506c == locationRequestCompat.f5506c && this.f5507d == locationRequestCompat.f5507d && this.f5508e == locationRequestCompat.f5508e && Float.compare(locationRequestCompat.f5509f, this.f5509f) == 0 && this.f5510g == locationRequestCompat.f5510g;
    }

    @IntRange(from = 1)
    public long getDurationMillis() {
        return this.f5507d;
    }

    @IntRange(from = 0)
    public long getIntervalMillis() {
        return this.f5505b;
    }

    @IntRange(from = 0)
    public long getMaxUpdateDelayMillis() {
        return this.f5510g;
    }

    @IntRange(from = 1, m281to = 2147483647L)
    public int getMaxUpdates() {
        return this.f5508e;
    }

    @FloatRange(from = 0.0d, m280to = 3.4028234663852886E38d)
    public float getMinUpdateDistanceMeters() {
        return this.f5509f;
    }

    @IntRange(from = 0)
    public long getMinUpdateIntervalMillis() {
        long j = this.f5506c;
        return j == -1 ? this.f5505b : j;
    }

    public int getQuality() {
        return this.f5504a;
    }

    public int hashCode() {
        int i = this.f5504a * 31;
        long j = this.f5505b;
        int i2 = (i + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f5506c;
        return i2 + ((int) (j2 ^ (j2 >>> 32)));
    }

    @NonNull
    @RequiresApi(31)
    public LocationRequest toLocationRequest() {
        return C0697b.m3100a(this);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[");
        if (this.f5505b != Long.MAX_VALUE) {
            sb.append("@");
            TimeUtils.formatDuration(this.f5505b, sb);
            int i = this.f5504a;
            if (i == 100) {
                sb.append(" HIGH_ACCURACY");
            } else if (i == 102) {
                sb.append(" BALANCED");
            } else if (i == 104) {
                sb.append(" LOW_POWER");
            }
        } else {
            sb.append("PASSIVE");
        }
        if (this.f5507d != Long.MAX_VALUE) {
            sb.append(", duration=");
            TimeUtils.formatDuration(this.f5507d, sb);
        }
        if (this.f5508e != Integer.MAX_VALUE) {
            sb.append(", maxUpdates=");
            sb.append(this.f5508e);
        }
        long j = this.f5506c;
        if (j != -1 && j < this.f5505b) {
            sb.append(", minUpdateInterval=");
            TimeUtils.formatDuration(this.f5506c, sb);
        }
        if (this.f5509f > 0.0d) {
            sb.append(", minUpdateDistance=");
            sb.append(this.f5509f);
        }
        if (this.f5510g / 2 > this.f5505b) {
            sb.append(", maxUpdateDelay=");
            TimeUtils.formatDuration(this.f5510g, sb);
        }
        sb.append(']');
        return sb.toString();
    }

    @Nullable
    @SuppressLint({"NewApi"})
    public LocationRequest toLocationRequest(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return toLocationRequest();
        }
        return s2j.m57131a(C0696a.m3099a(this, str));
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public long f5511a;

        /* renamed from: b */
        public int f5512b;

        /* renamed from: c */
        public long f5513c;

        /* renamed from: d */
        public int f5514d;

        /* renamed from: e */
        public long f5515e;

        /* renamed from: f */
        public float f5516f;

        /* renamed from: g */
        public long f5517g;

        public Builder(long j) {
            setIntervalMillis(j);
            this.f5512b = 102;
            this.f5513c = Long.MAX_VALUE;
            this.f5514d = Integer.MAX_VALUE;
            this.f5515e = -1L;
            this.f5516f = 0.0f;
            this.f5517g = 0L;
        }

        @NonNull
        public LocationRequestCompat build() {
            Preconditions.checkState((this.f5511a == Long.MAX_VALUE && this.f5515e == -1) ? false : true, "passive location requests must have an explicit minimum update interval");
            long j = this.f5511a;
            return new LocationRequestCompat(j, this.f5512b, this.f5513c, this.f5514d, Math.min(this.f5515e, j), this.f5516f, this.f5517g);
        }

        @NonNull
        public Builder clearMinUpdateIntervalMillis() {
            this.f5515e = -1L;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(@IntRange(from = 1) long j) {
            this.f5513c = Preconditions.checkArgumentInRange(j, 1L, Long.MAX_VALUE, "durationMillis");
            return this;
        }

        @NonNull
        public Builder setIntervalMillis(@IntRange(from = 0) long j) {
            this.f5511a = Preconditions.checkArgumentInRange(j, 0L, Long.MAX_VALUE, "intervalMillis");
            return this;
        }

        @NonNull
        public Builder setMaxUpdateDelayMillis(@IntRange(from = 0) long j) {
            this.f5517g = j;
            this.f5517g = Preconditions.checkArgumentInRange(j, 0L, Long.MAX_VALUE, "maxUpdateDelayMillis");
            return this;
        }

        @NonNull
        public Builder setMaxUpdates(@IntRange(from = 1, m281to = 2147483647L) int i) {
            this.f5514d = Preconditions.checkArgumentInRange(i, 1, Integer.MAX_VALUE, "maxUpdates");
            return this;
        }

        @NonNull
        public Builder setMinUpdateDistanceMeters(@FloatRange(from = 0.0d, m280to = 3.4028234663852886E38d) float f) {
            this.f5516f = f;
            this.f5516f = Preconditions.checkArgumentInRange(f, 0.0f, Float.MAX_VALUE, "minUpdateDistanceMeters");
            return this;
        }

        @NonNull
        public Builder setMinUpdateIntervalMillis(@IntRange(from = 0) long j) {
            this.f5515e = Preconditions.checkArgumentInRange(j, 0L, Long.MAX_VALUE, "minUpdateIntervalMillis");
            return this;
        }

        @NonNull
        public Builder setQuality(int i) {
            Preconditions.checkArgument(i == 104 || i == 102 || i == 100, "quality must be a defined QUALITY constant, not %d", Integer.valueOf(i));
            this.f5512b = i;
            return this;
        }

        public Builder(@NonNull LocationRequestCompat locationRequestCompat) {
            this.f5511a = locationRequestCompat.f5505b;
            this.f5512b = locationRequestCompat.f5504a;
            this.f5513c = locationRequestCompat.f5507d;
            this.f5514d = locationRequestCompat.f5508e;
            this.f5515e = locationRequestCompat.f5506c;
            this.f5516f = locationRequestCompat.f5509f;
            this.f5517g = locationRequestCompat.f5510g;
        }
    }
}
