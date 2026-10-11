package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.CFHeaderBase;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellRangeAddressList;
import org.apache.poi.ss.util.CellRangeUtil;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public abstract class CFHeaderBase extends StandardRecord {
    private int field_1_numcf;
    private int field_2_need_recalculation_and_id;
    private CellRangeAddress field_3_enclosing_cell_range;
    private CellRangeAddressList field_4_cell_ranges;

    public CFHeaderBase() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public abstract CFHeaderBase copy();

    public void createEmpty() {
        this.field_3_enclosing_cell_range = new CellRangeAddress(0, 0, 0, 0);
        this.field_4_cell_ranges = new CellRangeAddressList();
    }

    public CellRangeAddress[] getCellRanges() {
        return this.field_4_cell_ranges.getCellRangeAddresses();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return this.field_4_cell_ranges.getSize() + 12;
    }

    public CellRangeAddress getEnclosingCellRange() {
        return this.field_3_enclosing_cell_range;
    }

    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("id", new Supplier() { // from class: com.sunia.HTREnginev2.c10
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(CFHeaderBase.this.getID());
            }
        }, "numCF", new Supplier() { // from class: com.sunia.HTREnginev2.d10
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(CFHeaderBase.this.getNumberOfConditionalFormats());
            }
        }, "needRecalculationAndId", new Supplier() { // from class: com.sunia.HTREnginev2.e10
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CFHeaderBase.this.getNeedRecalculation());
            }
        }, "enclosingCellRange", new Supplier() { // from class: com.sunia.HTREnginev2.f10
            @Override // java.util.function.Supplier
            public final Object get() {
                return CFHeaderBase.this.getEnclosingCellRange();
            }
        }, "cfRanges", new Supplier() { // from class: com.sunia.HTREnginev2.g10
            @Override // java.util.function.Supplier
            public final Object get() {
                return CFHeaderBase.this.getCellRanges();
            }
        });
    }

    public int getID() {
        return this.field_2_need_recalculation_and_id >> 1;
    }

    public boolean getNeedRecalculation() {
        return (this.field_2_need_recalculation_and_id & 1) == 1;
    }

    public int getNumberOfConditionalFormats() {
        return this.field_1_numcf;
    }

    public abstract String getRecordName();

    public void read(RecordInputStream recordInputStream) {
        this.field_1_numcf = recordInputStream.readShort();
        this.field_2_need_recalculation_and_id = recordInputStream.readShort();
        this.field_3_enclosing_cell_range = new CellRangeAddress(recordInputStream);
        this.field_4_cell_ranges = new CellRangeAddressList(recordInputStream);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_numcf);
        littleEndianOutput.writeShort(this.field_2_need_recalculation_and_id);
        this.field_3_enclosing_cell_range.serialize(littleEndianOutput);
        this.field_4_cell_ranges.serialize(littleEndianOutput);
    }

    public void setCellRanges(CellRangeAddress[] cellRangeAddressArr) {
        if (cellRangeAddressArr == null) {
            throw new IllegalArgumentException("cellRanges must not be null");
        }
        CellRangeAddressList cellRangeAddressList = new CellRangeAddressList();
        CellRangeAddress cellRangeAddress = null;
        for (CellRangeAddress cellRangeAddress2 : cellRangeAddressArr) {
            cellRangeAddress = CellRangeUtil.createEnclosingCellRange(cellRangeAddress2, cellRangeAddress);
            cellRangeAddressList.addCellRangeAddress(cellRangeAddress2);
        }
        this.field_3_enclosing_cell_range = cellRangeAddress;
        this.field_4_cell_ranges = cellRangeAddressList;
    }

    public void setEnclosingCellRange(CellRangeAddress cellRangeAddress) {
        this.field_3_enclosing_cell_range = cellRangeAddress;
    }

    public void setID(int i) {
        boolean needRecalculation = getNeedRecalculation();
        int i2 = i << 1;
        this.field_2_need_recalculation_and_id = i2;
        if (needRecalculation) {
            this.field_2_need_recalculation_and_id = i2 + 1;
        }
    }

    public void setNeedRecalculation(boolean z) {
        if (z == getNeedRecalculation()) {
            return;
        }
        if (z) {
            this.field_2_need_recalculation_and_id++;
        } else {
            this.field_2_need_recalculation_and_id--;
        }
    }

    public void setNumberOfConditionalFormats(int i) {
        this.field_1_numcf = i;
    }

    public CFHeaderBase(CFHeaderBase cFHeaderBase) {
        super(cFHeaderBase);
        this.field_1_numcf = cFHeaderBase.field_1_numcf;
        this.field_2_need_recalculation_and_id = cFHeaderBase.field_2_need_recalculation_and_id;
        this.field_3_enclosing_cell_range = cFHeaderBase.field_3_enclosing_cell_range.copy();
        this.field_4_cell_ranges = cFHeaderBase.field_4_cell_ranges.copy();
    }

    public CFHeaderBase(CellRangeAddress[] cellRangeAddressArr, int i) {
        setCellRanges(CellRangeUtil.mergeCellRanges(cellRangeAddressArr));
        this.field_1_numcf = i;
    }
}
