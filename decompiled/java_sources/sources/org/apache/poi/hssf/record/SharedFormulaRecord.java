package org.apache.poi.hssf.record;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.SharedFormulaRecord;
import org.apache.poi.hssf.util.CellRangeAddress8Bit;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.Formula;
import org.apache.poi.ss.formula.SharedFormula;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class SharedFormulaRecord extends SharedValueRecordBase {
    public static final short sid = 1212;
    private int field_5_reserved;
    private Formula field_7_parsed_expr;

    public SharedFormulaRecord() {
        this(new CellRangeAddress8Bit(0, 0, 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.field_5_reserved);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this.field_7_parsed_expr;
    }

    @Override // org.apache.poi.hssf.record.SharedValueRecordBase
    public int getExtraDataSize() {
        return this.field_7_parsed_expr.getEncodedSize() + 2;
    }

    public Ptg[] getFormulaTokens(FormulaRecord formulaRecord) {
        int row = formulaRecord.getRow();
        short column = formulaRecord.getColumn();
        if (isInRange(row, column)) {
            return new SharedFormula(SpreadsheetVersion.EXCEL97).convertSharedFormulas(this.field_7_parsed_expr.getTokens(), row, column);
        }
        throw new IllegalStateException("Shared Formula Conversion: Coding Error");
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(SessionDescription.f26441q, new Supplier() { // from class: com.sunia.HTREnginev2.pnm
            @Override // java.util.function.Supplier
            public final Object get() {
                return SharedFormulaRecord.this.getRange();
            }
        }, "reserved", new Supplier() { // from class: com.sunia.HTREnginev2.qnm
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = SharedFormulaRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "formula", new Supplier() { // from class: com.sunia.HTREnginev2.rnm
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = SharedFormulaRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isFormulaSame(SharedFormulaRecord sharedFormulaRecord) {
        return this.field_7_parsed_expr.isSame(sharedFormulaRecord.field_7_parsed_expr);
    }

    @Override // org.apache.poi.hssf.record.SharedValueRecordBase
    public void serializeExtraData(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_5_reserved);
        this.field_7_parsed_expr.serialize(littleEndianOutput);
    }

    public SharedFormulaRecord(SharedFormulaRecord sharedFormulaRecord) {
        super(sharedFormulaRecord);
        this.field_5_reserved = sharedFormulaRecord.field_5_reserved;
        Formula formula = sharedFormulaRecord.field_7_parsed_expr;
        this.field_7_parsed_expr = formula == null ? null : formula.copy();
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SHARED_FORMULA;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SharedFormulaRecord copy() {
        return new SharedFormulaRecord(this);
    }

    private SharedFormulaRecord(CellRangeAddress8Bit cellRangeAddress8Bit) {
        super(cellRangeAddress8Bit);
        this.field_7_parsed_expr = Formula.create(Ptg.EMPTY_PTG_ARRAY);
    }

    public SharedFormulaRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
        this.field_5_reserved = recordInputStream.readShort();
        this.field_7_parsed_expr = Formula.read(recordInputStream.readShort(), recordInputStream, recordInputStream.available());
    }
}
