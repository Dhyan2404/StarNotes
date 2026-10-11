package org.beyka.tiffbitmapfactory;

import android.graphics.Bitmap;
import java.io.File;
import org.beyka.tiffbitmapfactory.exceptions.CantOpenFileException;
import org.beyka.tiffbitmapfactory.exceptions.NotEnoughtMemoryException;

/* loaded from: classes13.dex */
public class TiffSaver {

    /* loaded from: classes13.dex */
    public static final class SaveOptions {
        public String author;
        public String copyright;
        public String imageDescription;
        public long inAvailableMemory = 256000000;
        public boolean inThrowException = false;
        public CompressionScheme compressionScheme = CompressionScheme.NONE;
        public Orientation orientation = Orientation.TOP_LEFT;
        public float xResolution = 0.0f;
        public float yResolution = 0.0f;
        public ResolutionUnit resUnit = ResolutionUnit.NONE;
    }

    static {
        System.loadLibrary("tiff");
        System.loadLibrary("tiffsaver");
    }

    public static boolean appendBitmap(File file, Bitmap bitmap) throws CantOpenFileException, NotEnoughtMemoryException {
        return appendBitmap(file.getAbsolutePath(), bitmap, new SaveOptions());
    }

    private static native synchronized boolean save(String str, Bitmap bitmap, SaveOptions saveOptions, boolean z);

    public static boolean saveBitmap(File file, Bitmap bitmap) throws CantOpenFileException, NotEnoughtMemoryException {
        return saveBitmap(file.getAbsolutePath(), bitmap, new SaveOptions());
    }

    public static boolean appendBitmap(File file, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException {
        return appendBitmap(file.getAbsolutePath(), bitmap, saveOptions);
    }

    public static boolean saveBitmap(File file, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException {
        return saveBitmap(file.getAbsolutePath(), bitmap, saveOptions);
    }

    public static boolean appendBitmap(String str, int i, Bitmap bitmap) throws CantOpenFileException {
        return appendBitmap(str, bitmap, new SaveOptions());
    }

    public static boolean saveBitmap(String str, Bitmap bitmap) throws CantOpenFileException {
        return saveBitmap(str, bitmap, new SaveOptions());
    }

    public static boolean appendBitmap(String str, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException {
        return save(str, bitmap, saveOptions, true);
    }

    public static boolean saveBitmap(String str, Bitmap bitmap, SaveOptions saveOptions) throws CantOpenFileException {
        return save(str, bitmap, saveOptions, false);
    }
}
