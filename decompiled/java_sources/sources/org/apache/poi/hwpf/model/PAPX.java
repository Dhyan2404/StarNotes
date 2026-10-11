package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.hwpf.sprm.ParagraphSprmUncompressor;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.hwpf.sprm.SprmOperation;
import org.apache.poi.hwpf.usermodel.ParagraphProperties;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class PAPX extends BytePropertyNode<PAPX> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private ParagraphHeight _phe;

    public PAPX(PAPX papx) {
        super(papx);
        ParagraphHeight paragraphHeight = papx._phe;
        this._phe = paragraphHeight == null ? null : paragraphHeight.copy();
    }

    private SprmBuffer findHuge(SprmBuffer sprmBuffer, byte[] bArr) {
        byte[] byteArray = sprmBuffer.toByteArray();
        if (byteArray.length != 8 || bArr == null) {
            return null;
        }
        SprmOperation sprmOperation = new SprmOperation(byteArray, 2);
        if ((sprmOperation.getOperation() != 69 && sprmOperation.getOperation() != 70) || sprmOperation.getSizeCode() != 3) {
            return null;
        }
        int operand = sprmOperation.getOperand();
        if (operand + 1 >= bArr.length) {
            return null;
        }
        short s = LittleEndian.getShort(bArr, operand);
        if (operand + s >= bArr.length) {
            return null;
        }
        byte[] bArr2 = new byte[s + 2];
        bArr2[0] = byteArray[0];
        bArr2[1] = byteArray[1];
        System.arraycopy(bArr, operand + 2, bArr2, 2, s);
        return new SprmBuffer(bArr2, 2);
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return this._phe.equals(((PAPX) obj)._phe);
        }
        return false;
    }

    public byte[] getGrpprl() {
        Object obj = this._buf;
        return obj == null ? new byte[0] : ((SprmBuffer) obj).toByteArray();
    }

    public short getIstd() {
        if (this._buf == null) {
            return (short) 0;
        }
        byte[] grpprl = getGrpprl();
        if (grpprl.length == 0) {
            return (short) 0;
        }
        return grpprl.length == 1 ? LittleEndian.getUByte(grpprl, 0) : LittleEndian.getShort(grpprl);
    }

    public ParagraphHeight getParagraphHeight() {
        return this._phe;
    }

    @Internal
    @Deprecated
    public ParagraphProperties getParagraphProperties(StyleSheet styleSheet) {
        return styleSheet == null ? new ParagraphProperties() : ParagraphSprmUncompressor.uncompressPAP(styleSheet.getParagraphStyle(getIstd()), getGrpprl(), 2);
    }

    public SprmBuffer getSprmBuf() {
        return (SprmBuffer) this._buf;
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    public int hashCode() {
        return 42;
    }

    public String toString() {
        return "PAPX from " + getStart() + " to " + getEnd() + " (in bytes " + getStartBytes() + " to " + getEndBytes() + MotionUtils.f31762d;
    }

    public PAPX(int i, int i2, byte[] bArr, ParagraphHeight paragraphHeight, byte[] bArr2) {
        super(i, i2, new SprmBuffer(bArr, 2));
        this._phe = paragraphHeight;
        SprmBuffer findHuge = findHuge(new SprmBuffer(bArr, 2), bArr2);
        if (findHuge != null) {
            this._buf = findHuge;
        }
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode, org.apache.poi.common.Duplicatable
    public PAPX copy() {
        return new PAPX(this);
    }

    public PAPX(int i, int i2, SprmBuffer sprmBuffer) {
        super(i, i2, sprmBuffer);
        this._phe = new ParagraphHeight();
    }
}
