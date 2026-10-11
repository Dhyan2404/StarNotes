package com.google.android.gms.location;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes5.dex */
public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    @VisibleForTesting
    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: e */
        public double f29627e;

        /* renamed from: f */
        public double f29628f;

        /* renamed from: g */
        public float f29629g;

        /* renamed from: a */
        public String f29623a = null;

        /* renamed from: b */
        @TransitionTypes
        public int f29624b = 0;

        /* renamed from: c */
        public long f29625c = Long.MIN_VALUE;

        /* renamed from: d */
        public short f29626d = -1;

        /* renamed from: h */
        public int f29630h = 0;

        /* renamed from: i */
        public int f29631i = -1;

        @NonNull
        public Geofence build() {
            String str = this.f29623a;
            if (str == null) {
                throw new IllegalArgumentException("Request ID not set.");
            }
            int i = this.f29624b;
            if (i == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            }
            if ((i & 4) != 0 && this.f29631i < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            }
            long j = this.f29625c;
            if (j == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            }
            if (this.f29626d == -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            }
            int i2 = this.f29630h;
            if (i2 >= 0) {
                return new com.google.android.gms.internal.location.zzbe(str, i, (short) 1, this.f29627e, this.f29628f, this.f29629g, j, i2, this.f29631i);
            }
            throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
        }

        @NonNull
        public Builder setCircularRegion(@FloatRange(from = -90.0d, m280to = 90.0d) double d, @FloatRange(from = -180.0d, m280to = 180.0d) double d2, @FloatRange(from = 0.0d, fromInclusive = false) float f) {
            boolean z = d >= -90.0d && d <= 90.0d;
            StringBuilder sb = new StringBuilder(42);
            sb.append("Invalid latitude: ");
            sb.append(d);
            Preconditions.checkArgument(z, sb.toString());
            boolean z2 = d2 >= -180.0d && d2 <= 180.0d;
            StringBuilder sb2 = new StringBuilder(43);
            sb2.append("Invalid longitude: ");
            sb2.append(d2);
            Preconditions.checkArgument(z2, sb2.toString());
            boolean z3 = f > 0.0f;
            StringBuilder sb3 = new StringBuilder(31);
            sb3.append("Invalid radius: ");
            sb3.append(f);
            Preconditions.checkArgument(z3, sb3.toString());
            this.f29626d = (short) 1;
            this.f29627e = d;
            this.f29628f = d2;
            this.f29629g = f;
            return this;
        }

        @NonNull
        public Builder setExpirationDuration(long j) {
            if (j < 0) {
                this.f29625c = -1L;
            } else {
                this.f29625c = DefaultClock.getInstance().elapsedRealtime() + j;
            }
            return this;
        }

        @NonNull
        public Builder setLoiteringDelay(int i) {
            this.f29631i = i;
            return this;
        }

        @NonNull
        public Builder setNotificationResponsiveness(@IntRange(from = 0) int i) {
            this.f29630h = i;
            return this;
        }

        @NonNull
        public Builder setRequestId(@NonNull String str) {
            this.f29623a = (String) Preconditions.checkNotNull(str, "Request ID can't be set to null");
            return this;
        }

        @NonNull
        public Builder setTransitionTypes(@TransitionTypes int i) {
            this.f29624b = i;
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public @interface GeofenceTransition {
    }

    /* loaded from: classes5.dex */
    public @interface TransitionTypes {
    }

    @NonNull
    String getRequestId();
}
