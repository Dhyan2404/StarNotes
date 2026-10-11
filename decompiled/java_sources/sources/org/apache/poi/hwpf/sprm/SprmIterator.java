package org.apache.poi.hwpf.sprm;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class SprmIterator {
    private byte[] _grpprl;
    int _offset;

    public SprmIterator(byte[] bArr, int i) {
        this._grpprl = bArr;
        this._offset = i;
    }

    public boolean hasNext() {
        return this._offset < this._grpprl.length - 1;
    }

    public SprmOperation next() {
        SprmOperation sprmOperation = new SprmOperation(this._grpprl, this._offset);
        this._offset += sprmOperation.size();
        return sprmOperation;
    }
}
