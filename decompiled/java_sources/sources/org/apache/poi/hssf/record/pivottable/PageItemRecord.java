package org.apache.poi.hssf.record.pivottable;

import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.pivottable.PageItemRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class PageItemRecord extends StandardRecord {
    public static final short sid = 182;
    private final FieldInfo[] _fieldInfos;

    public PageItemRecord(PageItemRecord pageItemRecord) {
        super(pageItemRecord);
        this._fieldInfos = (FieldInfo[]) Stream.of((Object[]) pageItemRecord._fieldInfos).map(new Function() { // from class: org.apache.poi.hssf.record.pivottable.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new PageItemRecord.FieldInfo((PageItemRecord.FieldInfo) obj);
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.ksk
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                PageItemRecord.FieldInfo[] lambda$new$0;
                lambda$new$0 = PageItemRecord.lambda$new$0(i);
                return lambda$new$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this._fieldInfos;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FieldInfo[] lambda$new$0(int i) {
        return new FieldInfo[i];
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return this._fieldInfos.length * 6;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("fieldInfos", new Supplier() { // from class: com.sunia.HTREnginev2.lsk
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = PageItemRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 182;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        for (FieldInfo fieldInfo : this._fieldInfos) {
            fieldInfo.serialize(littleEndianOutput);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.PAGE_ITEM;
    }

    public PageItemRecord(RecordInputStream recordInputStream) {
        int remaining = recordInputStream.remaining();
        if (remaining % 6 == 0) {
            int i = remaining / 6;
            FieldInfo[] fieldInfoArr = new FieldInfo[i];
            for (int i2 = 0; i2 < i; i2++) {
                fieldInfoArr[i2] = new FieldInfo(recordInputStream);
            }
            this._fieldInfos = fieldInfoArr;
            return;
        }
        throw new RecordFormatException("Bad data size " + remaining);
    }

    /* loaded from: classes12.dex */
    public static final class FieldInfo implements GenericRecord {
        public static final int ENCODED_SIZE = 6;
        private int _idObj;
        private int _isxvd;
        private int _isxvi;

        public FieldInfo(FieldInfo fieldInfo) {
            this._isxvi = fieldInfo._isxvi;
            this._isxvd = fieldInfo._isxvd;
            this._idObj = fieldInfo._idObj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return Integer.valueOf(this._isxvi);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$1() {
            return Integer.valueOf(this._isxvd);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$2() {
            return Integer.valueOf(this._idObj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeShort(this._isxvi);
            littleEndianOutput.writeShort(this._isxvd);
            littleEndianOutput.writeShort(this._idObj);
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("isxvi", new Supplier() { // from class: org.apache.poi.hssf.record.pivottable.b
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = PageItemRecord.FieldInfo.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            }, "isxvd", new Supplier() { // from class: org.apache.poi.hssf.record.pivottable.c
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$1;
                    lambda$getGenericProperties$1 = PageItemRecord.FieldInfo.this.lambda$getGenericProperties$1();
                    return lambda$getGenericProperties$1;
                }
            }, "idObj", new Supplier() { // from class: org.apache.poi.hssf.record.pivottable.d
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$2;
                    lambda$getGenericProperties$2 = PageItemRecord.FieldInfo.this.lambda$getGenericProperties$2();
                    return lambda$getGenericProperties$2;
                }
            });
        }

        public FieldInfo(RecordInputStream recordInputStream) {
            this._isxvi = recordInputStream.readShort();
            this._isxvd = recordInputStream.readShort();
            this._idObj = recordInputStream.readShort();
        }
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public PageItemRecord copy() {
        return new PageItemRecord(this);
    }
}
