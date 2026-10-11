package com.twelvemonkeys.image;

import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.RasterOp;
import java.awt.image.SinglePixelPackedSampleModel;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.IOException;
import java.util.Hashtable;
import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JScrollPane;

/* loaded from: classes10.dex */
public class AreaAverageOp implements BufferedImageOp, RasterOp {

    /* renamed from: a */
    public final int f93902a;

    /* renamed from: b */
    public final int f93903b;

    /* renamed from: c */
    public Rectangle f93904c;

    public AreaAverageOp(int i, int i2) {
        this.f93902a = i;
        this.f93903b = i2;
    }

    /* renamed from: a */
    public static int m60304a(int i) {
        if (i > 255) {
            return 255;
        }
        return i;
    }

    public static void main(String[] strArr) throws IOException {
        BufferedImage read = ImageIO.read(new File("2006-Lamborghini-Gallardo-Spyder-Y-T-1600x1200.png"));
        for (int i = 0; i < 100; i++) {
        }
        long currentTimeMillis = System.currentTimeMillis();
        BufferedImage filter = new AreaAverageOp(500, 600).filter(read, (BufferedImage) null);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        System.out.println("time: " + currentTimeMillis2 + " ms");
        JFrame jFrame = new JFrame("Test");
        jFrame.setDefaultCloseOperation(3);
        jFrame.setContentPane(new JScrollPane(new JLabel(new BufferedImageIcon(filter))));
        jFrame.pack();
        jFrame.setVisible(true);
    }

