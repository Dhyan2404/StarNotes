package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.CountryRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class CountryRecord extends StandardRecord {
    public static final short sid = 140;
    private short field_1_default_country;
    private short field_2_current_country;

    public CountryRecord() {
    }

    public short getCurrentCountry() {
        return this.field_2_current_country;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 4;
    }

    public short getDefaultCountry() {
        return this.field_1_default_country;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("defaultCountry", new Supplier() { // from class: com.sunia.HTREnginev2.nfe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CountryRecord.this.getDefaultCountry());
            }
        }, "currentCountry", new Supplier() { // from class: com.sunia.HTREnginev2.ofe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(CountryRecord.this.getCurrentCountry());
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 140;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getDefaultCountry());
        littleEndianOutput.writeShort(getCurrentCountry());
    }

    public void setCurrentCountry(short s) {
        this.field_2_current_country = s;
    }

    public void setDefaultCountry(short s) {
        this.field_1_default_country = s;
    }

    public CountryRecord(CountryRecord countryRecord) {
        super(countryRecord);
        this.field_1_default_country = countryRecord.field_1_default_country;
        this.field_2_current_country = countryRecord.field_2_current_country;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.COUNTRY;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public CountryRecord copy() {
        return new CountryRecord(this);
    }

    public CountryRecord(RecordInputStream recordInputStream) {
        this.field_1_default_country = recordInputStream.readShort();
        this.field_2_current_country = recordInputStream.readShort();
    }
}
