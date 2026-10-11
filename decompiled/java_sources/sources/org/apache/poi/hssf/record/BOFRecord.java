package org.apache.poi.hssf.record;

import androidx.credentials.provider.utils.PrivilegedApp;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.BOFRecord;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class BOFRecord extends StandardRecord {
    public static final int BUILD = 4307;
    public static final int BUILD_YEAR = 1996;
    public static final int HISTORY_MASK = 65;
    public static final int TYPE_CHART = 32;
    public static final int TYPE_EXCEL_4_MACRO = 64;
    public static final int TYPE_VB_MODULE = 6;
    public static final int TYPE_WORKBOOK = 5;
    public static final int TYPE_WORKSHEET = 16;
    public static final int TYPE_WORKSPACE_FILE = 256;
    public static final int VERSION = 1536;
    public static final short biff2_sid = 9;
    public static final short biff3_sid = 521;
    public static final short biff4_sid = 1033;
    public static final short biff5_sid = 2057;
    public static final short sid = 2057;
    private int field_1_version;
    private int field_2_type;
    private int field_3_build;
    private int field_4_year;
    private int field_5_history;
    private int field_6_rversion;

    public BOFRecord() {
    }

    public static BOFRecord createSheetBOF() {
        return new BOFRecord(16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTypeName() {
        int i = this.field_2_type;
        return i != 5 ? i != 6 ? i != 16 ? i != 32 ? i != 64 ? i != 256 ? "#error unknown type#" : "workspace file" : "excel 4 macro" : "chart" : "worksheet" : "vb module" : "workbook";
    }

    public int getBuild() {
        return this.field_3_build;
    }

    public int getBuildYear() {
        return this.field_4_year;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 16;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("version", new Supplier() { // from class: com.sunia.HTREnginev2.ql
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(BOFRecord.this.getVersion());
            }
        });
        linkedHashMap.put("type", new Supplier() { // from class: com.sunia.HTREnginev2.rl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(BOFRecord.this.getType());
            }
        });
        linkedHashMap.put("typeName", new Supplier() { // from class: com.sunia.HTREnginev2.sl
            @Override // java.util.function.Supplier
            public final Object get() {
                String typeName;
                typeName = BOFRecord.this.getTypeName();
                return typeName;
            }
        });
        linkedHashMap.put(PrivilegedApp.f6529f, new Supplier() { // from class: com.sunia.HTREnginev2.tl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(BOFRecord.this.getBuild());
            }
        });
        linkedHashMap.put("buildYear", new Supplier() { // from class: com.sunia.HTREnginev2.ul
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(BOFRecord.this.getBuildYear());
            }
        });
        linkedHashMap.put("history", new Supplier() { // from class: com.sunia.HTREnginev2.vl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(BOFRecord.this.getHistoryBitMask());
            }
        });
        linkedHashMap.put("requiredVersion", new Supplier() { // from class: com.sunia.HTREnginev2.wl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(BOFRecord.this.getRequiredVersion());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public int getHistoryBitMask() {
        return this.field_5_history;
    }

    public int getRequiredVersion() {
        return this.field_6_rversion;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 2057;
    }

    public int getType() {
        return this.field_2_type;
    }

    public int getVersion() {
        return this.field_1_version;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getVersion());
        littleEndianOutput.writeShort(getType());
        littleEndianOutput.writeShort(getBuild());
        littleEndianOutput.writeShort(getBuildYear());
        littleEndianOutput.writeInt(getHistoryBitMask());
        littleEndianOutput.writeInt(getRequiredVersion());
    }

    public void setBuild(int i) {
        this.field_3_build = i;
    }

    public void setBuildYear(int i) {
        this.field_4_year = i;
    }

    public void setHistoryBitMask(int i) {
        this.field_5_history = i;
    }

    public void setRequiredVersion(int i) {
        this.field_6_rversion = i;
    }

    public void setType(int i) {
        this.field_2_type = i;
    }

    public void setVersion(int i) {
        this.field_1_version = i;
    }

    public BOFRecord(BOFRecord bOFRecord) {
        super(bOFRecord);
        this.field_1_version = bOFRecord.field_1_version;
        this.field_2_type = bOFRecord.field_2_type;
        this.field_3_build = bOFRecord.field_3_build;
        this.field_4_year = bOFRecord.field_4_year;
        this.field_5_history = bOFRecord.field_5_history;
        this.field_6_rversion = bOFRecord.field_6_rversion;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.BOF;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public BOFRecord copy() {
        return new BOFRecord(this);
    }

    private BOFRecord(int i) {
        this.field_1_version = 1536;
        this.field_2_type = i;
        this.field_3_build = BUILD;
        this.field_4_year = BUILD_YEAR;
        this.field_5_history = 1;
        this.field_6_rversion = 1536;
    }

    public BOFRecord(RecordInputStream recordInputStream) {
        this.field_1_version = recordInputStream.readShort();
        this.field_2_type = recordInputStream.readShort();
        if (recordInputStream.remaining() >= 2) {
            this.field_3_build = recordInputStream.readShort();
        }
        if (recordInputStream.remaining() >= 2) {
            this.field_4_year = recordInputStream.readShort();
        }
        if (recordInputStream.remaining() >= 4) {
            this.field_5_history = recordInputStream.readInt();
        }
        if (recordInputStream.remaining() >= 4) {
            this.field_6_rversion = recordInputStream.readInt();
        }
    }
}
