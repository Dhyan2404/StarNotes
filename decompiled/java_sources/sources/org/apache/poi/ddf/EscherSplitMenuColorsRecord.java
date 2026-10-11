package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherSplitMenuColorsRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public class EscherSplitMenuColorsRecord extends EscherRecord {
    public static final short RECORD_ID = EscherRecordTypes.SPLIT_MENU_COLORS.typeID;
    private int field_1_color1;
    private int field_2_color2;
    private int field_3_color3;
    private int field_4_color4;

    public EscherSplitMenuColorsRecord() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        int i2 = i + 8;
        this.field_1_color1 = LittleEndian.getInt(bArr, i2 + 0);
        this.field_2_color2 = LittleEndian.getInt(bArr, i2 + 4);
        this.field_3_color3 = LittleEndian.getInt(bArr, i2 + 8);
        this.field_4_color4 = LittleEndian.getInt(bArr, i2 + 12);
        int i3 = readHeader - 16;
        if (i3 == 0) {
            return 24 + i3;
        }
        throw new RecordFormatException("Expecting no remaining data but got " + i3 + " byte(s).");
    }

    public int getColor1() {
        return this.field_1_color1;
    }

    public int getColor2() {
        return this.field_2_color2;
    }

    public int getColor3() {
        return this.field_3_color3;
    }

    public int getColor4() {
        return this.field_4_color4;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.jwf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherSplitMenuColorsRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "color1", new Supplier() { // from class: com.sunia.HTREnginev2.kwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSplitMenuColorsRecord.this.getColor1());
            }
        }, "color2", new Supplier() { // from class: com.sunia.HTREnginev2.lwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSplitMenuColorsRecord.this.getColor2());
            }
        }, "color3", new Supplier() { // from class: com.sunia.HTREnginev2.mwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSplitMenuColorsRecord.this.getColor3());
            }
        }, "color4", new Supplier() { // from class: com.sunia.HTREnginev2.nwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSplitMenuColorsRecord.this.getColor4());
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.SPLIT_MENU_COLORS;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getRecordId() {
        return RECORD_ID;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.SPLIT_MENU_COLORS.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return 24;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        int i2 = i + 2;
        LittleEndian.putShort(bArr, i2, getRecordId());
        int i3 = i2 + 2;
        LittleEndian.putInt(bArr, i3, getRecordSize() - 8);
        int i4 = i3 + 4;
        LittleEndian.putInt(bArr, i4, this.field_1_color1);
        int i5 = i4 + 4;
        LittleEndian.putInt(bArr, i5, this.field_2_color2);
        int i6 = i5 + 4;
        LittleEndian.putInt(bArr, i6, this.field_3_color3);
        int i7 = i6 + 4;
        LittleEndian.putInt(bArr, i7, this.field_4_color4);
        int i8 = i7 + 4;
        escherSerializationListener.afterRecordSerialize(i8, getRecordId(), i8 - i, this);
        return getRecordSize();
    }

    public void setColor1(int i) {
        this.field_1_color1 = i;
    }

    public void setColor2(int i) {
        this.field_2_color2 = i;
    }

    public void setColor3(int i) {
        this.field_3_color3 = i;
    }

    public void setColor4(int i) {
        this.field_4_color4 = i;
    }

    public EscherSplitMenuColorsRecord(EscherSplitMenuColorsRecord escherSplitMenuColorsRecord) {
        super(escherSplitMenuColorsRecord);
        this.field_1_color1 = escherSplitMenuColorsRecord.field_1_color1;
        this.field_2_color2 = escherSplitMenuColorsRecord.field_2_color2;
        this.field_3_color3 = escherSplitMenuColorsRecord.field_3_color3;
        this.field_4_color4 = escherSplitMenuColorsRecord.field_4_color4;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherSplitMenuColorsRecord copy() {
        return new EscherSplitMenuColorsRecord(this);
    }
}
