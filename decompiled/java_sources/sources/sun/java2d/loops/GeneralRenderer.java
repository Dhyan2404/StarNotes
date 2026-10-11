package sun.java2d.loops;

import java.awt.image.ColorModel;
import java.awt.image.WritableRaster;
import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.loops.XorPixelWriter;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public final class GeneralRenderer {
    static final int OUTCODE_BOTTOM = 2;
    static final int OUTCODE_LEFT = 4;
    static final int OUTCODE_RIGHT = 8;
    static final int OUTCODE_TOP = 1;

    public static boolean adjustLine(int[] iArr, int i, int i2, int i3, int i4) {
        int i5 = i3 - 1;
        int i6 = i4 - 1;
        int i7 = iArr[0];
        int i8 = iArr[1];
        int i9 = iArr[2];
        int i10 = iArr[3];
        if (i5 < i || i6 < i2) {
            return false;
        }
        if (i7 == i9) {
            if (i7 < i || i7 > i5) {
                return false;
            }
            if (i8 > i10) {
                i8 = i10;
                i10 = i8;
            }
            if (i8 < i2) {
                i8 = i2;
            }
            if (i10 <= i6) {
                i6 = i10;
            }
            if (i8 > i6) {
                return false;
            }
            iArr[1] = i8;
            iArr[3] = i6;
        } else if (i8 != i10) {
            int i11 = i9 - i7;
            int i12 = i10 - i8;
            int i13 = i11 < 0 ? -i11 : i11;
            int i14 = i12 < 0 ? -i12 : i12;
            boolean z = i13 >= i14;
            int i15 = i14;
            int i16 = i13;
            int i17 = i10;
            int outcode = outcode(i7, i8, i, i2, i5, i6);
            int outcode2 = outcode(i9, i17, i, i2, i5, i6);
            int i18 = outcode;
            int i19 = i9;
            int i20 = i8;
            int i21 = i7;
            int i22 = outcode2;
            while ((i18 | i22) != 0) {
                if ((i18 & i22) != 0) {
                    return false;
                }
                if (i18 != 0) {
                    if ((i18 & 3) != 0) {
                        int i23 = (i18 & 1) != 0 ? i2 : i6;
                        int i24 = i23 - iArr[1];
                        if (i24 < 0) {
                            i24 = -i24;
                        }
                        int i25 = (i24 * 2 * i16) + i15;
                        if (z) {
                            i25 += (i15 - i16) - 1;
                        }
                        int i26 = i25 / (i15 * 2);
                        if (i11 < 0) {
                            i26 = -i26;
                        }
                        i20 = i23;
                        i21 = iArr[0] + i26;
                    } else if ((i18 & 12) != 0) {
                        int i27 = (i18 & 4) != 0 ? i : i5;
                        int i28 = i27 - iArr[0];
                        if (i28 < 0) {
                            i28 = -i28;
                        }
                        int i29 = (i28 * 2 * i15) + i16;
                        if (!z) {
                            i29 += (i16 - i15) - 1;
                        }
                        int i30 = i29 / (i16 * 2);
                        if (i12 < 0) {
                            i30 = -i30;
                        }
                        i21 = i27;
                        i20 = iArr[1] + i30;
                    }
                    i18 = outcode(i21, i20, i, i2, i5, i6);
                } else {
                    if ((i22 & 3) != 0) {
                        int i31 = (i22 & 1) != 0 ? i2 : i6;
                        int i32 = i31 - iArr[3];
                        if (i32 < 0) {
                            i32 = -i32;
                        }
                        int i33 = (i32 * 2 * i16) + i15;
                        int i34 = (z ? i33 + (i15 - i16) : i33 - 1) / (i15 * 2);
                        if (i11 > 0) {
                            i34 = -i34;
                        }
                        i17 = i31;
                        i19 = iArr[2] + i34;
                    } else if ((i22 & 12) != 0) {
                        int i35 = (i22 & 4) != 0 ? i : i5;
                        int i36 = i35 - iArr[2];
                        if (i36 < 0) {
                            i36 = -i36;
                        }
                        int i37 = (i36 * 2 * i15) + i16;
                        int i38 = (z ? i37 - 1 : i37 + (i16 - i15)) / (i16 * 2);
                        if (i12 > 0) {
                            i38 = -i38;
                        }
                        i19 = i35;
                        i17 = iArr[3] + i38;
                    }
                    i22 = outcode(i19, i17, i, i2, i5, i6);
                }
            }
            iArr[0] = i21;
            iArr[1] = i20;
            iArr[2] = i19;
            iArr[3] = i17;
            iArr[4] = i11;
            iArr[5] = i12;
            iArr[6] = i16;
            iArr[7] = i15;
        } else {
            if (i8 < i2 || i8 > i6) {
                return false;
            }
            if (i7 > i9) {
                i9 = i7;
                i7 = i9;
            }
            if (i7 < i) {
                i7 = i;
            }
            if (i9 <= i5) {
                i5 = i9;
            }
            if (i7 > i5) {
                return false;
            }
            iArr[0] = i7;
            iArr[2] = i5;
        }
        return true;
    }

    public static PixelWriter createSolidPixelWriter(SunGraphics2D sunGraphics2D, SurfaceData surfaceData) {
        return new SolidPixelWriter(surfaceData.getColorModel().getDataElements(sunGraphics2D.eargb, null));
    }

    public static PixelWriter createXorPixelWriter(SunGraphics2D sunGraphics2D, SurfaceData surfaceData) {
        ColorModel colorModel = surfaceData.getColorModel();
        Object dataElements = colorModel.getDataElements(sunGraphics2D.eargb, null);
        Object dataElements2 = colorModel.getDataElements(((XORComposite) sunGraphics2D.getComposite()).getXorColor().getRGB(), null);
        int transferType = colorModel.getTransferType();
        if (transferType == 0) {
            return new XorPixelWriter.ByteData(dataElements, dataElements2);
        }
        if (transferType == 1 || transferType == 2) {
            return new XorPixelWriter.ShortData(dataElements, dataElements2);
        }
        if (transferType == 3) {
            return new XorPixelWriter.IntData(dataElements, dataElements2);
        }
        if (transferType == 4) {
            return new XorPixelWriter.FloatData(dataElements, dataElements2);
        }
        if (transferType == 5) {
            return new XorPixelWriter.DoubleData(dataElements, dataElements2);
        }
        throw new InternalError("Unsupported XOR pixel type");
    }

    public static void doDrawGlyphList(SurfaceData surfaceData, PixelWriter pixelWriter, GlyphList glyphList, Region region) {
        int i;
        int i2;
        int[] bounds = glyphList.getBounds();
        region.clipBoxToBounds(bounds);
        char c = 0;
        int i3 = bounds[0];
        char c2 = 1;
        int i4 = bounds[1];
        char c3 = 2;
        int i5 = bounds[2];
        int i6 = bounds[3];
        pixelWriter.setRaster((WritableRaster) surfaceData.getRaster(i3, i4, i5 - i3, i6 - i4));
        int numGlyphs = glyphList.getNumGlyphs();
        int i7 = 0;
        while (i7 < numGlyphs) {
            glyphList.setGlyphIndex(i7);
            int[] metrics = glyphList.getMetrics();
            int i8 = metrics[c];
            int i9 = metrics[c2];
            int i10 = metrics[c3];
            int i11 = i8 + i10;
            int i12 = metrics[3] + i9;
            if (i8 < i3) {
                i2 = i3 - i8;
                i = i3;
            } else {
                i = i8;
                i2 = 0;
            }
            if (i9 < i4) {
                i2 += (i4 - i9) * i10;
                i9 = i4;
            }
            if (i11 > i5) {
                i11 = i5;
            }
            if (i12 > i6) {
                i12 = i6;
            }
            if (i11 > i && i12 > i9) {
                byte[] grayBits = glyphList.getGrayBits();
                int i13 = i10 - (i11 - i);
                while (i9 < i12) {
                    int i14 = i;
                    while (i14 < i11) {
                        int i15 = i2 + 1;
                        if (grayBits[i2] < 0) {
                            pixelWriter.writePixel(i14, i9);
                        }
                        i14++;
                        i2 = i15;
                    }
                    i2 += i13;
                    i9++;
                }
            }
            i7++;
            c = 0;
            c2 = 1;
            c3 = 2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005e, code lost:
    
        if (r9 > r7) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0060, code lost:
    
        r19.writePixel(r8, r9);
        r9 = r9 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0064, code lost:
    
        if (r9 >= r7) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0068, code lost:
    
        r19.writePixel(r8, r9);
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006c, code lost:
    
        if (r9 <= r7) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0072, code lost:
    
        if (r8 > r10) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0074, code lost:
    
        r19.writePixel(r8, r9);
        r8 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0078, code lost:
    
        if (r8 >= r10) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007c, code lost:
    
        r19.writePixel(r8, r9);
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0080, code lost:
    
        if (r8 <= r10) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d6, code lost:
    
        if (r4 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00d8, code lost:
    
        r19.writePixel(r8, r9);
        r8 = r8 + r12;
        r11 = r11 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00dd, code lost:
    
        if (r11 < 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00df, code lost:
    
        r9 = r9 + r13;
        r11 = r11 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e1, code lost:
    
        r5 = r5 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e3, code lost:
    
        if (r5 >= 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e6, code lost:
    
        r19.writePixel(r8, r9);
        r9 = r9 + r12;
        r11 = r11 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00eb, code lost:
    
        if (r11 < 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ed, code lost:
    
        r8 = r8 + r13;
        r11 = r11 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ef, code lost:
    
        r5 = r5 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f1, code lost:
    
        if (r5 >= 0) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] doDrawLine(sun.java2d.SurfaceData r18, sun.java2d.loops.PixelWriter r19, int[] r20, sun.java2d.pipe.Region r21, int r22, int r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.loops.GeneralRenderer.doDrawLine(sun.java2d.SurfaceData, sun.java2d.loops.PixelWriter, int[], sun.java2d.pipe.Region, int, int, int, int):int[]");
    }

    public static void doDrawPoly(SurfaceData surfaceData, PixelWriter pixelWriter, int[] iArr, int[] iArr2, int i, int i2, Region region, int i3, int i4, boolean z) {
        if (i2 <= 0) {
            return;
        }
        int i5 = iArr[i] + i3;
        int i6 = iArr2[i] + i4;
        int i7 = i2;
        int[] iArr3 = null;
        int i8 = i5;
        int i9 = i6;
        int i10 = i;
        while (true) {
            i7--;
            if (i7 <= 0) {
                break;
            }
            i10++;
            int i11 = iArr[i10] + i3;
            int i12 = iArr2[i10] + i4;
            iArr3 = doDrawLine(surfaceData, pixelWriter, iArr3, region, i8, i9, i11, i12);
            i8 = i11;
            i9 = i12;
        }
        if (z) {
            if (i8 == i5 && i9 == i6) {
                return;
            }
            doDrawLine(surfaceData, pixelWriter, iArr3, region, i8, i9, i5, i6);
        }
    }

    public static void doDrawRect(PixelWriter pixelWriter, SunGraphics2D sunGraphics2D, SurfaceData surfaceData, int i, int i2, int i3, int i4) {
        int i5;
        if (i3 < 0 || i4 < 0) {
            return;
        }
        int dimAdd = Region.dimAdd(Region.dimAdd(i, i3), 1);
        int dimAdd2 = Region.dimAdd(Region.dimAdd(i2, i4), 1);
        Region boundsIntersectionXYXY = sunGraphics2D.getCompClip().getBoundsIntersectionXYXY(i, i2, dimAdd, dimAdd2);
        if (boundsIntersectionXYXY.isEmpty()) {
            return;
        }
        int loX = boundsIntersectionXYXY.getLoX();
        int loY = boundsIntersectionXYXY.getLoY();
        int hiX = boundsIntersectionXYXY.getHiX();
        int hiY = boundsIntersectionXYXY.getHiY();
        if (i3 < 2 || i4 < 2) {
            doSetRect(surfaceData, pixelWriter, loX, loY, hiX, hiY);
            return;
        }
        if (loY == i2) {
            i5 = hiX;
            doSetRect(surfaceData, pixelWriter, loX, loY, hiX, loY + 1);
        } else {
            i5 = hiX;
        }
        if (loX == i) {
            doSetRect(surfaceData, pixelWriter, loX, loY + 1, loX + 1, hiY - 1);
        }
        if (i5 == dimAdd) {
            doSetRect(surfaceData, pixelWriter, i5 - 1, loY + 1, i5, hiY - 1);
        }
        if (hiY == dimAdd2) {
            doSetRect(surfaceData, pixelWriter, loX, hiY - 1, i5, hiY);
        }
    }

    public static void doSetRect(SurfaceData surfaceData, PixelWriter pixelWriter, int i, int i2, int i3, int i4) {
        pixelWriter.setRaster((WritableRaster) surfaceData.getRaster(i, i2, i3 - i, i4 - i2));
        while (i2 < i4) {
            for (int i5 = i; i5 < i3; i5++) {
                pixelWriter.writePixel(i5, i2);
            }
            i2++;
        }
    }

    public static int outcode(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i2 < i4 ? 1 : i2 > i6 ? 2 : 0;
        return i < i3 ? i7 | 4 : i > i5 ? i7 | 8 : i7;
    }

    public static void register() {
        String str = FillRect.methodSignature;
        int i = FillRect.primTypeID;
        SurfaceType surfaceType = SurfaceType.AnyColor;
        CompositeType compositeType = CompositeType.SrcNoEa;
        SurfaceType surfaceType2 = SurfaceType.Any;
        String str2 = FillPath.methodSignature;
        int i2 = FillPath.primTypeID;
        String str3 = FillSpans.methodSignature;
        int i3 = FillSpans.primTypeID;
        String str4 = DrawLine.methodSignature;
        int i4 = DrawLine.primTypeID;
        String str5 = DrawPolygons.methodSignature;
        int i5 = DrawPolygons.primTypeID;
        String str6 = DrawPath.methodSignature;
        int i6 = DrawPath.primTypeID;
        String str7 = DrawRect.methodSignature;
        int i7 = DrawRect.primTypeID;
        CompositeType compositeType2 = CompositeType.Xor;
        GraphicsPrimitiveMgr.register(new GraphicsPrimitive[]{new GraphicsPrimitiveProxy(GeneralRenderer.class, "SetFillRectANY", str, i, surfaceType, compositeType, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "SetFillPathANY", str2, i2, surfaceType, compositeType, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "SetFillSpansANY", str3, i3, surfaceType, compositeType, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "SetDrawLineANY", str4, i4, surfaceType, compositeType, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "SetDrawPolygonsANY", str5, i5, surfaceType, compositeType, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "SetDrawPathANY", str6, i6, surfaceType, compositeType, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "SetDrawRectANY", str7, i7, surfaceType, compositeType, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorFillRectANY", str, i, surfaceType, compositeType2, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorFillPathANY", str2, i2, surfaceType, compositeType2, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorFillSpansANY", str3, i3, surfaceType, compositeType2, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorDrawLineANY", str4, i4, surfaceType, compositeType2, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorDrawPolygonsANY", str5, i5, surfaceType, compositeType2, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorDrawPathANY", str6, i6, surfaceType, compositeType2, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorDrawRectANY", str7, i7, surfaceType, compositeType2, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorDrawGlyphListANY", DrawGlyphList.methodSignature, DrawGlyphList.primTypeID, surfaceType, compositeType2, surfaceType2), new GraphicsPrimitiveProxy(GeneralRenderer.class, "XorDrawGlyphListAAANY", DrawGlyphListAA.methodSignature, DrawGlyphListAA.primTypeID, surfaceType, compositeType2, surfaceType2)});
    }
}
