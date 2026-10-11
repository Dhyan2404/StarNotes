package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;

/* loaded from: classes12.dex */
public final class Environment extends PositionDependentRecordContainer {
    private static long _type = 1010;
    private byte[] _header;
    private FontCollection fontCollection;
    private TxMasterStyleAtom txmaster;

    public Environment(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        Record[] findChildRecords = Record.findChildRecords(bArr, i3, i2 - 8);
        this._children = findChildRecords;
        for (Record record : findChildRecords) {
            if (record instanceof FontCollection) {
                this.fontCollection = (FontCollection) record;
            } else if (record instanceof TxMasterStyleAtom) {
                this.txmaster = (TxMasterStyleAtom) record;
            }
        }
        if (this.fontCollection == null) {
            throw new IllegalStateException("Environment didn't contain a FontCollection record!");
        }
    }

    public FontCollection getFontCollection() {
        return this.fontCollection;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public TxMasterStyleAtom getTxMasterStyleAtom() {
        return this.txmaster;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], _type, this._children, outputStream);
    }
}
