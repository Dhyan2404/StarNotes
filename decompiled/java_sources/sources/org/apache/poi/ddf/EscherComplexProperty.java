package org.apache.poi.ddf;

import com.google.common.primitives.Shorts;
import com.sunia.HTREnginev2.gon;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import kotlin.jvm.internal.ShortCompanionObject;
import org.apache.poi.ddf.EscherComplexProperty;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherComplexProperty extends EscherProperty {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000000;
    private static int MAX_RECORD_LENGTH = 100000000;
    private byte[] complexData;

    public EscherComplexProperty(short s, int i) {
        super((short) (s | ShortCompanionObject.MIN_VALUE));
        this.complexData = IOUtils.safelyAllocate(i, MAX_RECORD_LENGTH);
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EscherComplexProperty) {
            return Arrays.equals(this.complexData, ((EscherComplexProperty) obj).complexData);
        }
        return false;
    }

    public byte[] getComplexData() {
        return this.complexData;
    }

    @Override // org.apache.poi.ddf.EscherProperty, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.mtf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherComplexProperty.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "data", new Supplier() { // from class: com.sunia.HTREnginev2.ntf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EscherComplexProperty.this.getComplexData();
            }
        });
    }

    @Override // org.apache.poi.ddf.EscherProperty
    public int getPropertySize() {
        return this.complexData.length + 6;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{this.complexData, Short.valueOf(getId())});
    }

    public void resizeComplexData(int i) {
        resizeComplexData(i, Integer.MAX_VALUE);
    }

    @Override // org.apache.poi.ddf.EscherProperty
    public int serializeComplexPart(byte[] bArr, int i) {
        byte[] bArr2 = this.complexData;
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
        return this.complexData.length;
    }

    @Override // org.apache.poi.ddf.EscherProperty
    public int serializeSimplePart(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i, getId());
        LittleEndian.putInt(bArr, i + 2, this.complexData.length);
        return 6;
    }

    public int setComplexData(byte[] bArr) {
        return setComplexData(bArr, 0);
    }

    public void resizeComplexData(int i, int i2) {
        if (i == this.complexData.length) {
            return;
        }
        byte[] safelyAllocate = IOUtils.safelyAllocate(i, MAX_RECORD_LENGTH);
        byte[] bArr = this.complexData;
        System.arraycopy(bArr, 0, safelyAllocate, 0, Math.min(Math.min(bArr.length, i2), i));
        this.complexData = safelyAllocate;
    }

    public int setComplexData(byte[] bArr, int i) {
        if (bArr == null) {
            return 0;
        }
        int max = Math.max(0, Math.min(this.complexData.length, bArr.length - i));
        System.arraycopy(bArr, i, this.complexData, 0, max);
        return max;
    }

    public EscherComplexProperty(short s, boolean z, int i) {
        this((short) (s | (z ? Shorts.MAX_POWER_OF_TWO : (short) 0)), i);
    }

    public EscherComplexProperty(EscherPropertyTypes escherPropertyTypes, boolean z, int i) {
        this((short) (escherPropertyTypes.propNumber | (z ? Shorts.MAX_POWER_OF_TWO : (short) 0)), i);
    }
}
