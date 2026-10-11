package androidx.core.location;

import android.annotation.SuppressLint;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class LocationCompat {
    public static final String EXTRA_BEARING_ACCURACY = "bearingAccuracy";
    public static final String EXTRA_IS_MOCK = "mockLocation";
    public static final String EXTRA_MSL_ALTITUDE = "androidx.core.location.extra.MSL_ALTITUDE";
    public static final String EXTRA_MSL_ALTITUDE_ACCURACY = "androidx.core.location.extra.MSL_ALTITUDE_ACCURACY";
    public static final String EXTRA_SPEED_ACCURACY = "speedAccuracy";
    public static final String EXTRA_VERTICAL_ACCURACY = "verticalAccuracy";

    /* renamed from: a */
    @Nullable
    public static Method f5465a;

    /* renamed from: b */
    @Nullable
    public static Field f5466b;

    /* renamed from: c */
    @Nullable
    public static Integer f5467c;

    /* renamed from: d */
    @Nullable
    public static Integer f5468d;

    /* renamed from: e */
    @Nullable
    public static Integer f5469e;

    @RequiresApi(26)
    /* renamed from: androidx.core.location.LocationCompat$a */
    /* loaded from: classes3.dex */
    public static class C0677a {
        @DoNotInline
        /* renamed from: a */
        public static float m3001a(Location location) {
            return location.getBearingAccuracyDegrees();
        }

        @DoNotInline
        /* renamed from: b */
        public static float m3002b(Location location) {
            return location.getSpeedAccuracyMetersPerSecond();
        }

        @DoNotInline
        /* renamed from: c */
        public static float m3003c(Location location) {
            return location.getVerticalAccuracyMeters();
        }

        @DoNotInline
        /* renamed from: d */
        public static boolean m3004d(Location location) {
            return location.hasBearingAccuracy();
        }

        @DoNotInline
        /* renamed from: e */
        public static boolean m3005e(Location location) {
            return location.hasSpeedAccuracy();
        }

        @DoNotInline
        /* renamed from: f */
        public static boolean m3006f(Location location) {
            return location.hasVerticalAccuracy();
        }

        @DoNotInline
        /* renamed from: g */
        public static void m3007g(Location location) {
            try {
                LocationCompat.m2994b().setByte(location, (byte) (LocationCompat.m2994b().getByte(location) & (~LocationCompat.m2995c())));
            } catch (IllegalAccessException e) {
                IllegalAccessError illegalAccessError = new IllegalAccessError();
                illegalAccessError.initCause(e);
                throw illegalAccessError;
            } catch (NoSuchFieldException e2) {
                NoSuchFieldError noSuchFieldError = new NoSuchFieldError();
                noSuchFieldError.initCause(e2);
                throw noSuchFieldError;
            }
        }

        @DoNotInline
        /* renamed from: h */
        public static void m3008h(Location location) {
            try {
                LocationCompat.m2994b().setByte(location, (byte) (LocationCompat.m2994b().getByte(location) & (~LocationCompat.m2996d())));
            } catch (IllegalAccessException e) {
                IllegalAccessError illegalAccessError = new IllegalAccessError();
                illegalAccessError.initCause(e);
                throw illegalAccessError;
            } catch (NoSuchFieldException e2) {
                NoSuchFieldError noSuchFieldError = new NoSuchFieldError();
                noSuchFieldError.initCause(e2);
                throw noSuchFieldError;
            }
        }

        @DoNotInline
        /* renamed from: i */
        public static void m3009i(Location location) {
            try {
                LocationCompat.m2994b().setByte(location, (byte) (LocationCompat.m2994b().getByte(location) & (~LocationCompat.m2997e())));
            } catch (IllegalAccessException | NoSuchFieldException e) {
                IllegalAccessError illegalAccessError = new IllegalAccessError();
                illegalAccessError.initCause(e);
                throw illegalAccessError;
            }
        }

        @DoNotInline
        /* renamed from: j */
        public static void m3010j(Location location, float f) {
            location.setBearingAccuracyDegrees(f);
        }

        @DoNotInline
        /* renamed from: k */
        public static void m3011k(Location location, float f) {
            location.setSpeedAccuracyMetersPerSecond(f);
        }

        @DoNotInline
        /* renamed from: l */
        public static void m3012l(Location location, float f) {
            location.setVerticalAccuracyMeters(f);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.location.LocationCompat$b */
    /* loaded from: classes3.dex */
    public static class C0678b {
        @DoNotInline
        /* renamed from: a */
        public static void m3013a(Location location) {
            if (location.hasBearingAccuracy()) {
                String provider = location.getProvider();
                long time = location.getTime();
                long elapsedRealtimeNanos = location.getElapsedRealtimeNanos();
                double latitude = location.getLatitude();
                double longitude = location.getLongitude();
                boolean hasAltitude = location.hasAltitude();
                double altitude = location.getAltitude();
                boolean hasSpeed = location.hasSpeed();
                float speed = location.getSpeed();
                boolean hasBearing = location.hasBearing();
                float bearing = location.getBearing();
                boolean hasAccuracy = location.hasAccuracy();
                float accuracy = location.getAccuracy();
                boolean hasVerticalAccuracy = location.hasVerticalAccuracy();
                float verticalAccuracyMeters = location.getVerticalAccuracyMeters();
                boolean hasSpeedAccuracy = location.hasSpeedAccuracy();
                float speedAccuracyMetersPerSecond = location.getSpeedAccuracyMetersPerSecond();
                Bundle extras = location.getExtras();
                location.reset();
                location.setProvider(provider);
                location.setTime(time);
                location.setElapsedRealtimeNanos(elapsedRealtimeNanos);
                location.setLatitude(latitude);
                location.setLongitude(longitude);
                if (hasAltitude) {
                    location.setAltitude(altitude);
                }
                if (hasSpeed) {
                    location.setSpeed(speed);
                }
                if (hasBearing) {
                    location.setBearing(bearing);
                }
                if (hasAccuracy) {
                    location.setAccuracy(accuracy);
                }
                if (hasVerticalAccuracy) {
                    location.setVerticalAccuracyMeters(verticalAccuracyMeters);
                }
                if (hasSpeedAccuracy) {
                    location.setBearingAccuracyDegrees(speedAccuracyMetersPerSecond);
                }
                if (extras != null) {
                    location.setExtras(extras);
                }
            }
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3014b(Location location) {
            if (location.hasSpeedAccuracy()) {
                String provider = location.getProvider();
                long time = location.getTime();
                long elapsedRealtimeNanos = location.getElapsedRealtimeNanos();
                double latitude = location.getLatitude();
                double longitude = location.getLongitude();
                boolean hasAltitude = location.hasAltitude();
                double altitude = location.getAltitude();
                boolean hasSpeed = location.hasSpeed();
                float speed = location.getSpeed();
                boolean hasBearing = location.hasBearing();
                float bearing = location.getBearing();
                boolean hasAccuracy = location.hasAccuracy();
                float accuracy = location.getAccuracy();
                boolean hasVerticalAccuracy = location.hasVerticalAccuracy();
                float verticalAccuracyMeters = location.getVerticalAccuracyMeters();
                boolean hasBearingAccuracy = location.hasBearingAccuracy();
                float bearingAccuracyDegrees = location.getBearingAccuracyDegrees();
                Bundle extras = location.getExtras();
                location.reset();
                location.setProvider(provider);
                location.setTime(time);
                location.setElapsedRealtimeNanos(elapsedRealtimeNanos);
                location.setLatitude(latitude);
                location.setLongitude(longitude);
                if (hasAltitude) {
                    location.setAltitude(altitude);
                }
                if (hasSpeed) {
                    location.setSpeed(speed);
                }
                if (hasBearing) {
                    location.setBearing(bearing);
                }
                if (hasAccuracy) {
                    location.setAccuracy(accuracy);
                }
                if (hasVerticalAccuracy) {
                    location.setVerticalAccuracyMeters(verticalAccuracyMeters);
                }
                if (hasBearingAccuracy) {
                    location.setBearingAccuracyDegrees(bearingAccuracyDegrees);
                }
                if (extras != null) {
                    location.setExtras(extras);
                }
            }
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3015c(Location location) {
            if (location.hasVerticalAccuracy()) {
                String provider = location.getProvider();
                long time = location.getTime();
                long elapsedRealtimeNanos = location.getElapsedRealtimeNanos();
                double latitude = location.getLatitude();
                double longitude = location.getLongitude();
                boolean hasAltitude = location.hasAltitude();
                double altitude = location.getAltitude();
                boolean hasSpeed = location.hasSpeed();
                float speed = location.getSpeed();
                boolean hasBearing = location.hasBearing();
                float bearing = location.getBearing();
                boolean hasAccuracy = location.hasAccuracy();
                float accuracy = location.getAccuracy();
                boolean hasSpeedAccuracy = location.hasSpeedAccuracy();
                float speedAccuracyMetersPerSecond = location.getSpeedAccuracyMetersPerSecond();
                boolean hasBearingAccuracy = location.hasBearingAccuracy();
                float bearingAccuracyDegrees = location.getBearingAccuracyDegrees();
                Bundle extras = location.getExtras();
                location.reset();
                location.setProvider(provider);
                location.setTime(time);
                location.setElapsedRealtimeNanos(elapsedRealtimeNanos);
                location.setLatitude(latitude);
                location.setLongitude(longitude);
                if (hasAltitude) {
                    location.setAltitude(altitude);
                }
                if (hasSpeed) {
                    location.setSpeed(speed);
                }
                if (hasBearing) {
                    location.setBearing(bearing);
                }
                if (hasAccuracy) {
                    location.setAccuracy(accuracy);
                }
                if (hasSpeedAccuracy) {
                    location.setSpeedAccuracyMetersPerSecond(speedAccuracyMetersPerSecond);
                }
                if (hasBearingAccuracy) {
                    location.setBearingAccuracyDegrees(bearingAccuracyDegrees);
                }
                if (extras != null) {
                    location.setExtras(extras);
                }
            }
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.location.LocationCompat$c */
    /* loaded from: classes3.dex */
    public static class C0679c {
        @DoNotInline
        /* renamed from: a */
        public static void m3016a(Location location) {
            if (location.hasBearingAccuracy()) {
                double elapsedRealtimeUncertaintyNanos = location.getElapsedRealtimeUncertaintyNanos();
                C0678b.m3013a(location);
                location.setElapsedRealtimeUncertaintyNanos(elapsedRealtimeUncertaintyNanos);
            }
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3017b(Location location) {
            if (location.hasSpeedAccuracy()) {
                double elapsedRealtimeUncertaintyNanos = location.getElapsedRealtimeUncertaintyNanos();
                C0678b.m3014b(location);
                location.setElapsedRealtimeUncertaintyNanos(elapsedRealtimeUncertaintyNanos);
            }
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3018c(Location location) {
            if (location.hasVerticalAccuracy()) {
                double elapsedRealtimeUncertaintyNanos = location.getElapsedRealtimeUncertaintyNanos();
                C0678b.m3015c(location);
                location.setElapsedRealtimeUncertaintyNanos(elapsedRealtimeUncertaintyNanos);
            }
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.core.location.LocationCompat$d */
    /* loaded from: classes3.dex */
    public static class C0680d {
        @DoNotInline
        /* renamed from: a */
        public static void m3019a(Location location) {
            location.removeBearingAccuracy();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3020b(Location location) {
            location.removeSpeedAccuracy();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3021c(Location location) {
            location.removeVerticalAccuracy();
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.location.LocationCompat$e */
    /* loaded from: classes3.dex */
    public static class C0681e {
        @DoNotInline
        /* renamed from: a */
        public static float m3022a(Location location) {
            return location.getMslAltitudeAccuracyMeters();
        }

        @DoNotInline
        /* renamed from: b */
        public static double m3023b(Location location) {
            return location.getMslAltitudeMeters();
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m3024c(Location location) {
            return location.hasMslAltitude();
        }

        @DoNotInline
        /* renamed from: d */
        public static boolean m3025d(Location location) {
            return location.hasMslAltitudeAccuracy();
        }

        @DoNotInline
        /* renamed from: e */
        public static void m3026e(Location location) {
            location.removeMslAltitude();
        }

        @DoNotInline
        /* renamed from: f */
        public static void m3027f(Location location) {
            location.removeMslAltitudeAccuracy();
        }

        @DoNotInline
        /* renamed from: g */
        public static void m3028g(Location location, float f) {
            location.setMslAltitudeAccuracyMeters(f);
        }

        @DoNotInline
        /* renamed from: h */
        public static void m3029h(Location location, double d) {
            location.setMslAltitudeMeters(d);
        }
    }

    /* renamed from: a */
    public static boolean m2993a(@NonNull Location location, String str) {
        Bundle extras = location.getExtras();
        return extras != null && extras.containsKey(str);
    }

    @SuppressLint({"BlockedPrivateApi"})
    /* renamed from: b */
    public static Field m2994b() throws NoSuchFieldException {
        if (f5466b == null) {
            Field declaredField = Location.class.getDeclaredField("mFieldsMask");
            f5466b = declaredField;
            declaredField.setAccessible(true);
        }
        return f5466b;
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: c */
    public static int m2995c() throws NoSuchFieldException, IllegalAccessException {
        if (f5468d == null) {
            Field declaredField = Location.class.getDeclaredField("HAS_BEARING_ACCURACY_MASK");
            declaredField.setAccessible(true);
            f5468d = Integer.valueOf(declaredField.getInt(null));
        }
        return f5468d.intValue();
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: d */
    public static int m2996d() throws NoSuchFieldException, IllegalAccessException {
        if (f5467c == null) {
            Field declaredField = Location.class.getDeclaredField("HAS_SPEED_ACCURACY_MASK");
            declaredField.setAccessible(true);
            f5467c = Integer.valueOf(declaredField.getInt(null));
        }
        return f5467c.intValue();
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: e */
    public static int m2997e() throws NoSuchFieldException, IllegalAccessException {
        if (f5469e == null) {
            Field declaredField = Location.class.getDeclaredField("HAS_VERTICAL_ACCURACY_MASK");
            declaredField.setAccessible(true);
            f5469e = Integer.valueOf(declaredField.getInt(null));
        }
        return f5469e.intValue();
    }

    /* renamed from: f */
    public static Bundle m2998f(@NonNull Location location) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            return extras;
        }
        location.setExtras(new Bundle());
        return location.getExtras();
    }

    /* renamed from: g */
    public static Method m2999g() throws NoSuchMethodException {
        if (f5465a == null) {
            Method declaredMethod = Location.class.getDeclaredMethod("setIsFromMockProvider", Boolean.TYPE);
            f5465a = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return f5465a;
    }

    public static float getBearingAccuracyDegrees(@NonNull Location location) {
        return C0677a.m3001a(location);
    }

    public static long getElapsedRealtimeMillis(@NonNull Location location) {
        return TimeUnit.NANOSECONDS.toMillis(location.getElapsedRealtimeNanos());
    }

    public static long getElapsedRealtimeNanos(@NonNull Location location) {
        return location.getElapsedRealtimeNanos();
    }

    @FloatRange(from = 0.0d)
    public static float getMslAltitudeAccuracyMeters(@NonNull Location location) {
        return Build.VERSION.SDK_INT >= 34 ? C0681e.m3022a(location) : m2998f(location).getFloat(EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    public static double getMslAltitudeMeters(@NonNull Location location) {
        return Build.VERSION.SDK_INT >= 34 ? C0681e.m3023b(location) : m2998f(location).getDouble(EXTRA_MSL_ALTITUDE);
    }

    public static float getSpeedAccuracyMetersPerSecond(@NonNull Location location) {
        return C0677a.m3002b(location);
    }

    public static float getVerticalAccuracyMeters(@NonNull Location location) {
        return C0677a.m3003c(location);
    }

    /* renamed from: h */
    public static void m3000h(@NonNull Location location, String str) {
        Bundle extras = location.getExtras();
        if (extras != null) {
            extras.remove(str);
            if (extras.isEmpty()) {
                location.setExtras(null);
            }
        }
    }

    public static boolean hasBearingAccuracy(@NonNull Location location) {
        return C0677a.m3004d(location);
    }

    public static boolean hasMslAltitude(@NonNull Location location) {
        return Build.VERSION.SDK_INT >= 34 ? C0681e.m3024c(location) : m2993a(location, EXTRA_MSL_ALTITUDE);
    }

    public static boolean hasMslAltitudeAccuracy(@NonNull Location location) {
        return Build.VERSION.SDK_INT >= 34 ? C0681e.m3025d(location) : m2993a(location, EXTRA_MSL_ALTITUDE_ACCURACY);
    }

    public static boolean hasSpeedAccuracy(@NonNull Location location) {
        return C0677a.m3005e(location);
    }

    public static boolean hasVerticalAccuracy(@NonNull Location location) {
        return C0677a.m3006f(location);
    }

    public static boolean isMock(@NonNull Location location) {
        return location.isFromMockProvider();
    }

    public static void removeBearingAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 33) {
            C0680d.m3019a(location);
        } else {
            C0679c.m3016a(location);
        }
    }

    public static void removeMslAltitude(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0681e.m3026e(location);
        } else {
            m3000h(location, EXTRA_MSL_ALTITUDE);
        }
    }

    public static void removeMslAltitudeAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0681e.m3027f(location);
        } else {
            m3000h(location, EXTRA_MSL_ALTITUDE_ACCURACY);
        }
    }

    public static void removeSpeedAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 33) {
            C0680d.m3020b(location);
        } else {
            C0679c.m3017b(location);
        }
    }

    public static void removeVerticalAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 33) {
            C0680d.m3021c(location);
        } else {
            C0679c.m3018c(location);
        }
    }

    public static void setBearingAccuracyDegrees(@NonNull Location location, float f) {
        C0677a.m3010j(location, f);
    }

    @SuppressLint({"BanUncheckedReflection"})
    public static void setMock(@NonNull Location location, boolean z) {
        try {
            m2999g().invoke(location, Boolean.valueOf(z));
        } catch (IllegalAccessException e) {
            IllegalAccessError illegalAccessError = new IllegalAccessError();
            illegalAccessError.initCause(e);
            throw illegalAccessError;
        } catch (NoSuchMethodException e2) {
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
            noSuchMethodError.initCause(e2);
            throw noSuchMethodError;
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    public static void setMslAltitudeAccuracyMeters(@NonNull Location location, @FloatRange(from = 0.0d) float f) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0681e.m3028g(location, f);
        } else {
            m2998f(location).putFloat(EXTRA_MSL_ALTITUDE_ACCURACY, f);
        }
    }

    public static void setMslAltitudeMeters(@NonNull Location location, double d) {
        if (Build.VERSION.SDK_INT >= 34) {
            C0681e.m3029h(location, d);
        } else {
            m2998f(location).putDouble(EXTRA_MSL_ALTITUDE, d);
        }
    }

    public static void setSpeedAccuracyMetersPerSecond(@NonNull Location location, float f) {
        C0677a.m3011k(location, f);
    }

    public static void setVerticalAccuracyMeters(@NonNull Location location, float f) {
        C0677a.m3012l(location, f);
    }
}
