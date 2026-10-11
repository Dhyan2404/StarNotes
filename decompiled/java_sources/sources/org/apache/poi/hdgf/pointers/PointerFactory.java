package org.apache.poi.hdgf.pointers;

import org.apache.poi.hdgf.exceptions.OldVisioFormatException;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class PointerFactory {
    private static final int MAX_NUMBER_OF_POINTERS = 100000;
    private final int version;

    public PointerFactory(int i) {
        this.version = i;
    }

    public Pointer[] createContainerPointers(Pointer pointer, byte[] bArr) {
        int numPointersOffset = pointer.getNumPointersOffset(bArr);
        int numPointers = pointer.getNumPointers(numPointersOffset, bArr);
        int postNumPointersSkip = pointer.getPostNumPointersSkip();
        if (numPointers < 0) {
            throw new IllegalArgumentException("Cannot create container pointers with negative count: " + numPointers);
        }
        IOUtils.safelyAllocateCheck(numPointers, 100000);
        int i = numPointersOffset + postNumPointersSkip;
        Pointer[] pointerArr = new Pointer[numPointers];
        for (int i2 = 0; i2 < numPointers; i2++) {
            Pointer createPointer = createPointer(bArr, i);
            pointerArr[i2] = createPointer;
            i += createPointer.getSizeInBytes();
        }
        return pointerArr;
    }

    public Pointer createPointer(byte[] bArr, int i) {
        int i2 = this.version;
        if (i2 >= 6) {
            PointerV6 pointerV6 = new PointerV6();
            pointerV6.setType(LittleEndian.getInt(bArr, i));
            pointerV6.setAddress((int) LittleEndian.getUInt(bArr, i + 4));
            pointerV6.setOffset((int) LittleEndian.getUInt(bArr, i + 8));
            pointerV6.setLength((int) LittleEndian.getUInt(bArr, i + 12));
            pointerV6.setFormat(LittleEndian.getShort(bArr, i + 16));
            return pointerV6;
        }
        if (i2 != 5) {
            throw new OldVisioFormatException("Visio files with versions below 5 are not supported, yours was " + this.version);
        }
        PointerV5 pointerV5 = new PointerV5();
        pointerV5.setType(LittleEndian.getShort(bArr, i));
        pointerV5.setFormat(LittleEndian.getShort(bArr, i + 2));
        pointerV5.setAddress((int) LittleEndian.getUInt(bArr, i + 4));
        pointerV5.setOffset((int) LittleEndian.getUInt(bArr, i + 8));
        pointerV5.setLength((int) LittleEndian.getUInt(bArr, i + 12));
        return pointerV5;
    }

    public int getVersion() {
        return this.version;
    }
}
