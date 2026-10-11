package org.apache.poi.hssf.record.common;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.common.FtrHeader;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class FtrHeader implements Duplicatable, GenericRecord {
    private CellRangeAddress associatedRange;
    private short grbitFrt;
    private short recordType;

    public FtrHeader() {
        this.associatedRange = new CellRangeAddress(0, 0, 0, 0);
    }

    public static int getDataSize() {
        return 12;
    }

    public CellRangeAddress getAssociatedRange() {
        return this.associatedRange;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(CouchFieldKey.KEY_RECORD_TYPE, new Supplier() { // from class: com.sunia.HTREnginev2.jwg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FtrHeader.this.getRecordType());
            }
        }, "grbitFrt", new Supplier() { // from class: com.sunia.HTREnginev2.kwg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FtrHeader.this.getGrbitFrt());
            }
        }, "associatedRange", new Supplier() { // from class: com.sunia.HTREnginev2.lwg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FtrHeader.this.getAssociatedRange();
            }
        });
    }

    public short getGrbitFrt() {
        return this.grbitFrt;
    }

    public short getRecordType() {
        return this.recordType;
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.recordType);
        littleEndianOutput.writeShort(this.grbitFrt);
        this.associatedRange.serialize(littleEndianOutput);
    }

    public void setAssociatedRange(CellRangeAddress cellRangeAddress) {
        this.associatedRange = cellRangeAddress;
    }

    public void setGrbitFrt(short s) {
        this.grbitFrt = s;
    }

    public void setRecordType(short s) {
        this.recordType = s;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.Duplicatable
    public FtrHeader copy() {
        return new FtrHeader(this);
    }

    public FtrHeader(FtrHeader ftrHeader) {
        this.recordType = ftrHeader.recordType;
        this.grbitFrt = ftrHeader.grbitFrt;
        this.associatedRange = ftrHeader.associatedRange.copy();
    }

    public FtrHeader(RecordInputStream recordInputStream) {
        this.recordType = recordInputStream.readShort();
        this.grbitFrt = recordInputStream.readShort();
        this.associatedRange = new CellRangeAddress(recordInputStream);
    }
}
