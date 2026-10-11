package org.apache.poi.hemf.usermodel;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.imageio.ImageIO;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hemf.record.emf.HemfComment;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.hemf.record.emfplus.HemfPlusImage;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.hemf.record.emfplus.HemfPlusRecord;
import org.apache.poi.hwmf.record.HwmfFill;
import org.apache.poi.hwmf.usermodel.HwmfEmbedded;
import org.apache.poi.hwmf.usermodel.HwmfEmbeddedType;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class HemfEmbeddedIterator implements Iterator<HwmfEmbedded> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000000;
    private static int MAX_RECORD_LENGTH = 100000000;
    private Object current;
    private final Deque<Iterator<?>> iterStack;

    /* renamed from: org.apache.poi.hemf.usermodel.HemfEmbeddedIterator$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194511 {

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusImageDataType */
        static final /* synthetic */ int[] f111370xdb66ef41;

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusMetafileDataType */
        static final /* synthetic */ int[] f111371x311e7423;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic;

        static {
            int[] iArr = new int[HemfPlusImage.EmfPlusImageDataType.values().length];
            f111370xdb66ef41 = iArr;
            try {
                iArr[HemfPlusImage.EmfPlusImageDataType.BITMAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111370xdb66ef41[HemfPlusImage.EmfPlusImageDataType.METAFILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[HemfPlusImage.EmfPlusMetafileDataType.values().length];
            f111371x311e7423 = iArr2;
            try {
                iArr2[HemfPlusImage.EmfPlusMetafileDataType.Wmf.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111371x311e7423[HemfPlusImage.EmfPlusMetafileDataType.WmfPlaceable.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111371x311e7423[HemfPlusImage.EmfPlusMetafileDataType.Emf.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111371x311e7423[HemfPlusImage.EmfPlusMetafileDataType.EmfPlusDual.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f111371x311e7423[HemfPlusImage.EmfPlusMetafileDataType.EmfPlusOnly.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[FileMagic.values().length];
            $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic = iArr3;
            try {
                iArr3[FileMagic.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.GIF.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.PNG.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.TIFF.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public HemfEmbeddedIterator(HemfPicture hemfPicture) {
        this(hemfPicture.getRecords().iterator());
    }

    private HwmfEmbedded checkEmfCommentDataFormat() {
        Object obj = this.current;
        if (!(obj instanceof HemfComment.EmfCommentDataFormat)) {
            return null;
        }
        HemfComment.EmfCommentDataFormat emfCommentDataFormat = (HemfComment.EmfCommentDataFormat) obj;
        HwmfEmbedded hwmfEmbedded = new HwmfEmbedded();
        hwmfEmbedded.setEmbeddedType(emfCommentDataFormat.getSignature() == HemfComment.EmfFormatSignature.ENHMETA_SIGNATURE ? HwmfEmbeddedType.EMF : HwmfEmbeddedType.EPS);
        hwmfEmbedded.setData(emfCommentDataFormat.getRawData());
        this.current = null;
        return hwmfEmbedded;
    }

    private HwmfEmbedded checkEmfCommentDataGeneric() {
        Object obj = this.current;
        if (!(obj instanceof HemfComment.EmfComment) || !(((HemfComment.EmfComment) obj).getCommentData() instanceof HemfComment.EmfCommentDataGeneric)) {
            return null;
        }
        HemfComment.EmfCommentDataGeneric emfCommentDataGeneric = (HemfComment.EmfCommentDataGeneric) ((HemfComment.EmfComment) this.current).getCommentData();
        HwmfEmbedded hwmfEmbedded = new HwmfEmbedded();
        hwmfEmbedded.setEmbeddedType(HwmfEmbeddedType.UNKNOWN);
        hwmfEmbedded.setData(emfCommentDataGeneric.getPrivateData());
        this.current = null;
        return hwmfEmbedded;
    }

    private HwmfEmbedded checkEmfCommentDataWMF() {
        Object obj = this.current;
        if (!(obj instanceof HemfComment.EmfComment) || !(((HemfComment.EmfComment) obj).getCommentData() instanceof HemfComment.EmfCommentDataWMF)) {
            return null;
        }
        HemfComment.EmfCommentDataWMF emfCommentDataWMF = (HemfComment.EmfCommentDataWMF) ((HemfComment.EmfComment) this.current).getCommentData();
        HwmfEmbedded hwmfEmbedded = new HwmfEmbedded();
        hwmfEmbedded.setEmbeddedType(HwmfEmbeddedType.WMF);
        hwmfEmbedded.setData(emfCommentDataWMF.getWMFData());
        this.current = null;
        return hwmfEmbedded;
    }

    private HwmfEmbedded checkEmfPlusObject() {
        HwmfEmbeddedType hwmfEmbeddedType;
        Object obj = this.current;
        if (!(obj instanceof HemfPlusObject.EmfPlusObject)) {
            return null;
        }
        HemfPlusImage.EmfPlusImage emfPlusImage = (HemfPlusImage.EmfPlusImage) ((HemfPlusObject.EmfPlusObject) obj).getObjectData();
        HwmfEmbedded emfPlusImageData = getEmfPlusImageData();
        if (emfPlusImageData == null) {
            return null;
        }
        int i = C194511.f111370xdb66ef41[emfPlusImage.getImageDataType().ordinal()];
        if (i != 1) {
            if (i != 2) {
                hwmfEmbeddedType = HwmfEmbeddedType.UNKNOWN;
            } else {
                int i2 = C194511.f111371x311e7423[emfPlusImage.getMetafileType().ordinal()];
                hwmfEmbeddedType = (i2 == 1 || i2 == 2) ? HwmfEmbeddedType.WMF : (i2 == 3 || i2 == 4 || i2 == 5) ? HwmfEmbeddedType.EMF : HwmfEmbeddedType.UNKNOWN;
            }
        } else if (emfPlusImage.getBitmapType() == HemfPlusImage.EmfPlusBitmapDataType.COMPRESSED) {
            int i3 = C194511.$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic[FileMagic.valueOf(emfPlusImageData.getRawData()).ordinal()];
            hwmfEmbeddedType = i3 != 1 ? i3 != 2 ? i3 != 3 ? i3 != 4 ? HwmfEmbeddedType.BITMAP : HwmfEmbeddedType.TIFF : HwmfEmbeddedType.PNG : HwmfEmbeddedType.GIF : HwmfEmbeddedType.JPEG;
        } else {
            HwmfEmbeddedType hwmfEmbeddedType2 = HwmfEmbeddedType.PNG;
            compressGDIBitmap(emfPlusImage, emfPlusImageData, hwmfEmbeddedType2);
            hwmfEmbeddedType = hwmfEmbeddedType2;
        }
        emfPlusImageData.setEmbeddedType(hwmfEmbeddedType);
        return emfPlusImageData;
    }

    private HwmfEmbedded checkWmfStretchDib() {
        if (!(this.current instanceof HwmfFill.WmfStretchDib)) {
            return null;
        }
        HwmfEmbedded hwmfEmbedded = new HwmfEmbedded();
        hwmfEmbedded.setData(((HwmfFill.WmfStretchDib) this.current).getBitmap().getBMPData());
        hwmfEmbedded.setEmbeddedType(HwmfEmbeddedType.BMP);
        this.current = null;
        return hwmfEmbedded;
    }

    private void compressGDIBitmap(HemfPlusImage.EmfPlusImage emfPlusImage, HwmfEmbedded hwmfEmbedded, HwmfEmbeddedType hwmfEmbeddedType) {
        BufferedImage readGDIImage = emfPlusImage.readGDIImage(hwmfEmbedded.getRawData());
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            ImageIO.write(readGDIImage, hwmfEmbeddedType.toString(), unsynchronizedByteArrayOutputStream);
            hwmfEmbedded.setData(unsynchronizedByteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private HwmfEmbedded getEmfPlusImageData() {
        boolean z;
        HemfPlusObject.EmfPlusObject emfPlusObject = (HemfPlusObject.EmfPlusObject) this.current;
        int objectId = emfPlusObject.getObjectId();
        HwmfEmbedded hwmfEmbedded = new HwmfEmbedded();
        int length = emfPlusObject.getTotalObjectSize() == 0 ? ((HemfPlusImage.EmfPlusImage) emfPlusObject.getObjectData()).getImageData().length : emfPlusObject.getTotalObjectSize();
        IOUtils.safelyAllocateCheck(length, MAX_RECORD_LENGTH);
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(length);
            do {
                try {
                    unsynchronizedByteArrayOutputStream.write(((HemfPlusImage.EmfPlusImage) emfPlusObject.getObjectData()).getImageData());
                    this.current = null;
                    if (moveNext()) {
                        Object obj = this.current;
                        if (obj instanceof HemfPlusObject.EmfPlusObject) {
                            emfPlusObject = (HemfPlusObject.EmfPlusObject) obj;
                            z = emfPlusObject.getObjectId() == objectId && unsynchronizedByteArrayOutputStream.size() < length + (-16);
                        }
                    }
                } finally {
                }
            } while (z);
            hwmfEmbedded.setData(unsynchronizedByteArrayOutputStream.toByteArray());
            unsynchronizedByteArrayOutputStream.close();
            return hwmfEmbedded;
        } catch (IOException unused) {
            return null;
        }
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private boolean moveNext() {
        if (this.iterStack.isEmpty()) {
            return false;
        }
        if (this.current != null) {
            return true;
        }
        do {
            Iterator<?> peek = this.iterStack.peek();
            while (peek.hasNext()) {
                Object next = peek.next();
                if (next instanceof HemfComment.EmfComment) {
                    HemfComment.EmfCommentData commentData = ((HemfComment.EmfComment) next).getCommentData();
                    if ((commentData instanceof HemfComment.EmfCommentDataWMF) || (commentData instanceof HemfComment.EmfCommentDataGeneric)) {
                        this.current = next;
                        return true;
                    }
                    if (commentData instanceof HemfComment.EmfCommentDataMultiformats) {
                        Iterator<HemfComment.EmfCommentDataFormat> it2 = ((HemfComment.EmfCommentDataMultiformats) commentData).getFormats().iterator();
                        if (it2.hasNext()) {
                            this.iterStack.push(it2);
                        }
                    }
                    if (commentData instanceof HemfComment.EmfCommentDataPlus) {
                        Iterator<HemfPlusRecord> it3 = ((HemfComment.EmfCommentDataPlus) commentData).getRecords().iterator();
                        if (it3.hasNext()) {
                            this.iterStack.push(it3);
                            peek = it3;
                        }
                    }
                }
                if (next instanceof HemfComment.EmfCommentDataFormat) {
                    this.current = next;
                    return true;
                }
                if ((next instanceof HemfPlusObject.EmfPlusObject) && ((HemfPlusObject.EmfPlusObject) next).getObjectType() == HemfPlusObject.EmfPlusObjectType.IMAGE) {
                    this.current = next;
                    return true;
                }
                if ((next instanceof HwmfFill.WmfStretchDib) && ((HwmfFill.WmfStretchDib) next).getBitmap().isValid()) {
                    this.current = next;
                    return true;
                }
            }
            this.iterStack.pop();
        } while (!this.iterStack.isEmpty());
        return false;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return moveNext();
    }

    public HemfEmbeddedIterator(Iterator<HemfRecord> it2) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.iterStack = arrayDeque;
        arrayDeque.add(it2);
    }

    @Override // java.util.Iterator
    public HwmfEmbedded next() {
        HwmfEmbedded checkEmfCommentDataWMF = checkEmfCommentDataWMF();
        if (checkEmfCommentDataWMF != null) {
            return checkEmfCommentDataWMF;
        }
        HwmfEmbedded checkEmfCommentDataGeneric = checkEmfCommentDataGeneric();
        if (checkEmfCommentDataGeneric != null) {
            return checkEmfCommentDataGeneric;
        }
        HwmfEmbedded checkEmfCommentDataFormat = checkEmfCommentDataFormat();
        if (checkEmfCommentDataFormat != null) {
            return checkEmfCommentDataFormat;
        }
        HwmfEmbedded checkEmfPlusObject = checkEmfPlusObject();
        if (checkEmfPlusObject != null) {
            return checkEmfPlusObject;
        }
        HwmfEmbedded checkWmfStretchDib = checkWmfStretchDib();
        if (checkWmfStretchDib != null) {
            return checkWmfStretchDib;
        }
        throw new NoSuchElementException("no further embedded wmf records found.");
    }
}
