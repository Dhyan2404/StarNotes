package com.twelvemonkeys.imageio.plugins.tiff;

import java.util.Locale;
import javax.imageio.ImageWriteParam;

/* loaded from: classes10.dex */
public final class TIFFImageWriteParam extends ImageWriteParam {
    public TIFFImageWriteParam() {
        this(Locale.getDefault());
    }

    /* renamed from: b */
    public static int m60648b(ImageWriteParam imageWriteParam) {
        if (imageWriteParam == null || imageWriteParam.getCompressionMode() != 2 || imageWriteParam.getCompressionType().equals("None")) {
            return 1;
        }
        if (imageWriteParam.getCompressionType().equals("PackBits")) {
            return 32773;
        }
        if (imageWriteParam.getCompressionType().equals("ZLib")) {
            return 8;
        }
        if (imageWriteParam.getCompressionType().equals("Deflate")) {
            return 32946;
        }
        if (imageWriteParam.getCompressionType().equals("LZW")) {
            return 5;
        }
        if (imageWriteParam.getCompressionType().equals("JPEG")) {
            return 7;
        }
        if (imageWriteParam.getCompressionType().equals("CCITT RLE")) {
            return 2;
        }
        if (imageWriteParam.getCompressionType().equals("CCITT T.4")) {
            return 3;
        }
        if (imageWriteParam.getCompressionType().equals("CCITT T.6")) {
            return 4;
        }
        throw new IllegalArgumentException(String.format("Unsupported compression type: %s", imageWriteParam.getCompressionType()));
    }

    @Override // javax.imageio.ImageWriteParam
    public String[] getCompressionQualityDescriptions() {
        super.getCompressionQualityDescriptions();
        return null;
    }

    @Override // javax.imageio.ImageWriteParam
    public float[] getCompressionQualityValues() {
        super.getCompressionQualityValues();
        return null;
    }

    public TIFFImageWriteParam(Locale locale) {
        super(locale);
        String[] strArr = {"None", "CCITT RLE", "CCITT T.4", "CCITT T.6", "LZW", "JPEG", "ZLib", "PackBits", "Deflate", null};
        this.compressionTypes = strArr;
        this.compressionType = strArr[0];
        this.canWriteCompressed = true;
    }
}
