package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class ExObjList extends RecordContainer {
    private static final long _type = RecordTypes.ExObjList.typeID;
    private byte[] _header;
    private ExObjListAtom exObjListAtom;

    public ExObjList(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        findInterestingChildren();
    }

    private void findInterestingChildren() {
        Record record = this._children[0];
        if (record instanceof ExObjListAtom) {
            this.exObjListAtom = (ExObjListAtom) record;
            return;
        }
        throw new IllegalStateException("First child record wasn't a ExObjListAtom, was of type " + this._children[0].getRecordType());
    }

    public ExHyperlink get(int i) {
        for (Record record : this._children) {
            if (record instanceof ExHyperlink) {
                ExHyperlink exHyperlink = (ExHyperlink) record;
                if (exHyperlink.getExHyperlinkAtom() != null && exHyperlink.getExHyperlinkAtom().getNumber() == i) {
                    return exHyperlink;
                }
            }
        }
        return null;
    }

    public ExHyperlink[] getExHyperlinks() {
        ArrayList arrayList = new ArrayList();
        for (Record record : this._children) {
            if (record instanceof ExHyperlink) {
                arrayList.add((ExHyperlink) record);
            }
        }
        return (ExHyperlink[]) arrayList.toArray(new ExHyperlink[0]);
    }

    public ExObjListAtom getExObjListAtom() {
        return this.exObjListAtom;
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

    public ExObjList() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._children = new Record[1];
        bArr[0] = 15;
        LittleEndian.putShort(bArr, 2, (short) _type);
        this._children[0] = new ExObjListAtom();
        findInterestingChildren();
    }
}
