package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class ExHyperlink extends RecordContainer {
    private static final long _type = RecordTypes.ExHyperlink.typeID;
    private byte[] _header;
    private ExHyperlinkAtom linkAtom;
    private CString linkDetailsA;
    private CString linkDetailsB;

    public ExHyperlink(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        Record record = this._children[0];
        if (record instanceof ExHyperlinkAtom) {
            this.linkAtom = (ExHyperlinkAtom) record;
        } else {
            Record.LOG.atError().log("First child record wasn't a ExHyperlinkAtom, was of type {}", Unbox.box(record.getRecordType()));
        }
        int i = 1;
        while (true) {
            Record[] recordArr = this._children;
            if (i >= recordArr.length) {
                return;
            }
            Record record2 = recordArr[i];
            if (!(record2 instanceof CString)) {
                Record.LOG.atError().log("Record after ExHyperlinkAtom wasn't a CString, was of type {}", Unbox.box(record2.getRecordType()));
            } else if (this.linkDetailsA == null) {
                this.linkDetailsA = (CString) record2;
            } else {
                this.linkDetailsB = (CString) record2;
            }
            i++;
        }
    }

    public String _getDetailsA() {
        CString cString = this.linkDetailsA;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    public String _getDetailsB() {
        CString cString = this.linkDetailsB;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    public ExHyperlinkAtom getExHyperlinkAtom() {
        return this.linkAtom;
    }

    public String getLinkTitle() {
        CString cString = this.linkDetailsA;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    public String getLinkURL() {
        CString cString = this.linkDetailsB;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public void setLinkOptions(int i) {
        CString cString = this.linkDetailsB;
        if (cString != null) {
            cString.setOptions(i);
        }
    }

    public void setLinkTitle(String str) {
        CString cString = this.linkDetailsA;
        if (cString != null) {
            cString.setText(str);
        }
    }

    public void setLinkURL(String str) {
        CString cString = this.linkDetailsB;
        if (cString != null) {
            cString.setText(str);
        }
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], _type, this._children, outputStream);
    }

    public ExHyperlink() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._children = new Record[3];
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) _type);
        CString cString = new CString();
        CString cString2 = new CString();
        cString.setOptions(0);
        cString2.setOptions(16);
        this._children[0] = new ExHyperlinkAtom();
        Record[] recordArr = this._children;
        recordArr[1] = cString;
        recordArr[2] = cString2;
        findInterestingChildren();
    }
}
