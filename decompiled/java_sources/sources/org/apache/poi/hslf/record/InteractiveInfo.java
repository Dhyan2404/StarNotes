package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class InteractiveInfo extends RecordContainer {
    private static final long _type = RecordTypes.InteractiveInfo.typeID;
    private byte[] _header;
    private InteractiveInfoAtom infoAtom;

    public InteractiveInfo(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        Record[] recordArr = this._children;
        if (recordArr != null && recordArr.length != 0) {
            Record record = recordArr[0];
            if (record instanceof InteractiveInfoAtom) {
                this.infoAtom = (InteractiveInfoAtom) record;
                return;
            }
        }
        Record.LOG.atWarn().log("First child record wasn't a InteractiveInfoAtom - leaving this atom in an invalid state...");
    }

    public InteractiveInfoAtom getInteractiveInfoAtom() {
        return this.infoAtom;
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

    public InteractiveInfo() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._children = new Record[1];
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) _type);
        InteractiveInfoAtom interactiveInfoAtom = new InteractiveInfoAtom();
        this.infoAtom = interactiveInfoAtom;
        this._children[0] = interactiveInfoAtom;
    }
}
