package com.sun.imageio.plugins.bmp;

/* loaded from: classes9.dex */
public class BMPCompressionTypes {
    private static final String[] compressionTypeNames = {"BI_RGB", "BI_RLE8", "BI_RLE4", "BI_BITFIELDS", "BI_JPEG", "BI_PNG"};

    public static String[] getCompressionTypes() {
        return (String[]) compressionTypeNames.clone();
    }

    public static String getName(int i) {
        return compressionTypeNames[i];
    }

    public static int getType(String str) {
        int i = 0;
        while (true) {
            String[] strArr = compressionTypeNames;
            if (i >= strArr.length) {
                return 0;
            }
            if (strArr[i].equals(str)) {
                return i;
            }
            i++;
        }
    }
}
