package org.apache.poi.hwpf.sprm;

import java.util.Arrays;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal(since = "3.8 beta 4")
/* loaded from: classes12.dex */
public final class SprmOperation {
    private static final BitField BITFIELD_OP = BitFieldFactory.getInstance(511);
    private static final BitField BITFIELD_SIZECODE = BitFieldFactory.getInstance(57344);
    private static final BitField BITFIELD_SPECIAL = BitFieldFactory.getInstance(512);
    private static final BitField BITFIELD_TYPE = BitFieldFactory.getInstance(7168);
    private static final short SPRM_LONG_PARAGRAPH = -14827;
    private static final short SPRM_LONG_TABLE = -10744;
    public static final int TYPE_CHP = 2;
    public static final int TYPE_PAP = 1;
    public static final int TYPE_PIC = 3;
    public static final int TYPE_SEP = 4;
    public static final int TYPE_TAP = 5;
    private int _gOffset;
    private final byte[] _grpprl;
    private final int _offset;
    private final int _size;
    private final short _value;

    public SprmOperation(byte[] bArr, int i) {
        this._grpprl = bArr;
        short s = LittleEndian.getShort(bArr, i);
        this._value = s;
        this._offset = i;
        this._gOffset = i + 2;
        this._size = initSize(s);
    }

    public static int getOperationFromOpcode(short s) {
        return BITFIELD_OP.getValue(s);
    }

    public static int getTypeFromOpcode(short s) {
        return BITFIELD_TYPE.getValue(s);
    }

    private int initSize(short s) {
        switch (getSizeCode()) {
            case 0:
            case 1:
                return 3;
            case 2:
            case 4:
            case 5:
                return 4;
            case 3:
                return 6;
            case 6:
                int i = this._gOffset;
                if (s == -10744 || s == -14827) {
                    int i2 = (LittleEndian.getShort(this._grpprl, i) & 65535) + 3;
                    this._gOffset += 2;
                    return i2;
                }
                byte[] bArr = this._grpprl;
                this._gOffset = i + 1;
                return (bArr[i] & 255) + 3;
            case 7:
                return 5;
            default:
                throw new IllegalArgumentException("SPRM contains an invalid size code");
        }
    }

    public byte[] getGrpprl() {
        return this._grpprl;
    }

    public int getGrpprlOffset() {
        return this._gOffset;
    }

    public int getOperand() {
        switch (getSizeCode()) {
            case 0:
            case 1:
                return this._grpprl[this._gOffset];
            case 2:
            case 4:
            case 5:
                return LittleEndian.getShort(this._grpprl, this._gOffset);
            case 3:
                return LittleEndian.getInt(this._grpprl, this._gOffset);
            case 6:
                byte b = this._grpprl[this._gOffset + 1];
                byte[] bArr = new byte[4];
                for (int i = 0; i < b; i++) {
                    int i2 = this._gOffset;
                    int i3 = i2 + i;
                    byte[] bArr2 = this._grpprl;
                    if (i3 < bArr2.length) {
                        bArr[i] = bArr2[i2 + 1 + i];
                    }
                }
                return LittleEndian.getInt(bArr, 0);
            case 7:
                byte[] bArr3 = this._grpprl;
                int i4 = this._gOffset;
                return LittleEndian.getInt(new byte[]{bArr3[i4], bArr3[i4 + 1], bArr3[i4 + 2], 0}, 0);
            default:
                throw new IllegalArgumentException("SPRM contains an invalid size code");
        }
    }

    public short getOperandShortSigned() {
        int sizeCode = getSizeCode();
        if (sizeCode == 2 || sizeCode == 4 || sizeCode == 5) {
            return LittleEndian.getShort(this._grpprl, this._gOffset);
        }
        throw new UnsupportedOperationException("Current SPRM doesn't have signed short operand: " + this);
    }

    public int getOperation() {
        return BITFIELD_OP.getValue(this._value);
    }

    public int getSizeCode() {
        return BITFIELD_SIZECODE.getValue(this._value);
    }

    public int getType() {
        return BITFIELD_TYPE.getValue(this._value);
    }

    public int size() {
        return this._size;
    }

    public byte[] toByteArray() {
        byte[] bArr = this._grpprl;
        int i = this._offset;
        return Arrays.copyOfRange(bArr, i, size() + i);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[SPRM] (0x");
        sb.append(Integer.toHexString(this._value & 65535));
        sb.append("): ");
        try {
            sb.append(getOperand());
        } catch (Exception unused) {
            sb.append("(error)");
        }
        return sb.toString();
    }
}
