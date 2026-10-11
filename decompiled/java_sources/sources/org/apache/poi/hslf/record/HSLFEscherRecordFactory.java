package org.apache.poi.hslf.record;

import java.util.function.Supplier;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherClientDataRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.hslf.record.EscherPlaceholder;
import org.apache.poi.hslf.record.HSLFEscherClientDataRecord;

/* loaded from: classes12.dex */
public class HSLFEscherRecordFactory extends DefaultEscherRecordFactory {
    @Override // org.apache.poi.ddf.DefaultEscherRecordFactory
    public Supplier<? extends EscherRecord> getConstructor(short s, short s2) {
        return s2 == EscherPlaceholder.RECORD_ID ? new Supplier() { // from class: com.sunia.HTREnginev2.y6h
            @Override // java.util.function.Supplier
            public final Object get() {
                return new EscherPlaceholder();
            }
        } : s2 == EscherClientDataRecord.RECORD_ID ? new Supplier() { // from class: com.sunia.HTREnginev2.z6h
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HSLFEscherClientDataRecord();
            }
        } : super.getConstructor(s, s2);
    }
}
