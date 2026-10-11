package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.ptf;
import com.sunia.HTREnginev2.qtf;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class EscherContainerRecord extends EscherRecord implements Iterable<EscherRecord> {
    private final List<EscherRecord> _childRecords;
    private int _remainingLength;
    public static final short DGG_CONTAINER = EscherRecordTypes.DGG_CONTAINER.typeID;
    public static final short BSTORE_CONTAINER = EscherRecordTypes.BSTORE_CONTAINER.typeID;
    public static final short DG_CONTAINER = EscherRecordTypes.DG_CONTAINER.typeID;
    public static final short SPGR_CONTAINER = EscherRecordTypes.SPGR_CONTAINER.typeID;
    public static final short SP_CONTAINER = EscherRecordTypes.SP_CONTAINER.typeID;
    public static final short SOLVER_CONTAINER = EscherRecordTypes.SOLVER_CONTAINER.typeID;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) EscherContainerRecord.class);

    public EscherContainerRecord() {
        this._childRecords = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$hasChildOfType$0(short s, EscherRecord escherRecord) {
        return escherRecord.getRecordId() == s;
    }

    public void addChildBefore(EscherRecord escherRecord, int i) {
        Iterator<EscherRecord> it2 = iterator();
        int i2 = 0;
        while (it2.hasNext() && it2.next().getRecordId() != ((short) i)) {
            i2++;
        }
        this._childRecords.add(i2, escherRecord);
    }

    public void addChildRecord(EscherRecord escherRecord) {
        this._childRecords.add(escherRecord);
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public void display(PrintWriter printWriter, int i) {
        super.display(printWriter, i);
        Iterator<EscherRecord> it2 = iterator();
        while (it2.hasNext()) {
            it2.next().display(printWriter, i + 1);
        }
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        int i2 = 8;
        int i3 = i + 8;
        while (readHeader > 0 && i3 < bArr.length) {
            EscherRecord createRecord = escherRecordFactory.createRecord(bArr, i3);
            int fillFields = createRecord.fillFields(bArr, i3, escherRecordFactory);
            i2 += fillFields;
            i3 += fillFields;
            readHeader -= fillFields;
            addChildRecord(createRecord);
            if (i3 >= bArr.length && readHeader > 0) {
                this._remainingLength = readHeader;
                LOGGER.atWarn().log("Not enough Escher data: {} bytes remaining but no space left", Unbox.box(readHeader));
            }
        }
        return i2;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public EscherRecord getChild(int i) {
        return this._childRecords.get(i);
    }

    public <T extends EscherRecord> T getChildById(short s) {
        Iterator<EscherRecord> it2 = iterator();
        while (it2.hasNext()) {
            T t = (T) it2.next();
            if (t.getRecordId() == s) {
                return t;
            }
        }
        return null;
    }

    public List<EscherContainerRecord> getChildContainers() {
        ArrayList arrayList = new ArrayList();
        Iterator<EscherRecord> it2 = iterator();
        while (it2.hasNext()) {
            EscherRecord next = it2.next();
            if (next instanceof EscherContainerRecord) {
                arrayList.add((EscherContainerRecord) next);
            }
        }
        return arrayList;
    }

    public int getChildCount() {
        return this._childRecords.size();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public List<EscherRecord> getChildRecords() {
        return new ArrayList(this._childRecords);
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.rtf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = EscherContainerRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "isContainer", new Supplier() { // from class: com.sunia.HTREnginev2.stf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(EscherContainerRecord.this.isContainerRecord());
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.forTypeID(getRecordId());
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        short recordId = getRecordId();
        EscherRecordTypes forTypeID = EscherRecordTypes.forTypeID(recordId);
        if (forTypeID != EscherRecordTypes.UNKNOWN) {
            return forTypeID.recordName;
        }
        return "Container 0x" + HexDump.toHex(recordId);
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        Iterator<EscherRecord> it2 = iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getRecordSize();
        }
        return i + 8;
    }

    public void getRecordsById(short s, List<EscherRecord> list) {
        Iterator<EscherRecord> it2 = iterator();
        while (it2.hasNext()) {
            EscherRecord next = it2.next();
            if (next instanceof EscherContainerRecord) {
                ((EscherContainerRecord) next).getRecordsById(s, list);
            } else if (next.getRecordId() == s) {
                list.add(next);
            }
        }
    }

    public boolean hasChildOfType(final short s) {
        return this._childRecords.stream().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.otf
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$hasChildOfType$0;
                lambda$hasChildOfType$0 = EscherContainerRecord.lambda$hasChildOfType$0(s, (EscherRecord) obj);
                return lambda$hasChildOfType$0;
            }
        });
    }

    @Override // java.lang.Iterable
    public Iterator<EscherRecord> iterator() {
        return Collections.unmodifiableList(this._childRecords).iterator();
    }

    public boolean removeChildRecord(EscherRecord escherRecord) {
        return this._childRecords.remove(escherRecord);
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        Iterator<EscherRecord> it2 = iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            i2 += it2.next().getRecordSize();
        }
        LittleEndian.putInt(bArr, i + 4, i2 + this._remainingLength);
        int i3 = i + 8;
        Iterator<EscherRecord> it3 = iterator();
        while (it3.hasNext()) {
            i3 += it3.next().serialize(i3, bArr, escherSerializationListener);
        }
        int i4 = i3 - i;
        escherSerializationListener.afterRecordSerialize(i3, getRecordId(), i4, this);
        return i4;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public void setChildRecords(List<EscherRecord> list) {
        List<EscherRecord> list2 = this._childRecords;
        if (list == list2) {
            throw new IllegalStateException("Child records private data member has escaped");
        }
        list2.clear();
        this._childRecords.addAll(list);
    }

    @Override // java.lang.Iterable
    public Spliterator<EscherRecord> spliterator() {
        return this._childRecords.spliterator();
    }

    public EscherContainerRecord(EscherContainerRecord escherContainerRecord) {
        super(escherContainerRecord);
        ArrayList arrayList = new ArrayList();
        this._childRecords = arrayList;
        this._remainingLength = escherContainerRecord._remainingLength;
        escherContainerRecord._childRecords.stream().map(new ptf()).forEach(new qtf(arrayList));
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherContainerRecord copy() {
        return new EscherContainerRecord(this);
    }
}
