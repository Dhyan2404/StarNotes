package com.onyx.common.util;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes8.dex */
public class BitmapUtils {
    public static boolean compress(Bitmap bitmap, String str) {
        return compress(bitmap, str, Bitmap.CompressFormat.PNG, 100);
    }

    @SuppressLint({"NewApi"})
    public static int getSizeInBytes(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        try {
            return bitmap.getAllocationByteCount();
        } catch (NullPointerException unused) {
            return bitmap.getByteCount();
        }
    }

    public static boolean isValid(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    public static void recycle(Bitmap bitmap) {
        if (isValid(bitmap)) {
            bitmap.recycle();
        }
    }

    public static boolean compress(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, int i) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            try {
                boolean compress = bitmap.compress(compressFormat, i, fileOutputStream);
                fileOutputStream.close();
                return compress;
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}
