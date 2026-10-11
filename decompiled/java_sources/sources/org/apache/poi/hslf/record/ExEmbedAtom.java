package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.ExEmbedAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class ExEmbedAtom extends RecordAtom {
    public static final int DOES_NOT_FOLLOW_COLOR_SCHEME = 0;
    public static final int FOLLOWS_ENTIRE_COLOR_SCHEME = 1;
    public static final int FOLLOWS_TEXT_AND_BACKGROUND_SCHEME = 2;
    private byte[] _data;
    private byte[] _header;

    public ExEmbedAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[8];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFollowColorSchemeString() {
        int followColorScheme = getFollowColorScheme();
        return followColorScheme != 1 ? followColorScheme != 2 ? "DOES_NOT_FOLLOW_COLOR_SCHEME" : "FOLLOWS_TEXT_AND_BACKGROUND_SCHEME" : "FOLLOWS_ENTIRE_COLOR_SCHEME";
    }

    public boolean getCantLockServerB() {
        return this._data[4] != 0;
    }

    public int getFollowColorScheme() {
        return LittleEndian.getInt(this._data, 0);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("followColorScheme", new Supplier() { // from class: com.sunia.HTREnginev2.lxf
            @Override // java.util.function.Supplier
            public final Object get() {
                String followColorSchemeString;
                followColorSchemeString = ExEmbedAtom.this.getFollowColorSchemeString();
                return followColorSchemeString;
            }
        }, "cantLockServer", new Supplier() { // from class: com.sunia.HTREnginev2.mxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ExEmbedAtom.this.getCantLockServerB());
            }
        }, "noSizeToServer", new Supplier() { // from class: com.sunia.HTREnginev2.nxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ExEmbedAtom.this.getNoSizeToServerB());
            }
        }, "isTable", new Supplier() { // from class: com.sunia.HTREnginev2.oxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ExEmbedAtom.this.getIsTable());
            }
        });
    }

    public boolean getIsTable() {
        return this._data[6] != 0;
    }

    public boolean getNoSizeToServerB() {
        return this._data[5] != 0;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExEmbedAtom.typeID;
    }

    public void setCantLockServerB(boolean z) {
        this._data[4] = z ? (byte) 1 : (byte) 0;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public ExEmbedAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        byte[] safelyClone = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
        this._data = safelyClone;
        if (safelyClone.length >= 8) {
            return;
        }
        throw new IllegalArgumentException("The length of the data for a ExEmbedAtom must be at least 4 bytes, but was only " + this._data.length);
    }
}
