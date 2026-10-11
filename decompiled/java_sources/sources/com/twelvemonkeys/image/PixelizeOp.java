package com.twelvemonkeys.image;

import java.awt.Rectangle;
import java.awt.RenderingHints;
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
public class PixelizeOp implements BufferedImageOp, RasterOp {

    /* renamed from: a */
    public final int f93962a;

    /* renamed from: b */
    public final int f93963b;

    /* renamed from: c */
    public Rectangle f93964c;

    public PixelizeOp(int i) {
        this(i, i);
    }

    /* renamed from: a */
    public static int m60382a(int i) {
        if (i > 255) {
            return 255;
        }
        return i;
    }

    public static void main(String[] strArr) throws IOException {
        BufferedImage read = ImageIO.read(new File("2006-Lamborghini-Gallardo-Spyder-Y-T-1600x1200.png"));
        for (int i = 0; i < 10; i++) {
            new ResampleOp(read.getWidth() / 10, read.getHeight() / 10, 9).filter(read, null);
        }
        long currentTimeMillis = System.currentTimeMillis();
        BufferedImage filter = new ResampleOp(read.getWidth() / 4, read.getHeight() / 4, 9).filter(read, null);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        System.out.println("time: " + currentTimeMillis2 + " ms");
        JFrame jFrame = new JFrame("Test");
        jFrame.setDefaultCloseOperation(3);
        jFrame.setContentPane(new JScrollPane(new JLabel(new BufferedImageIcon(filter))));
        jFrame.pack();
        jFrame.setVisible(true);
    }

