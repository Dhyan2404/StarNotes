package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class VBAInfoContainer extends RecordContainer {
    private static final long _type = RecordTypes.VBAInfo.typeID;
    private byte[] _header;

    public VBAInfoContainer(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], _type, this._children, outputStream);
    }

    private VBAInfoContainer() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._children = new Record[0];
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) _type);
        findInterestingChildren();
    }
}
