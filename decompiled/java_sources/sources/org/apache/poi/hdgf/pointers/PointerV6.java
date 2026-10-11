package org.apache.poi.hdgf.pointers;

import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class PointerV6 extends Pointer {
    public static int getNumPointersOffsetV6(byte[] bArr) {
        return Math.toIntExact(LittleEndian.getUInt(bArr, 0));
    }

    public static int getNumPointersV6(int i, byte[] bArr) {
        return Math.toIntExact(LittleEndian.getUInt(bArr, i));
    }

    public static int getPostNumPointersSkipV6() {
        return 8;
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public boolean destinationCompressed() {
        return (getFormat() & 2) > 0;
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public boolean destinationHasChunks() {
        return isFormatBetween(208, 223);
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public boolean destinationHasPointers() {
        return getType() == 20 || isFormatBetween(29, 31) || isFormatBetween(80, 96);
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public boolean destinationHasStrings() {
        return isFormatBetween(64, 80);
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public int getNumPointers(int i, byte[] bArr) {
        return getNumPointersV6(i, bArr);
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public int getNumPointersOffset(byte[] bArr) {
        return getNumPointersOffsetV6(bArr);
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public int getPostNumPointersSkip() {
        return getPostNumPointersSkipV6();
    }

    @Override // org.apache.poi.hdgf.pointers.Pointer
    public int getSizeInBytes() {
        return 18;
    }
}
