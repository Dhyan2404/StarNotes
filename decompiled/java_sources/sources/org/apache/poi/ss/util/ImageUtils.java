package org.apache.poi.ss.util;

import com.sunia.HTREnginev2.chi;
import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Function;
import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.metadata.IIOMetadataFormatImpl;
import javax.imageio.stream.ImageInputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.Picture;
import org.apache.poi.ss.usermodel.PictureData;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.util.ImageUtils;
import org.apache.poi.util.Units;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* loaded from: classes13.dex */
public final class ImageUtils {
    private static final int HEIGHT_UNITS = 256;
    private static final Logger LOG = LogManager.getLogger((Class<?>) ImageUtils.class);
    private static final int WIDTH_UNITS = 1024;

    private ImageUtils() {
    }

    private static int getDimFromCell(double d, int i, int i2, int i3, int i4, int i5, Function<Integer, Number> function) {
        double d2;
        double d3;
        int i6 = i;
        int i7 = i2;
        double d4 = 9525.0d;
        if (i3 < i6) {
            d2 = d * 9525.0d;
        } else {
            int i8 = i6;
            double d5 = 0.0d;
            while (i8 <= i3) {
                double doubleValue = function.apply(Integer.valueOf(i8)).doubleValue() * d4;
                if (i8 == i6) {
                    d3 = i7;
                    if (i5 > 0) {
                        d3 = (d3 * doubleValue) / i5;
                    }
                } else {
                    d3 = 0.0d;
                }
                d5 += (doubleValue - d3) - (i8 == i3 ? i5 > 0 ? ((i5 - i4) * doubleValue) / i5 : doubleValue - i4 : 0.0d);
                i8++;
                i6 = i;
                i7 = i2;
                d4 = 9525.0d;
            }
            d2 = d5;
        }
        return (int) Math.rint(d2);
    }

