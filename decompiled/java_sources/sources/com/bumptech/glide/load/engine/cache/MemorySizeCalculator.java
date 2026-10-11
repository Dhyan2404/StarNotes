package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes3.dex */
public final class MemorySizeCalculator {

    /* renamed from: e */
    public static final String f14724e = "MemorySizeCalculator";

    /* renamed from: f */
    @VisibleForTesting
    public static final int f14725f = 4;

    /* renamed from: g */
    public static final int f14726g = 2;

    /* renamed from: a */
    public final int f14727a;

    /* renamed from: b */
    public final int f14728b;

    /* renamed from: c */
    public final Context f14729c;

    /* renamed from: d */
    public final int f14730d;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: i */
        @VisibleForTesting
        public static final int f14731i = 2;

        /* renamed from: j */
        public static final int f14732j = 1;

        /* renamed from: k */
        public static final float f14733k = 0.4f;

        /* renamed from: l */
        public static final float f14734l = 0.33f;

        /* renamed from: m */
        public static final int f14735m = 4194304;

        /* renamed from: a */
        public final Context f14736a;

        /* renamed from: b */
        public ActivityManager f14737b;

        /* renamed from: c */
        public InterfaceC1954b f14738c;

        /* renamed from: e */
        public float f14740e;

        /* renamed from: d */
        public float f14739d = 2.0f;

        /* renamed from: f */
        public float f14741f = 0.4f;

        /* renamed from: g */
        public float f14742g = 0.33f;

        /* renamed from: h */
        public int f14743h = 4194304;

        public Builder(Context context) {
            this.f14740e = f14732j;
            this.f14736a = context;
            this.f14737b = (ActivityManager) context.getSystemService(ActivityChooserModel.f1429r);
            this.f14738c = new C1953a(context.getResources().getDisplayMetrics());
            if (MemorySizeCalculator.m8826b(this.f14737b)) {
                this.f14740e = 0.0f;
            }
        }

        @VisibleForTesting
        /* renamed from: a */
        public Builder m8828a(ActivityManager activityManager) {
            this.f14737b = activityManager;
            return this;
        }

        @VisibleForTesting
        /* renamed from: b */
        public Builder m8829b(InterfaceC1954b interfaceC1954b) {
            this.f14738c = interfaceC1954b;
            return this;
        }

        public MemorySizeCalculator build() {
            return new MemorySizeCalculator(this);
        }

        public Builder setArrayPoolSize(int i) {
            this.f14743h = i;
            return this;
        }

        public Builder setBitmapPoolScreens(float f) {
            Preconditions.checkArgument(f >= 0.0f, "Bitmap pool screens must be greater than or equal to 0");
            this.f14740e = f;
            return this;
        }

        public Builder setLowMemoryMaxSizeMultiplier(float f) {
            Preconditions.checkArgument(f >= 0.0f && f <= 1.0f, "Low memory max size multiplier must be between 0 and 1");
            this.f14742g = f;
            return this;
        }

        public Builder setMaxSizeMultiplier(float f) {
            Preconditions.checkArgument(f >= 0.0f && f <= 1.0f, "Size multiplier must be between 0 and 1");
            this.f14741f = f;
            return this;
        }

        public Builder setMemoryCacheScreens(float f) {
            Preconditions.checkArgument(f >= 0.0f, "Memory cache screens must be greater than or equal to 0");
            this.f14739d = f;
            return this;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.MemorySizeCalculator$a */
    /* loaded from: classes3.dex */
    public static final class C1953a implements InterfaceC1954b {

        /* renamed from: a */
        public final DisplayMetrics f14744a;

        public C1953a(DisplayMetrics displayMetrics) {
            this.f14744a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.InterfaceC1954b
        /* renamed from: a */
        public int mo8830a() {
            return this.f14744a.heightPixels;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.InterfaceC1954b
        /* renamed from: b */
        public int mo8831b() {
            return this.f14744a.widthPixels;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.MemorySizeCalculator$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC1954b {
        /* renamed from: a */
        int mo8830a();

        /* renamed from: b */
        int mo8831b();
    }

    public MemorySizeCalculator(Builder builder) {
        this.f14729c = builder.f14736a;
        int i = m8826b(builder.f14737b) ? builder.f14743h / 2 : builder.f14743h;
        this.f14730d = i;
        int m8825a = m8825a(builder.f14737b, builder.f14741f, builder.f14742g);
        float mo8831b = builder.f14738c.mo8831b() * builder.f14738c.mo8830a() * 4;
        int round = Math.round(builder.f14740e * mo8831b);
        int round2 = Math.round(mo8831b * builder.f14739d);
        int i2 = m8825a - i;
        int i3 = round2 + round;
        if (i3 <= i2) {
            this.f14728b = round2;
            this.f14727a = round;
        } else {
            float f = i2;
            float f2 = builder.f14740e;
            float f3 = builder.f14739d;
            float f4 = f / (f2 + f3);
            this.f14728b = Math.round(f3 * f4);
            this.f14727a = Math.round(f4 * builder.f14740e);
        }
        if (Log.isLoggable(f14724e, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(m8827c(this.f14728b));
            sb.append(", pool size: ");
            sb.append(m8827c(this.f14727a));
            sb.append(", byte array size: ");
            sb.append(m8827c(i));
            sb.append(", memory class limited? ");
            sb.append(i3 > m8825a);
            sb.append(", max size: ");
            sb.append(m8827c(m8825a));
            sb.append(", memoryClass: ");
            sb.append(builder.f14737b.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(m8826b(builder.f14737b));
            Log.d(f14724e, sb.toString());
        }
    }

    /* renamed from: a */
    public static int m8825a(ActivityManager activityManager, float f, float f2) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (m8826b(activityManager)) {
            f = f2;
        }
        return Math.round(memoryClass * f);
    }

    @TargetApi(19)
    /* renamed from: b */
    public static boolean m8826b(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }

    /* renamed from: c */
    public final String m8827c(int i) {
        return Formatter.formatFileSize(this.f14729c, i);
    }

    public int getArrayPoolSizeInBytes() {
        return this.f14730d;
    }

    public int getBitmapPoolSize() {
        return this.f14727a;
    }

    public int getMemoryCacheSize() {
        return this.f14728b;
    }
}
