package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaji;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm;
import java.util.List;

/* loaded from: classes6.dex */
public abstract class Ink {

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        public final zzaji f36747a = zzajm.zze();

        /* renamed from: b */
        public boolean f36748b = true;

        @NonNull
        public Builder addStroke(@NonNull Stroke stroke) {
            this.f36747a.zze(stroke);
            this.f36748b = false;
            return this;
        }

        @NonNull
        public Ink build() {
            return new C6623b(this.f36747a.zzh());
        }

        public boolean isEmpty() {
            return this.f36748b;
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class Point {
        @NonNull
        public static Point create(float f, float f2) {
            return new C6624c(f, f2, null);
        }

        @Nullable
        public abstract Long getTimestamp();

        public abstract float getX();

        public abstract float getY();

        @NonNull
        public static Point create(float f, float f2, long j) {
            return new C6624c(f, f2, Long.valueOf(j));
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class Stroke {

        /* loaded from: classes6.dex */
        public static class Builder {

            /* renamed from: a */
            public final zzaji f36749a = zzajm.zze();

            public Builder() {
            }

            @NonNull
            public Builder addPoint(@NonNull Point point) {
                this.f36749a.zze(point);
                return this;
            }

            @NonNull
            public Stroke build() {
                return new C6625d(this.f36749a.zzh());
            }

            public /* synthetic */ Builder(zzm zzmVar) {
            }
        }

        @NonNull
        public static Builder builder() {
            return new Builder(null);
        }

        @NonNull
        public abstract List<Point> getPoints();
    }

    @NonNull
    public static Builder builder() {
        return new Builder();
    }

    @NonNull
    public abstract List<Stroke> getStrokes();
}
