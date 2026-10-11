package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes3.dex */
public final class BitmapCompat {

    @RequiresApi(27)
    /* renamed from: androidx.core.graphics.BitmapCompat$a */
    /* loaded from: classes3.dex */
    public static class C0656a {
        @DoNotInline
        /* renamed from: a */
        public static Bitmap m2894a(Bitmap bitmap) {
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                return bitmap;
            }
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            if (Build.VERSION.SDK_INT >= 31) {
                config = C0658c.m2898a(bitmap);
            }
            return bitmap.copy(config, true);
        }

        @DoNotInline
        /* renamed from: b */
        public static Bitmap m2895b(int i, int i2, Bitmap bitmap, boolean z) {
            Bitmap.Config config = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z && !bitmap.getColorSpace().equals(colorSpace2)) {
                config = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                config = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config = C0658c.m2898a(bitmap);
                }
            }
            return Bitmap.createBitmap(i, i2, config, bitmap.hasAlpha(), colorSpace);
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m2896c(Bitmap bitmap) {
            return bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB));
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.graphics.BitmapCompat$b */
    /* loaded from: classes3.dex */
    public static class C0657b {
        @DoNotInline
        /* renamed from: a */
        public static void m2897a(Paint paint) {
            paint.setBlendMode(BlendMode.SRC);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.graphics.BitmapCompat$c */
    /* loaded from: classes3.dex */
    public static class C0658c {
        @DoNotInline
        /* renamed from: a */
        public static Bitmap.Config m2898a(Bitmap bitmap) {
            return bitmap.getHardwareBuffer().getFormat() == 22 ? Bitmap.Config.RGBA_F16 : Bitmap.Config.ARGB_8888;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static int m2893a(int i, int i2, int i3, int i4) {
        return i3 == 0 ? i2 : i3 > 0 ? i * (1 << (i4 - i3)) : i2 << ((-i3) - 1);
    }

    @NonNull
    public static Bitmap createScaledBitmap(@NonNull Bitmap bitmap, int i, int i2, @Nullable Rect rect, boolean z) {
        int i3;
        double floor;
        Bitmap bitmap2;
        int i4;
        int i5;
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("dstW and dstH must be > 0!");
        }
        if (rect != null && (rect.isEmpty() || rect.left < 0 || rect.right > bitmap.getWidth() || rect.top < 0 || rect.bottom > bitmap.getHeight())) {
            throw new IllegalArgumentException("srcRect must be contained by srcBm!");
        }
        Bitmap m2894a = C0656a.m2894a(bitmap);
        int width = rect != null ? rect.width() : bitmap.getWidth();
        int height = rect != null ? rect.height() : bitmap.getHeight();
        float f = i / width;
        float f2 = i2 / height;
        int i6 = rect != null ? rect.left : 0;
        int i7 = rect != null ? rect.top : 0;
        if (i6 == 0 && i7 == 0 && i == bitmap.getWidth() && i2 == bitmap.getHeight()) {
            return (bitmap.isMutable() && bitmap == m2894a) ? bitmap.copy(bitmap.getConfig(), true) : m2894a;
        }
        Paint paint = new Paint(1);
        paint.setFilterBitmap(true);
        C0657b.m2897a(paint);
        if (width == i && height == i2) {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, m2894a.getConfig());
            new Canvas(createBitmap).drawBitmap(m2894a, -i6, -i7, paint);
            return createBitmap;
        }
        double log = Math.log(2.0d);
        if (f > 1.0f) {
            i3 = i6;
            floor = Math.ceil(Math.log(f) / log);
        } else {
            i3 = i6;
            floor = Math.floor(Math.log(f) / log);
        }
        int i8 = (int) floor;
        int ceil = (int) (f2 > 1.0f ? Math.ceil(Math.log(f2) / log) : Math.floor(Math.log(f2) / log));
        if (!z || C0656a.m2896c(bitmap)) {
            bitmap2 = null;
            i4 = i3;
            i5 = 0;
        } else {
            Bitmap m2895b = C0656a.m2895b(i8 > 0 ? m2893a(width, i, 1, i8) : width, ceil > 0 ? m2893a(height, i2, 1, ceil) : height, bitmap, true);
            new Canvas(m2895b).drawBitmap(m2894a, -i3, -i7, paint);
            i5 = 1;
            i7 = 0;
            i4 = 0;
            bitmap2 = m2894a;
            m2894a = m2895b;
        }
        Rect rect2 = new Rect(i4, i7, width, height);
        Rect rect3 = new Rect();
        int i9 = i8;
        int i10 = ceil;
        while (true) {
            if (i9 == 0 && i10 == 0) {
                break;
            }
            if (i9 < 0) {
                i9++;
            } else if (i9 > 0) {
                i9--;
            }
            if (i10 < 0) {
                i10++;
            } else if (i10 > 0) {
                i10--;
            }
            Bitmap bitmap3 = m2894a;
            Paint paint2 = paint;
            rect3.set(0, 0, m2893a(width, i, i9, i8), m2893a(height, i2, i10, ceil));
            boolean z2 = i9 == 0 && i10 == 0;
            boolean z3 = bitmap2 != null && bitmap2.getWidth() == i && bitmap2.getHeight() == i2;
            if (bitmap2 == null || bitmap2 == bitmap || ((z && !C0656a.m2896c(bitmap2)) || (z2 && !(z3 && i5 == 0)))) {
                if (bitmap2 != bitmap && bitmap2 != null) {
                    bitmap2.recycle();
                }
                m2894a = C0656a.m2895b(m2893a(width, i, i9 > 0 ? i5 : i9, i8), m2893a(height, i2, i10 > 0 ? i5 : i10, ceil), bitmap, z && !z2);
            } else {
                m2894a = bitmap2;
            }
            new Canvas(m2894a).drawBitmap(bitmap3, rect2, rect3, paint2);
            rect2.set(rect3);
            bitmap2 = bitmap3;
            paint = paint2;
        }
        if (bitmap2 != bitmap && bitmap2 != null) {
            bitmap2.recycle();
        }
        return m2894a;
    }

    public static int getAllocationByteCount(@NonNull Bitmap bitmap) {
        return bitmap.getAllocationByteCount();
    }

    public static boolean hasMipMap(@NonNull Bitmap bitmap) {
        return bitmap.hasMipMap();
    }

    public static void setHasMipMap(@NonNull Bitmap bitmap, boolean z) {
        bitmap.setHasMipMap(z);
    }
}
