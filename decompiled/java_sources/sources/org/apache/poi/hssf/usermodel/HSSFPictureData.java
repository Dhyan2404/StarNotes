package org.apache.poi.hssf.usermodel;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import org.apache.poi.ddf.EscherBlipRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.openxml4j.opc.ContentTypes;
import org.apache.poi.sl.image.ImageHeaderPNG;
import org.apache.poi.ss.usermodel.PictureData;

/* loaded from: classes12.dex */
public class HSSFPictureData implements PictureData {
    public static final short FORMAT_MASK = -16;
    public static final short MSOBI_DIB = 31360;
    public static final short MSOBI_EMF = 15680;
    public static final short MSOBI_JPEG = 18080;
    public static final short MSOBI_PICT = 21536;
    public static final short MSOBI_PNG = 28160;
    public static final short MSOBI_WMF = 8544;
    private final EscherBlipRecord blip;

    /* renamed from: org.apache.poi.hssf.usermodel.HSSFPictureData$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195401 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ddf$EscherRecordTypes;

        static {
            int[] iArr = new int[EscherRecordTypes.values().length];
            $SwitchMap$org$apache$poi$ddf$EscherRecordTypes = iArr;
            try {
                iArr[EscherRecordTypes.BLIP_WMF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_EMF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_PICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_PNG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_JPEG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_DIB.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_TIFF.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public HSSFPictureData(EscherBlipRecord escherBlipRecord) {
        this.blip = escherBlipRecord;
    }

    @Override // org.apache.poi.ss.usermodel.PictureData
    public byte[] getData() {
        return new ImageHeaderPNG(this.blip.getPicturedata()).extractPNG();
    }

    public int getFormat() {
        return this.blip.getRecordId() - EscherRecordTypes.BLIP_START.typeID;
    }

    @Override // org.apache.poi.ss.usermodel.PictureData
    public String getMimeType() {
        switch (C195401.$SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.forTypeID(this.blip.getRecordId()).ordinal()]) {
            case 1:
                return "image/x-wmf";
            case 2:
                return "image/x-emf";
            case 3:
                return ContentTypes.IMAGE_PICT;
            case 4:
                return "image/png";
            case 5:
                return "image/jpeg";
            case 6:
                return "image/bmp";
            case 7:
                return ContentTypes.IMAGE_TIFF;
            default:
                return "image/unknown";
        }
    }

    @Override // org.apache.poi.ss.usermodel.PictureData
    public int getPictureType() {
        switch (C195401.$SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.forTypeID(this.blip.getRecordId()).ordinal()]) {
            case 1:
                return 3;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 6;
            case 5:
                return 5;
            case 6:
                return 7;
            default:
                return 0;
        }
    }

    @Override // org.apache.poi.ss.usermodel.PictureData
    public String suggestFileExtension() {
        switch (C195401.$SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.forTypeID(this.blip.getRecordId()).ordinal()]) {
            case 1:
                return "wmf";
            case 2:
                return "emf";
            case 3:
                return ContentTypes.EXTENSION_PICT;
            case 4:
                return "png";
            case 5:
                return "jpeg";
            case 6:
                return "dib";
            case 7:
                return FileTypeConstant.TIF;
            default:
                return "";
        }
    }
}
