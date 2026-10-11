package org.apache.poi.hdgf.pointers;

import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class PointerV5 extends Pointer {
    @Override // org.apache.poi.hdgf.pointers.Pointer
    public boolean destinationCompressed() {
        return (getFormat() & 2) > 0;
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public boolean destinationHasChunks() {
        int type = getType();
        if (type == 21 || type == 24) {
            return true;
        }
        return isFormatBetween(208, 223);
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public boolean destinationHasPointers() {
        int type = getType();
        if (type == 20) {
            return true;
        }
        if (type != 22) {
            return isFormatBetween(29, 31) || isFormatBetween(80, 96);
        }
        return false;
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public boolean destinationHasStrings() {
        return isFormatBetween(64, 80);
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public int getNumPointers(int i, byte[] bArr) {
        return LittleEndian.getShort(bArr, i);
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public int getNumPointersOffset(byte[] bArr) {
        int type = getType();
        if (type == 20) {
            return 130;
        }
        if (type == 78 || type == 29) {
            return 30;
        }
        return type != 30 ? 10 : 54;
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public int getPostNumPointersSkip() {
        return 2;
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public int getSizeInBytes() {
        return 16;
    }
}
