package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class DummyRecordWithChildren extends RecordContainer {
    private byte[] _header;
    private long _type;

    public DummyRecordWithChildren(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._type = LittleEndian.getUShort(r5, 2);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return this._type;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], this._type, this._children, outputStream);
    }
}
