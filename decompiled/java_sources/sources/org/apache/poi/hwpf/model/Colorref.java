package org.apache.poi.hwpf.model;

import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class Colorref implements Duplicatable {
    private int value;

    public Colorref() {
        this.value = -1;
    }

    public static Colorref valueOfIco(int i) {
        switch (i) {
            case 1:
                return new Colorref(0);
            case 2:
                return new Colorref(16711680);
            case 3:
                return new Colorref(16776960);
            case 4:
                return new Colorref(65280);
            case 5:
                return new Colorref(16711935);
            case 6:
                return new Colorref(255);
            case 7:
                return new Colorref(65535);
            case 8:
                return new Colorref(16777215);
            case 9:
                return new Colorref(9109504);
            case 10:
                return new Colorref(9145088);
            case 11:
                return new Colorref(25600);
            case 12:
                return new Colorref(9109643);
            case 13:
                return new Colorref(139);
            case 14:
                return new Colorref(52479);
            case 15:
                return new Colorref(11119017);
            case 16:
                return new Colorref(12632256);
            default:
                return new Colorref(0);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((Colorref) obj).value;
    }

    public int getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    public boolean isEmpty() {
        return this.value == -1;
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i, this.value);
    }

    public void setValue(int i) {
        this.value = i;
    }

    public byte[] toByteArray() {
        if (isEmpty()) {
            throw new IllegalStateException("Structure state (EMPTY) is not good for serialization");
        }
        byte[] bArr = new byte[4];
        serialize(bArr, 0);
        return bArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "[COLORREF] EMPTY";
        }
        return "[COLORREF] 0x" + Integer.toHexString(this.value);
    }

    @Override // org.apache.poi.common.Duplicatable
    public Colorref copy() {
        return new Colorref(this);
    }

    public Colorref(Colorref colorref) {
        this.value = colorref.value;
    }

    public Colorref(byte[] bArr, int i) {
        this.value = LittleEndian.getInt(bArr, i);
    }

    public Colorref(int i) {
        this.value = i;
    }
}
