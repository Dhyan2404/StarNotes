package org.apache.poi.hssf.record;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.TabIdRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class TabIdRecord extends StandardRecord {
    private static final short[] EMPTY_SHORT_ARRAY = new short[0];
    public static final short sid = 317;
    private short[] _tabids;

    public TabIdRecord() {
        this._tabids = EMPTY_SHORT_ARRAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this._tabids;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return this._tabids.length * 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(Constants.ATTRNAME_ELEMENTS, new Supplier() { // from class: com.sunia.HTREnginev2.w7n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = TabIdRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public short getTabIdAt(int i) {
        return this._tabids[i];
    }

    public int getTabIdSize() {
        return this._tabids.length;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        for (short s : this._tabids) {
            littleEndianOutput.writeShort(s);
        }
    }

    public void setTabIdArray(short[] sArr) {
        this._tabids = (short[]) sArr.clone();
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.TAB_ID;
    }

    public TabIdRecord(TabIdRecord tabIdRecord) {
        super(tabIdRecord);
        short[] sArr = tabIdRecord._tabids;
        this._tabids = sArr == null ? null : (short[]) sArr.clone();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public TabIdRecord copy() {
        return new TabIdRecord(this);
    }

    public TabIdRecord(RecordInputStream recordInputStream) {
        this._tabids = new short[recordInputStream.remaining() / 2];
        int i = 0;
        while (true) {
            short[] sArr = this._tabids;
            if (i >= sArr.length) {
                return;
            }
            sArr[i] = recordInputStream.readShort();
            i++;
        }
    }
}