    /* renamed from: b */
    public final WritableRaster m60383b(Raster raster, WritableRaster writableRaster) {
        Raster raster2;
        WritableRaster writableRaster2;
        int[] iArr;
        int[] iArr2;
        int i;
        boolean z;
        boolean z2;
        Raster raster3;
        int i2;
        int[] iArr3;
        int i3;
        int i4;
        PixelizeOp pixelizeOp;
        int i5;
        double d;
        int[] iArr4;
        int[] iArr5;
        PixelizeOp pixelizeOp2 = this;
        Rectangle rectangle = pixelizeOp2.f93964c;
        int i6 = 0;
        if (rectangle != null) {
            int i7 = rectangle.f97732x;
            int i8 = rectangle.f97733y;
            int i9 = rectangle.width;
            int i10 = rectangle.height;
            boolean z3 = raster == writableRaster;
            writableRaster2 = writableRaster.createWritableChild(i7, i8, i9, i10, 0, 0, null);
            raster2 = z3 ? writableRaster2 : raster.createChild(i7, i8, i9, i10, 0, 0, null);
        } else {
            raster2 = raster;
            writableRaster2 = writableRaster;
        }
        int width = raster2.getWidth();
        int height = raster2.getHeight();
        int i11 = pixelizeOp2.f93962a;
        int i12 = ((width + i11) - 1) / i11;
        int i13 = pixelizeOp2.f93963b;
        int i14 = ((height + i13) - 1) / i13;
        boolean z4 = width % i12 != 0;
        boolean z5 = height % i14 != 0;
        int numDataElements = raster2.getNumDataElements();
        int numBands = raster2.getNumBands();
        int transferType = raster2.getTransferType();
        Object obj = null;
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
        int i15 = 0;
        while (i15 < i14) {
            int i16 = (!z5 || i15 + 1 < i14) ? pixelizeOp2.f93963b : height - (pixelizeOp2.f93963b * i15);
            Object obj2 = obj;
            int i17 = i6;
            while (i17 < i12) {
                int i18 = (!z4 || i17 + 1 < i12) ? pixelizeOp2.f93962a : width - (pixelizeOp2.f93962a * i17);
                int i19 = i18 * i16;
                int i20 = i19 * numDataElements;
                int i21 = width;
                int i22 = height;
                int i23 = i17;
                int i24 = i15;
                int[] iArr6 = iArr;
                int i25 = i12;
                int i26 = transferType;
                int i27 = i14;
                int i28 = numBands;
                obj2 = raster2.getDataElements(pixelizeOp2.f93962a * i17, pixelizeOp2.f93963b * i15, i18, i16, obj2);
                double d2 = 0.0d;
                if (i26 == 0) {
                    i = i24;
                    int i29 = i26;
                    int i30 = i28;
                    z = z4;
                    z2 = z5;
                    raster3 = raster2;
                    i2 = 0;
                    byte[] bArr = (byte[]) obj2;
                    double d3 = 0.0d;
                    double d4 = 0.0d;
                    double d5 = 0.0d;
                    int i31 = 0;
                    while (i31 < i20) {
                        int[] iArr7 = iArr6;
                        double d6 = d2 + (bArr[i31] & 255);
                        int i32 = i30;
                        if (i32 > 1) {
                            i5 = i29;
                            d = d6;
                            d3 += bArr[i31 + 1] & 255;
                            d4 += bArr[i31 + 2] & 255;
                            if (i32 > 3) {
                                d5 += bArr[i31 + 3] & 255;
                            }
                        } else {
                            i5 = i29;
                            d = d6;
                        }
                        i31 += numDataElements;
                        i30 = i32;
                        iArr6 = iArr7;
                        d2 = d;
                        i29 = i5;
                    }
                    iArr3 = iArr6;
                    i3 = i29;
                    i4 = i30;
                    double d7 = i19;
                    double d8 = d2 / d7;
                    if (i4 > 1) {
                        d3 /= d7;
                        d4 /= d7;
                        if (i4 > 3) {
                            d5 /= d7;
                        }
                    }
                    for (int i33 = 0; i33 < i20; i33 += numDataElements) {
                        bArr[i33] = (byte) m60382a((int) d8);
                        if (i4 > 1) {
                            bArr[i33 + 1] = (byte) m60382a((int) d3);
                            bArr[i33 + 2] = (byte) m60382a((int) d4);
                            if (i4 > 3) {
                                bArr[i33 + 3] = (byte) m60382a((int) d5);
                            }
                        }
                    }
                    pixelizeOp = this;
                } else if (i26 == 1) {
                    i = i24;
                    z = z4;
                    z2 = z5;
                    raster3 = raster2;
                    if (iArr6 == null) {
                        throw new IllegalArgumentException("TransferType not supported: " + i26);
                    }
                    short[] sArr = (short[]) obj2;
                    double d9 = 0.0d;
                    double d10 = 0.0d;
                    double d11 = 0.0d;
                    int i34 = 0;
                    while (i34 < i20) {
                        short s = sArr[i34];
                        int i35 = i26;
                        int i36 = i28;
                        d2 += (s & iArr6[0]) >> iArr2[0];
                        if (iArr6.length > 1) {
                            d9 += (s & iArr6[1]) >> iArr2[1];
                            d10 += (s & iArr6[2]) >> iArr2[2];
                            if (iArr6.length > 3) {
                                d11 += (s & iArr6[3]) >> iArr2[3];
                            }
                        }
                        i34 += numDataElements;
                        i26 = i35;
                        i28 = i36;
                    }
                    i3 = i26;
                    int i37 = i28;
                    double d12 = i19;
                    double d13 = d2 / d12;
                    double d14 = d9 / d12;
                    double d15 = d10 / d12;
                    double d16 = d11 / d12;
                    for (int i38 = 0; i38 < i20; i38 += numDataElements) {
                        short s2 = (short) ((((int) d13) << iArr2[0]) & iArr6[0]);
                        sArr[i38] = s2;
                        if (iArr6.length > 1) {
                            short s3 = (short) (s2 | ((short) ((((int) d14) << iArr2[1]) & iArr6[1])));
                            sArr[i38] = s3;
                            short s4 = (short) (s3 | ((short) ((((int) d15) << iArr2[2]) & iArr6[2])));
                            sArr[i38] = s4;
                            if (iArr6.length > 3) {
                                sArr[i38] = (short) (s4 | ((short) ((((int) d16) << iArr2[3]) & iArr6[3])));
                            }
                        }
                    }
                    i2 = 0;
                    iArr3 = iArr6;
                    pixelizeOp = pixelizeOp2;
                    i4 = i37;
                } else {
                    if (i26 != 3) {
                        throw new IllegalArgumentException("TransferType not supported: " + i26);
                    }
                    int[] iArr8 = (int[]) obj2;
                    double d17 = 0.0d;
                    double d18 = 0.0d;
                    double d19 = 0.0d;
                    int i39 = 0;
                    while (i39 < i20) {
                        boolean z6 = z4;
                        int i40 = iArr8[i39];
                        d2 += (i40 & (-16777216)) >> 24;
                        d17 += (16711680 & i40) >> 16;
                        d18 += (65280 & i40) >> 8;
                        d19 += i40 & 255;
                        i39 += numDataElements;
                        z4 = z6;
                        raster2 = raster2;
                        z5 = z5;
                    }
                    z = z4;
                    z2 = z5;
                    raster3 = raster2;
                    double d20 = i19;
                    double d21 = d2 / d20;
                    double d22 = d17 / d20;
                    double d23 = d18 / d20;
                    double d24 = d19 / d20;
                    int i41 = 0;
                    while (i41 < i20) {
                        int i42 = i24;
                        int m60382a = m60382a((int) d21) << 24;
                        iArr8[i41] = m60382a;
                        int m60382a2 = m60382a | (m60382a((int) d22) << 16);
                        iArr8[i41] = m60382a2;
                        int m60382a3 = m60382a2 | (m60382a((int) d23) << 8);
                        iArr8[i41] = m60382a3;
                        iArr8[i41] = m60382a3 | m60382a((int) d24);
                        i41 += numDataElements;
                        i24 = i42;
                        d21 = d21;
                    }
                    i = i24;
                    iArr3 = iArr6;
                    i3 = i26;
                    i2 = 0;
                    pixelizeOp = pixelizeOp2;
                    i4 = i28;
                }
                writableRaster2.setDataElements(i23 * pixelizeOp.f93962a, i * pixelizeOp.f93963b, i18, i16, obj2);
                i17 = i23 + 1;
                height = i22;
                numBands = i4;
                pixelizeOp2 = pixelizeOp;
                i6 = i2;
                i12 = i25;
                i14 = i27;
                i15 = i;
                iArr = iArr3;
                z4 = z;
                raster2 = raster3;
                z5 = z2;
                transferType = i3;
                width = i21;
            }
            i15++;
            pixelizeOp2 = pixelizeOp2;
            obj = obj2;
            width = width;
        }
        return writableRaster2;
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage createCompatibleDestImage(BufferedImage bufferedImage, ColorModel colorModel) {
        if (colorModel == null) {
            colorModel = bufferedImage.getColorModel();
        }
        return new BufferedImage(colorModel, ImageUtil.m60359i(bufferedImage, colorModel, bufferedImage.getWidth(), bufferedImage.getHeight()), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster createCompatibleDestRaster(Raster raster) {
        return raster.createCompatibleWritableRaster();
    }

    @Override // java.awt.image.BufferedImageOp
    public BufferedImage filter(BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        if (bufferedImage2 == null) {
            bufferedImage2 = createCompatibleDestImage(bufferedImage, null);
        }
        m60383b(bufferedImage.getRaster(), bufferedImage2.getRaster());
        return bufferedImage2;
    }

    @Override // java.awt.image.RasterOp
    public Rectangle2D getBounds2D(Raster raster) {
        return new Rectangle(raster.getWidth(), raster.getHeight());
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
        if (this.f93964c == null) {
            return null;
        }
        return new Rectangle(this.f93964c);
    }

    public void setSourceRegion(Rectangle rectangle) {
        if (rectangle == null) {
            this.f93964c = null;
            return;
        }
        Rectangle rectangle2 = this.f93964c;
        if (rectangle2 == null) {
            this.f93964c = new Rectangle(rectangle);
        } else {
            rectangle2.setBounds(rectangle);
        }
    }

    public PixelizeOp(int i, int i2) {
        this.f93962a = i;
        this.f93963b = i2;
    }

    @Override // java.awt.image.BufferedImageOp
    public Rectangle2D getBounds2D(BufferedImage bufferedImage) {
        return new Rectangle(bufferedImage.getWidth(), bufferedImage.getHeight());
    }

    @Override // java.awt.image.RasterOp
    public WritableRaster filter(Raster raster, WritableRaster writableRaster) {
        if (writableRaster == null) {
            writableRaster = createCompatibleDestRaster(raster);
        }
        return m60383b(raster, writableRaster);
    }
}
