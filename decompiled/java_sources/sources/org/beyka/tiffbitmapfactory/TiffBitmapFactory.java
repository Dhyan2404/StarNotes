package org.beyka.tiffbitmapfactory;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.File;
import org.beyka.tiffbitmapfactory.exceptions.CantOpenFileException;
import org.beyka.tiffbitmapfactory.exceptions.DecodeTiffException;
import org.beyka.tiffbitmapfactory.exceptions.NotEnoughtMemoryException;

/* loaded from: classes13.dex */
public class TiffBitmapFactory {

    /* loaded from: classes13.dex */
    public static final class DecodeArea {
        public int height;
        public int width;

        /* renamed from: x */
        public int f113871x;

        /* renamed from: y */
        public int f113872y;

        public DecodeArea() {
        }

        public DecodeArea(int i, int i2, int i3, int i4) {
            this.f113871x = i;
            this.f113872y = i2;
            this.width = i3;
            this.height = i4;
        }
    }

    /* loaded from: classes13.dex */
    public enum ImageConfig {
        ARGB_8888(2),
        RGB_565(4),
        ALPHA_8(8);

        final int ordinal;

        ImageConfig(int i) {
            this.ordinal = i;
        }
    }

    /* loaded from: classes13.dex */
    public static final class Options {
        public DecodeArea inDecodeArea;
        public int outBitsPerSample;
        public CompressionScheme outCompressionScheme;
        public int outCurDirectoryNumber;
        public FillOrder outFillOrder;
        public int outNumberOfStrips;
        public Photometric outPhotometric;
        public PlanarConfig outPlanarConfig;
        public ResolutionUnit outResolutionUnit;
        public int outRowPerStrip;
        public int outSamplePerPixel;
        public int outStripSize;
        public int outTileHeight;
        public int outTileWidth;
        public float outXResolution;
        public float outYResolution;
        public ImageConfig inPreferredConfig = ImageConfig.ARGB_8888;
        public String outAuthor = "";
        public String outCopyright = "";
        public String outImageDescription = "";
        public String outSoftware = "";
        public String outDatetime = "";
        public String outHostComputer = "";
        private volatile boolean isStoped = false;
        public boolean inThrowException = false;
        public boolean inUseOrientationTag = false;
        public boolean inSwapRedBlueColors = false;
        public boolean inJustDecodeBounds = false;
        public int inSampleSize = 1;
        public int inDirectoryNumber = 0;
        public long inAvailableMemory = 256000000;
        public int outWidth = -1;
        public int outHeight = -1;
        public int outDirectoryCount = -1;
        public Orientation outImageOrientation = Orientation.UNAVAILABLE;

        public void stop() {
            this.isStoped = true;
        }
    }

    static {
        System.loadLibrary("tiff");
        System.loadLibrary("tifffactory");
    }

    public static Bitmap decodeFile(File file) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode " + file.getAbsolutePath());
        Bitmap nativeDecodePath = nativeDecodePath(file.getAbsolutePath(), new Options(), null);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for " + file.getAbsolutePath());
        return nativeDecodePath;
    }

    public static Bitmap decodePath(String str) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode " + str);
        Bitmap nativeDecodePath = nativeDecodePath(str, new Options(), null);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for " + str);
        return nativeDecodePath;
    }

    private static native Bitmap nativeDecodePath(String str, Options options, IProgressListener iProgressListener);

    public static Bitmap decodeFile(File file, Options options) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode " + file.getAbsolutePath());
        Bitmap nativeDecodePath = nativeDecodePath(file.getAbsolutePath(), options, null);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for " + file.getAbsolutePath());
        return nativeDecodePath;
    }

    public static Bitmap decodePath(String str, Options options) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode " + str);
        Bitmap nativeDecodePath = nativeDecodePath(str, options, null);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for " + str);
        return nativeDecodePath;
    }

    public static Bitmap decodeFile(File file, Options options, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode " + file.getAbsolutePath());
        Bitmap nativeDecodePath = nativeDecodePath(file.getAbsolutePath(), options, iProgressListener);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for " + file.getAbsolutePath());
        return nativeDecodePath;
    }

    public static Bitmap decodePath(String str, Options options, IProgressListener iProgressListener) throws CantOpenFileException, DecodeTiffException, NotEnoughtMemoryException {
        long currentTimeMillis = System.currentTimeMillis();
        Log.i("THREAD", "Starting decode " + str);
        Bitmap nativeDecodePath = nativeDecodePath(str, options, iProgressListener);
        Log.w("THREAD", "elapsed ms: " + (System.currentTimeMillis() - currentTimeMillis) + " for " + str);
        return nativeDecodePath;
    }
}