    public static Dimension getDimensionFromAnchor(Picture picture) {
        Dimension imageDimension;
        ClientAnchor clientAnchor = picture.getClientAnchor();
        boolean z = clientAnchor instanceof HSSFClientAnchor;
        final Sheet sheet = picture.getSheet();
        if (clientAnchor.getCol2() < clientAnchor.getCol1() || clientAnchor.getRow2() < clientAnchor.getRow1()) {
            PictureData pictureData = picture.getPictureData();
            imageDimension = getImageDimension(new UnsynchronizedByteArrayInputStream(pictureData.getData()), pictureData.getPictureType());
        } else {
            imageDimension = null;
        }
        double width = imageDimension == null ? 0.0d : imageDimension.getWidth();
        short col1 = clientAnchor.getCol1();
        int dx1 = clientAnchor.getDx1();
        short col2 = clientAnchor.getCol2();
        int dx2 = clientAnchor.getDx2();
        int i = z ? 1024 : 0;
        sheet.getClass();
        return new Dimension(getDimFromCell(width, col1, dx1, col2, dx2, i, new chi(sheet)), getDimFromCell(imageDimension != null ? imageDimension.getHeight() : 0.0d, clientAnchor.getRow1(), clientAnchor.getDy1(), clientAnchor.getRow2(), clientAnchor.getDy2(), z ? 256 : 0, new Function() { // from class: com.sunia.HTREnginev2.dhi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Number lambda$getDimensionFromAnchor$1;
                lambda$getDimensionFromAnchor$1 = ImageUtils.lambda$getDimensionFromAnchor$1(Sheet.this, (Integer) obj);
                return lambda$getDimensionFromAnchor$1;
            }
        }));
    }

    public static Dimension getImageDimension(InputStream inputStream, int i) {
        Dimension dimension = new Dimension();
        if (i == 5 || i == 6 || i == 7) {
            try {
                ImageInputStream createImageInputStream = ImageIO.createImageInputStream(inputStream);
                try {
                    Iterator<ImageReader> imageReaders = ImageIO.getImageReaders(createImageInputStream);
                    if (imageReaders.hasNext()) {
                        ImageReader next = imageReaders.next();
                        try {
                            next.setInput(createImageInputStream);
                            BufferedImage read = next.read(0);
                            int[] resolution = getResolution(next);
                            if (resolution[0] == 0) {
                                resolution[0] = 96;
                            }
                            if (resolution[1] == 0) {
                                resolution[1] = 96;
                            }
                            dimension.width = (read.getWidth() * 96) / resolution[0];
                            dimension.height = (read.getHeight() * 96) / resolution[1];
                            next.dispose();
                        } catch (Throwable th) {
                            next.dispose();
                            throw th;
                        }
                    } else {
                        LOG.atWarn().log("ImageIO found no images");
                    }
                    if (createImageInputStream != null) {
                        createImageInputStream.close();
                    }
                } finally {
                }
            } catch (IOException e) {
                LOG.atWarn().withThrowable(e).log("Failed to determine image dimensions");
            }
        } else {
            LOG.atWarn().log("Only JPEG, PNG and DIB pictures can be automatically sized");
        }
        return dimension;
    }

    public static int[] getResolution(ImageReader imageReader) throws IOException {
        Element element = (Element) imageReader.getImageMetadata(0).getAsTree(IIOMetadataFormatImpl.standardMetadataFormatName);
        NodeList elementsByTagName = element.getElementsByTagName("HorizontalPixelSize");
        int i = 96;
        int parseFloat = (elementsByTagName == null || elementsByTagName.getLength() != 1) ? 96 : (int) (25.4d / Float.parseFloat(((Element) elementsByTagName.item(0)).getAttribute("value")));
        NodeList elementsByTagName2 = element.getElementsByTagName("VerticalPixelSize");
        if (elementsByTagName2 != null && elementsByTagName2.getLength() == 1) {
            i = (int) (25.4d / Float.parseFloat(((Element) elementsByTagName2.item(0)).getAttribute("value")));
        }
        return new int[]{parseFloat, i};
    }

    public static double getRowHeightInPixels(Sheet sheet, int i) {
        return Units.toEMU(sheet.getRow(i) == null ? sheet.getDefaultRowHeightInPoints() : r3.getHeightInPoints()) / 9525.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Number lambda$getDimensionFromAnchor$1(Sheet sheet, Integer num) {
        return Double.valueOf(getRowHeightInPixels(sheet, num.intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Number lambda$setPreferredSize$0(Sheet sheet, Integer num) {
        return Double.valueOf(getRowHeightInPixels(sheet, num.intValue()));
    }

    private static void scaleCell(double d, int i, int i2, Consumer<Integer> consumer, Consumer<Integer> consumer2, int i3, Function<Integer, Number> function) {
        double doubleValue;
        double d2;
        double d3;
        double d4 = 0.0d;
        if (d < 0.0d) {
            throw new IllegalArgumentException("target size < 0");
        }
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException("target size " + d + " is not supported");
        }
        int i4 = i;
        while (true) {
            doubleValue = function.apply(Integer.valueOf(i4)).doubleValue();
            double d5 = i4 == i ? i3 > 0 ? (1.0d - (i2 / i3)) * doubleValue : doubleValue - (i2 / 9525.0d) : doubleValue;
            d2 = d - d4;
            if (d2 < d5) {
                break;
            }
            i4++;
            d4 += d5;
        }
        if (i3 > 0) {
            d2 /= doubleValue;
            d3 = i3;
        } else {
            d3 = 9525.0d;
        }
        double d6 = d2 * d3;
        if (i4 == i) {
            d6 += i2;
        }
        consumer.accept(Integer.valueOf(i4));
        consumer2.accept(Integer.valueOf((int) Math.rint(d6)));
    }

    public static Dimension setPreferredSize(Picture picture, double d, double d2) {
        final ClientAnchor clientAnchor = picture.getClientAnchor();
        boolean z = clientAnchor instanceof HSSFClientAnchor;
        PictureData pictureData = picture.getPictureData();
        final Sheet sheet = picture.getSheet();
        Dimension imageDimension = (d == Double.MAX_VALUE || d2 == Double.MAX_VALUE) ? getImageDimension(new UnsynchronizedByteArrayInputStream(pictureData.getData()), pictureData.getPictureType()) : new Dimension();
        Dimension dimension = (d == Double.MAX_VALUE && d2 == Double.MAX_VALUE) ? new Dimension() : getDimensionFromAnchor(picture);
        double width = d == Double.MAX_VALUE ? imageDimension.getWidth() : (dimension.getWidth() / 9525.0d) * d;
        double height = d2 == Double.MAX_VALUE ? imageDimension.getHeight() : (dimension.getHeight() / 9525.0d) * d2;
        short col1 = clientAnchor.getCol1();
        int dx1 = clientAnchor.getDx1();
        Consumer consumer = new Consumer() { // from class: com.sunia.HTREnginev2.ehi
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ClientAnchor.this.setCol2(((Integer) obj).intValue());
            }
        };
        Consumer consumer2 = new Consumer() { // from class: com.sunia.HTREnginev2.fhi
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ClientAnchor.this.setDx2(((Integer) obj).intValue());
            }
        };
        int i = z ? 1024 : 0;
        sheet.getClass();
        scaleCell(width, col1, dx1, consumer, consumer2, i, new chi(sheet));
        scaleCell(height, clientAnchor.getRow1(), clientAnchor.getDy1(), new Consumer() { // from class: com.sunia.HTREnginev2.ghi
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ClientAnchor.this.setRow2(((Integer) obj).intValue());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.hhi
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ClientAnchor.this.setDy2(((Integer) obj).intValue());
            }
        }, z ? 256 : 0, new Function() { // from class: com.sunia.HTREnginev2.ihi
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Number lambda$setPreferredSize$0;
                lambda$setPreferredSize$0 = ImageUtils.lambda$setPreferredSize$0(Sheet.this, (Integer) obj);
                return lambda$setPreferredSize$0;
            }
        });
        return new Dimension((int) Math.round(width * 9525.0d), (int) Math.round(height * 9525.0d));
    }
}
