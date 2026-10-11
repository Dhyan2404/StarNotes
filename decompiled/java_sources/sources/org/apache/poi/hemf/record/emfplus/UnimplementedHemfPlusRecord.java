package org.apache.poi.hemf.record.emfplus;

import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hemf.record.emfplus.UnimplementedHemfPlusRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;

@Internal
/* loaded from: classes12.dex */
public class UnimplementedHemfPlusRecord implements HemfPlusRecord {
    private int flags;
    private HemfPlusRecordType recordType;

    @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
    public HemfPlusRecordType getEmfPlusRecordType() {
        return this.recordType;
    }

    @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
    public int getFlags() {
        return this.flags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("flags", new Supplier() { // from class: com.sunia.HTREnginev2.tsn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(UnimplementedHemfPlusRecord.this.getFlags());
            }
        });
    }

    @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
    public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
        this.recordType = HemfPlusRecordType.getById(j2);
        this.flags = i;
        long skipFully = IOUtils.skipFully(littleEndianInputStream, j);
        if (skipFully >= j) {
            return skipFully;
        }
        throw new IOException("End of stream reached before record read");
    }
}
