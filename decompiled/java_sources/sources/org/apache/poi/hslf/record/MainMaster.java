package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes12.dex */
public final class MainMaster extends SheetContainer {
    private static long _type = 1016;
    private ColorSchemeAtom _colorScheme;
    private byte[] _header;
    private ColorSchemeAtom[] clrscheme;
    private PPDrawing ppDrawing;
    private SlideAtom slideAtom;
    private TxMasterStyleAtom[] txmasters;

    public MainMaster(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._children = Record.findChildRecords(bArr, i3, i2 - 8);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Record record : this._children) {
            if (record instanceof SlideAtom) {
                this.slideAtom = (SlideAtom) record;
            } else if (record instanceof PPDrawing) {
                this.ppDrawing = (PPDrawing) record;
            } else if (record instanceof TxMasterStyleAtom) {
                arrayList.add((TxMasterStyleAtom) record);
            } else if (record instanceof ColorSchemeAtom) {
                arrayList2.add((ColorSchemeAtom) record);
            }
            if (this.ppDrawing != null && (record instanceof ColorSchemeAtom)) {
                this._colorScheme = (ColorSchemeAtom) record;
            }
        }
        this.txmasters = (TxMasterStyleAtom[]) arrayList.toArray(new TxMasterStyleAtom[0]);
        this.clrscheme = (ColorSchemeAtom[]) arrayList2.toArray(new ColorSchemeAtom[0]);
    }

    @Override // org.apache.poi.hslf.record.SheetContainer
    public ColorSchemeAtom getColorScheme() {
        return this._colorScheme;
    }

    public ColorSchemeAtom[] getColorSchemeAtoms() {
        return this.clrscheme;
    }

    @Override // org.apache.poi.hslf.record.SheetContainer
    public PPDrawing getPPDrawing() {
        return this.ppDrawing;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public SlideAtom getSlideAtom() {
        return this.slideAtom;
    }

    public TxMasterStyleAtom[] getTxMasterStyleAtoms() {
        return this.txmasters;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], _type, this._children, outputStream);
    }
}