    /* renamed from: b */
    public final WritableRaster m60305b(Raster raster, WritableRaster writableRaster) {
        Raster raster2;
        WritableRaster writableRaster2;
        int[] iArr;
        int[] iArr2;
        Object obj;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        boolean z2;
        int[] iArr3;
        boolean z3;
        int i6;
        int i7;
        int[] iArr4;
        int[] iArr5;
        AreaAverageOp areaAverageOp = this;
        Rectangle rectangle = areaAverageOp.f93904c;
        boolean z4 = true;
        int i8 = 0;
        if (rectangle != null) {
            int i9 = rectangle.f97732x;
            int i10 = rectangle.f97733y;
            int i11 = rectangle.width;
            int i12 = rectangle.height;
            boolean z5 = raster == writableRaster;
            writableRaster2 = writableRaster.createWritableChild(i9, i10, i11, i12, 0, 0, null);
            raster2 = z5 ? writableRaster2 : raster.createChild(i9, i10, i11, i12, 0, 0, null);
        } else {
            raster2 = raster;
            writableRaster2 = writableRaster;
        }
        int width = raster2.getWidth();
        int height = raster2.getHeight();
        int i13 = areaAverageOp.f93902a;
        int i14 = ((width + i13) - 1) / i13;
        int i15 = areaAverageOp.f93903b;
        int i16 = ((height + i15) - 1) / i15;
        boolean z6 = width % i13 != 0;
        boolean z7 = height % i15 != 0;
        int numDataElements = raster2.getNumDataElements();
        int numBands = raster2.getNumBands();
        int transferType = raster2.getTransferType();
        Object obj2 = null;
        if (raster2.getTransferType() == 1) {
            if (raster2.getSampleModel() instanceof SinglePixelPackedSampleModel) {
                SinglePixelPackedSampleModel singlePixelPackedSampleModel = (SinglePixelPackedSampleModel) raster2.getSampleModel();
                int[] bitMasks = singlePixelPackedSampleModel.getBitMasks();
                iArr4 = singlePixelPackedSampleModel.getBitOffsets();
                iArr5 = bitMasks;
            } else {
                iArr4 = new int[]{0};
                iArr5 = new int[]{65535};
            }
            iArr2 = iArr4;
            iArr = iArr5;
        } else {
            iArr = null;
            iArr2 = null;
        }
        int i17 = 0;
        loop0: while (true) {
            int i18 = areaAverageOp.f93903b;
            if (i17 >= i18) {
                return writableRaster2;
            }
            int i19 = (!z7 || i17 < i18) ? i16 : height - (i17 * i16);
            obj = obj2;
            int i20 = i8;
            while (true) {
                int i21 = areaAverageOp.f93902a;
                if (i20 < i21) {
                    int i22 = (!z6 || i20 < i21) ? i14 : width - (i20 * i14);
                    int i23 = i22 * i19;
                    int i24 = i23 * numDataElements;
                    int i25 = i20;
                    int i26 = i17;
                    int[] iArr6 = iArr;
                    i = transferType;
                    int i27 = numBands;
                    try {
                        obj = raster2.getDataElements(i20 * i14, i17 * i16, i22, i19, obj);
                        double d = 0.0d;
                        if (i == 0) {
                            i2 = width;
                            i3 = height;
                            i4 = i14;
                            z = z6;
                            z2 = z7;
                            iArr3 = iArr6;
                            i5 = i16;
                            byte[] bArr = (byte[]) obj;
                            double d2 = 0.0d;
                            double d3 = 0.0d;
                            double d4 = 0.0d;
                            int i28 = 0;
                            while (i28 < i24) {
                                int i29 = i;
                                int i30 = i24;
                                d += bArr[i28] & 255;
                                if (i27 > 1) {
                                    d2 += bArr[i28 + 1] & 255;
                                    d3 += bArr[i28 + 2] & 255;
                                    if (i27 > 3) {
                                        d4 += bArr[i28 + 3] & 255;
                                    }
                                }
                                i28 += numDataElements;
                                i = i29;
                                i24 = i30;
                            }
                            i6 = i;
                            double d5 = i23;
                            double d6 = d / d5;
                            if (i27 > 1) {
                                d2 /= d5;
                                d3 /= d5;
                                if (i27 > 3) {
                                    d4 /= d5;
                                }
                            }
                            i7 = 0;
                            bArr[0] = (byte) m60304a((int) d6);
                            z3 = true;
                            if (i27 > 1) {
                                bArr[1] = (byte) m60304a((int) d2);
                                bArr[2] = (byte) m60304a((int) d3);
                                if (i27 > 3) {
                                    bArr[3] = (byte) m60304a((int) d4);
                                }
                            }
                        } else if (i == 1) {
                            i2 = width;
                            i3 = height;
                            i4 = i14;
                            iArr3 = iArr6;
                            char c = 0;
                            i5 = i16;
                            if (iArr3 == null) {
                                break loop0;
                            }
                            short[] sArr = (short[]) obj;
                            double d7 = 0.0d;
                            double d8 = 0.0d;
                            double d9 = 0.0d;
                            int i31 = 0;
                            while (i31 < i24) {
                                short s = sArr[i31];
                                d += (s & iArr3[c]) >> iArr2[c];
                                if (iArr3.length > 1) {
                                    d7 += (s & iArr3[1]) >> iArr2[1];
                                    d8 += (s & iArr3[2]) >> iArr2[2];
                                    if (iArr3.length > 3) {
                                        d9 += (s & iArr3[3]) >> iArr2[3];
                                    }
                                }
                                i31 += numDataElements;
                                c = 0;
                            }
                            double d10 = i23;
                            double d11 = d / d10;
                            double d12 = d7 / d10;
                            z = z6;
                            z2 = z7;
                            double d13 = d8 / d10;
                            double d14 = d9 / d10;
                            short s2 = (short) ((((int) d11) << iArr2[0]) & iArr3[0]);
                            sArr[0] = s2;
                            if (iArr3.length > 1) {
                                short s3 = (short) (s2 | ((short) ((((int) d12) << iArr2[1]) & iArr3[1])));
                                sArr[0] = s3;
                                short s4 = (short) (s3 | ((short) ((((int) d13) << iArr2[2]) & iArr3[2])));
                                sArr[0] = s4;
                                if (iArr3.length > 3) {
                                    sArr[0] = (short) (s4 | ((short) ((((int) d14) << iArr2[3]) & iArr3[3])));
                                }
                                i6 = i;
                                i7 = 0;
                                z3 = true;
                            } else {
                                i6 = i;
                                i7 = 0;
                                z3 = true;
                            }
                        } else {
                            if (i != 3) {
                                break loop0;
                            }
                            int[] iArr7 = (int[]) obj;
                            double d15 = 0.0d;
                            double d16 = 0.0d;
                            double d17 = 0.0d;
                            int i32 = 0;
                            while (i32 < i24) {
                                int i33 = width;
                                int i34 = iArr7[i32];
                                d += (i34 & (-16777216)) >> 24;
                                d15 += (16711680 & i34) >> 16;
                                d16 += (65280 & i34) >> 8;
                                d17 += i34 & 255;
                                i32 += numDataElements;
                                width = i33;
                                height = height;
                                i14 = i14;
                            }
                            i2 = width;
                            i3 = height;
                            i4 = i14;
                            double d18 = i23;
                            i5 = i16;
                            int m60304a = m60304a((int) (d / d18)) << 24;
                            iArr7[0] = m60304a;
                            int m60304a2 = m60304a | (m60304a((int) (d15 / d18)) << 16);
                            iArr7[0] = m60304a2;
                            int m60304a3 = m60304a2 | (m60304a((int) (d16 / d18)) << 8);
                            iArr7[0] = m60304a3;
                            iArr7[0] = m60304a3 | m60304a((int) (d17 / d18));
                            z = z6;
                            z2 = z7;
                            iArr3 = iArr6;
                            z3 = true;
                            i6 = i;
                            i7 = 0;
                        }
                        writableRaster2.setDataElements(i25, i26, 1, 1, obj);
                    } catch (IndexOutOfBoundsException unused) {
                        i2 = width;
                        i3 = height;
                        i4 = i14;
                        i5 = i16;
                        z = z6;
                        z2 = z7;
                        iArr3 = iArr6;
                        z3 = true;
                        i6 = i;
                        i7 = 0;
                    }
                    i20 = i25 + 1;
                    numBands = i27;
                    i8 = i7;
                    iArr = iArr3;
                    i17 = i26;
                    i14 = i4;
                    i16 = i5;
                    transferType = i6;
                    z6 = z;
                    z7 = z2;
                    areaAverageOp = this;
                    height = i3;
                    z4 = z3;
                    width = i2;
                }
            }
            i17++;
            obj2 = obj;
            areaAverageOp = this;
            height = height;
            z4 = z4;
            width = width;
        }
        throw new IllegalArgumentException("TransferType not supported: " + i);
    }

