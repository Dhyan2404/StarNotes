package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.SoundData;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class SoundData extends RecordAtom {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000000;
    private static int MAX_RECORD_LENGTH = 100000000;
    private byte[] _data;
    private byte[] _header;

    public SoundData() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[0];
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public byte[] getData() {
        return this._data;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("data", new Supplier() { // from class: com.sunia.HTREnginev2.vvm
            @Override // java.util.function.Supplier
            public final Object get() {
                return SoundData.this.getData();
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.SoundData.typeID;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public SoundData(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._data = IOUtils.safelyClone(bArr, i3, i2 - 8, MAX_RECORD_LENGTH);
    }
}
