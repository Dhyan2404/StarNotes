package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.ImageReader;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public final class Downsampler {
    public static final Option<Boolean> ALLOW_HARDWARE_CONFIG;
    public static final Option<Boolean> FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS;

    /* renamed from: f */
    public static final String f15030f = "Downsampler";

    /* renamed from: g */
    public static final String f15031g = "image/vnd.wap.wbmp";

    /* renamed from: h */
    public static final String f15032h = "image/x-ico";

    /* renamed from: i */
    public static final Set<String> f15033i;

    /* renamed from: j */
    public static final DecodeCallbacks f15034j;

    /* renamed from: k */
    public static final Set<ImageHeaderParser.ImageType> f15035k;

    /* renamed from: l */
    public static final Queue<BitmapFactory.Options> f15036l;

    /* renamed from: a */
    public final BitmapPool f15037a;

    /* renamed from: b */
    public final DisplayMetrics f15038b;

    /* renamed from: c */
    public final ArrayPool f15039c;

    /* renamed from: d */
    public final List<ImageHeaderParser> f15040d;

    /* renamed from: e */
    public final HardwareConfigState f15041e = HardwareConfigState.getInstance();
    public static final Option<DecodeFormat> DECODE_FORMAT = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);
    public static final Option<PreferredColorSpace> PREFERRED_COLOR_SPACE = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", PreferredColorSpace.SRGB);

    @Deprecated
    public static final Option<DownsampleStrategy> DOWNSAMPLE_STRATEGY = DownsampleStrategy.OPTION;

    /* loaded from: classes3.dex */
    public interface DecodeCallbacks {
        void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) throws IOException;

        void onObtainBounds();
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.Downsampler$a */
    /* loaded from: classes3.dex */
    public class C1997a implements DecodeCallbacks {
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onObtainBounds() {
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        ALLOW_HARDWARE_CONFIG = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        f15033i = Collections.unmodifiableSet(new HashSet(Arrays.asList(f15031g, f15032h)));
        f15034j = new C1997a();
        f15035k = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f15036l = Util.createQueue(0);
    }

    public Downsampler(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.f15040d = list;
        this.f15038b = (DisplayMetrics) Preconditions.checkNotNull(displayMetrics);
        this.f15037a = (BitmapPool) Preconditions.checkNotNull(bitmapPool);
        this.f15039c = (ArrayPool) Preconditions.checkNotNull(arrayPool);
    }

    /* renamed from: a */
    public static int m8944a(double d) {
        return m8958r((d / (r1 / r0)) * m8958r(m8949i(d) * d));
    }

    /* renamed from: c */
    public static void m8945c(ImageHeaderParser.ImageType imageType, ImageReader imageReader, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool, DownsampleStrategy downsampleStrategy, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) throws IOException {
        int i6;
        int i7;
        int floor;
        int floor2;
        if (i2 <= 0 || i3 <= 0) {
            if (Log.isLoggable(f15030f, 3)) {
                Log.d(f15030f, "Unable to determine dimensions for: " + imageType + " with target [" + i4 + "x" + i5 + IteratorUtils.f104924b);
                return;
            }
            return;
        }
        if (m8952l(i)) {
            i7 = i2;
            i6 = i3;
        } else {
            i6 = i2;
            i7 = i3;
        }
        float scaleFactor = downsampleStrategy.getScaleFactor(i6, i7, i4, i5);
        if (scaleFactor <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + scaleFactor + " from: " + downsampleStrategy + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + IteratorUtils.f104924b);
        }
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding = downsampleStrategy.getSampleSizeRounding(i6, i7, i4, i5);
        if (sampleSizeRounding == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f = i6;
        float f2 = i7;
        int m8958r = i6 / m8958r(scaleFactor * f);
        int m8958r2 = i7 / m8958r(scaleFactor * f2);
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding2 = DownsampleStrategy.SampleSizeRounding.MEMORY;
        int max = Math.max(1, Integer.highestOneBit(sampleSizeRounding == sampleSizeRounding2 ? Math.max(m8958r, m8958r2) : Math.min(m8958r, m8958r2)));
        if (sampleSizeRounding == sampleSizeRounding2 && max < 1.0f / scaleFactor) {
            max <<= 1;
        }
        options.inSampleSize = max;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float min = Math.min(max, 8);
            floor = (int) Math.ceil(f / min);
            floor2 = (int) Math.ceil(f2 / min);
            int i8 = max / 8;
            if (i8 > 0) {
                floor /= i8;
                floor2 /= i8;
            }
        } else if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
            float f3 = max;
            floor = (int) Math.floor(f / f3);
            floor2 = (int) Math.floor(f2 / f3);
        } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
            float f4 = max;
            floor = Math.round(f / f4);
            floor2 = Math.round(f2 / f4);
        } else if (i6 % max == 0 && i7 % max == 0) {
            floor = i6 / max;
            floor2 = i7 / max;
        } else {
            int[] m8950j = m8950j(imageReader, options, decodeCallbacks, bitmapPool);
            floor = m8950j[0];
            floor2 = m8950j[1];
        }
        double scaleFactor2 = downsampleStrategy.getScaleFactor(floor, floor2, i4, i5);
        options.inTargetDensity = m8944a(scaleFactor2);
        options.inDensity = m8949i(scaleFactor2);
        if (m8953m(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(f15030f, 2)) {
            Log.v(f15030f, "Calculate scaling, source: [" + i2 + "x" + i3 + "], degreesToRotate: " + i + ", target: [" + i4 + "x" + i5 + "], power of two scaled: [" + floor + "x" + floor2 + "], exact scale factor: " + scaleFactor + ", power of 2 sample size: " + max + ", adjusted scale factor: " + scaleFactor2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        throw r1;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m8946f(com.bumptech.glide.load.resource.bitmap.ImageReader r5, android.graphics.BitmapFactory.Options r6, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r7, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool r8) throws java.io.IOException {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r6.inJustDecodeBounds
            if (r1 != 0) goto Lc
            r7.onObtainBounds()
            r5.stopGrowingBuffers()
        Lc:
            int r1 = r6.outWidth
            int r2 = r6.outHeight
            java.lang.String r3 = r6.outMimeType
            java.util.concurrent.locks.Lock r4 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.getBitmapDrawableLock()
            r4.lock()
            android.graphics.Bitmap r5 = r5.decodeBitmap(r6)     // Catch: java.lang.Throwable -> L25 java.lang.IllegalArgumentException -> L27
            java.util.concurrent.locks.Lock r6 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.getBitmapDrawableLock()
            r6.unlock()
            return r5
        L25:
            r5 = move-exception
            goto L50
        L27:
            r4 = move-exception
            java.io.IOException r1 = m8955o(r4, r1, r2, r3, r6)     // Catch: java.lang.Throwable -> L25
            r2 = 3
            boolean r2 = android.util.Log.isLoggable(r0, r2)     // Catch: java.lang.Throwable -> L25
            if (r2 == 0) goto L38
            java.lang.String r2 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r2, r1)     // Catch: java.lang.Throwable -> L25
        L38:
            android.graphics.Bitmap r0 = r6.inBitmap     // Catch: java.lang.Throwable -> L25
            if (r0 == 0) goto L4f
            r8.put(r0)     // Catch: java.lang.Throwable -> L25 java.io.IOException -> L4e
            r0 = 0
            r6.inBitmap = r0     // Catch: java.lang.Throwable -> L25 java.io.IOException -> L4e
            android.graphics.Bitmap r5 = m8946f(r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L25 java.io.IOException -> L4e
            java.util.concurrent.locks.Lock r6 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.getBitmapDrawableLock()
            r6.unlock()
            return r5
        L4e:
            throw r1     // Catch: java.lang.Throwable -> L25
        L4f:
            throw r1     // Catch: java.lang.Throwable -> L25
        L50:
            java.util.concurrent.locks.Lock r6 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.getBitmapDrawableLock()
            r6.unlock()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.Downsampler.m8946f(com.bumptech.glide.load.resource.bitmap.ImageReader, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool):android.graphics.Bitmap");
    }

    @Nullable
    @TargetApi(19)
    /* renamed from: g */
    public static String m8947g(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return IteratorUtils.f104923a + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + MotionUtils.f31762d);
    }

    /* renamed from: h */
    public static synchronized BitmapFactory.Options m8948h() {
        BitmapFactory.Options poll;
        synchronized (Downsampler.class) {
            Queue<BitmapFactory.Options> queue = f15036l;
            synchronized (queue) {
                poll = queue.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                m8957q(poll);
            }
        }
        return poll;
    }

    /* renamed from: i */
    public static int m8949i(double d) {
        if (d > 1.0d) {
            d = 1.0d / d;
        }
        return (int) Math.round(d * 2.147483647E9d);
    }

    /* renamed from: j */
    public static int[] m8950j(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        options.inJustDecodeBounds = true;
        m8946f(imageReader, options, decodeCallbacks, bitmapPool);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: k */
    public static String m8951k(BitmapFactory.Options options) {
        return m8947g(options.inBitmap);
    }

    /* renamed from: l */
    public static boolean m8952l(int i) {
        return i == 90 || i == 270;
    }

    /* renamed from: m */
    public static boolean m8953m(BitmapFactory.Options options) {
        int i;
        int i2 = options.inTargetDensity;
        return i2 > 0 && (i = options.inDensity) > 0 && i2 != i;
    }

    /* renamed from: n */
    public static void m8954n(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Log.v(f15030f, "Decoded " + m8947g(bitmap) + " from [" + i + "x" + i2 + "] " + str + " with inBitmap " + m8951k(options) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + LogTime.getElapsedMillis(j));
    }

    /* renamed from: o */
    public static IOException m8955o(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m8951k(options), illegalArgumentException);
    }

    /* renamed from: p */
    public static void m8956p(BitmapFactory.Options options) {
        m8957q(options);
        Queue<BitmapFactory.Options> queue = f15036l;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    /* renamed from: q */
    public static void m8957q(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.inPreferredColorSpace = null;
        options.outColorSpace = null;
        options.outConfig = null;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* renamed from: r */
    public static int m8958r(double d) {
        return (int) (d + 0.5d);
    }

    @TargetApi(26)
    /* renamed from: s */
    public static void m8959s(BitmapFactory.Options options, BitmapPool bitmapPool, int i, int i2) {
        Bitmap.Config config = options.inPreferredConfig;
        if (config == Bitmap.Config.HARDWARE) {
            return;
        }
        Bitmap.Config config2 = options.outConfig;
        if (config2 != null) {
            config = config2;
        }
        options.inBitmap = bitmapPool.getDirty(i, i2, config);
    }

    /* renamed from: b */
    public final void m8960b(ImageReader imageReader, DecodeFormat decodeFormat, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        boolean z3;
        if (this.f15041e.m8971g(i, i2, options, z, z2)) {
            return;
        }
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            z3 = imageReader.getImageType().hasAlpha();
        } catch (IOException e) {
            if (Log.isLoggable(f15030f, 3)) {
                Log.d(f15030f, "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e);
            }
            z3 = false;
        }
        Bitmap.Config config = z3 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        options.inPreferredConfig = config;
        if (config == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    /* renamed from: d */
    public final Resource<Bitmap> m8961d(ImageReader imageReader, int i, int i2, Options options, DecodeCallbacks decodeCallbacks) throws IOException {
        byte[] bArr = (byte[]) this.f15039c.get(65536, byte[].class);
        BitmapFactory.Options m8948h = m8948h();
        m8948h.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.get(DECODE_FORMAT);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) options.get(PREFERRED_COLOR_SPACE);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.get(DownsampleStrategy.OPTION);
        boolean booleanValue = ((Boolean) options.get(FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
        Option<Boolean> option = ALLOW_HARDWARE_CONFIG;
        try {
            return BitmapResource.obtain(m8962e(imageReader, m8948h, downsampleStrategy, decodeFormat, preferredColorSpace, options.get(option) != null && ((Boolean) options.get(option)).booleanValue(), i, i2, booleanValue, decodeCallbacks), this.f15037a);
        } finally {
            m8956p(m8948h);
            this.f15039c.put(bArr);
        }
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i, int i2, Options options) throws IOException {
        return decode(inputStream, i, i2, options, f15034j);
    }

    /* renamed from: e */
    public final Bitmap m8962e(ImageReader imageReader, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, PreferredColorSpace preferredColorSpace, boolean z, int i, int i2, boolean z2, DecodeCallbacks decodeCallbacks) throws IOException {
        int i3;
        int i4;
        int i5;
        ColorSpace colorSpace;
        int round;
        int round2;
        long logTime = LogTime.getLogTime();
        int[] m8950j = m8950j(imageReader, options, decodeCallbacks, this.f15037a);
        boolean z3 = false;
        int i6 = m8950j[0];
        int i7 = m8950j[1];
        String str = options.outMimeType;
        boolean z4 = (i6 == -1 || i7 == -1) ? false : z;
        int imageOrientation = imageReader.getImageOrientation();
        int exifOrientationDegrees = TransformationUtils.getExifOrientationDegrees(imageOrientation);
        boolean isExifOrientationRequired = TransformationUtils.isExifOrientationRequired(imageOrientation);
        if (i == Integer.MIN_VALUE) {
            i3 = i2;
            i4 = m8952l(exifOrientationDegrees) ? i7 : i6;
        } else {
            i3 = i2;
            i4 = i;
        }
        int i8 = i3 == Integer.MIN_VALUE ? m8952l(exifOrientationDegrees) ? i6 : i7 : i3;
        ImageHeaderParser.ImageType imageType = imageReader.getImageType();
        m8945c(imageType, imageReader, decodeCallbacks, this.f15037a, downsampleStrategy, exifOrientationDegrees, i6, i7, i4, i8, options);
        m8960b(imageReader, decodeFormat, z4, isExifOrientationRequired, options, i4, i8);
        int i9 = options.inSampleSize;
        if (m8963t(imageType)) {
            if (i6 < 0 || i7 < 0 || !z2) {
                float f = m8953m(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i10 = options.inSampleSize;
                float f2 = i10;
                int ceil = (int) Math.ceil(i6 / f2);
                int ceil2 = (int) Math.ceil(i7 / f2);
                round = Math.round(ceil * f);
                round2 = Math.round(ceil2 * f);
                if (Log.isLoggable(f15030f, 2)) {
                    Log.v(f15030f, "Calculated target [" + round + "x" + round2 + "] for source [" + i6 + "x" + i7 + "], sampleSize: " + i10 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f);
                }
            } else {
                round = i4;
                round2 = i8;
            }
            if (round > 0 && round2 > 0) {
                m8959s(options, this.f15037a, round, round2);
            }
        }
        if (preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) {
            z3 = true;
        }
        options.inPreferredColorSpace = ColorSpace.get(z3 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
        Bitmap m8946f = m8946f(imageReader, options, decodeCallbacks, this.f15037a);
        decodeCallbacks.onDecodeComplete(this.f15037a, m8946f);
        if (Log.isLoggable(f15030f, 2)) {
            i5 = imageOrientation;
            m8954n(i6, i7, str, options, m8946f, i, i2, logTime);
        } else {
            i5 = imageOrientation;
        }
        if (m8946f == null) {
            return null;
        }
        m8946f.setDensity(this.f15038b.densityDpi);
        Bitmap rotateImageExif = TransformationUtils.rotateImageExif(this.f15037a, m8946f, i5);
        if (m8946f.equals(rotateImageExif)) {
            return rotateImageExif;
        }
        this.f15037a.put(m8946f);
        return rotateImageExif;
    }

    public boolean handles(InputStream inputStream) {
        return true;
    }

    /* renamed from: t */
    public final boolean m8963t(ImageHeaderParser.ImageType imageType) {
        return true;
    }

    public Resource<Bitmap> decode(InputStream inputStream, int i, int i2, Options options, DecodeCallbacks decodeCallbacks) throws IOException {
        return m8961d(new ImageReader.InputStreamImageReader(inputStream, this.f15040d, this.f15039c), i, i2, options, decodeCallbacks);
    }

    public boolean handles(ByteBuffer byteBuffer) {
        return true;
    }

    @RequiresApi(21)
    public Resource<Bitmap> decode(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, Options options) throws IOException {
        return m8961d(new ImageReader.ParcelFileDescriptorImageReader(parcelFileDescriptor, this.f15040d, this.f15039c), i, i2, options, f15034j);
    }

    public boolean handles(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.isSupported();
    }
}
