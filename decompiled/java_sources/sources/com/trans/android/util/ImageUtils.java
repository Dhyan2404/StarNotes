package com.trans.android.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import com.onyx.common.util.CloseUtils;
import com.onyx.common.util.JLog;
import com.trans.android.AndroidImage;
import java.awt.Dimension;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes10.dex */
public class ImageUtils {
    public static final String TAG = "ImageUtils";

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 <= i2 && i4 <= i) {
            return 1;
        }
        int round = i4 > i3 ? Math.round(i3 / i2) : Math.round(i4 / i);
        while ((i4 * i3) / (round * round) > i * i2 * 2) {
            round++;
        }
        return round;
    }

    public static int calculateInSampleSizeForRender(int i, int i2, int i3, int i4) {
        int i5 = 1;
        while (true) {
            i /= 2;
            if (i3 >= i || i4 >= (i2 = i2 / 2)) {
                break;
            }
            i5 *= 2;
        }
        return i5;
    }

    public static boolean canDecode(InputStream inputStream) {
        Dimension readImageSize = readImageSize(inputStream);
        return readImageSize.width > 0 && readImageSize.height > 0;
    }

    public static synchronized Bitmap decodeSampledBitmapFromFile(String str, int i, int i2) {
        Bitmap decodeFile;
        synchronized (ImageUtils.class) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = calculateInSampleSize(options, i, i2);
            options.inJustDecodeBounds = false;
            decodeFile = BitmapFactory.decodeFile(str, options);
        }
        return decodeFile;
    }

    public static String fileBytesShow(float f) {
        float f2 = (float) 1024;
        if (f < f2) {
            return String.format("%d B", Integer.valueOf((int) f));
        }
        float f3 = (float) 1048576;
        if (f < f3) {
            return String.format("%.2f KB", Float.valueOf(f / f2));
        }
        float f4 = (float) 1073741824;
        return f < f4 ? String.format("%.2f MB", Float.valueOf(f / f3)) : String.format("%.2f GB", Float.valueOf(f / f4));
    }

    public static boolean needRotate(double d) {
        return d % 360.0d != 0.0d;
    }

    public static AndroidImage read(InputStream inputStream, Rectangle2D rectangle2D) {
        Bitmap bitmap;
        if (inputStream == null) {
            return null;
        }
        try {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = 1;
                if (rectangle2D != null && !rectangle2D.isEmpty() && inputStream.markSupported()) {
                    options.inJustDecodeBounds = true;
                    inputStream.mark(Integer.MAX_VALUE);
                    BitmapFactory.decodeStream(inputStream, null, options);
                    inputStream.reset();
                    options.inSampleSize = calculateInSampleSizeForRender(options.outWidth, options.outHeight, (int) rectangle2D.getWidth(), (int) rectangle2D.getHeight());
                    options.inJustDecodeBounds = false;
                }
                bitmap = BitmapFactory.decodeStream(inputStream, null, options);
            } catch (Exception e) {
                JLog.m41643e(TAG, e);
                CloseUtils.close(inputStream);
                bitmap = null;
            }
            if (bitmap == null) {
                return null;
            }
            return new AndroidImage(bitmap);
        } finally {
            CloseUtils.close(inputStream);
        }
    }

    public static Dimension readImageSize(InputStream inputStream) {
        return readImageSize(inputStream, true);
    }

    public static Bitmap rotateBitmap(Rectangle2D rectangle2D, Bitmap bitmap, double d) {
        float width = (float) rectangle2D.getWidth();
        float height = (float) rectangle2D.getHeight();
        Matrix matrix = new Matrix();
        matrix.postRotate((float) d, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        matrix.postTranslate((width - bitmap.getWidth()) / 2.0f, (height - bitmap.getHeight()) / 2.0f);
        Bitmap createBitmap = Bitmap.createBitmap((int) width, (int) height, bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-1);
        canvas.drawBitmap(bitmap, matrix, null);
        return createBitmap;
    }

    public static Dimension readImageSize(InputStream inputStream, boolean z) {
        if (inputStream == null) {
            return new Dimension();
        }
        try {
            try {
                if (inputStream.markSupported()) {
                    inputStream.mark(Integer.MAX_VALUE);
                }
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(inputStream, null, options);
                if (inputStream.markSupported()) {
                    inputStream.reset();
                }
                Dimension dimension = new Dimension(options.outWidth, options.outHeight);
                if (z) {
                    CloseUtils.close(inputStream);
                }
                return dimension;
            } catch (IOException e) {
                JLog.m41643e(TAG, e);
                if (z) {
                    CloseUtils.close(inputStream);
                }
                return new Dimension();
            }
        } catch (Throwable th) {
            if (z) {
                CloseUtils.close(inputStream);
            }
            throw th;
        }
    }

    public static Dimension readImageSize(byte[] bArr) {
        if (bArr == null) {
            return new Dimension();
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        return new Dimension(options.outWidth, options.outHeight);
    }

    public static AndroidImage read(InputStream inputStream) {
        return read(inputStream, null);
    }
}
