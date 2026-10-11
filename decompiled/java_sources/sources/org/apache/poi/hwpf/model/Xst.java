package org.apache.poi.hwpf.model;

import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class Xst {
    private int _cch;
    private char[] _rgtchar;

    public Xst() {
        this._cch = 0;
        this._rgtchar = new char[0];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Xst xst = (Xst) obj;
        return this._cch == xst._cch && Arrays.equals(this._rgtchar, xst._rgtchar);
    }

    public String getAsJavaString() {
        return new String(this._rgtchar);
    }

    public int getCch() {
        return this._cch;
    }

    public char[] getRgtchar() {
        return this._rgtchar;
    }

    public int getSize() {
        return (this._rgtchar.length * 2) + 2;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{Integer.valueOf(this._cch), this._rgtchar});
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putUShort(bArr, i, this._cch);
        int i2 = i + 2;
        for (char c : this._rgtchar) {
            LittleEndian.putShort(bArr, i2, (short) c);
            i2 += 2;
        }
    }

    public String toString() {
        return "Xst [" + this._cch + "; " + Arrays.toString(this._rgtchar) + IteratorUtils.f104924b;
    }

    public Xst(byte[] bArr, int i) {
        int uShort = LittleEndian.getUShort(bArr, i);
        this._cch = uShort;
        int i2 = i + 2;
        this._rgtchar = new char[uShort];
        for (int i3 = 0; i3 < this._cch; i3++) {
            this._rgtchar[i3] = (char) LittleEndian.getShort(bArr, i2);
            i2 += 2;
        }
    }

    public Xst(String str) {
        this._cch = str.length();
        this._rgtchar = str.toCharArray();
    }
}
