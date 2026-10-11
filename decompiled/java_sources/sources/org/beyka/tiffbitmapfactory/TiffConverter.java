package org.beyka.tiffbitmapfactory;

/* loaded from: classes13.dex */
public class TiffConverter {

    /* loaded from: classes13.dex */
    public static final class ConverterOptions {
        public String imageDescription;
        public int readTiffDirectory;
        public String software;
        public float xResolution;
        public float yResolution;
        public long availableMemory = 256000000;
        public boolean appendTiff = false;
        public ResolutionUnit resUnit = ResolutionUnit.NONE;
        public CompressionScheme compressionScheme = CompressionScheme.NONE;
        public boolean throwExceptions = false;
        private volatile boolean isStoped = false;

        public void stop() {
            this.isStoped = true;
        }
    }

    static {
        System.loadLibrary("tiff");
        System.loadLibrary("tiffconverter");
    }

    public static native boolean convertJpgTiff(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener);

    public static native boolean convertPngTiff(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener);

    public static native boolean convertTiffJpg(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener);

    public static native boolean convertTiffPng(String str, String str2, ConverterOptions converterOptions, IProgressListener iProgressListener);

    public static native ImageFormat getImageType(String str);
}
