package java.awt.image;

/* loaded from: classes5.dex */
public class PixelInterleavedSampleModel extends ComponentSampleModel {
    public PixelInterleavedSampleModel(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        super(i, i2, i3, i4, i5, iArr);
        int i6 = this.bandOffsets[0];
        int i7 = 1;
        int i8 = i6;
        while (true) {
            int[] iArr2 = this.bandOffsets;
            if (i7 >= iArr2.length) {
                break;
            }
            i8 = Math.min(i8, iArr2[i7]);
            i6 = Math.max(i6, this.bandOffsets[i7]);
            i7++;
        }
        int i9 = i6 - i8;
        if (i9 > i5) {
            throw new IllegalArgumentException("Offsets between bands must be less than the scanline  stride");
        }
        if (i2 * i4 > i5) {
            throw new IllegalArgumentException("Pixel stride times width must be less than or equal to the scanline stride");
        }
        if (i4 < i9) {
            throw new IllegalArgumentException("Pixel stride must be greater than or equal to the offsets between bands");
        }
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public SampleModel createCompatibleSampleModel(int i, int i2) {
        int[] iArr;
        int[] iArr2 = this.bandOffsets;
        int i3 = iArr2[0];
        int length = iArr2.length;
        for (int i4 = 1; i4 < length; i4++) {
            int i5 = this.bandOffsets[i4];
            if (i5 < i3) {
                i3 = i5;
            }
        }
        if (i3 > 0) {
            iArr = new int[length];
            for (int i6 = 0; i6 < length; i6++) {
                iArr[i6] = this.bandOffsets[i6] - i3;
            }
        } else {
            iArr = this.bandOffsets;
        }
        int i7 = this.dataType;
        int i8 = this.pixelStride;
        return new PixelInterleavedSampleModel(i7, i, i2, i8, i8 * i, iArr);
    }

    @Override // java.awt.image.ComponentSampleModel, java.awt.image.SampleModel
    public SampleModel createSubsetSampleModel(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = this.bandOffsets[iArr[i]];
        }
        return new PixelInterleavedSampleModel(this.dataType, this.width, this.height, this.pixelStride, this.scanlineStride, iArr2);
    }

    @Override // java.awt.image.ComponentSampleModel
    public int hashCode() {
        return super.hashCode() ^ 1;
    }
}
