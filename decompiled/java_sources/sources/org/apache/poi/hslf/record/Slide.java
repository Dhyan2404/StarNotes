package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class Slide extends SheetContainer {
    private static long _type = 1006;
    private ColorSchemeAtom _colorScheme;
    private byte[] _header;
    private PPDrawing ppDrawing;
    private SlideAtom slideAtom;

    public Slide(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        Record[] findChildRecords = Record.findChildRecords(bArr, i3, i2 - 8);
        this._children = findChildRecords;
        for (Record record : findChildRecords) {
            if (record instanceof SlideAtom) {
                this.slideAtom = (SlideAtom) record;
            } else if (record instanceof PPDrawing) {
                this.ppDrawing = (PPDrawing) record;
            }
            if (this.ppDrawing != null && (record instanceof ColorSchemeAtom)) {
                this._colorScheme = (ColorSchemeAtom) record;
            }
        }
    }

    @Override // org.apache.poi.hslf.record.SheetContainer
    public ColorSchemeAtom getColorScheme() {
        return this._colorScheme;
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

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], _type, this._children, outputStream);
    }

    public Slide() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 15);
        LittleEndian.putUShort(this._header, 2, (int) _type);
        LittleEndian.putInt(this._header, 4, 0);
        this.slideAtom = new SlideAtom();
        this.ppDrawing = new PPDrawing();
        this._children = new Record[]{this.slideAtom, this.ppDrawing, new ColorSchemeAtom()};
    }
}
