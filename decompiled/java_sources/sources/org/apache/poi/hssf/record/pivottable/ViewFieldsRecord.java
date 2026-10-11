package org.apache.poi.hssf.record.pivottable;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.pivottable.ViewFieldsRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class ViewFieldsRecord extends StandardRecord {
    private static final int BASE_SIZE = 10;
    private static final int STRING_NOT_PRESENT_LEN = 65535;
    public static final short sid = 177;
    private final int _cItm;
    private final int _cSub;
    private final int _grbitSub;
    private String _name;
    private final int _sxaxis;

    /* loaded from: classes12.dex */
    public enum Axis {
        NO_AXIS(0),
        ROW(1),
        COLUMN(2),
        PAGE(4),
        DATA(8);


        /* renamed from: id */
        final int f111425id;

        Axis(int i) {
            this.f111425id = i;
        }
    }

    public ViewFieldsRecord(ViewFieldsRecord viewFieldsRecord) {
        super(viewFieldsRecord);
        this._sxaxis = viewFieldsRecord._sxaxis;
        this._cSub = viewFieldsRecord._cSub;
        this._grbitSub = viewFieldsRecord._grbitSub;
        this._cItm = viewFieldsRecord._cItm;
        this._name = viewFieldsRecord._name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this._sxaxis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this._cSub);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this._grbitSub);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this._cItm);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return this._name;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        String str = this._name;
        if (str == null) {
            return 10;
        }
        return (str.length() * (StringUtil.hasMultibyte(this._name) ? 2 : 1)) + 11;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("sxaxis", new Supplier() { // from class: com.sunia.HTREnginev2.b3o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ViewFieldsRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "cSub", new Supplier() { // from class: com.sunia.HTREnginev2.c3o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ViewFieldsRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "grbitSub", new Supplier() { // from class: com.sunia.HTREnginev2.d3o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = ViewFieldsRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "cItm", new Supplier() { // from class: com.sunia.HTREnginev2.e3o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = ViewFieldsRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "name", new Supplier() { // from class: com.sunia.HTREnginev2.f3o
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = ViewFieldsRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 177;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._sxaxis);
        littleEndianOutput.writeShort(this._cSub);
        littleEndianOutput.writeShort(this._grbitSub);
        littleEndianOutput.writeShort(this._cItm);
        String str = this._name;
        if (str != null) {
            StringUtil.writeUnicodeString(littleEndianOutput, str);
        } else {
            littleEndianOutput.writeShort(65535);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.VIEW_FIELDS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ViewFieldsRecord copy() {
        return new ViewFieldsRecord(this);
    }

    public ViewFieldsRecord(RecordInputStream recordInputStream) {
        this._sxaxis = recordInputStream.readShort();
        this._cSub = recordInputStream.readShort();
        this._grbitSub = recordInputStream.readShort();
        this._cItm = recordInputStream.readShort();
        int readUShort = recordInputStream.readUShort();
        if (readUShort != 65535) {
            if ((recordInputStream.readByte() & 1) != 0) {
                this._name = recordInputStream.readUnicodeLEString(readUShort);
            } else {
                this._name = recordInputStream.readCompressedUnicode(readUShort);
            }
        }
    }
}
