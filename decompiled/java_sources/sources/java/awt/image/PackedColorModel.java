package java.awt.image;

import java.awt.color.ColorSpace;

/* loaded from: classes5.dex */
public abstract class PackedColorModel extends ColorModel {
    int[] maskArray;
    int[] maskOffsets;
    float[] scaleFactors;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PackedColorModel(ColorSpace colorSpace, int i, int[] iArr, int i2, boolean z, int i3, int i4) {
        super(i, createBitsArray(iArr, i2), colorSpace, i2 != 0, z, i3, i4);
        int i5;
        int i6 = 0;
        if (i >= 1 && i <= 32) {
            int i7 = this.numComponents;
            this.maskArray = new int[i7];
            this.maskOffsets = new int[i7];
            this.scaleFactors = new float[i7];
            while (true) {
                i5 = this.numColorComponents;
                if (i6 >= i5) {
                    break;
                }
                DecomposeMask(iArr[i6], i6, colorSpace.getName(i6));
                i6++;
            }
            if (i2 != 0) {
                DecomposeMask(i2, i5, "alpha");
                if (this.nBits[this.numComponents - 1] == 1) {
                    this.transparency = 2;
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Number of bits must be between 1 and 32.");
    }

    private void DecomposeMask(int i, int i2, String str) {
        int i3 = this.nBits[i2];
        this.maskArray[i2] = i;
        int i4 = 0;
        if (i != 0) {
            while ((i & 1) == 0) {
                i >>>= 1;
                i4++;
            }
        }
        if (i4 + i3 <= this.pixel_bits) {
            this.maskOffsets[i2] = i4;
            if (i3 == 0) {
                this.scaleFactors[i2] = 256.0f;
                return;
            } else {
                this.scaleFactors[i2] = 255.0f / ((1 << i3) - 1);
                return;
            }
        }
        throw new IllegalArgumentException(str + " mask " + Integer.toHexString(this.maskArray[i2]) + " overflows pixel (expecting " + this.pixel_bits + " bits");
    }

    private static final int countBits(int i) {
        int i2 = 0;
        if (i != 0) {
            while ((i & 1) == 0) {
                i >>>= 1;
            }
            while ((i & 1) == 1) {
                i >>>= 1;
                i2++;
            }
        }
        if (i != 0) {
            return -1;
        }
        return i2;
    }

    private static final int[] createBitsArray(int[] iArr, int i) {
        int length = iArr.length;
        int[] iArr2 = new int[(i == 0 ? 0 : 1) + length];
        for (int i2 = 0; i2 < length; i2++) {
            int countBits = countBits(iArr[i2]);
            iArr2[i2] = countBits;
            if (countBits < 0) {
                throw new IllegalArgumentException("Noncontiguous color mask (" + Integer.toHexString(iArr[i2]) + "at index " + i2);
            }
        }
        if (i != 0) {
            int countBits2 = countBits(i);
            iArr2[length] = countBits2;
            if (countBits2 < 0) {
                throw new IllegalArgumentException("Noncontiguous alpha mask (" + Integer.toHexString(i));
            }
        }
        return iArr2;
    }

    @Override // java.awt.image.ColorModel
    public SampleModel createCompatibleSampleModel(int i, int i2) {
        return new SinglePixelPackedSampleModel(this.transferType, i, i2, this.maskArray);
    }

    @Override // java.awt.image.ColorModel
    public boolean equals(Object obj) {
        PackedColorModel packedColorModel;
        int numComponents;
        if (!(obj instanceof PackedColorModel) || !super.equals(obj) || (numComponents = (packedColorModel = (PackedColorModel) obj).getNumComponents()) != this.numComponents) {
            return false;
        }
        for (int i = 0; i < numComponents; i++) {
            if (this.maskArray[i] != packedColorModel.getMask(i)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.awt.image.ColorModel
    public WritableRaster getAlphaRaster(WritableRaster writableRaster) {
        if (!hasAlpha()) {
            return null;
        }
        int minX = writableRaster.getMinX();
        int minY = writableRaster.getMinY();
        return writableRaster.createWritableChild(minX, minY, writableRaster.getWidth(), writableRaster.getHeight(), minX, minY, new int[]{writableRaster.getNumBands() - 1});
    }

    public final int getMask(int i) {
        return this.maskArray[i];
    }

    public final int[] getMasks() {
        return (int[]) this.maskArray.clone();
    }

    @Override // java.awt.image.ColorModel
    public boolean isCompatibleSampleModel(SampleModel sampleModel) {
        if (!(sampleModel instanceof SinglePixelPackedSampleModel) || this.numComponents != sampleModel.getNumBands() || sampleModel.getTransferType() != this.transferType) {
            return false;
        }
        int[] bitMasks = ((SinglePixelPackedSampleModel) sampleModel).getBitMasks();
        if (bitMasks.length != this.maskArray.length) {
            return false;
        }
        int dataTypeSize = (int) ((1 << DataBuffer.getDataTypeSize(this.transferType)) - 1);
        for (int i = 0; i < bitMasks.length; i++) {
            if ((bitMasks[i] & dataTypeSize) != (this.maskArray[i] & dataTypeSize)) {
                return false;
            }
        }
        return true;
    }

    private static final int[] createBitsArray(int i, int i2, int i3, int i4) {
        int[] iArr = new int[(i4 == 0 ? 0 : 1) + 3];
        iArr[0] = countBits(i);
        iArr[1] = countBits(i2);
        int countBits = countBits(i3);
        iArr[2] = countBits;
        if (iArr[0] >= 0) {
            if (iArr[1] < 0) {
                throw new IllegalArgumentException("Noncontiguous green mask (" + Integer.toHexString(i2));
            }
            if (countBits < 0) {
                throw new IllegalArgumentException("Noncontiguous blue mask (" + Integer.toHexString(i3));
            }
            if (i4 != 0) {
                int countBits2 = countBits(i4);
                iArr[3] = countBits2;
                if (countBits2 < 0) {
                    throw new IllegalArgumentException("Noncontiguous alpha mask (" + Integer.toHexString(i4));
                }
            }
            return iArr;
        }
        throw new IllegalArgumentException("Noncontiguous red mask (" + Integer.toHexString(i));
    }

    public PackedColorModel(ColorSpace colorSpace, int i, int i2, int i3, int i4, int i5, boolean z, int i6, int i7) {
        super(i, createBitsArray(i2, i3, i4, i5), colorSpace, i5 != 0, z, i6, i7);
        if (colorSpace.getType() == 5) {
            int i8 = this.numComponents;
            this.maskArray = new int[i8];
            this.maskOffsets = new int[i8];
            this.scaleFactors = new float[i8];
            DecomposeMask(i2, 0, "red");
            DecomposeMask(i3, 1, "green");
            DecomposeMask(i4, 2, "blue");
            if (i5 != 0) {
                DecomposeMask(i5, 3, "alpha");
                if (this.nBits[3] == 1) {
                    this.transparency = 2;
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("ColorSpace must be TYPE_RGB.");
    }
}
