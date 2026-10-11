package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.SlideAtom;
import org.apache.poi.hslf.record.SlideAtomLayout;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class SlideAtom extends RecordAtom {
    public static final int USES_MASTER_SLIDE_ID = Integer.MIN_VALUE;
    private static long _type = 1007;
    private byte[] _header;
    private boolean followMasterBackground;
    private boolean followMasterObjects;
    private boolean followMasterScheme;
    private SlideAtomLayout layoutAtom;
    private int masterID;
    private int notesID;
    private byte[] reserved;

    public SlideAtom(byte[] bArr, int i, int i2) {
        i2 = i2 < 30 ? 30 : i2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        int i4 = i + 12 + 8;
        this.layoutAtom = new SlideAtomLayout(Arrays.copyOfRange(bArr, i3, i4));
        this.masterID = LittleEndian.getInt(bArr, i4);
        this.notesID = LittleEndian.getInt(bArr, i + 16 + 8);
        int uShort = LittleEndian.getUShort(bArr, i + 20 + 8);
        this.followMasterBackground = (uShort & 4) == 4;
        this.followMasterScheme = (uShort & 2) == 2;
        this.followMasterObjects = (uShort & 1) == 1;
        this.reserved = IOUtils.safelyClone(bArr, i + 30, i2 - 30, RecordAtom.getMaxRecordLength());
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
        return GenericRecordUtil.getGenericProperties("masterID", new Supplier() { // from class: com.sunia.HTREnginev2.ktm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SlideAtom.this.getMasterID());
            }
        }, "notesID", new Supplier() { // from class: com.sunia.HTREnginev2.ltm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SlideAtom.this.getNotesID());
            }
        }, "followMasterObjects", new Supplier() { // from class: com.sunia.HTREnginev2.mtm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(SlideAtom.this.getFollowMasterObjects());
            }
        }, "followMasterScheme", new Supplier() { // from class: com.sunia.HTREnginev2.ntm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(SlideAtom.this.getFollowMasterScheme());
            }
        }, "followMasterBackground", new Supplier() { // from class: com.sunia.HTREnginev2.otm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(SlideAtom.this.getFollowMasterBackground());
            }
        }, "layoutAtom", new Supplier() { // from class: com.sunia.HTREnginev2.ptm
            @Override // java.util.function.Supplier
            public final Object get() {
                return SlideAtom.this.getSSlideLayoutAtom();
            }
        });
    }

    public int getMasterID() {
        return this.masterID;
    }

    public int getNotesID() {
        return this.notesID;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public SlideAtomLayout getSSlideLayoutAtom() {
        return this.layoutAtom;
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

    public void setMasterID(int i) {
        this.masterID = i;
    }

    public void setNotesID(int i) {
        this.notesID = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        this.layoutAtom.writeOut(outputStream);
        Record.writeLittleEndian(this.masterID, outputStream);
        Record.writeLittleEndian(this.notesID, outputStream);
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

    public SlideAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 2);
        LittleEndian.putUShort(this._header, 2, (int) _type);
        LittleEndian.putInt(this._header, 4, 24);
        SlideAtomLayout slideAtomLayout = new SlideAtomLayout(new byte[12]);
        this.layoutAtom = slideAtomLayout;
        slideAtomLayout.setGeometryType(SlideAtomLayout.SlideLayoutType.BLANK_SLIDE);
        this.followMasterObjects = true;
        this.followMasterScheme = true;
        this.followMasterBackground = true;
        this.masterID = Integer.MIN_VALUE;
        this.notesID = 0;
        this.reserved = new byte[2];
    }
}
