package org.apache.poi.hemf.record.emf;

import java.io.IOException;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;

@Internal
/* loaded from: classes12.dex */
public class UnimplementedHemfRecord implements HemfRecordWithoutProperties {
    private HemfRecordType recordType;

    @Override // org.apache.poi.hemf.record.emf.HemfRecord
    public HemfRecordType getEmfRecordType() {
        return this.recordType;
    }

    @Override // org.apache.poi.hemf.record.emf.HemfRecord
    public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException {
        this.recordType = HemfRecordType.getById(j2);
        long skipFully = IOUtils.skipFully(littleEndianInputStream, j);
        if (skipFully >= j) {
            return skipFully;
        }
        throw new IOException("End of stream reached before record read");
    }
}
