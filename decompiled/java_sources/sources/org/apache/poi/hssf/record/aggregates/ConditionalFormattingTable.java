package org.apache.poi.hssf.record.aggregates;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.hssf.model.RecordStream;
import org.apache.poi.hssf.record.CFHeaderBase;
import org.apache.poi.hssf.record.aggregates.RecordAggregate;
import org.apache.poi.ss.formula.FormulaShifter;

/* loaded from: classes12.dex */
public final class ConditionalFormattingTable extends RecordAggregate {
    private final List<CFRecordsAggregate> _cfHeaders = new ArrayList();

    public ConditionalFormattingTable() {
    }

    private void checkIndex(int i) {
        if (i < 0 || i >= this._cfHeaders.size()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Specified CF index ");
            sb.append(i);
            sb.append(" is outside the allowable range (0..");
            sb.append(this._cfHeaders.size() - 1);
            sb.append(MotionUtils.f31762d);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public int add(CFRecordsAggregate cFRecordsAggregate) {
        cFRecordsAggregate.getHeader().setID(this._cfHeaders.size());
        this._cfHeaders.add(cFRecordsAggregate);
        return this._cfHeaders.size() - 1;
    }

    public CFRecordsAggregate get(int i) {
        checkIndex(i);
        return this._cfHeaders.get(i);
    }

    public void remove(int i) {
        checkIndex(i);
        this._cfHeaders.remove(i);
    }

    public int size() {
        return this._cfHeaders.size();
    }

    public void updateFormulasAfterCellShift(FormulaShifter formulaShifter, int i) {
        int i2 = 0;
        while (i2 < this._cfHeaders.size()) {
            if (!this._cfHeaders.get(i2).updateFormulasAfterCellShift(formulaShifter, i)) {
                this._cfHeaders.remove(i2);
                i2--;
            }
            i2++;
        }
    }

    @Override // org.apache.poi.hssf.record.aggregates.RecordAggregate
    public void visitContainedRecords(RecordAggregate.RecordVisitor recordVisitor) {
        Iterator<CFRecordsAggregate> it2 = this._cfHeaders.iterator();
        while (it2.hasNext()) {
            it2.next().visitContainedRecords(recordVisitor);
        }
    }

    public ConditionalFormattingTable(RecordStream recordStream) {
        while (recordStream.peekNextRecord() instanceof CFHeaderBase) {
            this._cfHeaders.add(CFRecordsAggregate.createCFAggregate(recordStream));
        }
    }
}
