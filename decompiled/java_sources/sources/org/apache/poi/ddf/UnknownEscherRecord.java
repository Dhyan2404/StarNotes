package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.ptf;
import com.sunia.HTREnginev2.qtf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.UnknownEscherRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class UnknownEscherRecord extends EscherRecord {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000000;
    private static int MAX_RECORD_LENGTH = 100000000;
    private static final byte[] NO_BYTES = new byte[0];
    private final List<EscherRecord> _childRecords;
    private byte[] thedata;

    public UnknownEscherRecord() {
        this.thedata = NO_BYTES;
        this._childRecords = new ArrayList();
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public void addChildRecord(EscherRecord escherRecord) {
        getChildRecords().add(escherRecord);
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        int i2 = 8;
        int i3 = i + 8;
        int length = bArr.length - i3;
        if (readHeader > length) {
            readHeader = length;
        }
        if (!isContainerRecord()) {
            if (readHeader < 0) {
                readHeader = 0;
            }
            this.thedata = IOUtils.safelyClone(bArr, i3, readHeader, MAX_RECORD_LENGTH);
            return readHeader + 8;
        }
        this.thedata = new byte[0];
        while (readHeader > 0) {
            EscherRecord createRecord = escherRecordFactory.createRecord(bArr, i3);
            int fillFields = createRecord.fillFields(bArr, i3, escherRecordFactory);
            i2 += fillFields;
            i3 += fillFields;
            readHeader -= fillFields;
            getChildRecords().add(createRecord);
        }
        return i2;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public List<EscherRecord> getChildRecords() {
        return this._childRecords;
    }

    public byte[] getData() {
        return this.thedata;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.stn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = UnknownEscherRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "data", new Supplier() { // from class: com.sunia.HTREnginev2.ttn
            @Override // java.util.function.Supplier
            public final Object get() {
                return UnknownEscherRecord.this.getData();
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.UNKNOWN;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return "Unknown 0x" + HexDump.toHex(getRecordId());
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return this.thedata.length + 8;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        int length = this.thedata.length;
        Iterator<EscherRecord> it2 = this._childRecords.iterator();
        while (it2.hasNext()) {
            length += it2.next().getRecordSize();
        }
        LittleEndian.putInt(bArr, i + 4, length);
        byte[] bArr2 = this.thedata;
        int i2 = i + 8;
        System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
        int length2 = i2 + this.thedata.length;
        Iterator<EscherRecord> it3 = this._childRecords.iterator();
        while (it3.hasNext()) {
            length2 += it3.next().serialize(length2, bArr, escherSerializationListener);
        }
        int i3 = length2 - i;
        escherSerializationListener.afterRecordSerialize(length2, getRecordId(), i3, this);
        return i3;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public void setChildRecords(List<EscherRecord> list) {
        List<EscherRecord> list2 = this._childRecords;
        if (list == list2) {
            return;
        }
        list2.clear();
        this._childRecords.addAll(list);
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public UnknownEscherRecord copy() {
        return new UnknownEscherRecord(this);
    }

    public UnknownEscherRecord(UnknownEscherRecord unknownEscherRecord) {
        super(unknownEscherRecord);
        this.thedata = NO_BYTES;
        ArrayList arrayList = new ArrayList();
        this._childRecords = arrayList;
        unknownEscherRecord._childRecords.stream().map(new ptf()).forEach(new qtf(arrayList));
    }
}
