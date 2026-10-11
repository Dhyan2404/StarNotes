package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.hwpf.model.types.LVLFAbstractType;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class ListLevel {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) ListLevel.class);
    private static final int MAX_RECORD_LENGTH = 10485760;
    private byte[] _grpprlChpx;
    private byte[] _grpprlPapx;
    private LVLF _lvlf;
    private Xst _xst;

    public ListLevel() {
        this._xst = new Xst();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ListLevel)) {
            return false;
        }
        ListLevel listLevel = (ListLevel) obj;
        return listLevel._lvlf.equals(this._lvlf) && Arrays.equals(listLevel._grpprlChpx, this._grpprlChpx) && Arrays.equals(listLevel._grpprlPapx, this._grpprlPapx) && listLevel._xst.equals(this._xst);
    }

    public int getAlignment() {
        return this._lvlf.getJc();
    }

    public byte[] getGrpprlChpx() {
        return this._grpprlChpx;
    }

    public byte[] getGrpprlPapx() {
        return this._grpprlPapx;
    }

    public byte[] getLevelNumberingPlaceholderOffsets() {
        return this._lvlf.getRgbxchNums();
    }

    public byte[] getLevelProperties() {
        return this._grpprlPapx;
    }

    public int getNumberFormat() {
        return this._lvlf.getNfc();
    }

    public String getNumberText() {
        return this._xst.getAsJavaString();
    }

    public short getRestart() {
        if (this._lvlf.isFNoRestart()) {
            return this._lvlf.getIlvlRestartLim();
        }
        return (short) -1;
    }

    public int getSizeInBytes() {
        return LVLFAbstractType.getSize() + this._lvlf.getCbGrpprlChpx() + this._lvlf.getCbGrpprlPapx() + this._xst.getSize();
    }

    public int getStartAt() {
        return this._lvlf.getIStartAt();
    }

    public byte getTypeOfCharFollowingTheNumber() {
        return this._lvlf.getIxchFollow();
    }

    public int hashCode() {
        return 42;
    }

    public boolean isLegalNumbering() {
        return this._lvlf.isFLegal();
    }

    public int read(byte[] bArr, int i) {
        this._lvlf = new LVLF(bArr, i);
        int size = LVLFAbstractType.getSize() + i;
        byte[] bArr2 = new byte[this._lvlf.getCbGrpprlPapx()];
        this._grpprlPapx = bArr2;
        System.arraycopy(bArr, size, bArr2, 0, this._lvlf.getCbGrpprlPapx());
        int cbGrpprlPapx = size + this._lvlf.getCbGrpprlPapx();
        byte[] bArr3 = new byte[this._lvlf.getCbGrpprlChpx()];
        this._grpprlChpx = bArr3;
        System.arraycopy(bArr, cbGrpprlPapx, bArr3, 0, this._lvlf.getCbGrpprlChpx());
        int cbGrpprlChpx = cbGrpprlPapx + this._lvlf.getCbGrpprlChpx();
        Xst xst = new Xst(bArr, cbGrpprlChpx);
        this._xst = xst;
        int size2 = cbGrpprlChpx + xst.getSize();
        if (this._lvlf.getNfc() == 23 && this._xst.getCch() != 1) {
            LOG.atWarn().log("LVL at offset {} has nfc == 0x17 (bullets), but cch != 1 ({})", Unbox.box(i), Unbox.box(this._xst.getCch()));
        }
        return size2 - i;
    }

    public void setAlignment(int i) {
        this._lvlf.setJc((byte) i);
    }

    public void setLevelProperties(byte[] bArr) {
        this._grpprlPapx = bArr;
    }

    public void setNumberFormat(int i) {
        this._lvlf.setNfc((byte) i);
    }

    public void setNumberProperties(byte[] bArr) {
        this._grpprlChpx = bArr;
    }

    public void setStartAt(int i) {
        this._lvlf.setIStartAt(i);
    }

    public void setTypeOfCharFollowingTheNumber(byte b) {
        this._lvlf.setIxchFollow(b);
    }

    public byte[] toByteArray() {
        byte[] safelyAllocate = IOUtils.safelyAllocate(getSizeInBytes(), 10485760);
        this._lvlf.setCbGrpprlChpx((short) this._grpprlChpx.length);
        this._lvlf.setCbGrpprlPapx((short) this._grpprlPapx.length);
        this._lvlf.serialize(safelyAllocate, 0);
        int size = LVLFAbstractType.getSize() + 0;
        byte[] bArr = this._grpprlPapx;
        System.arraycopy(bArr, 0, safelyAllocate, size, bArr.length);
        int length = size + this._grpprlPapx.length;
        byte[] bArr2 = this._grpprlChpx;
        System.arraycopy(bArr2, 0, safelyAllocate, length, bArr2.length);
        this._xst.serialize(safelyAllocate, length + this._grpprlChpx.length);
        return safelyAllocate;
    }

    public String toString() {
        return "LVL: " + ("\n" + this._lvlf).replace("\n", "\n    ") + "\nPAPX's grpprl: " + Arrays.toString(this._grpprlPapx) + "\nCHPX's grpprl: " + Arrays.toString(this._grpprlChpx) + "\nxst: " + this._xst + "\n";
    }

    @Deprecated
    public ListLevel(byte[] bArr, int i) {
        this._xst = new Xst();
        read(bArr, i);
    }

    public ListLevel(int i, boolean z) {
        this._xst = new Xst();
        this._lvlf = new LVLF();
        setStartAt(1);
        this._grpprlPapx = new byte[0];
        this._grpprlChpx = new byte[0];
        if (z) {
            this._lvlf.getRgbxchNums()[0] = 1;
            this._xst = new Xst("" + ((char) i) + ".");
            return;
        }
        this._xst = new Xst("•");
    }

    public ListLevel(int i, int i2, int i3, byte[] bArr, byte[] bArr2, String str) {
        this._xst = new Xst();
        this._lvlf = new LVLF();
        setStartAt(i);
        this._lvlf.setNfc((byte) i2);
        this._lvlf.setJc((byte) i3);
        this._grpprlChpx = (byte[]) bArr.clone();
        this._grpprlPapx = (byte[]) bArr2.clone();
        this._xst = new Xst(str);
    }
}
