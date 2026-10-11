package org.apache.poi.hwmf.usermodel;

import com.google.android.exoplayer2.util.FileTypes;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;

/* loaded from: classes12.dex */
public enum HwmfEmbeddedType {
    BITMAP(".bitmap"),
    WMF(".wmf"),
    EMF(".emf"),
    EPS(".eps"),
    JPEG(FileTypes.f28310C),
    GIF(".gif"),
    TIFF(".tiff"),
    PNG(".png"),
    BMP(FileTypeConstant.BMP_SUFFIX),
    UNKNOWN(".dat");

    public final String extension;

    HwmfEmbeddedType(String str) {
        this.extension = str;
    }
}
