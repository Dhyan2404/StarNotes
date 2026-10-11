package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class FormattedDiskPage {
    protected int _crun;
    protected byte[] _fkp;
    protected int _offset;

    public FormattedDiskPage() {
    }

    public int getEnd(int i) {
        return LittleEndian.getInt(this._fkp, this._offset + ((i + 1) * 4));
    }

    public abstract byte[] getGrpprl(int i);

    public int getStart(int i) {
        return LittleEndian.getInt(this._fkp, this._offset + (i * 4));
    }

    public int size() {
        return this._crun;
    }

    public FormattedDiskPage(byte[] bArr, int i) {
        this._crun = LittleEndian.getUByte(bArr, i + 511);
        this._fkp = bArr;
        this._offset = i;
    }
}
