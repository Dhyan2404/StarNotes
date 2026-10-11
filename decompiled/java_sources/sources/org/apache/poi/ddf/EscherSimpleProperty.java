package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherSimpleProperty extends EscherProperty {
    private final int propertyValue;

    public EscherSimpleProperty(short s, int i) {
        super(s);
        this.propertyValue = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EscherSimpleProperty)) {
            return false;
        }
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) obj;
        return this.propertyValue == escherSimpleProperty.propertyValue && getId() == escherSimpleProperty.getId();
    }

    @Override // org.apache.poi.ddf.EscherProperty, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.yvf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherSimpleProperty.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "value", new Supplier() { // from class: com.sunia.HTREnginev2.zvf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherSimpleProperty.this.getPropertyValue());
            }
        });
    }

    public int getPropertyValue() {
        return this.propertyValue;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.propertyValue), Short.valueOf(getId()));
    }

    @Override // org.apache.poi.ddf.EscherProperty
    public int serializeComplexPart(byte[] bArr, int i) {
        return 0;
    }

    @Override // org.apache.poi.ddf.EscherProperty
    public int serializeSimplePart(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i, getId());
        LittleEndian.putInt(bArr, i + 2, this.propertyValue);
        return 6;
    }

    public EscherSimpleProperty(EscherPropertyTypes escherPropertyTypes, int i) {
        this(escherPropertyTypes, false, false, i);
    }

    public EscherSimpleProperty(short s, boolean z, boolean z2, int i) {
        super(s, z, z2);
        this.propertyValue = i;
    }

    public EscherSimpleProperty(EscherPropertyTypes escherPropertyTypes, boolean z, boolean z2, int i) {
        super(escherPropertyTypes, z, z2);
        this.propertyValue = i;
    }
}
