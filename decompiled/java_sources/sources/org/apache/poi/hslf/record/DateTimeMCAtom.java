package org.apache.poi.hslf.record;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.DateTimeMCAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class DateTimeMCAtom extends RecordAtom {
    private final byte[] _header;
    private int index;
    private int position;
    private final byte[] unused;

    public DateTimeMCAtom() {
        this.unused = new byte[3];
        byte[] bArr = new byte[8];
        this._header = bArr;
        this.position = 0;
        this.index = 0;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(bArr, 4, 8);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("position", new Supplier() { // from class: com.sunia.HTREnginev2.lve
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DateTimeMCAtom.this.getPosition());
            }
        }, FirebaseAnalytics.Param.INDEX, new Supplier() { // from class: com.sunia.HTREnginev2.mve
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DateTimeMCAtom.this.getIndex());
            }
        });
    }

    public int getIndex() {
        return this.index;
    }

    public int getPosition() {
        return this.position;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.DateTimeMCAtom.typeID;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        LittleEndian.putInt(this.position, outputStream);
        outputStream.write(this.index);
        outputStream.write(this.unused);
    }

    public DateTimeMCAtom(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[3];
        this.unused = bArr2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.position = LittleEndian.getInt(bArr, i3);
        this.index = LittleEndian.getUByte(bArr, i + 12);
        System.arraycopy(bArr, i + 13, bArr2, 0, 3);
    }
}
