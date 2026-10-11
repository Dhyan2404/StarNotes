package org.apache.poi.hpbf.model;

import java.io.IOException;
import java.util.ArrayList;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public abstract class EscherPart extends HPBFPart {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static int MAX_RECORD_LENGTH = 1000000;
    private EscherRecord[] records;

    public EscherPart(DirectoryNode directoryNode, String[] strArr) throws IOException {
        super(directoryNode, strArr);
        EscherRecordFactory defaultEscherRecordFactory = new DefaultEscherRecordFactory();
        ArrayList arrayList = new ArrayList();
        byte[] data = getData();
        int length = data.length;
        while (length > 0) {
            EscherRecord createRecord = defaultEscherRecordFactory.createRecord(data, 0);
            createRecord.fillFields(data, 0, defaultEscherRecordFactory);
            length -= createRecord.getRecordSize();
            arrayList.add(createRecord);
        }
        this.records = (EscherRecord[]) arrayList.toArray(new EscherRecord[0]);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.hpbf.model.HPBFPart
    public void generateData() {
        int i = 0;
        for (EscherRecord escherRecord : this.records) {
            i += escherRecord.getRecordSize();
        }
        byte[] safelyAllocate = IOUtils.safelyAllocate(i, MAX_RECORD_LENGTH);
        int i2 = 0;
        for (EscherRecord escherRecord2 : this.records) {
            i2 += escherRecord2.serialize(i2, safelyAllocate);
        }
        setData(safelyAllocate);
    }

    public EscherRecord[] getEscherRecords() {
        return this.records;
    }
}
