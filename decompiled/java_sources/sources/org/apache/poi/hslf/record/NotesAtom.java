package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.NotesAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class NotesAtom extends RecordAtom {
    private static long _type = 1009;
    private byte[] _header;
    private boolean followMasterBackground;
    private boolean followMasterObjects;
    private boolean followMasterScheme;
    private byte[] reserved;
    private int slideID;

    public NotesAtom(byte[] bArr, int i, int i2) {
        i2 = i2 < 8 ? 8 : i2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.slideID = LittleEndian.getInt(bArr, i3);
        int uShort = LittleEndian.getUShort(bArr, i + 12);
        this.followMasterBackground = (uShort & 4) == 4;
        this.followMasterScheme = (uShort & 2) == 2;
        this.followMasterObjects = (uShort & 1) == 1;
        this.reserved = IOUtils.safelyClone(bArr, i + 14, i2 - 14, RecordAtom.getMaxRecordLength());
    }

    public boolean getFollowMasterBackground() {
        return this.followMasterBackground;
    }

    public boolean getFollowMasterObjects() {
        return this.followMasterObjects;
    }

    public boolean getFollowMasterScheme() {
        return this.followMasterScheme;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("slideId", new Supplier() { // from class: com.sunia.HTREnginev2.d5k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(NotesAtom.this.getSlideID());
            }
        }, "followMasterObjects", new Supplier() { // from class: com.sunia.HTREnginev2.e5k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(NotesAtom.this.getFollowMasterObjects());
            }
        }, "followMasterScheme", new Supplier() { // from class: com.sunia.HTREnginev2.f5k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(NotesAtom.this.getFollowMasterScheme());
            }
        }, "followMasterBackground", new Supplier() { // from class: com.sunia.HTREnginev2.g5k
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(NotesAtom.this.getFollowMasterBackground());
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public int getSlideID() {
        return this.slideID;
    }

    public void setFollowMasterBackground(boolean z) {
        this.followMasterBackground = z;
    }

    public void setFollowMasterObjects(boolean z) {
        this.followMasterObjects = z;
    }

    public void setFollowMasterScheme(boolean z) {
        this.followMasterScheme = z;
    }

    public void setSlideID(int i) {
        this.slideID = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        Record.writeLittleEndian(this.slideID, outputStream);
        short s = this.followMasterObjects ? (short) 1 : (short) 0;
        if (this.followMasterScheme) {
            s = (short) (s + 2);
        }
        if (this.followMasterBackground) {
            s = (short) (s + 4);
        }
        Record.writeLittleEndian(s, outputStream);
        outputStream.write(this.reserved);
    }
}
