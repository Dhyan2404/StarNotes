package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class Ffn {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int _cbFfnM1;
    private byte _chs;
    private byte _info;
    private byte _ixchSzAlt;
    private short _wWeight;
    private char[] _xszFfn;
    private int _xszFfnLength;
    private static BitField _prq = BitFieldFactory.getInstance(3);
    private static BitField _fTrueType = BitFieldFactory.getInstance(4);
    private static BitField _ff = BitFieldFactory.getInstance(112);
    private byte[] _panose = new byte[10];
    private byte[] _fontSig = new byte[24];

    public Ffn(byte[] bArr, int i) {
        this._cbFfnM1 = LittleEndian.getUByte(bArr, i);
        int i2 = i + 1;
        this._info = bArr[i2];
        int i3 = i2 + 1;
        this._wWeight = LittleEndian.getShort(bArr, i3);
        int i4 = i3 + 2;
        this._chs = bArr[i4];
        int i5 = i4 + 1;
        this._ixchSzAlt = bArr[i5];
        int i6 = i5 + 1;
        byte[] bArr2 = this._panose;
        System.arraycopy(bArr, i6, bArr2, 0, bArr2.length);
        int length = i6 + this._panose.length;
        byte[] bArr3 = this._fontSig;
        System.arraycopy(bArr, length, bArr3, 0, bArr3.length);
        int length2 = length + this._fontSig.length;
        int i7 = length2 - i;
        int size = (getSize() - i7) / 2;
        this._xszFfnLength = size;
        if (size >= 0) {
            this._xszFfn = new char[size];
            for (int i8 = 0; i8 < this._xszFfnLength; i8++) {
                this._xszFfn[i8] = (char) LittleEndian.getShort(bArr, length2);
                length2 += 2;
            }
            return;
        }
        throw new IllegalArgumentException("Had invalid computed size: " + this._xszFfnLength + " with size " + getSize() + " and offsetTmp: " + i7);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Ffn)) {
            return false;
        }
        Ffn ffn = (Ffn) obj;
        return ffn._cbFfnM1 == this._cbFfnM1 && ffn._info == this._info && ffn._wWeight == this._wWeight && ffn._chs == this._chs && ffn._ixchSzAlt == this._ixchSzAlt && Arrays.equals(ffn._panose, this._panose) && Arrays.equals(ffn._fontSig, this._fontSig) && Arrays.equals(ffn._xszFfn, this._xszFfn);
    }

    public String getAltFontName() {
        int i = this._ixchSzAlt;
        while (i < this._xszFfnLength && this._xszFfn[i] != 0) {
            i++;
        }
        return new String(this._xszFfn, (int) this._ixchSzAlt, i);
    }

    public byte getChs() {
        return this._chs;
    }

    public byte[] getFontSig() {
        return this._fontSig;
    }

    public String getMainFontName() {
        int i = 0;
        while (i < this._xszFfnLength && this._xszFfn[i] != 0) {
            i++;
        }
        return new String(this._xszFfn, 0, i);
    }

    public byte[] getPanose() {
        return this._panose;
    }

    public int getSize() {
        return this._cbFfnM1 + 1;
    }

    public short getWeight() {
        return this._wWeight;
    }

    public int get_cbFfnM1() {
        return this._cbFfnM1;
    }

    public int hashCode() {
        return 42;
    }

    public void set_cbFfnM1(int i) {
        this._cbFfnM1 = i;
    }

    public byte[] toByteArray() {
        byte[] safelyAllocate = IOUtils.safelyAllocate(getSize(), HWPFDocument.getMaxRecordLength());
        safelyAllocate[0] = (byte) this._cbFfnM1;
        safelyAllocate[1] = this._info;
        LittleEndian.putShort(safelyAllocate, 2, this._wWeight);
        safelyAllocate[4] = this._chs;
        safelyAllocate[5] = this._ixchSzAlt;
        byte[] bArr = this._panose;
        System.arraycopy(bArr, 0, safelyAllocate, 6, bArr.length);
        int length = 6 + this._panose.length;
        byte[] bArr2 = this._fontSig;
        System.arraycopy(bArr2, 0, safelyAllocate, length, bArr2.length);
        int length2 = length + this._fontSig.length;
        for (char c : this._xszFfn) {
            LittleEndian.putShort(safelyAllocate, length2, (short) c);
            length2 += 2;
        }
        return safelyAllocate;
    }
}
