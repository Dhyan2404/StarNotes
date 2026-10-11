package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class LFOData {
    private int _cp;
    private ListFormatOverrideLevel[] _rgLfoLvl;

    public LFOData() {
        this._cp = 0;
        this._rgLfoLvl = new ListFormatOverrideLevel[0];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LFOData lFOData = (LFOData) obj;
        if (this._cp != lFOData._cp) {
            return false;
        }
        return Arrays.equals(this._rgLfoLvl, lFOData._rgLfoLvl);
    }

    public int getCp() {
        return this._cp;
    }

    public ListFormatOverrideLevel[] getRgLfoLvl() {
        return this._rgLfoLvl;
    }

    public int getSizeInBytes() {
        int i = 4;
        for (ListFormatOverrideLevel listFormatOverrideLevel : this._rgLfoLvl) {
            i += listFormatOverrideLevel.getSizeInBytes();
        }
        return i;
    }

    public int hashCode() {
        return Arrays.deepHashCode(this._rgLfoLvl);
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        LittleEndian.putInt(this._cp, byteArrayOutputStream);
        for (ListFormatOverrideLevel listFormatOverrideLevel : this._rgLfoLvl) {
            byteArrayOutputStream.write(listFormatOverrideLevel.toByteArray());
        }
    }

    public LFOData(byte[] bArr, int i, int i2) {
        if (i2 >= 0) {
            this._cp = LittleEndian.getInt(bArr, i);
            int i3 = i + 4;
            this._rgLfoLvl = new ListFormatOverrideLevel[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                this._rgLfoLvl[i4] = new ListFormatOverrideLevel(bArr, i3);
                i3 += this._rgLfoLvl[i4].getSizeInBytes();
            }
            return;
        }
        throw new IllegalArgumentException("Cannot create LFOData with negative count");
    }
}
