package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.ExMediaAtom;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class ExMediaAtom extends RecordAtom {
    private static final int[] FLAG_MASKS = {1, 2, 4};
    private static final String[] FLAG_NAMES = {"LOOP", "REWIND", "NARRATION"};
    public static final int fLoop = 1;
    public static final int fNarration = 4;
    public static final int fRewind = 2;
    private byte[] _header;
    private byte[] _recdata;

    public ExMediaAtom() {
        this._recdata = new byte[8];
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._recdata.length);
    }

    public boolean getFlag(int i) {
        return (getMask() & i) != 0;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("objectId", new Supplier() { // from class: com.sunia.HTREnginev2.qxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExMediaAtom.this.getObjectId());
            }
        }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.rxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExMediaAtom.this.getMask());
            }
        }, FLAG_MASKS, FLAG_NAMES));
    }

    public int getMask() {
        return LittleEndian.getInt(this._recdata, 4);
    }

    public int getObjectId() {
        return LittleEndian.getInt(this._recdata, 0);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExMediaAtom.typeID;
    }

    public void setFlag(int i, boolean z) {
        int mask = getMask();
        setMask(z ? i | mask : (~i) & mask);
    }

    public void setMask(int i) {
        LittleEndian.putInt(this._recdata, 4, i);
    }

    public void setObjectId(int i) {
        LittleEndian.putInt(this._recdata, 0, i);
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._recdata);
    }

    public ExMediaAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._recdata = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }
}
