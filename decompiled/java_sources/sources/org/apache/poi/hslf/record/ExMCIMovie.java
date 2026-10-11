package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class ExMCIMovie extends RecordContainer {
    private byte[] _header;
    private ExVideoContainer exVideo;

    public ExMCIMovie(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        Record record = this._children[0];
        if (record instanceof ExVideoContainer) {
            this.exVideo = (ExVideoContainer) record;
        } else {
            Record.LOG.atError().log("First child record wasn't a ExVideoContainer, was of type {}", Unbox.box(record.getRecordType()));
        }
    }

    public ExVideoContainer getExVideo() {
        return this.exVideo;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExMCIMovie.typeID;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], getRecordType(), this._children, outputStream);
    }

    public ExMCIMovie() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        ExVideoContainer exVideoContainer = new ExVideoContainer();
        this.exVideo = exVideoContainer;
        this._children = new Record[]{exVideoContainer};
    }
}
