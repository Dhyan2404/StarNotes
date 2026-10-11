package sun.java2d.loops;

import java.awt.Composite;
import java.awt.image.ColorModel;
import java.awt.image.WritableRaster;
import sun.awt.image.IntegerComponentRaster;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;
import sun.java2d.pipe.SpanIterator;

/* loaded from: classes16.dex */
class XorCopyArgbToAny extends Blit {
    public XorCopyArgbToAny() {
        super(SurfaceType.IntArgb, CompositeType.Xor, SurfaceType.Any);
    }

    @Override // sun.java2d.loops.Blit
    public void Blit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int[] iArr;
        IntegerComponentRaster integerComponentRaster = (IntegerComponentRaster) surfaceData.getRaster(i, i2, i5, i6);
        int[] dataStorage = integerComponentRaster.getDataStorage();
        WritableRaster writableRaster = (WritableRaster) surfaceData2.getRaster(i3, i4, i5, i6);
        ColorModel colorModel = surfaceData2.getColorModel();
        WritableRaster writableRaster2 = writableRaster;
        SpanIterator spanIterator = CustomComponent.getRegionOfInterest(surfaceData, surfaceData2, region, i, i2, i3, i4, i5, i6).getSpanIterator();
        Object obj = null;
        Object dataElements = colorModel.getDataElements(((XORComposite) composite).getXorColor().getRGB(), null);
        int scanlineStride = integerComponentRaster.getScanlineStride();
        int i10 = i - i3;
        int i11 = i2 - i4;
        int[] iArr2 = new int[4];
        Object obj2 = null;
        while (spanIterator.nextSpan(iArr2)) {
            char c = 0;
            int dataOffset = integerComponentRaster.getDataOffset(0);
            int i12 = iArr2[1];
            int i13 = dataOffset + ((i11 + i12) * scanlineStride) + i10 + iArr2[0];
            while (i12 < iArr2[3]) {
                int i14 = iArr2[c];
                int i15 = i13;
                while (i14 < iArr2[2]) {
                    int i16 = i15 + 1;
                    obj = colorModel.getDataElements(dataStorage[i15], obj);
                    WritableRaster writableRaster3 = writableRaster2;
                    obj2 = writableRaster3.getDataElements(i14, i12, obj2);
                    SpanIterator spanIterator2 = spanIterator;
                    int transferType = colorModel.getTransferType();
                    if (transferType != 0) {
                        i7 = i10;
                        if (transferType == 1 || transferType == 2) {
                            i8 = i11;
                            i9 = i16;
                            iArr = iArr2;
                            short[] sArr = (short[]) obj;
                            short[] sArr2 = (short[]) obj2;
                            short[] sArr3 = (short[]) dataElements;
                            for (int i17 = 0; i17 < sArr2.length; i17++) {
                                sArr2[i17] = (short) (sArr2[i17] ^ (sArr[i17] ^ sArr3[i17]));
                            }
                        } else if (transferType == 3) {
                            i8 = i11;
                            i9 = i16;
                            iArr = iArr2;
                            int[] iArr3 = (int[]) obj;
                            int[] iArr4 = (int[]) obj2;
                            int[] iArr5 = (int[]) dataElements;
                            for (int i18 = 0; i18 < iArr4.length; i18++) {
                                iArr4[i18] = iArr4[i18] ^ (iArr3[i18] ^ iArr5[i18]);
                            }
                        } else if (transferType == 4) {
                            i8 = i11;
                            i9 = i16;
                            float[] fArr = (float[]) obj;
                            float[] fArr2 = (float[]) obj2;
                            float[] fArr3 = (float[]) dataElements;
                            iArr = iArr2;
                            for (int i19 = 0; i19 < fArr2.length; i19++) {
                                fArr2[i19] = Float.intBitsToFloat((Float.floatToIntBits(fArr2[i19]) ^ Float.floatToIntBits(fArr[i19])) ^ Float.floatToIntBits(fArr3[i19]));
                            }
                        } else {
                            if (transferType != 5) {
                                throw new InternalError("Unsupported XOR pixel type");
                            }
                            double[] dArr = (double[]) obj;
                            double[] dArr2 = (double[]) obj2;
                            double[] dArr3 = (double[]) dataElements;
                            i8 = i11;
                            i9 = i16;
                            for (int i20 = 0; i20 < dArr2.length; i20++) {
                                dArr2[i20] = Double.longBitsToDouble((Double.doubleToLongBits(dArr2[i20]) ^ Double.doubleToLongBits(dArr[i20])) ^ Double.doubleToLongBits(dArr3[i20]));
                            }
                            iArr = iArr2;
                        }
                    } else {
                        i7 = i10;
                        i8 = i11;
                        i9 = i16;
                        iArr = iArr2;
                        byte[] bArr = (byte[]) obj;
                        byte[] bArr2 = (byte[]) obj2;
                        byte[] bArr3 = (byte[]) dataElements;
                        for (int i21 = 0; i21 < bArr2.length; i21++) {
                            bArr2[i21] = (byte) (bArr2[i21] ^ (bArr[i21] ^ bArr3[i21]));
                        }
                    }
                    writableRaster3.setDataElements(i14, i12, obj2);
                    i14++;
                    spanIterator = spanIterator2;
                    i11 = i8;
                    i10 = i7;
                    writableRaster2 = writableRaster3;
                    iArr2 = iArr;
                    i15 = i9;
                }
                i13 += scanlineStride;
                i12++;
                writableRaster2 = writableRaster2;
                c = 0;
            }
        }
    }
}
