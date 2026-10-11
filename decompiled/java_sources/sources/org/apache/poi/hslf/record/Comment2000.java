package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class Comment2000 extends RecordContainer {
    private static final long _type = RecordTypes.Comment2000.typeID;
    private byte[] _header;
    private CString authorInitialsRecord;
    private CString authorRecord;
    private Comment2000Atom commentAtom;
    private CString commentRecord;

    public Comment2000(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        for (Record record : this._children) {
            if (record instanceof CString) {
                CString cString = (CString) record;
                int options = cString.getOptions() >> 4;
                if (options == 0) {
                    this.authorRecord = cString;
                } else if (options == 1) {
                    this.commentRecord = cString;
                } else if (options == 2) {
                    this.authorInitialsRecord = cString;
                }
            } else if (record instanceof Comment2000Atom) {
                this.commentAtom = (Comment2000Atom) record;
            } else {
                Record.LOG.atWarn().log("Unexpected record with type={} in Comment2000: {}", Unbox.box(record.getRecordType()), record.getClass().getName());
            }
        }
    }

    public String getAuthor() {
        CString cString = this.authorRecord;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    public String getAuthorInitials() {
        CString cString = this.authorInitialsRecord;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    public Comment2000Atom getComment2000Atom() {
        return this.commentAtom;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public String getText() {
        CString cString = this.commentRecord;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    public void setAuthor(String str) {
        this.authorRecord.setText(str);
    }

    public void setAuthorInitials(String str) {
        this.authorInitialsRecord.setText(str);
    }

    public void setText(String str) {
        this.commentRecord.setText(str);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], _type, this._children, outputStream);
    }

    public Comment2000() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._children = new Record[4];
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) _type);
        CString cString = new CString();
        CString cString2 = new CString();
        CString cString3 = new CString();
        cString.setOptions(0);
        cString2.setOptions(16);
        cString3.setOptions(32);
        Record[] recordArr = this._children;
        recordArr[0] = cString;
        recordArr[1] = cString2;
        recordArr[2] = cString3;
        recordArr[3] = new Comment2000Atom();
        findInterestingChildren();
    }
}
