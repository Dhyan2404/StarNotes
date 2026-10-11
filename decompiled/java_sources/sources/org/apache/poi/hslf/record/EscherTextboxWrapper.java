package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.ddf.EscherTextboxRecord;
import org.apache.poi.hslf.record.EscherTextboxWrapper;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public final class EscherTextboxWrapper extends RecordContainer {
    private final EscherTextboxRecord _escherRecord;
    private long _type;
    private int shapeId;
    private StyleTextProp9Atom styleTextProp9Atom;
    private StyleTextPropAtom styleTextPropAtom;

    public EscherTextboxWrapper(EscherTextboxRecord escherTextboxRecord) {
        this._escherRecord = escherTextboxRecord;
        this._type = escherTextboxRecord.getRecordId();
        byte[] data = escherTextboxRecord.getData();
        Record[] findChildRecords = Record.findChildRecords(data, 0, data.length);
        this._children = findChildRecords;
        for (Record record : findChildRecords) {
            if (record instanceof StyleTextPropAtom) {
                this.styleTextPropAtom = (StyleTextPropAtom) record;
            }
        }
    }

    public EscherTextboxRecord getEscherRecord() {
        return this._escherRecord;
    }

    @Override // org.apache.poi.hslf.record.RecordContainer, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("shapeId", new Supplier() { // from class: com.sunia.HTREnginev2.rwf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherTextboxWrapper.this.getShapeId());
            }
        }, "escherRecord", new Supplier() { // from class: com.sunia.HTREnginev2.swf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherTextboxWrapper.this.getEscherRecord();
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return this._type;
    }

    public int getShapeId() {
        return this.shapeId;
    }

    public StyleTextProp9Atom getStyleTextProp9Atom() {
        return this.styleTextProp9Atom;
    }

    public StyleTextPropAtom getStyleTextPropAtom() {
        return this.styleTextPropAtom;
    }

    public void setShapeId(int i) {
        this.shapeId = i;
    }

    public void setStyleTextProp9Atom(StyleTextProp9Atom styleTextProp9Atom) {
        this.styleTextProp9Atom = styleTextProp9Atom;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            for (Record record : this._children) {
                record.writeOut(unsynchronizedByteArrayOutputStream);
            }
            this._escherRecord.setData(unsynchronizedByteArrayOutputStream.toByteArray());
            unsynchronizedByteArrayOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public EscherTextboxWrapper() {
        EscherTextboxRecord escherTextboxRecord = new EscherTextboxRecord();
        this._escherRecord = escherTextboxRecord;
        escherTextboxRecord.setRecordId(EscherTextboxRecord.RECORD_ID);
        escherTextboxRecord.setOptions((short) 15);
        this._children = new Record[0];
    }
}
