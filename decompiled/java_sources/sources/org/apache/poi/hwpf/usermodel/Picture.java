package org.apache.poi.hwpf.usermodel;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.zip.InflaterInputStream;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherBlipRecord;
import org.apache.poi.ddf.EscherComplexProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherProperty;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.hwpf.model.PICF;
import org.apache.poi.hwpf.model.PICFAndOfficeArtData;
import org.apache.poi.sl.image.ImageHeaderPNG;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.StringUtil;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class Picture {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final List<? extends EscherRecord> _blipRecords;
    private PICF _picf;
    private PICFAndOfficeArtData _picfAndOfficeArtData;
    private byte[] content;
    private int dataBlockStartOfsset;
    private int height = -1;
    private int width = -1;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) Picture.class);
    private static final byte[] COMPRESSED1 = {-2, 120, ExifInterface.f7156F1};
    private static final byte[] COMPRESSED2 = {-2, 120, -100};
    private static final byte[] IHDR = {73, JSONB.Constants.BC_INT32, JSONB.Constants.BC_INT32_SHORT_ZERO, 82};

    @Deprecated
    private static final byte[] PNG = {-119, FramedLZ4CompressorInputStream.f106197v, JSONB.Constants.BC_STR_ASCII_FIX_5, JSONB.Constants.BC_INT32_SHORT_MAX, 13, 10, Ascii.SUB, 10};

    /* renamed from: org.apache.poi.hwpf.usermodel.Picture$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195701 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ddf$EscherRecordTypes;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwpf$usermodel$PictureType;

        static {
            int[] iArr = new int[EscherRecordTypes.values().length];
            $SwitchMap$org$apache$poi$ddf$EscherRecordTypes = iArr;
            try {
                iArr[EscherRecordTypes.BLIP_EMF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_WMF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_PICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_JPEG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.BLIP_PNG.ordinal()] = 5;
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
            int[] iArr2 = new int[PictureType.values().length];
            $SwitchMap$org$apache$poi$hwpf$usermodel$PictureType = iArr2;
            try {
                iArr2[PictureType.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$hwpf$usermodel$PictureType[PictureType.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public Picture(EscherBlipRecord escherBlipRecord) {
        this._blipRecords = Collections.singletonList(escherBlipRecord);
    }

    private void fillImageContent() {
        byte[] bArr = this.content;
        if (bArr != null && bArr.length > 0) {
            return;
        }
        byte[] rawContent = getRawContent();
        if (!matchSignature(rawContent, COMPRESSED1, 32) && !matchSignature(rawContent, COMPRESSED2, 32)) {
            this.content = new ImageHeaderPNG(rawContent).extractPNG();
            return;
        }
        try {
            UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(rawContent, 33, rawContent.length - 33);
            try {
                InflaterInputStream inflaterInputStream = new InflaterInputStream(unsynchronizedByteArrayInputStream);
                try {
                    UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                    try {
                        IOUtils.copy(inflaterInputStream, unsynchronizedByteArrayOutputStream);
                        this.content = unsynchronizedByteArrayOutputStream.toByteArray();
                        unsynchronizedByteArrayOutputStream.close();
                        inflaterInputStream.close();
                        unsynchronizedByteArrayInputStream.close();
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            LOGGER.atInfo().withThrowable(e).log("Possibly corrupt compression or non-compressed data");
        }
    }

    private void fillJPGWidthHeight() {
        byte b;
        byte b2;
        byte[] content = getContent();
        int length = content.length;
        int i = 2;
        while (true) {
            int i2 = length - 1;
            if (i >= i2) {
                return;
            }
            do {
                b = content[i];
                b2 = content[i + 1];
                i += 2;
                if (b == -1) {
                    break;
                }
            } while (i < i2);
            if (b != -1 || i >= i2) {
                i++;
            } else {
                if (b2 == -39 || b2 == -38) {
                    return;
                }
                if ((b2 & JSONB.Constants.BC_INT32_NUM_MIN) == 192 && b2 != -60 && b2 != -56 && b2 != -52) {
                    int i3 = i + 5;
                    this.height = getBigEndianShort(content, i3);
                    this.width = getBigEndianShort(content, i3 + 2);
                    return;
                }
                int i4 = i + 1 + 1;
                i = i4 + getBigEndianShort(content, i4);
            }
        }
    }

    private void fillWidthHeight() {
        int i = C195701.$SwitchMap$org$apache$poi$hwpf$usermodel$PictureType[suggestPictureType().ordinal()];
        if (i == 1) {
            fillJPGWidthHeight();
        } else {
            if (i != 2) {
                return;
            }
            fillPNGWidthHeight();
        }
    }

    private static int getBigEndianInt(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    private static int getBigEndianShort(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) + (bArr[i + 1] & 255);
    }

    private double getCrop(EscherPropertyTypes escherPropertyTypes) {
        EscherContainerRecord shape;
        EscherOptRecord escherOptRecord;
        PICFAndOfficeArtData pICFAndOfficeArtData = this._picfAndOfficeArtData;
        if (pICFAndOfficeArtData == null || (shape = pICFAndOfficeArtData.getShape()) == null || (escherOptRecord = (EscherOptRecord) shape.getChildById(EscherRecordTypes.OPT.typeID)) == null) {
            return 0.0d;
        }
        EscherProperty lookup = escherOptRecord.lookup(escherPropertyTypes);
        if (lookup instanceof EscherSimpleProperty) {
            return Units.fixedPointToDouble(((EscherSimpleProperty) lookup).getPropertyValue());
        }
        return 0.0d;
    }

    private static boolean matchSignature(byte[] bArr, byte[] bArr2, int i) {
        boolean z = i < bArr.length;
        int i2 = 0;
        while (true) {
            int i3 = i2 + i;
            if (i3 >= bArr.length || i2 >= bArr2.length) {
                break;
            }
            if (bArr[i3] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
        return z;
    }

    public void fillPNGWidthHeight() {
        byte[] content = getContent();
        int length = PNG.length + 4;
        if (matchSignature(content, IHDR, length)) {
            int i = length + 4;
            this.width = getBigEndianInt(content, i);
            this.height = getBigEndianInt(content, i + 4);
        }
    }

    public byte[] getContent() {
        fillImageContent();
        return this.content;
    }

    public double getCropBottom() {
        return getCrop(EscherPropertyTypes.BLIP__CROPFROMBOTTOM);
    }

    public double getCropLeft() {
        return getCrop(EscherPropertyTypes.BLIP__CROPFROMLEFT);
    }

    public double getCropRight() {
        return getCrop(EscherPropertyTypes.BLIP__CROPFROMRIGHT);
    }

    public double getCropTop() {
        return getCrop(EscherPropertyTypes.BLIP__CROPFROMTOP);
    }

    public String getDescription() {
        Iterator<EscherRecord> it2 = this._picfAndOfficeArtData.getShape().iterator();
        while (it2.hasNext()) {
            EscherRecord next = it2.next();
            if (next instanceof EscherOptRecord) {
                for (EscherProperty escherProperty : ((EscherOptRecord) next).getEscherProperties()) {
                    if (EscherPropertyTypes.GROUPSHAPE__DESCRIPTION.propNumber == escherProperty.getPropertyNumber()) {
                        return StringUtil.getFromUnicodeLE(((EscherComplexProperty) escherProperty).getComplexData(), 0, (r4.length / 2) - 1);
                    }
                }
            }
        }
        return null;
    }

    public int getDxaCropLeft() {
        return this._picf.getDxaReserved1();
    }

    public int getDxaCropRight() {
        return this._picf.getDxaReserved2();
    }

    public int getDxaGoal() {
        return this._picf.getDxaGoal();
    }

    public int getDyaCropBottom() {
        return this._picf.getDyaReserved2();
    }

    public int getDyaCropTop() {
        return this._picf.getDyaReserved1();
    }

    public int getDyaGoal() {
        return this._picf.getDyaGoal();
    }

    public int getHeight() {
        if (this.height == -1) {
            fillWidthHeight();
        }
        return this.height;
    }

    public int getHorizontalScalingFactor() {
        return this._picf.getMx();
    }

    public String getMimeType() {
        return suggestPictureType().getMime();
    }

    public byte[] getRawContent() {
        EscherBlipRecord blipRecord;
        if (this._blipRecords.size() != 1) {
            return new byte[0];
        }
        EscherRecord escherRecord = this._blipRecords.get(0);
        return escherRecord instanceof EscherBlipRecord ? ((EscherBlipRecord) escherRecord).getPicturedata() : (!(escherRecord instanceof EscherBSERecord) || (blipRecord = ((EscherBSERecord) escherRecord).getBlipRecord()) == null) ? new byte[0] : blipRecord.getPicturedata();
    }

    public int getSize() {
        return getContent().length;
    }

    public int getStartOffset() {
        return this.dataBlockStartOfsset;
    }

    public int getVerticalScalingFactor() {
        return this._picf.getMy();
    }

    public int getWidth() {
        if (this.width == -1) {
            fillWidthHeight();
        }
        return this.width;
    }

    public String suggestFileExtension() {
        return suggestPictureType().getExtension();
    }

    public String suggestFullFileName() {
        String str;
        String suggestFileExtension = suggestFileExtension();
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(this.dataBlockStartOfsset));
        if (suggestFileExtension.length() > 0) {
            str = "." + suggestFileExtension;
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public PictureType suggestPictureType() {
        if (this._blipRecords.size() != 1) {
            return PictureType.UNKNOWN;
        }
        EscherRecord escherRecord = this._blipRecords.get(0);
        if (!(escherRecord instanceof EscherBSERecord)) {
            switch (C195701.$SwitchMap$org$apache$poi$ddf$EscherRecordTypes[((EscherRecordTypes) escherRecord.getGenericRecordType()).ordinal()]) {
                case 1:
                    return PictureType.EMF;
                case 2:
                    return PictureType.WMF;
                case 3:
                    return PictureType.PICT;
                case 4:
                    return PictureType.JPEG;
                case 5:
                    return PictureType.PNG;
                case 6:
                    return PictureType.BMP;
                case 7:
                    return PictureType.TIFF;
                default:
                    return PictureType.UNKNOWN;
            }
        }
        byte blipTypeWin32 = ((EscherBSERecord) escherRecord).getBlipTypeWin32();
        if (blipTypeWin32 == 17) {
            return PictureType.TIFF;
        }
        if (blipTypeWin32 == 18) {
            return PictureType.JPEG;
        }
        switch (blipTypeWin32) {
            case 0:
                return PictureType.UNKNOWN;
            case 1:
                return PictureType.UNKNOWN;
            case 2:
                return PictureType.EMF;
            case 3:
                return PictureType.WMF;
            case 4:
                return PictureType.PICT;
            case 5:
                return PictureType.JPEG;
            case 6:
                return PictureType.PNG;
            case 7:
                return PictureType.BMP;
            default:
                return PictureType.UNKNOWN;
        }
    }

    public void writeImageContent(OutputStream outputStream) throws IOException {
        byte[] content = getContent();
        if (content == null || content.length <= 0) {
            return;
        }
        outputStream.write(content, 0, content.length);
    }

    public Picture(int i, byte[] bArr, boolean z) {
        PICFAndOfficeArtData pICFAndOfficeArtData = new PICFAndOfficeArtData(bArr, i);
        this._picfAndOfficeArtData = pICFAndOfficeArtData;
        this._picf = pICFAndOfficeArtData.getPicf();
        this.dataBlockStartOfsset = i;
        this._blipRecords = this._picfAndOfficeArtData.getBlipRecords();
        if (z) {
            fillImageContent();
        }
    }
}
