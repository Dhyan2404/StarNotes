package com.onyx.poi.util;

import android.graphics.Bitmap;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.common.util.CloseUtils;
import com.onyx.common.util.FileUtils;
import com.onyx.common.util.JLog;
import com.trans.android.AndroidImage;
import com.trans.android.util.ImageUtils;
import java.awt.geom.Rectangle2D;
import java.io.File;
import java.io.InputStream;
import org.beyka.tiffbitmapfactory.TiffBitmapFactory;

/* loaded from: classes9.dex */
public class TiffUtils {

    /* renamed from: a */
    public static final String f62956a = "TiffUtils";

    public static int calculateInSampleSize(int i, int i2, int i3, int i4) {
        int i5 = 1;
        if (i2 > i4 || i > i3) {
            int i6 = i2 / 2;
            int i7 = i / 2;
            while (i6 / i5 > i4 && i7 / i5 > i3) {
                i5 *= 2;
            }
        }
        return i5;
    }

    public static boolean isTiff(String str) {
        return str.equalsIgnoreCase(".tiff") || str.equalsIgnoreCase(".tif");
    }

    public static Bitmap read(File file) {
        return read(file, (Rectangle2D) null);
    }

    public static Bitmap read(String str) {
        return read(str, (Rectangle2D) null);
    }

    public static Bitmap read(String str, Rectangle2D rectangle2D) {
        return read(new File(str), rectangle2D);
    }

    public static AndroidImage read(InputStream inputStream) {
        return read(inputStream, (Rectangle2D) null);
    }

    public static AndroidImage read(InputStream inputStream, Rectangle2D rectangle2D) {
        AndroidImage androidImage = null;
        try {
            File createTempFile = FileUtils.createTempFile(FileTypeConstant.TIF, null);
            if (!FileUtils.saveToFile(inputStream, createTempFile)) {
                FileUtils.deleteFile(createTempFile);
                return null;
            }
            Bitmap read = read(createTempFile, rectangle2D);
            FileUtils.deleteFile(createTempFile);
            if (read != null) {
                androidImage = new AndroidImage(read);
            }
            return androidImage;
        } catch (Exception e) {
            JLog.m41643e(f62956a, e);
            return null;
        } finally {
            CloseUtils.close(inputStream);
        }
    }

    public static Bitmap read(File file, Rectangle2D rectangle2D) {
        try {
            TiffBitmapFactory.Options options = new TiffBitmapFactory.Options();
            options.inSampleSize = 1;
            if (rectangle2D != null && !rectangle2D.isEmpty()) {
                options.inJustDecodeBounds = true;
                TiffBitmapFactory.decodeFile(file, options);
                options.inSampleSize = ImageUtils.calculateInSampleSizeForRender(options.outWidth, options.outHeight, (int) rectangle2D.getWidth(), (int) rectangle2D.getHeight());
                options.inJustDecodeBounds = false;
            }
            return TiffBitmapFactory.decodeFile(file, options);
        } catch (Exception e) {
            JLog.m41643e(f62956a, e);
            return null;
        }
    }
}
