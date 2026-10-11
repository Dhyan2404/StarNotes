package org.apache.poi.hwpf.usermodel;

import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class BorderCode implements Duplicatable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int SIZE = 4;
    private short _info;
    private short _info2;
    private static final BitField _dptLineWidth = BitFieldFactory.getInstance(255);
    private static final BitField _brcType = BitFieldFactory.getInstance(65280);
    private static final BitField _ico = BitFieldFactory.getInstance(255);
    private static final BitField _dptSpace = BitFieldFactory.getInstance(7936);
    private static final BitField _fShadow = BitFieldFactory.getInstance(8192);
    private static final BitField _fFrame = BitFieldFactory.getInstance(16384);

    public BorderCode() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BorderCode)) {
            return false;
        }
        BorderCode borderCode = (BorderCode) obj;
        return this._info == borderCode._info && this._info2 == borderCode._info2;
    }

    public int getBorderType() {
        return _brcType.getShortValue(this._info);
    }

    public short getColor() {
        return _ico.getShortValue(this._info2);
    }

    public int getLineWidth() {
        return _dptLineWidth.getShortValue(this._info);
    }

    public int getSpace() {
        return _dptSpace.getShortValue(this._info2);
    }

    public int hashCode() {
        return 42;
    }

    public boolean isEmpty() {
        short s = this._info;
        return (s == 0 && this._info2 == 0) || s == -1;
    }

    public boolean isFrame() {
        return _fFrame.getValue(this._info2) != 0;
    }

    public boolean isShadow() {
        return _fShadow.getValue(this._info2) != 0;
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i, this._info);
        LittleEndian.putShort(bArr, i + 2, this._info2);
    }

    public void setBorderType(int i) {
        this._info = _brcType.setShortValue(this._info, (short) i);
    }

    public void setColor(short s) {
        this._info2 = _ico.setShortValue(this._info2, s);
    }

    public void setFrame(boolean z) {
        this._info2 = (short) _fFrame.setValue(this._info2, z ? 1 : 0);
    }

    public void setLineWidth(int i) {
        this._info = _dptLineWidth.setShortValue(this._info, (short) i);
    }

    public void setShadow(boolean z) {
        this._info2 = (short) _fShadow.setValue(this._info2, z ? 1 : 0);
    }

    public void setSpace(int i) {
        this._info2 = (short) _dptSpace.setValue(this._info2, i);
    }

    public int toInt() {
        byte[] bArr = new byte[4];
        serialize(bArr, 0);
        return LittleEndian.getInt(bArr);
    }

    public String toString() {
        if (isEmpty()) {
            return "[BRC] EMPTY";
        }
        return "[BRC]\n        .dptLineWidth         =  (" + getLineWidth() + " )\n        .brcType              =  (" + getBorderType() + " )\n        .ico                  =  (" + ((int) getColor()) + " )\n        .dptSpace             =  (" + getSpace() + " )\n        .fShadow              =  (" + isShadow() + " )\n        .fFrame               =  (" + isFrame() + " )\n";
    }

    public BorderCode(BorderCode borderCode) {
        this._info = borderCode._info;
        this._info2 = borderCode._info2;
    }

    @Override // org.apache.poi.common.Duplicatable
    public BorderCode copy() {
        return new BorderCode(this);
    }

    public BorderCode(byte[] bArr, int i) {
        this._info = LittleEndian.getShort(bArr, i);
        this._info2 = LittleEndian.getShort(bArr, i + 2);
    }
}
