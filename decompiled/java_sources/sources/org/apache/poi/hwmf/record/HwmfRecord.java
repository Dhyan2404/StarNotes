package org.apache.poi.hwmf.record;

import java.io.IOException;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public interface HwmfRecord extends GenericRecord {
    void draw(HwmfGraphics hwmfGraphics);

    @Override // org.apache.poi.common.usermodel.GenericRecord
    default Enum<?> getGenericRecordType() {
        return getWmfRecordType();
    }

    HwmfRecordType getWmfRecordType();

    int init(LittleEndianInputStream littleEndianInputStream, long j, int i) throws IOException;
}
