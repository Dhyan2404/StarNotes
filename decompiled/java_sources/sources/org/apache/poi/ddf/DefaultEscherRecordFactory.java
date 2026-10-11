package org.apache.poi.ddf;

import com.sunia.HTREnginev2.ize;
import com.sunia.HTREnginev2.kze;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherBlipRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class DefaultEscherRecordFactory implements EscherRecordFactory {
    private static final BitField IS_CONTAINER = BitFieldFactory.getInstance(15);

    @Override // org.apache.poi.ddf.EscherRecordFactory
    public EscherRecord createRecord(byte[] bArr, int i) {
        short s = LittleEndian.getShort(bArr, i);
        short s2 = LittleEndian.getShort(bArr, i + 2);
        EscherRecord escherRecord = getConstructor(s, s2).get();
        escherRecord.setRecordId(s2);
        escherRecord.setOptions(s);
        return escherRecord;
    }

    public Supplier<? extends EscherRecord> getConstructor(short s, short s2) {
        EscherRecordTypes forTypeID = EscherRecordTypes.forTypeID(s2);
        EscherRecordTypes escherRecordTypes = EscherRecordTypes.UNKNOWN;
        if (forTypeID == escherRecordTypes && IS_CONTAINER.isAllSet(s)) {
            return new ize();
        }
        Supplier<? extends EscherRecord> supplier = forTypeID.constructor;
        return (supplier == null || forTypeID == escherRecordTypes) ? (EscherBlipRecord.RECORD_ID_START > s2 || s2 > EscherBlipRecord.RECORD_ID_END) ? new kze() : new Supplier() { // from class: com.sunia.HTREnginev2.jze
            @Override // java.util.function.Supplier
            public final Object get() {
                return new EscherBlipRecord();
            }
        } : supplier;
    }
}
