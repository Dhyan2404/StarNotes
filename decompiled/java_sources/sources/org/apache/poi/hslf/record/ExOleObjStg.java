package org.apache.poi.hslf.record;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;
import org.apache.commons.io.input.BoundedInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hslf.record.ExOleObjStg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class ExOleObjStg extends PositionDependentRecordAtom implements PersistRecord {
    private static final int MAX_RECORD_LENGTH = 100000000;
    private byte[] _data;
    private final byte[] _header;
    private int _persistId;

    public ExOleObjStg() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[0];
        LittleEndian.putShort(bArr, 0, (short) 16);
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(bArr, 4, this._data.length);
    }

    public InputStream getData() {
        if (!isCompressed()) {
            byte[] bArr = this._data;
            return new ByteArrayInputStream(bArr, 0, bArr.length);
        }
        int i = LittleEndian.getInt(this._data);
        byte[] bArr2 = this._data;
        return new BoundedInputStream(new InflaterInputStream(new ByteArrayInputStream(bArr2, 4, bArr2.length)), i);
    }

    public int getDataLength() {
        return isCompressed() ? LittleEndian.getInt(this._data, 0) : this._data.length;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("compressed", new Supplier() { // from class: com.sunia.HTREnginev2.ayf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(ExOleObjStg.this.isCompressed());
            }
        }, "persistId", new Supplier() { // from class: com.sunia.HTREnginev2.byf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExOleObjStg.this.getPersistId());
            }
        }, "dataLength", new Supplier() { // from class: com.sunia.HTREnginev2.cyf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExOleObjStg.this.getDataLength());
            }
        }, "data", new Supplier() { // from class: com.sunia.HTREnginev2.dyf
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExOleObjStg.this.getData();
            }
        });
    }

    @Override // org.apache.poi.hslf.record.PersistRecord
    public int getPersistId() {
        return this._persistId;
    }

    public byte[] getRawData() {
        return this._data;
    }

    public int getRecordInstance() {
        return LittleEndian.getUShort(this._header, 0) >>> 4;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExOleObjStg.typeID;
    }

    public boolean isCompressed() {
        return LittleEndian.getShort(this._header, 0) != 0;
    }

    public void setData(byte[] bArr) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(unsynchronizedByteArrayOutputStream);
            try {
                byte[] bArr2 = new byte[4];
                LittleEndian.putInt(bArr2, 0, bArr.length);
                unsynchronizedByteArrayOutputStream.write(bArr2);
                deflaterOutputStream.write(bArr, 0, bArr.length);
                deflaterOutputStream.finish();
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                this._data = byteArray;
                LittleEndian.putInt(this._header, 4, byteArray.length);
                deflaterOutputStream.close();
                unsynchronizedByteArrayOutputStream.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.hslf.record.PersistRecord
    public void setPersistId(int i) {
        this._persistId = i;
    }

    @Override // org.apache.poi.hslf.record.PositionDependentRecordAtom, org.apache.poi.hslf.record.PositionDependentRecord
    public void updateOtherRecordReferences(Map<Integer, Integer> map) {
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public ExOleObjStg(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._data = IOUtils.safelyClone(bArr, i3, i2 - 8, 100000000);
    }
}
