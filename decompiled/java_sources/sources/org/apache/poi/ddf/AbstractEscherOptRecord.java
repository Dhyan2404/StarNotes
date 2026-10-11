package org.apache.poi.ddf;

import com.onyx.android.sdk.genericshape.GeoConstant;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherProperty;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public abstract class AbstractEscherOptRecord extends EscherRecord {
    private final List<EscherProperty> properties;

    public AbstractEscherOptRecord() {
        this.properties = new ArrayList();
    }

    private int getPropertiesSize() {
        Iterator<EscherProperty> it2 = this.properties.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getPropertySize();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$lookup$0(int i, EscherProperty escherProperty) {
        return escherProperty.getPropertyNumber() == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeEscherProperty$2(EscherPropertyTypes escherPropertyTypes, EscherProperty escherProperty) {
        return escherProperty.getPropertyNumber() == escherPropertyTypes.propNumber;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$setEscherProperty$1(EscherProperty escherProperty, EscherProperty escherProperty2) {
        return escherProperty2.getId() == escherProperty.getId();
    }

    public void addEscherProperty(EscherProperty escherProperty) {
        this.properties.add(escherProperty);
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        if (readHeader < 0) {
            throw new IllegalStateException("Invalid value for bytesRemaining: " + readHeader);
        }
        short readInstance = EscherRecord.readInstance(bArr, i);
        EscherPropertyFactory escherPropertyFactory = new EscherPropertyFactory();
        this.properties.clear();
        this.properties.addAll(escherPropertyFactory.createProperties(bArr, i + 8, readInstance));
        return readHeader + 8;
    }

    public List<EscherProperty> getEscherProperties() {
        return this.properties;
    }

    public EscherProperty getEscherProperty(int i) {
        return this.properties.get(i);
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.f3
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = AbstractEscherOptRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "isContainer", new Supplier() { // from class: com.sunia.HTREnginev2.g3
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AbstractEscherOptRecord.this.isContainerRecord());
            }
        }, GeoConstant.KEY_Properties, new Supplier() { // from class: com.sunia.HTREnginev2.h3
            @Override // java.util.function.Supplier
            public final Object get() {
                return AbstractEscherOptRecord.this.getEscherProperties();
            }
        });
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return getPropertiesSize() + 8;
    }

    public <T extends EscherProperty> T lookup(EscherPropertyTypes escherPropertyTypes) {
        return (T) lookup(escherPropertyTypes.propNumber);
    }

    public void removeEscherProperty(final EscherPropertyTypes escherPropertyTypes) {
        this.properties.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.i3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$removeEscherProperty$2;
                lambda$removeEscherProperty$2 = AbstractEscherOptRecord.lambda$removeEscherProperty$2(EscherPropertyTypes.this, (EscherProperty) obj);
                return lambda$removeEscherProperty$2;
            }
        });
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        LittleEndian.putInt(bArr, i + 4, getPropertiesSize());
        int i2 = i + 8;
        Iterator<EscherProperty> it2 = this.properties.iterator();
        while (it2.hasNext()) {
            i2 += it2.next().serializeSimplePart(bArr, i2);
        }
        Iterator<EscherProperty> it3 = this.properties.iterator();
        while (it3.hasNext()) {
            i2 += it3.next().serializeComplexPart(bArr, i2);
        }
        int i3 = i2 - i;
        escherSerializationListener.afterRecordSerialize(i2, getRecordId(), i3, this);
        return i3;
    }

    public void setEscherProperty(final EscherProperty escherProperty) {
        this.properties.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.e3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$setEscherProperty$1;
                lambda$setEscherProperty$1 = AbstractEscherOptRecord.lambda$setEscherProperty$1(EscherProperty.this, (EscherProperty) obj);
                return lambda$setEscherProperty$1;
            }
        });
        this.properties.add(escherProperty);
        sortProperties();
    }

    public void sortProperties() {
        this.properties.sort(Comparator.comparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.d3
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((EscherProperty) obj).getPropertyNumber();
            }
        }));
    }

    public <T extends EscherProperty> T lookup(final int i) {
        return (T) this.properties.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.j3
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$lookup$0;
                lambda$lookup$0 = AbstractEscherOptRecord.lambda$lookup$0(i, (EscherProperty) obj);
                return lambda$lookup$0;
            }
        }).findFirst().orElse(null);
    }

    public AbstractEscherOptRecord(AbstractEscherOptRecord abstractEscherOptRecord) {
        super(abstractEscherOptRecord);
        ArrayList arrayList = new ArrayList();
        this.properties = arrayList;
        arrayList.addAll(abstractEscherOptRecord.properties);
    }
}
