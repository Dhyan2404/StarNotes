package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class ExEmbed extends RecordContainer {
    private final byte[] _header;
    private CString clipboardName;
    private RecordAtom embedAtom;
    private CString menuName;
    private ExOleObjAtom oleObjAtom;
    private CString progId;

    public ExEmbed(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        Record record = this._children[0];
        if (record instanceof ExEmbedAtom) {
            this.embedAtom = (ExEmbedAtom) record;
        } else {
            Record.LOG.atError().log("First child record wasn't a ExEmbedAtom, was of type {}", Unbox.box(record.getRecordType()));
        }
        Record record2 = this._children[1];
        if (record2 instanceof ExOleObjAtom) {
            this.oleObjAtom = (ExOleObjAtom) record2;
        } else {
            Record.LOG.atError().log("Second child record wasn't a ExOleObjAtom, was of type {}", Unbox.box(record2.getRecordType()));
        }
        int i = 2;
        while (true) {
            Record[] recordArr = this._children;
            if (i >= recordArr.length) {
                return;
            }
            Record record3 = recordArr[i];
            if (record3 instanceof CString) {
                CString cString = (CString) record3;
                int options = cString.getOptions() >> 4;
                if (options == 1) {
                    this.menuName = cString;
                } else if (options == 2) {
                    this.progId = cString;
                } else if (options == 3) {
                    this.clipboardName = cString;
                }
            }
            i++;
        }
    }

    private CString safeCString(CString cString, int i) {
        if (cString == null) {
            cString = new CString();
            cString.setOptions(i << 4);
        }
        Record[] recordArr = this._children;
        int length = recordArr.length;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            if (recordArr[i2] == cString) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            appendChildRecord(cString);
        }
        return cString;
    }

    public String getClipboardName() {
        CString cString = this.clipboardName;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    public ExEmbedAtom getExEmbedAtom() {
        return (ExEmbedAtom) this.embedAtom;
    }

    public ExOleObjAtom getExOleObjAtom() {
        return this.oleObjAtom;
    }

    public String getMenuName() {
        CString cString = this.menuName;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    public String getProgId() {
        CString cString = this.progId;
        if (cString == null) {
            return null;
        }
        return cString.getText();
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExEmbed.typeID;
    }

    public void setClipboardName(String str) {
        CString safeCString = safeCString(this.clipboardName, 3);
        this.clipboardName = safeCString;
        safeCString.setText(str);
    }

    public void setMenuName(String str) {
        CString safeCString = safeCString(this.menuName, 1);
        this.menuName = safeCString;
        safeCString.setText(str);
    }

    public void setProgId(String str) {
        CString safeCString = safeCString(this.progId, 2);
        this.progId = safeCString;
        safeCString.setText(str);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], getRecordType(), this._children, outputStream);
    }

    public ExEmbed(RecordAtom recordAtom) {
        this();
        Record[] recordArr = this._children;
        this.embedAtom = recordAtom;
        recordArr[0] = recordAtom;
    }

    public ExEmbed() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._children = new Record[5];
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        CString cString = new CString();
        cString.setOptions(16);
        CString cString2 = new CString();
        cString2.setOptions(32);
        CString cString3 = new CString();
        cString3.setOptions(48);
        this._children[0] = new ExEmbedAtom();
        this._children[1] = new ExOleObjAtom();
        Record[] recordArr = this._children;
        recordArr[2] = cString;
        recordArr[3] = cString2;
        recordArr[4] = cString3;
        findInterestingChildren();
    }
}
