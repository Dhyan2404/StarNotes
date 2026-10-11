package org.apache.poi.common.usermodel;

import com.google.android.exoplayer2.util.FileTypes;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import java.util.HashMap;
import org.apache.poi.openxml4j.opc.ContentTypes;
import org.apache.poi.poifs.filesystem.FileMagic;

/* loaded from: classes12.dex */
public enum PictureType {
    EMF("image/x-emf", ".emf", 2),
    WMF("image/x-wmf", ".wmf", 3),
    PICT(ContentTypes.IMAGE_PICT, ".pict", 4),
    JPG("image/jpg", FileTypes.f28310C, 5),
    JPEG("image/jpeg", FileTypes.f28310C, 5),
    PNG("image/png", ".png", 6),
    DIB("image/dib", ".dib", 7),
    GIF("image/gif", ".gif", 8),
    TIFF(ContentTypes.IMAGE_TIFF, ".tif", 9),
    EPS("image/x-eps", ".eps", 10),
    BMP("image/x-ms-bmp", FileTypeConstant.BMP_SUFFIX, 11),
    WPG("image/x-wpg", ".wpg", 12),
    WDP("image/vnd.ms-photo", ".wdp", 13),
    SVG("image/svg+xml", ".svg", -1),
    UNKNOWN("", ".dat", -1),
    ERROR("", ".dat", -1),
    CMYKJPEG("image/jpeg", FileTypes.f28310C, -1),
    CLIENT("", ".dat", -1);

    private static final HashMap<Integer, PictureType> PICTURE_TYPE_BY_OOXML_ID = new HashMap<>();
    public final String contentType;
    public final String extension;
    public final int ooxmlId;

    /* renamed from: org.apache.poi.common.usermodel.PictureType$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194161 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic;

        static {
            int[] iArr = new int[FileMagic.values().length];
            $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic = iArr;
            try {
                iArr[FileMagic.BMP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.GIF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.JPEG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.PNG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.XML.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.WMF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.EMF.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.TIFF.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.UNKNOWN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    static {
        for (PictureType pictureType : values()) {
            int i = pictureType.ooxmlId;
            if (i >= -1) {
                PICTURE_TYPE_BY_OOXML_ID.put(Integer.valueOf(i), pictureType);
            }
        }
    }

    PictureType(String str, String str2, int i) {
        this.contentType = str;
        this.extension = str2;
        this.ooxmlId = i;
    }

    public static PictureType findByOoxmlId(int i) {
        return PICTURE_TYPE_BY_OOXML_ID.get(Integer.valueOf(i));
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getExtension() {
        return this.extension;
    }

    public int getOoxmlId() {
        return this.ooxmlId;
    }

    public static PictureType valueOf(FileMagic fileMagic) {
        switch (C194161.$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[fileMagic.ordinal()]) {
            case 1:
                return BMP;
            case 2:
                return GIF;
            case 3:
                return JPEG;
            case 4:
                return PNG;
            case 5:
                return SVG;
            case 6:
                return WMF;
            case 7:
                return EMF;
            case 8:
                return TIFF;
            default:
                return UNKNOWN;
        }
    }
}
