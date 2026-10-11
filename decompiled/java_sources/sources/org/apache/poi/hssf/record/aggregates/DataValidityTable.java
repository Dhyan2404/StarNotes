package org.apache.poi.hssf.record.aggregates;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import org.apache.poi.hssf.model.RecordStream;
import org.apache.poi.hssf.record.DVALRecord;
import org.apache.poi.hssf.record.DVRecord;
import org.apache.poi.hssf.record.aggregates.RecordAggregate;

/* loaded from: classes12.dex */
public final class DataValidityTable extends RecordAggregate {
    private final DVALRecord _headerRec;
    private final List<DVRecord> _validationList;

    public DataValidityTable(RecordStream recordStream) {
        this._headerRec = (DVALRecord) recordStream.getNext();
        ArrayList arrayList = new ArrayList();
        while (recordStream.peekNextClass() == DVRecord.class) {
            arrayList.add((DVRecord) recordStream.getNext());
        }
        this._validationList = arrayList;
    }

    public void addDataValidation(DVRecord dVRecord) {
        this._validationList.add(dVRecord);
        this._headerRec.setDVRecNo(this._validationList.size());
    }

    @Override // org.apache.poi.hssf.record.aggregates.RecordAggregate
    public void visitContainedRecords(final RecordAggregate.RecordVisitor recordVisitor) {
        if (this._validationList.isEmpty()) {
            return;
        }
        recordVisitor.visitRecord(this._headerRec);
        this._validationList.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.dve
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecordAggregate.RecordVisitor.this.visitRecord((DVRecord) obj);
            }
        });
    }

    public DataValidityTable() {
        this._headerRec = new DVALRecord();
        this._validationList = new ArrayList();
    }
}
