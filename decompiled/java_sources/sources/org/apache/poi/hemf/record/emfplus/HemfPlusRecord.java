package org.apache.poi.hemf.record.emfplus;

import java.io.IOException;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emf.HemfRecord;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;

@Internal
/* loaded from: classes12.dex */
public interface HemfPlusRecord extends GenericRecord {
    default void calcBounds(HemfRecord.RenderBounds renderBounds) {
    }

    default void draw(HemfGraphics hemfGraphics) {
    }

    HemfPlusRecordType getEmfPlusRecordType();

    int getFlags();

    long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException;

    @Override // org.apache.poi.common.usermodel.GenericRecord
    default HemfPlusRecordType getGenericRecordType() {
        return getEmfPlusRecordType();
    }
}
