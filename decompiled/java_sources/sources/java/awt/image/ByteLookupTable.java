package java.awt.image;

/* loaded from: classes5.dex */
public class ByteLookupTable extends LookupTable {
    byte[][] data;

    public ByteLookupTable(int i, byte[][] bArr) {
        super(i, bArr.length);
        int length = bArr.length;
        this.numComponents = length;
        this.numEntries = bArr[0].length;
        this.data = new byte[length];
        for (int i2 = 0; i2 < this.numComponents; i2++) {
            this.data[i2] = bArr[i2];
        }
    }

    public final byte[][] getTable() {
        return this.data;
    }

    @Override // java.awt.image.LookupTable
    public int[] lookupPixel(int[] iArr, int[] iArr2) {
        if (iArr2 == null) {
            iArr2 = new int[iArr.length];
        }
        if (this.numComponents == 1) {
            for (int i = 0; i < iArr.length; i++) {
                int i2 = iArr[i] - this.offset;
                if (i2 >= 0) {
                    iArr2[i] = this.data[0][i2];
                } else {
                    throw new ArrayIndexOutOfBoundsException("src[" + i + "]-offset is less than zero");
                }
            }
        } else {
            for (int i3 = 0; i3 < iArr.length; i3++) {
                int i4 = iArr[i3] - this.offset;
                if (i4 >= 0) {
                    iArr2[i3] = this.data[i3][i4];
                } else {
                    throw new ArrayIndexOutOfBoundsException("src[" + i3 + "]-offset is less than zero");
                }
            }
        }
        return iArr2;
    }

    public ByteLookupTable(int i, byte[] bArr) {
        super(i, bArr.length);
        this.numComponents = 1;
        this.numEntries = bArr.length;
        this.data = r2;
        byte[][] bArr2 = {bArr};
    }

    public byte[] lookupPixel(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            bArr2 = new byte[bArr.length];
        }
        if (this.numComponents == 1) {
            for (int i = 0; i < bArr.length; i++) {
                int i2 = (bArr[i] & 255) - this.offset;
                if (i2 >= 0) {
                    bArr2[i] = this.data[0][i2];
                } else {
                    throw new ArrayIndexOutOfBoundsException("src[" + i + "]-offset is less than zero");
                }
            }
        } else {
            for (int i3 = 0; i3 < bArr.length; i3++) {
                int i4 = (bArr[i3] & 255) - this.offset;
                if (i4 >= 0) {
                    bArr2[i3] = this.data[i3][i4];
                } else {
                    throw new ArrayIndexOutOfBoundsException("src[" + i3 + "]-offset is less than zero");
                }
            }
        }
        return bArr2;
    }
}
