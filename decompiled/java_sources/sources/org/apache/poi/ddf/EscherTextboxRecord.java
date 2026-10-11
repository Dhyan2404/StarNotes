package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherTextboxRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class EscherTextboxRecord extends EscherRecord {
    private static int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static int MAX_RECORD_LENGTH = 100000;
    private byte[] thedata;
    public static final short RECORD_ID = EscherRecordTypes.CLIENT_TEXTBOX.typeID;
    private static final byte[] NO_BYTES = new byte[0];

    public EscherTextboxRecord() {
        this.thedata = NO_BYTES;
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        this.thedata = IOUtils.safelyClone(bArr, i + 8, readHeader, MAX_RECORD_LENGTH);
        return readHeader + 8;
    }

    public byte[] getData() {
        return this.thedata;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.owf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherTextboxRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "isContainer", new Supplier() { // from class: com.sunia.HTREnginev2.pwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(EscherTextboxRecord.this.isContainerRecord());
            }
        }, "extraData", new Supplier() { // from class: com.sunia.HTREnginev2.qwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherTextboxRecord.this.getData();
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.CLIENT_TEXTBOX;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.CLIENT_TEXTBOX.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return this.thedata.length + 8;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        LittleEndian.putInt(bArr, i + 4, this.thedata.length);
        byte[] bArr2 = this.thedata;
        int i2 = i + 8;
        System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
        int length = i2 + this.thedata.length;
        int i3 = length - i;
        escherSerializationListener.afterRecordSerialize(length, getRecordId(), i3, this);
        if (i3 == getRecordSize()) {
            return i3;
        }
        throw new RecordFormatException(i3 + " bytes written but getRecordSize() reports " + getRecordSize());
    }

    public void setData(byte[] bArr, int i, int i2) {
        this.thedata = IOUtils.safelyClone(bArr, i, i2, MAX_RECORD_LENGTH);
    }

    public void setData(byte[] bArr) {
        setData(bArr, 0, bArr.length);
    }

    public EscherTextboxRecord(EscherTextboxRecord escherTextboxRecord) {
        super(escherTextboxRecord);
        byte[] bArr = NO_BYTES;
        this.thedata = bArr;
        byte[] bArr2 = escherTextboxRecord.thedata;
        this.thedata = bArr2 != null ? (byte[]) bArr2.clone() : bArr;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherTextboxRecord copy() {
        return new EscherTextboxRecord(this);
    }
}
