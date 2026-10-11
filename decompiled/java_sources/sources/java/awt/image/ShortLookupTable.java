package java.awt.image;

/* loaded from: classes5.dex */
public class ShortLookupTable extends LookupTable {
    short[][] data;

    public ShortLookupTable(int i, short[][] sArr) {
        super(i, sArr.length);
        int length = sArr.length;
        this.numComponents = length;
        this.numEntries = sArr[0].length;
        this.data = new short[length];
        for (int i2 = 0; i2 < this.numComponents; i2++) {
            this.data[i2] = sArr[i2];
        }
    }

    public final short[][] getTable() {
        return this.data;
    }

    @Override // java.awt.image.LookupTable
    public int[] lookupPixel(int[] iArr, int[] iArr2) {
        if (iArr2 == null) {
            iArr2 = new int[iArr.length];
        }
        if (this.numComponents == 1) {
            for (int i = 0; i < iArr.length; i++) {
                int i2 = (iArr[i] & 65535) - this.offset;
                if (i2 >= 0) {
                    iArr2[i] = this.data[0][i2];
                } else {
                    throw new ArrayIndexOutOfBoundsException("src[" + i + "]-offset is less than zero");
                }
            }
        } else {
            for (int i3 = 0; i3 < iArr.length; i3++) {
                int i4 = (iArr[i3] & 65535) - this.offset;
                if (i4 >= 0) {
                    iArr2[i3] = this.data[i3][i4];
                } else {
                    throw new ArrayIndexOutOfBoundsException("src[" + i3 + "]-offset is less than zero");
                }
            }
        }
        return iArr2;
    }

    public ShortLookupTable(int i, short[] sArr) {
        super(i, sArr.length);
        this.numComponents = 1;
        this.numEntries = sArr.length;
        this.data = r2;
        short[][] sArr2 = {sArr};
    }

    public short[] lookupPixel(short[] sArr, short[] sArr2) {
        if (sArr2 == null) {
            sArr2 = new short[sArr.length];
        }
        if (this.numComponents == 1) {
            for (int i = 0; i < sArr.length; i++) {
                int i2 = (sArr[i] & 65535) - this.offset;
                if (i2 >= 0) {
                    sArr2[i] = this.data[0][i2];
                } else {
                    throw new ArrayIndexOutOfBoundsException("src[" + i + "]-offset is less than zero");
                }
            }
        } else {
            for (int i3 = 0; i3 < sArr.length; i3++) {
                int i4 = (sArr[i3] & 65535) - this.offset;
                if (i4 >= 0) {
                    sArr2[i3] = this.data[i3][i4];
                } else {
                    throw new ArrayIndexOutOfBoundsException("src[" + i3 + "]-offset is less than zero");
                }
            }
        }
        return sArr2;
    }
}
