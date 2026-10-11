package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Locale;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.model.types.FibBaseAbstractType;
import org.apache.poi.hwpf.model.types.FibRgLw97AbstractType;
import org.apache.poi.hwpf.model.types.FibRgW97AbstractType;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class FileInformationBlock {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) FileInformationBlock.class);
    private int _cbRgFcLcb;
    private final int _cslw;
    private final int _csw;
    private final int _cswNew;
    private final FibBase _fibBase;
    private final byte[] _fibRgCswNew;
    private final FibRgLw _fibRgLw;
    private final FibRgW97 _fibRgW;
    private FIBFieldHandler _fieldHandler;
    private final int _nFibNew;

    public FileInformationBlock(byte[] bArr) {
        FibBase fibBase = new FibBase(bArr, 0);
        this._fibBase = fibBase;
        int size = FibBaseAbstractType.getSize();
        this._csw = LittleEndian.getUShort(bArr, size);
        int i = size + 2;
        this._fibRgW = new FibRgW97(bArr, i);
        int size2 = i + FibRgW97AbstractType.getSize();
        this._cslw = LittleEndian.getUShort(bArr, size2);
        int i2 = size2 + 2;
        if (fibBase.getNFib() < 105) {
            this._fibRgLw = new FibRgLw95(bArr, i2);
            FibRgLw97AbstractType.getSize();
            this._cbRgFcLcb = 74;
            this._cswNew = 0;
            this._nFibNew = -1;
            this._fibRgCswNew = new byte[0];
            return;
        }
        fibBase.checkOLE2Identifier(bArr);
        this._fibRgLw = new FibRgLw97(bArr, i2);
        int size3 = i2 + FibRgLw97AbstractType.getSize();
        int uShort = LittleEndian.getUShort(bArr, size3);
        this._cbRgFcLcb = uShort;
        int i3 = size3 + 2 + (uShort * 4 * 2);
        int uShort2 = LittleEndian.getUShort(bArr, i3);
        this._cswNew = uShort2;
        int i4 = i3 + 2;
        if (uShort2 != 0) {
            this._nFibNew = LittleEndian.getUShort(bArr, i4);
            this._fibRgCswNew = IOUtils.safelyClone(bArr, i4 + 2, (uShort2 - 1) * 2, HWPFDocument.getMaxRecordLength());
        } else {
            this._nFibNew = -1;
            this._fibRgCswNew = new byte[0];
        }
        assertCbRgFcLcb();
        assertCswNew();
    }

    private void assertCbRgFcLcb() {
        int nFib = getNFib();
        String format = String.format(Locale.ROOT, "%04X", Integer.valueOf(nFib));
        if (nFib != 113) {
            if (nFib == 257) {
                assertCbRgFcLcb("0x0101", 136, "0x0088", this._cbRgFcLcb);
                return;
            }
            if (nFib == 274) {
                assertCbRgFcLcb("0x0112", 183, "0x00B7", this._cbRgFcLcb);
                return;
            }
            if (nFib == 216 || nFib == 217) {
                assertCbRgFcLcb(format, 108, "0x006C", this._cbRgFcLcb);
                return;
            }
            if (nFib != 267 && nFib != 268) {
                switch (nFib) {
                    case 190:
                    case 191:
                    case 192:
                    case 193:
                    case 194:
                    case 195:
                        assertCbRgFcLcb(format, 93, "0x005D", this._cbRgFcLcb);
                        return;
                    default:
                        LOG.atWarn().log("Invalid file format version number: {}({})", Unbox.box(nFib), format);
                        return;
                }
            }
            assertCbRgFcLcb(format, 164, "0x00A4", this._cbRgFcLcb);
        }
    }

    private void assertCswNew() {
        int nFib = getNFib();
        if (nFib == 193) {
            assertCswNew("0x00C1", 0, "0x0000", this._cswNew);
            return;
        }
        if (nFib == 217) {
            assertCswNew("0x00D9", 2, "0x0002", this._cswNew);
            return;
        }
        if (nFib == 257) {
            assertCswNew("0x0101", 2, "0x0002", this._cswNew);
            return;
        }
        if (nFib == 268) {
            assertCswNew("0x010C", 2, "0x0002", this._cswNew);
        } else if (nFib != 274) {
            LOG.atWarn().log("Invalid file format version number: {}", Unbox.box(getNFib()));
        } else {
            assertCswNew("0x0112", 5, "0x0005", this._cswNew);
        }
    }

    public void clearOffsetsSizes() {
        this._fieldHandler.clearFields();
    }

    public void fillVariableFields(byte[] bArr, byte[] bArr2) {
        HashSet hashSet = new HashSet();
        hashSet.add(1);
        hashSet.add(33);
        hashSet.add(31);
        hashSet.add(12);
        hashSet.add(13);
        hashSet.add(6);
        hashSet.add(73);
        hashSet.add(74);
        for (FieldsDocumentPart fieldsDocumentPart : FieldsDocumentPart.values()) {
            hashSet.add(Integer.valueOf(fieldsDocumentPart.getFibFieldsField()));
        }
        hashSet.add(22);
        hashSet.add(23);
        hashSet.add(21);
        for (NoteType noteType : NoteType.values()) {
            hashSet.add(Integer.valueOf(noteType.getFibDescriptorsFieldIndex()));
            hashSet.add(Integer.valueOf(noteType.getFibTextPositionsFieldIndex()));
        }
        hashSet.add(15);
        hashSet.add(51);
        hashSet.add(71);
        hashSet.add(87);
        this._fieldHandler = new FIBFieldHandler(bArr, 154, this._cbRgFcLcb, bArr2, hashSet, true);
    }

    public int getCbMac() {
        return this._fibRgLw.getCbMac();
    }

    public int getFSPAPlcfLength(FSPADocumentPart fSPADocumentPart) {
        return this._fieldHandler.getFieldSize(fSPADocumentPart.getFibFieldsField());
    }

    public int getFSPAPlcfOffset(FSPADocumentPart fSPADocumentPart) {
        return this._fieldHandler.getFieldOffset(fSPADocumentPart.getFibFieldsField());
    }

    public int getFcClx() {
        return this._fieldHandler.getFieldOffset(33);
    }

    public int getFcDggInfo() {
        return this._fieldHandler.getFieldOffset(50);
    }

    public int getFcDop() {
        return this._fieldHandler.getFieldOffset(31);
    }

    @Deprecated
    public int getFcPlcfLst() {
        return this._fieldHandler.getFieldOffset(73);
    }

    public int getFcPlcfbkf() {
        return this._fieldHandler.getFieldOffset(22);
    }

    public int getFcPlcfbkl() {
        return this._fieldHandler.getFieldOffset(23);
    }

    public int getFcPlcfbteChpx() {
        return this._fieldHandler.getFieldOffset(12);
    }

    public int getFcPlcfbtePapx() {
        return this._fieldHandler.getFieldOffset(13);
    }

    @Deprecated
    public int getFcPlcffldAtn() {
        return this._fieldHandler.getFieldOffset(19);
    }

    @Deprecated
    public int getFcPlcffldEdn() {
        return this._fieldHandler.getFieldOffset(48);
    }

    @Deprecated
    public int getFcPlcffldFtn() {
        return this._fieldHandler.getFieldOffset(18);
    }

    @Deprecated
    public int getFcPlcffldHdr() {
        return this._fieldHandler.getFieldOffset(17);
    }

    @Deprecated
    public int getFcPlcffldHdrtxbx() {
        return this._fieldHandler.getFieldOffset(59);
    }

    @Deprecated
    public int getFcPlcffldMom() {
        return this._fieldHandler.getFieldOffset(16);
    }

    @Deprecated
    public int getFcPlcffldTxbx() {
        return this._fieldHandler.getFieldOffset(57);
    }

    public int getFcPlcfsed() {
        return this._fieldHandler.getFieldOffset(6);
    }

    public int getFcPlfLfo() {
        return this._fieldHandler.getFieldOffset(74);
    }

    public int getFcPlfLst() {
        return this._fieldHandler.getFieldOffset(73);
    }

    public int getFcStshf() {
        return this._fieldHandler.getFieldOffset(1);
    }

    public int getFcSttbSavedBy() {
        return this._fieldHandler.getFieldOffset(71);
    }

    public int getFcSttbfRMark() {
        return this._fieldHandler.getFieldOffset(51);
    }

    public int getFcSttbfbkmk() {
        return this._fieldHandler.getFieldOffset(21);
    }

    public int getFcSttbfffn() {
        return this._fieldHandler.getFieldOffset(15);
    }

    public FibBase getFibBase() {
        return this._fibBase;
    }

    public int getFieldsPlcfLength(FieldsDocumentPart fieldsDocumentPart) {
        return this._fieldHandler.getFieldSize(fieldsDocumentPart.getFibFieldsField());
    }

    public int getFieldsPlcfOffset(FieldsDocumentPart fieldsDocumentPart) {
        return this._fieldHandler.getFieldOffset(fieldsDocumentPart.getFibFieldsField());
    }

    public int getLcbClx() {
        return this._fieldHandler.getFieldSize(33);
    }

    public int getLcbDggInfo() {
        return this._fieldHandler.getFieldSize(50);
    }

    public int getLcbDop() {
        return this._fieldHandler.getFieldSize(31);
    }

    @Deprecated
    public int getLcbPlcfLst() {
        return this._fieldHandler.getFieldSize(73);
    }

    public int getLcbPlcfbkf() {
        return this._fieldHandler.getFieldSize(22);
    }

    public int getLcbPlcfbkl() {
        return this._fieldHandler.getFieldSize(23);
    }

    public int getLcbPlcfbteChpx() {
        return this._fieldHandler.getFieldSize(12);
    }

    public int getLcbPlcfbtePapx() {
        return this._fieldHandler.getFieldSize(13);
    }

    @Deprecated
    public int getLcbPlcffldAtn() {
        return this._fieldHandler.getFieldSize(19);
    }

    @Deprecated
    public int getLcbPlcffldEdn() {
        return this._fieldHandler.getFieldSize(48);
    }

    @Deprecated
    public int getLcbPlcffldFtn() {
        return this._fieldHandler.getFieldSize(18);
    }

    @Deprecated
    public int getLcbPlcffldHdr() {
        return this._fieldHandler.getFieldSize(17);
    }

    @Deprecated
    public int getLcbPlcffldHdrtxbx() {
        return this._fieldHandler.getFieldSize(59);
    }

    @Deprecated
    public int getLcbPlcffldMom() {
        return this._fieldHandler.getFieldSize(16);
    }

    @Deprecated
    public int getLcbPlcffldTxbx() {
        return this._fieldHandler.getFieldSize(57);
    }

    public int getLcbPlcfsed() {
        return this._fieldHandler.getFieldSize(6);
    }

    public int getLcbPlfLfo() {
        return this._fieldHandler.getFieldSize(74);
    }

    public int getLcbPlfLst() {
        return this._fieldHandler.getFieldSize(73);
    }

    public int getLcbStshf() {
        return this._fieldHandler.getFieldSize(1);
    }

    public int getLcbSttbSavedBy() {
        return this._fieldHandler.getFieldSize(71);
    }

    public int getLcbSttbfRMark() {
        return this._fieldHandler.getFieldSize(51);
    }

    public int getLcbSttbfbkmk() {
        return this._fieldHandler.getFieldSize(21);
    }

    public int getLcbSttbfffn() {
        return this._fieldHandler.getFieldSize(15);
    }

    public int getModifiedHigh() {
        return this._fieldHandler.getFieldSize(74);
    }

    public int getModifiedLow() {
        return this._fieldHandler.getFieldOffset(74);
    }

    public int getNFib() {
        return this._cswNew == 0 ? this._fibBase.getNFib() : this._nFibNew;
    }

    public int getNotesDescriptorsOffset(NoteType noteType) {
        return this._fieldHandler.getFieldOffset(noteType.getFibDescriptorsFieldIndex());
    }

    public int getNotesDescriptorsSize(NoteType noteType) {
        return this._fieldHandler.getFieldSize(noteType.getFibDescriptorsFieldIndex());
    }

    public int getNotesTextPositionsOffset(NoteType noteType) {
        return this._fieldHandler.getFieldOffset(noteType.getFibTextPositionsFieldIndex());
    }

    public int getNotesTextPositionsSize(NoteType noteType) {
        return this._fieldHandler.getFieldSize(noteType.getFibTextPositionsFieldIndex());
    }

    public int getPlcfHddOffset() {
        return this._fieldHandler.getFieldOffset(11);
    }

    public int getPlcfHddSize() {
        return this._fieldHandler.getFieldSize(11);
    }

    public int getSize() {
        return FibBaseAbstractType.getSize() + 2 + FibRgW97AbstractType.getSize() + 2 + FibRgLw97AbstractType.getSize() + 2 + this._fieldHandler.sizeInBytes();
    }

    public int getSubdocumentTextStreamLength(SubdocumentType subdocumentType) {
        if (subdocumentType != null) {
            return this._fibRgLw.getSubdocumentTextStreamLength(subdocumentType);
        }
        throw new IllegalArgumentException("argument 'type' is null");
    }

    public void setCbMac(int i) {
        this._fibRgLw.setCbMac(i);
    }

    public void setFSPAPlcfLength(FSPADocumentPart fSPADocumentPart, int i) {
        this._fieldHandler.setFieldSize(fSPADocumentPart.getFibFieldsField(), i);
    }

    public void setFSPAPlcfOffset(FSPADocumentPart fSPADocumentPart, int i) {
        this._fieldHandler.setFieldOffset(fSPADocumentPart.getFibFieldsField(), i);
    }

    public void setFcClx(int i) {
        this._fieldHandler.setFieldOffset(33, i);
    }

    public void setFcDop(int i) {
        this._fieldHandler.setFieldOffset(31, i);
    }

    @Deprecated
    public void setFcPlcfLst(int i) {
        this._fieldHandler.setFieldOffset(73, i);
    }

    public void setFcPlcfbkf(int i) {
        this._fieldHandler.setFieldOffset(22, i);
    }

    public void setFcPlcfbkl(int i) {
        this._fieldHandler.setFieldOffset(23, i);
    }

    public void setFcPlcfbteChpx(int i) {
        this._fieldHandler.setFieldOffset(12, i);
    }

    public void setFcPlcfbtePapx(int i) {
        this._fieldHandler.setFieldOffset(13, i);
    }

    @Deprecated
    public void setFcPlcffldAtn(int i) {
        this._fieldHandler.setFieldOffset(19, i);
    }

    @Deprecated
    public void setFcPlcffldEdn(int i) {
        this._fieldHandler.setFieldOffset(48, i);
    }

    @Deprecated
    public void setFcPlcffldFtn(int i) {
        this._fieldHandler.setFieldOffset(18, i);
    }

    @Deprecated
    public void setFcPlcffldHdr(int i) {
        this._fieldHandler.setFieldOffset(17, i);
    }

    @Deprecated
    public void setFcPlcffldHdrtxbx(int i) {
        this._fieldHandler.setFieldOffset(59, i);
    }

    @Deprecated
    public void setFcPlcffldMom(int i) {
        this._fieldHandler.setFieldOffset(16, i);
    }

    @Deprecated
    public void setFcPlcffldTxbx(int i) {
        this._fieldHandler.setFieldOffset(57, i);
    }

    public void setFcPlcfsed(int i) {
        this._fieldHandler.setFieldOffset(6, i);
    }

    public void setFcPlfLfo(int i) {
        this._fieldHandler.setFieldOffset(74, i);
    }

    public void setFcPlfLst(int i) {
        this._fieldHandler.setFieldOffset(73, i);
    }

    public void setFcStshf(int i) {
        this._fieldHandler.setFieldOffset(1, i);
    }

    public void setFcSttbSavedBy(int i) {
        this._fieldHandler.setFieldOffset(71, i);
    }

    public void setFcSttbfRMark(int i) {
        this._fieldHandler.setFieldOffset(51, i);
    }

    public void setFcSttbfbkmk(int i) {
        this._fieldHandler.setFieldOffset(21, i);
    }

    public void setFcSttbfffn(int i) {
        this._fieldHandler.setFieldOffset(15, i);
    }

    public void setFieldsPlcfLength(FieldsDocumentPart fieldsDocumentPart, int i) {
        this._fieldHandler.setFieldSize(fieldsDocumentPart.getFibFieldsField(), i);
    }

    public void setFieldsPlcfOffset(FieldsDocumentPart fieldsDocumentPart, int i) {
        this._fieldHandler.setFieldOffset(fieldsDocumentPart.getFibFieldsField(), i);
    }

    public void setLcbClx(int i) {
        this._fieldHandler.setFieldSize(33, i);
    }

    public void setLcbDop(int i) {
        this._fieldHandler.setFieldSize(31, i);
    }

    @Deprecated
    public void setLcbPlcfLst(int i) {
        this._fieldHandler.setFieldSize(73, i);
    }

    public void setLcbPlcfbkf(int i) {
        this._fieldHandler.setFieldSize(22, i);
    }

    public void setLcbPlcfbkl(int i) {
        this._fieldHandler.setFieldSize(23, i);
    }

    public void setLcbPlcfbteChpx(int i) {
        this._fieldHandler.setFieldSize(12, i);
    }

    public void setLcbPlcfbtePapx(int i) {
        this._fieldHandler.setFieldSize(13, i);
    }

    @Deprecated
    public void setLcbPlcffldAtn(int i) {
        this._fieldHandler.setFieldSize(19, i);
    }

    @Deprecated
    public void setLcbPlcffldEdn(int i) {
        this._fieldHandler.setFieldSize(48, i);
    }

    @Deprecated
    public void setLcbPlcffldFtn(int i) {
        this._fieldHandler.setFieldSize(18, i);
    }

    @Deprecated
    public void setLcbPlcffldHdr(int i) {
        this._fieldHandler.setFieldSize(17, i);
    }

    @Deprecated
    public void setLcbPlcffldHdrtxbx(int i) {
        this._fieldHandler.setFieldSize(59, i);
    }

    @Deprecated
    public void setLcbPlcffldMom(int i) {
        this._fieldHandler.setFieldSize(16, i);
    }

    @Deprecated
    public void setLcbPlcffldTxbx(int i) {
        this._fieldHandler.setFieldSize(57, i);
    }

    public void setLcbPlcfsed(int i) {
        this._fieldHandler.setFieldSize(6, i);
    }

    public void setLcbPlfLfo(int i) {
        this._fieldHandler.setFieldSize(74, i);
    }

    public void setLcbPlfLst(int i) {
        this._fieldHandler.setFieldSize(73, i);
    }

    public void setLcbStshf(int i) {
        this._fieldHandler.setFieldSize(1, i);
    }

    public void setLcbSttbSavedBy(int i) {
        this._fieldHandler.setFieldSize(71, i);
    }

    public void setLcbSttbfRMark(int i) {
        this._fieldHandler.setFieldSize(51, i);
    }

    public void setLcbSttbfbkmk(int i) {
        this._fieldHandler.setFieldSize(21, i);
    }

    public void setLcbSttbfffn(int i) {
        this._fieldHandler.setFieldSize(15, i);
    }

    public void setModifiedHigh(int i) {
        this._fieldHandler.setFieldSize(74, i);
    }

    public void setModifiedLow(int i) {
        this._fieldHandler.setFieldOffset(74, i);
    }

    public void setNotesDescriptorsOffset(NoteType noteType, int i) {
        this._fieldHandler.setFieldOffset(noteType.getFibDescriptorsFieldIndex(), i);
    }

    public void setNotesDescriptorsSize(NoteType noteType, int i) {
        this._fieldHandler.setFieldSize(noteType.getFibDescriptorsFieldIndex(), i);
    }

    public void setNotesTextPositionsOffset(NoteType noteType, int i) {
        this._fieldHandler.setFieldOffset(noteType.getFibTextPositionsFieldIndex(), i);
    }

    public void setNotesTextPositionsSize(NoteType noteType, int i) {
        this._fieldHandler.setFieldSize(noteType.getFibTextPositionsFieldIndex(), i);
    }

    public void setPlcfHddOffset(int i) {
        this._fieldHandler.setFieldOffset(11, i);
    }

    public void setPlcfHddSize(int i) {
        this._fieldHandler.setFieldSize(11, i);
    }

    public void setSubdocumentTextStreamLength(SubdocumentType subdocumentType, int i) {
        if (subdocumentType == null) {
            throw new IllegalArgumentException("argument 'type' is null");
        }
        if (i >= 0) {
            this._fibRgLw.setSubdocumentTextStreamLength(subdocumentType, i);
            return;
        }
        throw new IllegalArgumentException("Subdocument length can't be less than 0 (passed value is " + i + "). If there is no subdocument length must be set to zero.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._fibBase);
        sb.append("[FIB2]\n");
        sb.append("\tSubdocuments info:\n");
        for (SubdocumentType subdocumentType : SubdocumentType.values()) {
            sb.append("\t\t");
            sb.append(subdocumentType);
            sb.append(" has length of ");
            sb.append(getSubdocumentTextStreamLength(subdocumentType));
            sb.append(" char(s)\n");
        }
        sb.append("\tFields PLCF info:\n");
        for (FieldsDocumentPart fieldsDocumentPart : FieldsDocumentPart.values()) {
            sb.append("\t\t");
            sb.append(fieldsDocumentPart);
            sb.append(": PLCF starts at ");
            sb.append(getFieldsPlcfOffset(fieldsDocumentPart));
            sb.append(" and have length of ");
            sb.append(getFieldsPlcfLength(fieldsDocumentPart));
            sb.append("\n");
        }
        sb.append("\tNotes PLCF info:\n");
        for (NoteType noteType : NoteType.values()) {
            sb.append("\t\t");
            sb.append(noteType);
            sb.append(": descriptions starts ");
            sb.append(getNotesDescriptorsOffset(noteType));
            sb.append(" and have length of ");
            sb.append(getNotesDescriptorsSize(noteType));
            sb.append(" bytes\n");
            sb.append("\t\t");
            sb.append(noteType);
            sb.append(": text positions starts ");
            sb.append(getNotesTextPositionsOffset(noteType));
            sb.append(" and have length of ");
            sb.append(getNotesTextPositionsSize(noteType));
            sb.append(" bytes\n");
        }
        sb.append(this._fieldHandler);
        try {
            sb.append("\tJava reflection info:\n");
            for (Method method : FileInformationBlock.class.getMethods()) {
                if (method.getName().startsWith("get") && Modifier.isPublic(method.getModifiers()) && !Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length <= 0) {
                    sb.append("\t\t");
                    sb.append(method.getName());
                    sb.append(" => ");
                    sb.append(method.invoke(this, new Object[0]));
                    sb.append("\n");
                }
            }
        } catch (Exception e) {
            sb.append("(exc: ");
            sb.append(e.getMessage());
            sb.append(MotionUtils.f31762d);
        }
        sb.append("[/FIB2]\n");
        return sb.toString();
    }

    public void writeTo(byte[] bArr, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        this._cbRgFcLcb = this._fieldHandler.getFieldsCount();
        this._fibBase.serialize(bArr, 0);
        int size = FibBaseAbstractType.getSize();
        LittleEndian.putUShort(bArr, size, this._csw);
        int i = size + 2;
        this._fibRgW.serialize(bArr, i);
        int size2 = i + FibRgW97AbstractType.getSize();
        LittleEndian.putUShort(bArr, size2, this._cslw);
        int i2 = size2 + 2;
        ((FibRgLw97) this._fibRgLw).serialize(bArr, i2);
        int size3 = i2 + FibRgLw97AbstractType.getSize();
        LittleEndian.putUShort(bArr, size3, this._cbRgFcLcb);
        int i3 = size3 + 2;
        this._fieldHandler.writeTo(bArr, i3, byteArrayOutputStream);
        int i4 = i3 + (this._cbRgFcLcb * 4 * 2);
        LittleEndian.putUShort(bArr, i4, this._cswNew);
        int i5 = i4 + 2;
        if (this._cswNew != 0) {
            LittleEndian.putUShort(bArr, i5, this._nFibNew);
            byte[] bArr2 = this._fibRgCswNew;
            System.arraycopy(bArr2, 0, bArr, i5 + 2, bArr2.length);
        }
    }

    private static void assertCswNew(String str, int i, String str2, int i2) {
        if (i2 == i) {
            return;
        }
        LOG.atWarn().log("Since FIB.nFib == {} value of FIB.cswNew MUST be {}, not 0x{}", str, str2, Integer.toHexString(i2));
    }

    private static void assertCbRgFcLcb(String str, int i, String str2, int i2) {
        if (i2 == i) {
            return;
        }
        LOG.atWarn().log("Since FIB.nFib == {} value of FIB.cbRgFcLcb MUST be {}, not 0x{}", str, str2, Integer.toHexString(i2));
    }
}
