package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public final class TransformationUtils {
    public static final int PAINT_FLAGS = 6;

    /* renamed from: a */
    public static final String f15095a = "TransformationUtils";

    /* renamed from: c */
    public static final int f15097c = 7;

    /* renamed from: e */
    public static final Paint f15099e;

    /* renamed from: f */
    public static final Set<String> f15100f;

    /* renamed from: g */
    public static final Lock f15101g;

    /* renamed from: b */
    public static final Paint f15096b = new Paint(6);

    /* renamed from: d */
    public static final Paint f15098d = new Paint(7);

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$a */
    /* loaded from: classes3.dex */
    public class C1999a implements InterfaceC2001c {

        /* renamed from: a */
        public final /* synthetic */ int f15102a;

        public C1999a(int i) {
            this.f15102a = i;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.TransformationUtils.InterfaceC2001c
        /* renamed from: a */
        public void mo8981a(Canvas canvas, Paint paint, RectF rectF) {
            int i = this.f15102a;
            canvas.drawRoundRect(rectF, i, i, paint);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$b */
    /* loaded from: classes3.dex */
    public class C2000b implements InterfaceC2001c {

        /* renamed from: a */
        public final /* synthetic */ float f15103a;

        /* renamed from: b */
        public final /* synthetic */ float f15104b;

        /* renamed from: c */
        public final /* synthetic */ float f15105c;

        /* renamed from: d */
        public final /* synthetic */ float f15106d;

        public C2000b(float f, float f2, float f3, float f4) {
            this.f15103a = f;
            this.f15104b = f2;
            this.f15105c = f3;
            this.f15106d = f4;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.TransformationUtils.InterfaceC2001c
        /* renamed from: a */
        public void mo8981a(Canvas canvas, Paint paint, RectF rectF) {
            Path path = new Path();
            float f = this.f15103a;
            float f2 = this.f15104b;
            float f3 = this.f15105c;
            float f4 = this.f15106d;
            path.addRoundRect(rectF, new float[]{f, f, f2, f2, f3, f3, f4, f4}, Path.Direction.CW);
            canvas.drawPath(path, paint);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC2001c {
        /* renamed from: a */
        void mo8981a(Canvas canvas, Paint paint, RectF rectF);
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$d */
    /* loaded from: classes3.dex */
    public static final class LockC2002d implements Lock {
        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f15100f = hashSet;
        f15101g = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new LockC2002d();
        Paint paint = new Paint(7);
        f15099e = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: a */
    public static void m8974a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        Lock lock = f15101g;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f15096b);
            m8975b(canvas);
            lock.unlock();
        } catch (Throwable th) {
            f15101g.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public static void m8975b(Canvas canvas) {
        canvas.setBitmap(null);
    }

    /* renamed from: c */
    public static Bitmap m8976c(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap) {
        Bitmap.Config m8977d = m8977d(bitmap);
        if (m8977d.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap bitmap2 = bitmapPool.get(bitmap.getWidth(), bitmap.getHeight(), m8977d);
        new Canvas(bitmap2).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return bitmap2;
    }

    public static Bitmap centerCrop(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        float width;
        float height;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            width = i2 / bitmap.getHeight();
            f = (i - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i / bitmap.getWidth();
            height = (i2 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f + 0.5f), (int) (height + 0.5f));
        Bitmap bitmap2 = bitmapPool.get(i, i2, m8978e(bitmap));
        setAlpha(bitmap, bitmap2);
        m8974a(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    public static Bitmap centerInside(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable(f15095a, 2)) {
                Log.v(f15095a, "requested target size too big for input, fit centering instead");
            }
            return fitCenter(bitmapPool, bitmap, i, i2);
        }
        if (Log.isLoggable(f15095a, 2)) {
            Log.v(f15095a, "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    public static Bitmap circleCrop(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        int min = Math.min(i, i2);
        float f = min;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float max = Math.max(f / width, f / height);
        float f3 = width * max;
        float f4 = max * height;
        float f5 = (f - f3) / 2.0f;
        float f6 = (f - f4) / 2.0f;
        RectF rectF = new RectF(f5, f6, f3 + f5, f4 + f6);
        Bitmap m8976c = m8976c(bitmapPool, bitmap);
        Bitmap bitmap2 = bitmapPool.get(min, min, m8977d(bitmap));
        bitmap2.setHasAlpha(true);
        Lock lock = f15101g;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawCircle(f2, f2, f2, f15098d);
            canvas.drawBitmap(m8976c, (Rect) null, rectF, f15099e);
            m8975b(canvas);
            lock.unlock();
            if (!m8976c.equals(bitmap)) {
                bitmapPool.put(m8976c);
            }
            return bitmap2;
        } catch (Throwable th) {
            f15101g.unlock();
            throw th;
        }
    }

    @NonNull
    /* renamed from: d */
    public static Bitmap.Config m8977d(@NonNull Bitmap bitmap) {
        return Bitmap.Config.RGBA_F16.equals(bitmap.getConfig()) ? Bitmap.Config.RGBA_F16 : Bitmap.Config.ARGB_8888;
    }

    @NonNull
    /* renamed from: e */
    public static Bitmap.Config m8978e(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    @VisibleForTesting
    /* renamed from: f */
    public static void m8979f(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }

    public static Bitmap fitCenter(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            if (Log.isLoggable(f15095a, 2)) {
                Log.v(f15095a, "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            if (Log.isLoggable(f15095a, 2)) {
                Log.v(f15095a, "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Bitmap bitmap2 = bitmapPool.get((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m8978e(bitmap));
        setAlpha(bitmap, bitmap2);
        if (Log.isLoggable(f15095a, 2)) {
            Log.v(f15095a, "request: " + i + "x" + i2);
            Log.v(f15095a, "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
            Log.v(f15095a, "toReuse: " + bitmap2.getWidth() + "x" + bitmap2.getHeight());
            StringBuilder sb = new StringBuilder();
            sb.append("minPct:   ");
            sb.append(min);
            Log.v(f15095a, sb.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        m8974a(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    /* renamed from: g */
    public static Bitmap m8980g(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, InterfaceC2001c interfaceC2001c) {
        Bitmap.Config m8977d = m8977d(bitmap);
        Bitmap m8976c = m8976c(bitmapPool, bitmap);
        Bitmap bitmap2 = bitmapPool.get(m8976c.getWidth(), m8976c.getHeight(), m8977d);
        bitmap2.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(m8976c, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap2.getWidth(), bitmap2.getHeight());
        Lock lock = f15101g;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            interfaceC2001c.mo8981a(canvas, paint, rectF);
            m8975b(canvas);
            lock.unlock();
            if (!m8976c.equals(bitmap)) {
                bitmapPool.put(m8976c);
            }
            return bitmap2;
        } catch (Throwable th) {
            f15101g.unlock();
            throw th;
        }
    }

    public static Lock getBitmapDrawableLock() {
        return f15101g;
    }

    public static int getExifOrientationDegrees(int i) {
        switch (i) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    public static boolean isExifOrientationRequired(int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static Bitmap rotateImage(@NonNull Bitmap bitmap, int i) {
        if (i == 0) {
            return bitmap;
        }
        try {
            Matrix matrix = new Matrix();
            matrix.setRotate(i);
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (Exception e) {
            if (!Log.isLoggable(f15095a, 6)) {
                return bitmap;
            }
            Log.e(f15095a, "Exception when trying to orient image", e);
            return bitmap;
        }
    }

    public static Bitmap rotateImageExif(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i) {
        if (!isExifOrientationRequired(i)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        m8979f(i, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap bitmap2 = bitmapPool.get(Math.round(rectF.width()), Math.round(rectF.height()), m8978e(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        bitmap2.setHasAlpha(bitmap.hasAlpha());
        m8974a(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    @Deprecated
    public static Bitmap roundedCorners(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2, int i3) {
        return roundedCorners(bitmapPool, bitmap, i3);
    }

    public static void setAlpha(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    public static Bitmap roundedCorners(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i) {
        Preconditions.checkArgument(i > 0, "roundingRadius must be greater than 0.");
        return m8980g(bitmapPool, bitmap, new C1999a(i));
    }

    public static Bitmap roundedCorners(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, float f, float f2, float f3, float f4) {
        return m8980g(bitmapPool, bitmap, new C2000b(f, f2, f3, f4));
    }
}