    /* renamed from: c */
    public final void m60306c(BufferedImage bufferedImage, BufferedImage bufferedImage2, AffineTransform affineTransform) {
        Graphics2D createGraphics = bufferedImage2.createGraphics();
        createGraphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
        try {
            createGraphics.drawImage(bufferedImage, affineTransform, null);
        } finally {
            createGraphics.dispose();
        }
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        if (colorModel == null) {
            colorModel = bufferedImage.getColorModel();
        }
        return new BufferedImage(colorModel, ImageUtil.m60359i(bufferedImage, colorModel, this.f93902a, this.f93903b), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        return raster.createCompatibleWritableRaster(this.f93902a, this.f93903b);
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage filter(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        if (bufferedImage2 == null) {
            bufferedImage2 = createCompatibleDestImage(bufferedImage, null);
        }
        long currentTimeMillis = System.currentTimeMillis();
        m60305b(bufferedImage.getRaster(), bufferedImage2.getRaster());
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        System.out.println("time: " + currentTimeMillis2);
        return bufferedImage2;
    }

    @Override // java.awt.image.RasterOp
    public Rectangle2D getBounds2D(Raster raster) {
        return new Rectangle(this.f93902a, this.f93903b);
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public Point2D getPoint2D(Point2D point2D, Point2D point2D2) {
        if (point2D2 == null) {
            point2D2 = point2D instanceof Point2D.Double ? new Point2D.Double() : new Point2D.Float();
        }
        point2D2.setLocation(point2D);
        return point2D2;
    }

    @Override // java.awt.image.BufferedImageOp, java.awt.image.RasterOp
    public RenderingHints getRenderingHints() {
        return null;
    }

    public Rectangle getSourceRegion() {
        if (this.f93904c == null) {
            return null;
        }
        return new Rectangle(this.f93904c);
    }

    public void setSourceRegion(Rectangle rectangle) {
        if (rectangle == null) {
            this.f93904c = null;
            return;
        }
        Rectangle rectangle2 = this.f93904c;
        if (rectangle2 == null) {
            this.f93904c = new Rectangle(rectangle);
        } else {
            rectangle2.setBounds(rectangle);
        }
    }

    @Override // java.awt.image.BufferedImageOp
    public Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return new Rectangle(this.f93902a, this.f93903b);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        if (writableRaster == null) {
            writableRaster = createCompatibleDestRaster(raster);
        }
        return m60305b(raster, writableRaster);
    }
}
