package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherDgRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherDgRecord extends EscherRecord {
    public static final short RECORD_ID = EscherRecordTypes.DG.typeID;
    private int field_1_numShapes;
    private int field_2_lastMSOSPID;

    public EscherDgRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        readHeader(bArr, i);
        int i2 = i + 8;
        this.field_1_numShapes = LittleEndian.getInt(bArr, i2 + 0);
        this.field_2_lastMSOSPID = LittleEndian.getInt(bArr, i2 + 4);
        return getRecordSize();
    }

    public short getDrawingGroupId() {
        return (short) (getOptions() >> 4);
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.ttf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherDgRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "numShapes", new Supplier() { // from class: com.sunia.HTREnginev2.utf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherDgRecord.this.getNumShapes());
            }
        }, "lastMSOSPID", new Supplier() { // from class: com.sunia.HTREnginev2.vtf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherDgRecord.this.getLastMSOSPID());
            }
        }, "drawingGroupId", new Supplier() { // from class: com.sunia.HTREnginev2.wtf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherDgRecord.this.getDrawingGroupId());
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.DG;
    }

    public int getLastMSOSPID() {
        return this.field_2_lastMSOSPID;
    }

    public int getNumShapes() {
        return this.field_1_numShapes;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getRecordId() {
        return RECORD_ID;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.DG.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return 16;
    }

    public void incrementShapeCount() {
        this.field_1_numShapes++;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        LittleEndian.putInt(bArr, i + 4, 8);
        LittleEndian.putInt(bArr, i + 8, this.field_1_numShapes);
        LittleEndian.putInt(bArr, i + 12, this.field_2_lastMSOSPID);
        escherSerializationListener.afterRecordSerialize(i + 16, getRecordId(), getRecordSize(), this);
        return getRecordSize();
    }

    public void setLastMSOSPID(int i) {
        this.field_2_lastMSOSPID = i;
    }

    public void setNumShapes(int i) {
        this.field_1_numShapes = i;
    }

    public EscherDgRecord(EscherDgRecord escherDgRecord) {
        super(escherDgRecord);
        this.field_1_numShapes = escherDgRecord.field_1_numShapes;
        this.field_2_lastMSOSPID = escherDgRecord.field_2_lastMSOSPID;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherDgRecord copy() {
        return new EscherDgRecord(this);
    }
}
