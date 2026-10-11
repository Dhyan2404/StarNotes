package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class HeadersFootersContainer extends RecordContainer {
    public static final int FOOTERATOM = 2;
    public static final int HEADERATOM = 1;
    public static final short NotesHeadersFootersContainer = 79;
    public static final short SlideHeadersFootersContainer = 63;
    public static final int USERDATEATOM = 0;
    private byte[] _header;
    private CString csDate;
    private CString csFooter;
    private CString csHeader;
    private HeadersFootersAtom hdAtom;

    public HeadersFootersContainer(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        for (Record record : this._children) {
            if (record instanceof HeadersFootersAtom) {
                this.hdAtom = (HeadersFootersAtom) record;
            } else if (record instanceof CString) {
                CString cString = (CString) record;
                int options = cString.getOptions() >> 4;
                if (options == 0) {
                    this.csDate = cString;
                } else if (options == 1) {
                    this.csHeader = cString;
                } else if (options != 2) {
                    Record.LOG.atWarn().log("Unexpected CString.Options in HeadersFootersContainer: {}", Unbox.box(options));
                } else {
                    this.csFooter = cString;
                }
            } else {
                Record.LOG.atWarn().log("Unexpected record in HeadersFootersContainer: {}", record);
            }
        }
    }

    public CString addFooterAtom() {
        CString cString = this.csFooter;
        if (cString != null) {
            return cString;
        }
        CString cString2 = new CString();
        this.csFooter = cString2;
        cString2.setOptions(32);
        Record record = this.hdAtom;
        CString cString3 = this.csHeader;
        if (cString3 != null || (cString3 = this.csDate) != null) {
            record = cString3;
        }
        addChildAfter(this.csFooter, record);
        return this.csFooter;
    }

    public CString addHeaderAtom() {
        CString cString = this.csHeader;
        if (cString != null) {
            return cString;
        }
        CString cString2 = new CString();
        this.csHeader = cString2;
        cString2.setOptions(16);
        addChildAfter(this.csHeader, this.hdAtom);
        return this.csHeader;
    }

    public CString addUserDateAtom() {
        CString cString = this.csDate;
        if (cString != null) {
            return cString;
        }
        CString cString2 = new CString();
        this.csDate = cString2;
        cString2.setOptions(0);
        addChildAfter(this.csDate, this.hdAtom);
        return this.csDate;
    }

    public CString getFooterAtom() {
        return this.csFooter;
    }

    public CString getHeaderAtom() {
        return this.csHeader;
    }

    public HeadersFootersAtom getHeadersFootersAtom() {
        return this.hdAtom;
    }

    public int getOptions() {
        return LittleEndian.getShort(this._header, 0);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.HeadersFooters.typeID;
    }

    public CString getUserDateAtom() {
        return this.csDate;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], getRecordType(), this._children, outputStream);
    }

    public HeadersFootersContainer(short s) {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putShort(bArr, 0, s);
        LittleEndian.putShort(this._header, 2, (short) getRecordType());
        HeadersFootersAtom headersFootersAtom = new HeadersFootersAtom();
        this.hdAtom = headersFootersAtom;
        this._children = new Record[]{headersFootersAtom};
        this.csFooter = null;
        this.csHeader = null;
        this.csDate = null;
    }
}
