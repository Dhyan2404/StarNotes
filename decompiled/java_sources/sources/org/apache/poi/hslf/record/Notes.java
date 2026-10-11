package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;

/* loaded from: classes12.dex */
public final class Notes extends SheetContainer {
    private static long _type = 1008;
    private ColorSchemeAtom _colorScheme;
    private byte[] _header;
    private NotesAtom notesAtom;
    private PPDrawing ppDrawing;

    public Notes(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        Record[] findChildRecords = Record.findChildRecords(bArr, i3, i2 - 8);
        this._children = findChildRecords;
        for (Record record : findChildRecords) {
            if (record instanceof NotesAtom) {
                this.notesAtom = (NotesAtom) record;
            }
            if (record instanceof PPDrawing) {
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

    public NotesAtom getNotesAtom() {
        return this.notesAtom;
    }

    @Override // org.apache.poi.hslf.record.SheetContainer
    public PPDrawing getPPDrawing() {
        return this.ppDrawing;
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
}
