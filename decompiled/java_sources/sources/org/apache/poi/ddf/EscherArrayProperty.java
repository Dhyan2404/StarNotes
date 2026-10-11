package org.apache.poi.ddf;

import com.google.common.primitives.Shorts;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
import org.apache.poi.ddf.EscherArrayProperty;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class EscherArrayProperty extends EscherComplexProperty implements Iterable<byte[]> {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static final int FIXED_SIZE = 6;
    private static int MAX_RECORD_LENGTH = 100000;
    private final boolean emptyComplexPart;
    private boolean sizeIncludesHeaderSize;

    @Internal
    public EscherArrayProperty(short s, int i) {
        super(s, i);
        this.sizeIncludesHeaderSize = true;
        this.emptyComplexPart = i == 0;
    }

    private static int getActualSizeOfElements(short s) {
        return s < 0 ? (short) ((-s) >> 2) : s;
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return (List) StreamSupport.stream(spliterator(), false).collect(Collectors.toList());
    }

    private void rewriteArray(int i, boolean z) {
        int actualSizeOfElements = (i * getActualSizeOfElements(getSizeOfElements())) + 6;
        resizeComplexData(actualSizeOfElements, z ? actualSizeOfElements : getComplexData().length);
    }

    private static int safeSize(int i) {
        if (i == 0) {
            return 6;
        }
        return i;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public byte[] getElement(int i) {
        int actualSizeOfElements = getActualSizeOfElements(getSizeOfElements());
        return IOUtils.safelyClone(getComplexData(), (i * actualSizeOfElements) + 6, actualSizeOfElements, MAX_RECORD_LENGTH);
    }

    @Override // org.apache.poi.ddf.EscherComplexProperty, org.apache.poi.ddf.EscherProperty, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.wrf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherArrayProperty.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "numElements", new Supplier() { // from class: com.sunia.HTREnginev2.xrf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherArrayProperty.this.getNumberOfElementsInArray());
            }
        }, "numElementsInMemory", new Supplier() { // from class: com.sunia.HTREnginev2.yrf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherArrayProperty.this.getNumberOfElementsInMemory());
            }
        }, "sizeOfElements", new Supplier() { // from class: com.sunia.HTREnginev2.zrf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(EscherArrayProperty.this.getSizeOfElements());
            }
        }, Constants.ATTRNAME_ELEMENTS, new Supplier() { // from class: com.sunia.HTREnginev2.asf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = EscherArrayProperty.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    public int getNumberOfElementsInArray() {
        if (this.emptyComplexPart) {
            return 0;
        }
        return LittleEndian.getUShort(getComplexData(), 0);
    }

    public int getNumberOfElementsInMemory() {
        if (this.emptyComplexPart) {
            return 0;
        }
        return LittleEndian.getUShort(getComplexData(), 2);
    }

    public short getSizeOfElements() {
        if (this.emptyComplexPart) {
            return (short) 0;
        }
        return LittleEndian.getShort(getComplexData(), 4);
    }

    @Override // java.lang.Iterable
    public Iterator<byte[]> iterator() {
        return new Iterator<byte[]>() { // from class: org.apache.poi.ddf.EscherArrayProperty.1
            int idx;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.idx < EscherArrayProperty.this.getNumberOfElementsInArray();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("not yet implemented");
            }

            @Override // java.util.Iterator
            public byte[] next() {
                if (hasNext()) {
                    EscherArrayProperty escherArrayProperty = EscherArrayProperty.this;
                    int i = this.idx;
                    this.idx = i + 1;
                    return escherArrayProperty.getElement(i);
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // org.apache.poi.ddf.EscherComplexProperty, org.apache.poi.ddf.EscherProperty
    public int serializeSimplePart(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i, getId());
        int length = getComplexData().length;
        if (!this.sizeIncludesHeaderSize) {
            length -= 6;
        }
        LittleEndian.putInt(bArr, i + 2, length);
        return 6;
    }

    public int setArrayData(byte[] bArr, int i) {
        if (this.emptyComplexPart) {
            resizeComplexData(0);
        } else {
            short s = LittleEndian.getShort(bArr, i);
            short s2 = LittleEndian.getShort(bArr, i + 4);
            int length = getComplexData().length;
            int actualSizeOfElements = getActualSizeOfElements(s2) * s;
            if (actualSizeOfElements == length) {
                resizeComplexData(actualSizeOfElements + 6, 0);
                this.sizeIncludesHeaderSize = false;
            }
            setComplexData(bArr, i);
        }
        return getComplexData().length;
    }

    public void setElement(int i, byte[] bArr) {
        if (this.emptyComplexPart) {
            return;
        }
        int actualSizeOfElements = getActualSizeOfElements(getSizeOfElements());
        System.arraycopy(bArr, 0, getComplexData(), (i * actualSizeOfElements) + 6, actualSizeOfElements);
    }

    public void setNumberOfElementsInArray(int i) {
        if (this.emptyComplexPart) {
            return;
        }
        rewriteArray(i, false);
        LittleEndian.putShort(getComplexData(), 0, (short) i);
    }

    public void setNumberOfElementsInMemory(int i) {
        if (this.emptyComplexPart) {
            return;
        }
        rewriteArray(i, true);
        LittleEndian.putShort(getComplexData(), 2, (short) i);
    }

    public void setSizeOfElements(int i) {
        if (this.emptyComplexPart) {
            return;
        }
        LittleEndian.putShort(getComplexData(), 4, (short) i);
        resizeComplexData((getNumberOfElementsInArray() * getActualSizeOfElements(getSizeOfElements())) + 6, 6);
    }

    @Override // java.lang.Iterable
    public Spliterator<byte[]> spliterator() {
        return Spliterators.spliterator(iterator(), getNumberOfElementsInArray(), 0);
    }

    @Removal(version = "5.0.0")
    @Deprecated
    public EscherArrayProperty(short s, boolean z, byte[] bArr) {
        this((short) (s | (z ? Shorts.MAX_POWER_OF_TWO : (short) 0)), safeSize(bArr != null ? bArr.length : 0));
        setComplexData(bArr);
    }

    public EscherArrayProperty(EscherPropertyTypes escherPropertyTypes, boolean z, int i) {
        this((short) (escherPropertyTypes.propNumber | (z ? Shorts.MAX_POWER_OF_TWO : (short) 0)), safeSize(i));
    }
}
