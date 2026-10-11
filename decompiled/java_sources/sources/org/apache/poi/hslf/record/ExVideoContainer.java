package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class ExVideoContainer extends RecordContainer {
    private byte[] _header;
    private ExMediaAtom mediaAtom;
    private CString pathAtom;

    public ExVideoContainer(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        Record record = this._children[0];
        if (record instanceof ExMediaAtom) {
            this.mediaAtom = (ExMediaAtom) record;
        } else {
            Record.LOG.atError().log("First child record wasn't a ExMediaAtom, was of type {}", Unbox.box(record.getRecordType()));
        }
        Record record2 = this._children[1];
        if (record2 instanceof CString) {
            this.pathAtom = (CString) record2;
        } else {
            Record.LOG.atError().log("Second child record wasn't a CString, was of type {}", Unbox.box(record2.getRecordType()));
        }
    }

    public ExMediaAtom getExMediaAtom() {
        return this.mediaAtom;
    }

    public CString getPathAtom() {
        return this.pathAtom;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExVideoContainer.typeID;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], getRecordType(), this._children, outputStream);
    }

    public ExVideoContainer() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        Record[] recordArr = new Record[2];
        this._children = recordArr;
        ExMediaAtom exMediaAtom = new ExMediaAtom();
        this.mediaAtom = exMediaAtom;
        recordArr[0] = exMediaAtom;
        Record[] recordArr2 = this._children;
        CString cString = new CString();
        this.pathAtom = cString;
        recordArr2[1] = cString;
    }
}
