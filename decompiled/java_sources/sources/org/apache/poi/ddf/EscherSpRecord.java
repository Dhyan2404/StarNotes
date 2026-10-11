package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherSpRecord extends EscherRecord {
    public static final int FLAG_BACKGROUND = 1024;
    public static final int FLAG_CHILD = 2;
    public static final int FLAG_CONNECTOR = 256;
    public static final int FLAG_DELETED = 8;
    public static final int FLAG_FLIPHORIZ = 64;
    public static final int FLAG_FLIPVERT = 128;
    public static final int FLAG_GROUP = 1;
    public static final int FLAG_HASSHAPETYPE = 2048;
    public static final int FLAG_HAVEANCHOR = 512;
    public static final int FLAG_HAVEMASTER = 32;
    public static final int FLAG_OLESHAPE = 16;
    public static final int FLAG_PATRIARCH = 4;
    private int field_1_shapeId;
    private int field_2_flags;
    public static final short RECORD_ID = EscherRecordTypes.SP.typeID;
    private static final int[] FLAGS_MASKS = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048};
    private static final String[] FLAGS_NAMES = {"GROUP", "CHILD", "PATRIARCH", "DELETED", "OLESHAPE", "HAVEMASTER", "FLIPHORIZ", "FLIPVERT", "CONNECTOR", "HAVEANCHOR", "BACKGROUND", "HASSHAPETYPE"};

    public EscherSpRecord() {
    }

    private String decodeFlags(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append((i & 1) != 0 ? "|GROUP" : "");
        sb.append((i & 2) != 0 ? "|CHILD" : "");
        sb.append((i & 4) != 0 ? "|PATRIARCH" : "");
        sb.append((i & 8) != 0 ? "|DELETED" : "");
        sb.append((i & 16) != 0 ? "|OLESHAPE" : "");
        sb.append((i & 32) != 0 ? "|HAVEMASTER" : "");
        sb.append((i & 64) != 0 ? "|FLIPHORIZ" : "");
        sb.append((i & 128) != 0 ? "|FLIPVERT" : "");
        sb.append((i & 256) != 0 ? "|CONNECTOR" : "");
        sb.append((i & 512) != 0 ? "|HAVEANCHOR" : "");
        sb.append((i & 1024) != 0 ? "|BACKGROUND" : "");
        sb.append((i & 2048) != 0 ? "|HASSHAPETYPE" : "");
        if (sb.length() > 0) {
            sb.deleteCharAt(0);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        readHeader(bArr, i);
        int i2 = i + 8;
        this.field_1_shapeId = LittleEndian.getInt(bArr, i2 + 0);
        this.field_2_flags = LittleEndian.getInt(bArr, i2 + 4);
        return getRecordSize();
    }

    public int getFlags() {
        return this.field_2_flags;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.awf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherSpRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "shapeType", new Supplier() { // from class: com.sunia.HTREnginev2.bwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherSpRecord.this.getShapeType());
            }
        }, "shapeId", new Supplier() { // from class: com.sunia.HTREnginev2.cwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSpRecord.this.getShapeId());
            }
        }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.dwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSpRecord.this.getFlags());
            }
        }, FLAGS_MASKS, FLAGS_NAMES));
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.SP;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getRecordId() {
        return RECORD_ID;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.SP.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return 16;
    }

    public int getShapeId() {
        return this.field_1_shapeId;
    }

    public short getShapeType() {
        return getInstance();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        LittleEndian.putInt(bArr, i + 4, 8);
        LittleEndian.putInt(bArr, i + 8, this.field_1_shapeId);
        LittleEndian.putInt(bArr, i + 12, this.field_2_flags);
        escherSerializationListener.afterRecordSerialize(i + getRecordSize(), getRecordId(), getRecordSize(), this);
        return 16;
    }

    public void setFlags(int i) {
        this.field_2_flags = i;
    }

    public void setShapeId(int i) {
        this.field_1_shapeId = i;
    }

    public void setShapeType(short s) {
        setInstance(s);
    }

    public EscherSpRecord(EscherSpRecord escherSpRecord) {
        super(escherSpRecord);
        this.field_1_shapeId = escherSpRecord.field_1_shapeId;
        this.field_2_flags = escherSpRecord.field_2_flags;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherSpRecord copy() {
        return new EscherSpRecord(this);
    }
}
