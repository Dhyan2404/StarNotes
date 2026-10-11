package org.apache.poi.hwpf.usermodel;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.google.common.base.Ascii;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.poi.openxml4j.opc.ContentTypes;

/* loaded from: classes12.dex */
public enum PictureType {
    BMP("image/bmp", FileTypeConstant.BMP, new byte[][]{new byte[]{66, 77}}),
    EMF("image/x-emf", "emf", new byte[][]{new byte[]{1, 0, 0, 0}}),
    GIF("image/gif", "gif", new byte[][]{new byte[]{JSONB.Constants.BC_INT32_SHORT_MAX, 73, 70}}),
    JPEG("image/jpeg", "jpg", new byte[][]{new byte[]{-1, -40}}),
    PICT(ContentTypes.IMAGE_PICT, ".pict", new byte[0]),
    PNG("image/png", "png", new byte[][]{new byte[]{-119, FramedLZ4CompressorInputStream.f106197v, JSONB.Constants.BC_STR_ASCII_FIX_5, JSONB.Constants.BC_INT32_SHORT_MAX, 13, 10, Ascii.SUB, 10}}),
    TIFF(ContentTypes.IMAGE_TIFF, "tiff", new byte[][]{new byte[]{73, 73, 42, 0}, new byte[]{77, 77, 0, 42}}),
    UNKNOWN("image/unknown", "", new byte[0]),
    WMF("image/x-wmf", "wmf", new byte[][]{new byte[]{JSONB.Constants.BC_INT64_BYTE_MAX, ExifInterface.f7147C1, ExifInterface.f7270x1, -102, 0, 0}, new byte[]{1, 0, 9, 0, 0, 3}});

    private String _extension;
    private String _mime;
    private byte[][] _signatures;

    PictureType(String str, String str2, byte[][] bArr) {
        this._mime = str;
        this._extension = str2;
        this._signatures = (byte[][]) bArr.clone();
    }

    public static PictureType findMatchingType(byte[] bArr) {
        for (PictureType pictureType : values()) {
            for (byte[] bArr2 : pictureType.getSignatures()) {
                if (matchSignature(bArr, bArr2)) {
                    return pictureType;
                }
            }
        }
        return UNKNOWN;
    }

    private static boolean matchSignature(byte[] bArr, byte[] bArr2) {
        if (bArr.length < bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public String getExtension() {
        return this._extension;
    }

    public String getMime() {
        return this._mime;
    }

    public byte[][] getSignatures() {
        return this._signatures;
    }

    public boolean matchSignature(byte[] bArr) {
        for (byte[] bArr2 : getSignatures()) {
            if (matchSignature(bArr2, bArr)) {
                return true;
            }
        }
        return false;
    }
}
