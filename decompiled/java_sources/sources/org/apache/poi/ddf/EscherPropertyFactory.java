package org.apache.poi.ddf;

import java.util.ArrayList;
import java.util.List;
import java.util.function.BiFunction;
import org.apache.poi.ddf.EscherArrayProperty;
import org.apache.poi.ddf.EscherBoolProperty;
import org.apache.poi.ddf.EscherComplexProperty;
import org.apache.poi.ddf.EscherRGBProperty;
import org.apache.poi.ddf.EscherShapePathProperty;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class EscherPropertyFactory {

    /* renamed from: org.apache.poi.ddf.EscherPropertyFactory$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194351 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ddf$EscherPropertyTypesHolder;

        static {
            int[] iArr = new int[EscherPropertyTypesHolder.values().length];
            $SwitchMap$org$apache$poi$ddf$EscherPropertyTypesHolder = iArr;
            try {
                iArr[EscherPropertyTypesHolder.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherPropertyTypesHolder[EscherPropertyTypesHolder.RGB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherPropertyTypesHolder[EscherPropertyTypesHolder.SHAPE_PATH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public List<EscherProperty> createProperties(byte[] bArr, int i, short s) {
        int arrayData;
        ArrayList<EscherProperty> arrayList = new ArrayList();
        for (int i2 = 0; i2 < s; i2++) {
            short s2 = LittleEndian.getShort(bArr, i);
            int i3 = LittleEndian.getInt(bArr, i + 2);
            boolean z = (32768 & s2) != 0;
            EscherPropertyTypes forPropertyID = EscherPropertyTypes.forPropertyID(s2);
            int i4 = C194351.$SwitchMap$org$apache$poi$ddf$EscherPropertyTypesHolder[forPropertyID.holder.ordinal()];
            arrayList.add((i4 != 1 ? i4 != 2 ? i4 != 3 ? z ? forPropertyID.holder == EscherPropertyTypesHolder.ARRAY ? new BiFunction() { // from class: com.sunia.HTREnginev2.avf
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new EscherArrayProperty(((Short) obj).shortValue(), ((Integer) obj2).intValue());
                }
            } : new BiFunction() { // from class: com.sunia.HTREnginev2.bvf
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new EscherComplexProperty(((Short) obj).shortValue(), ((Integer) obj2).intValue());
                }
            } : new BiFunction() { // from class: com.sunia.HTREnginev2.cvf
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new EscherSimpleProperty(((Short) obj).shortValue(), ((Integer) obj2).intValue());
                }
            } : new BiFunction() { // from class: com.sunia.HTREnginev2.zuf
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new EscherShapePathProperty(((Short) obj).shortValue(), ((Integer) obj2).intValue());
                }
            } : new BiFunction() { // from class: com.sunia.HTREnginev2.yuf
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new EscherRGBProperty(((Short) obj).shortValue(), ((Integer) obj2).intValue());
                }
            } : new BiFunction() { // from class: com.sunia.HTREnginev2.xuf
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new EscherBoolProperty(((Short) obj).shortValue(), ((Integer) obj2).intValue());
                }
            }).apply(Short.valueOf(s2), Integer.valueOf(i3)));
            i += 6;
        }
        for (EscherProperty escherProperty : arrayList) {
            if (escherProperty instanceof EscherArrayProperty) {
                arrayData = ((EscherArrayProperty) escherProperty).setArrayData(bArr, i);
            } else if (escherProperty instanceof EscherComplexProperty) {
                EscherComplexProperty escherComplexProperty = (EscherComplexProperty) escherProperty;
                int length = escherComplexProperty.getComplexData().length;
                int length2 = bArr.length - i;
                if (length2 < length) {
                    throw new IllegalStateException("Could not read complex escher property, length was " + length + ", but had only " + length2 + " bytes left");
                }
                arrayData = escherComplexProperty.setComplexData(bArr, i);
            } else {
                continue;
            }
            i += arrayData;
        }
        return arrayList;
    }
}
