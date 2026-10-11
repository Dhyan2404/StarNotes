package org.apache.poi.ddf;

import com.google.common.primitives.Shorts;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import kotlin.jvm.internal.ShortCompanionObject;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.ddf.EscherProperty;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.GenericRecordXmlWriter;

/* loaded from: classes12.dex */
public abstract class EscherProperty implements GenericRecord {
    private static final int[] FLAG_MASK = {16384, 32768};
    private static final String[] FLAG_NAMES = {"IS_BLIP", "IS_COMPLEX"};
    static final int IS_BLIP = 16384;
    static final int IS_COMPLEX = 32768;

    /* renamed from: id */
    private final short f111318id;

    public EscherProperty(short s) {
        this.f111318id = s;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<? extends GenericRecord> getGenericChildren() {
        return null;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("id", new Supplier() { // from class: com.sunia.HTREnginev2.tuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherProperty.this.getId());
            }
        }, "name", new Supplier() { // from class: com.sunia.HTREnginev2.uuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherProperty.this.getName();
            }
        }, "propertyNumber", new Supplier() { // from class: com.sunia.HTREnginev2.vuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherProperty.this.getPropertyNumber());
            }
        }, "propertySize", new Supplier() { // from class: com.sunia.HTREnginev2.wuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherProperty.this.getPropertySize());
            }
        }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.tuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherProperty.this.getId());
            }
        }, FLAG_MASK, FLAG_NAMES));
    }

    public short getId() {
        return this.f111318id;
    }

    public String getName() {
        return EscherPropertyTypes.forPropertyID(getPropertyNumber()).propName;
    }

    public short getPropertyNumber() {
        return (short) (this.f111318id & 16383);
    }

    public int getPropertySize() {
        return 6;
    }

    public boolean isBlipId() {
        return (this.f111318id & Shorts.MAX_POWER_OF_TWO) != 0;
    }

    public boolean isComplex() {
        return (this.f111318id & ShortCompanionObject.MIN_VALUE) != 0;
    }

    public abstract int serializeComplexPart(byte[] bArr, int i);

    public abstract int serializeSimplePart(byte[] bArr, int i);

    public final String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    public final String toXml(String str) {
        return GenericRecordXmlWriter.marshal(this);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public EscherPropertyTypes getGenericRecordType() {
        return EscherPropertyTypes.forPropertyID(this.f111318id);
    }

    public EscherProperty(short s, boolean z, boolean z2) {
        this((short) (s | (z ? ShortCompanionObject.MIN_VALUE : (short) 0) | (z2 ? 16384 : 0)));
    }

    public EscherProperty(EscherPropertyTypes escherPropertyTypes, boolean z, boolean z2) {
        this((short) (escherPropertyTypes.propNumber | (z ? ShortCompanionObject.MIN_VALUE : (short) 0) | (z2 ? 16384 : 0)));
    }
}
