package org.apache.poi.hpsf;

import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianByteArrayInputStream;

@Internal
/* loaded from: classes12.dex */
public class Array {
    private static final int DEFAULT_MAX_NUMBER_OF_ARRAY_SCALARS = 100000;
    private static int MAX_NUMBER_OF_ARRAY_SCALARS = 100000;
    private final ArrayHeader _header = new ArrayHeader();
    private TypedPropertyValue[] _values;

    /* loaded from: classes12.dex */
    public static class ArrayDimension {
        private int _indexOffset;
        private long _size;

        public void read(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
            this._size = littleEndianByteArrayInputStream.readUInt();
            this._indexOffset = littleEndianByteArrayInputStream.readInt();
        }
    }

    /* loaded from: classes12.dex */
    public static class ArrayHeader {
        private ArrayDimension[] _dimensions;
        private int _type;

        public long getNumberOfScalarValues() {
            long j = 1;
            for (ArrayDimension arrayDimension : this._dimensions) {
                j *= arrayDimension._size;
            }
            return j;
        }

        public int getType() {
            return this._type;
        }

        public void read(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
            this._type = littleEndianByteArrayInputStream.readInt();
            long readUInt = littleEndianByteArrayInputStream.readUInt();
            if (1 > readUInt || readUInt > 31) {
                throw new IllegalPropertySetDataException("Array dimension number " + readUInt + " is not in [1; 31] range");
            }
            int i = (int) readUInt;
            this._dimensions = new ArrayDimension[i];
            for (int i2 = 0; i2 < i; i2++) {
                ArrayDimension arrayDimension = new ArrayDimension();
                arrayDimension.read(littleEndianByteArrayInputStream);
                this._dimensions[i2] = arrayDimension;
            }
        }
    }

    public static int getMaxNumberOfArrayScalars() {
        return MAX_NUMBER_OF_ARRAY_SCALARS;
    }

    public static void setMaxNumberOfArrayScalars(int i) {
        MAX_NUMBER_OF_ARRAY_SCALARS = i;
    }

    public TypedPropertyValue[] getValues() {
        return this._values;
    }

    public void read(LittleEndianByteArrayInputStream littleEndianByteArrayInputStream) {
        this._header.read(littleEndianByteArrayInputStream);
        long numberOfScalarValues = this._header.getNumberOfScalarValues();
        if (numberOfScalarValues > 2147483647L) {
            throw new UnsupportedOperationException("Sorry, but POI can't store array of properties with size of " + numberOfScalarValues + " in memory");
        }
        int i = (int) numberOfScalarValues;
        IOUtils.safelyAllocateCheck(i, getMaxNumberOfArrayScalars());
        this._values = new TypedPropertyValue[i];
        int i2 = this._header._type == 12 ? 0 : this._header._type;
        for (int i3 = 0; i3 < i; i3++) {
            TypedPropertyValue typedPropertyValue = new TypedPropertyValue(i2, null);
            typedPropertyValue.read(littleEndianByteArrayInputStream);
            this._values[i3] = typedPropertyValue;
            if (i2 != 0) {
                TypedPropertyValue.skipPadding(littleEndianByteArrayInputStream);
            }
        }
    }
}
