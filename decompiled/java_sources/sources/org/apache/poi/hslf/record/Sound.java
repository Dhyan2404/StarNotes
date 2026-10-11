package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;

/* loaded from: classes12.dex */
public final class Sound extends RecordContainer {
    private SoundData _data;
    private byte[] _header;
    private CString _name;
    private CString _type;

    public Sound(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        Record record = this._children[0];
        if (record instanceof CString) {
            this._name = (CString) record;
        } else {
            Record.LOG.atError().log("First child record wasn't a CString, was of type {}", Unbox.box(record.getRecordType()));
        }
        Record record2 = this._children[1];
        if (record2 instanceof CString) {
            this._type = (CString) record2;
        } else {
            Record.LOG.atError().log("Second child record wasn't a CString, was of type {}", Unbox.box(record2.getRecordType()));
        }
        int i = 2;
        while (true) {
            Record[] recordArr = this._children;
            if (i >= recordArr.length) {
                return;
            }
            Record record3 = recordArr[i];
            if (record3 instanceof SoundData) {
                this._data = (SoundData) record3;
                return;
            }
            i++;
        }
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.Sound.typeID;
    }

    public byte[] getSoundData() {
        SoundData soundData = this._data;
        if (soundData == null) {
            return null;
        }
        return soundData.getData();
    }

    public String getSoundName() {
        return this._name.getText();
    }

    public String getSoundType() {
        return this._type.getText();
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], getRecordType(), this._children, outputStream);
    }
}
