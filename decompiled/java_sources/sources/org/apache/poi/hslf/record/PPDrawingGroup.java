package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherDggRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.hslf.record.PPDrawingGroup;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class PPDrawingGroup extends RecordAtom {
    private static final int MAX_RECORD_LENGTH = 10485760;
    private final byte[] _header;
    private EscherDggRecord dgg;
    private final EscherContainerRecord dggContainer;

    public PPDrawingGroup(byte[] bArr, int i, int i2) {
        this._header = Arrays.copyOfRange(bArr, i, i + 8);
        byte[] safelyClone = IOUtils.safelyClone(bArr, i, i2, 10485760);
        EscherRecordFactory hSLFEscherRecordFactory = new HSLFEscherRecordFactory();
        EscherRecord createRecord = hSLFEscherRecordFactory.createRecord(safelyClone, 0);
        createRecord.fillFields(safelyClone, 0, hSLFEscherRecordFactory);
        this.dggContainer = (EscherContainerRecord) createRecord.getChild(0);
    }

    @Override // org.apache.poi.hslf.record.RecordAtom, org.apache.poi.hslf.record.Record
    public Record[] getChildRecords() {
        return null;
    }

    public EscherContainerRecord getDggContainer() {
        return this.dggContainer;
    }

    public EscherDggRecord getEscherDggRecord() {
        if (this.dgg == null) {
            Iterator<EscherRecord> it2 = this.dggContainer.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                EscherRecord next = it2.next();
                if (next instanceof EscherDggRecord) {
                    this.dgg = (EscherDggRecord) next;
                    break;
                }
            }
        }
        return this.dgg;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("dggContainer", new Supplier() { // from class: com.sunia.HTREnginev2.blk
            @Override // java.util.function.Supplier
            public final Object get() {
                return PPDrawingGroup.this.getDggContainer();
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.PPDrawingGroup.typeID;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8];
        byte[] bArr2 = new byte[44];
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream2 = new UnsynchronizedByteArrayOutputStream();
            try {
                Iterator<EscherRecord> it2 = this.dggContainer.iterator();
                while (it2.hasNext()) {
                    EscherRecord next = it2.next();
                    if (next.getRecordId() == EscherContainerRecord.BSTORE_CONTAINER) {
                        EscherContainerRecord escherContainerRecord = (EscherContainerRecord) next;
                        unsynchronizedByteArrayOutputStream2.reset();
                        Iterator<EscherRecord> it3 = escherContainerRecord.iterator();
                        while (it3.hasNext()) {
                            it3.next().serialize(0, bArr2);
                            unsynchronizedByteArrayOutputStream2.write(bArr2);
                        }
                        LittleEndian.putShort(bArr, 0, escherContainerRecord.getOptions());
                        LittleEndian.putShort(bArr, 2, escherContainerRecord.getRecordId());
                        LittleEndian.putInt(bArr, 4, unsynchronizedByteArrayOutputStream2.size());
                        unsynchronizedByteArrayOutputStream.write(bArr);
                        unsynchronizedByteArrayOutputStream2.writeTo(unsynchronizedByteArrayOutputStream);
                    } else {
                        unsynchronizedByteArrayOutputStream.write(next.serialize());
                    }
                }
                int size = unsynchronizedByteArrayOutputStream.size();
                LittleEndian.putInt(this._header, 4, size + 8);
                outputStream.write(this._header);
                byte[] bArr3 = new byte[8];
                LittleEndian.putShort(bArr3, 0, this.dggContainer.getOptions());
                LittleEndian.putShort(bArr3, 2, this.dggContainer.getRecordId());
                LittleEndian.putInt(bArr3, 4, size);
                outputStream.write(bArr3);
                unsynchronizedByteArrayOutputStream.writeTo(outputStream);
                unsynchronizedByteArrayOutputStream2.close();
                unsynchronizedByteArrayOutputStream.close();
            } finally {
            }
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
}
