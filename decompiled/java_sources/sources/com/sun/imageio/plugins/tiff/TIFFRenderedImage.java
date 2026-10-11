package com.sun.imageio.plugins.tiff;

import java.awt.Image;
import java.awt.Rectangle;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.plugins.tiff.TIFFImageReadParam;
import javax.imageio.plugins.tiff.TIFFTagSet;

/* loaded from: classes9.dex */
public class TIFFRenderedImage implements RenderedImage {
    private int height;
    private int imageIndex;
    private boolean isSubsampling;
    private ImageTypeSpecifier its;
    private TIFFImageReader reader;
    private int subsampleX;
    private int subsampleY;
    private int tileHeight;
    private ImageReadParam tileParam;
    private int tileWidth;
    private int width;

    public TIFFRenderedImage(TIFFImageReader tIFFImageReader, int i, ImageReadParam imageReadParam, int i2, int i3) throws IOException {
        this.reader = tIFFImageReader;
        this.imageIndex = i;
        ImageReadParam cloneImageReadParam = cloneImageReadParam(imageReadParam, false);
        this.tileParam = cloneImageReadParam;
        this.subsampleX = cloneImageReadParam.getSourceXSubsampling();
        int sourceYSubsampling = this.tileParam.getSourceYSubsampling();
        this.subsampleY = sourceYSubsampling;
        int i4 = this.subsampleX;
        this.isSubsampling = (i4 == 1 && sourceYSubsampling == 1) ? false : true;
        this.width = i2 / i4;
        this.height = i3 / sourceYSubsampling;
        this.tileWidth = tIFFImageReader.getTileWidth(i) / this.subsampleX;
        this.tileHeight = tIFFImageReader.getTileHeight(i) / this.subsampleY;
        ImageTypeSpecifier next = tIFFImageReader.getImageTypes(i).next();
        this.its = next;
        this.tileParam.setDestinationType(next);
    }

    private ImageReadParam cloneImageReadParam(ImageReadParam imageReadParam, boolean z) {
        List<TIFFTagSet> allowedTagSets;
        Iterator<TIFFTagSet> it2;
        TIFFImageReadParam tIFFImageReadParam = new TIFFImageReadParam();
        tIFFImageReadParam.setSourceSubsampling(imageReadParam.getSourceXSubsampling(), imageReadParam.getSourceYSubsampling(), imageReadParam.getSubsamplingXOffset(), imageReadParam.getSubsamplingYOffset());
        tIFFImageReadParam.setSourceBands(imageReadParam.getSourceBands());
        tIFFImageReadParam.setDestinationBands(imageReadParam.getDestinationBands());
        tIFFImageReadParam.setDestinationOffset(imageReadParam.getDestinationOffset());
        if ((imageReadParam instanceof TIFFImageReadParam) && z && (allowedTagSets = ((TIFFImageReadParam) imageReadParam).getAllowedTagSets()) != null && (it2 = allowedTagSets.iterator()) != null) {
            while (it2.hasNext()) {
                tIFFImageReadParam.addAllowedTagSet(it2.next());
            }
        }
        return tIFFImageReadParam;
    }

    @Override // java.awt.image.RenderedImage
    public WritableRaster copyData(WritableRaster writableRaster) {
        if (writableRaster == null) {
            return read(new Rectangle(0, 0, getWidth(), getHeight()));
        }
        writableRaster.setRect(read(writableRaster.getBounds()));
        return writableRaster;
    }

    @Override // java.awt.image.RenderedImage
    public ColorModel getColorModel() {
        return this.its.getColorModel();
    }

    @Override // java.awt.image.RenderedImage
    public Raster getData() {
        return read(new Rectangle(0, 0, getWidth(), getHeight()));
    }

    @Override // java.awt.image.RenderedImage
    public int getHeight() {
        return this.height;
    }

    @Override // java.awt.image.RenderedImage
    public int getMinTileX() {
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getMinTileY() {
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getMinX() {
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getMinY() {
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getNumXTiles() {
        int i = this.width;
        return ((i + r1) - 1) / this.tileWidth;
    }

    @Override // java.awt.image.RenderedImage
    public int getNumYTiles() {
        int i = this.height;
        return ((i + r1) - 1) / this.tileHeight;
    }

    @Override // java.awt.image.RenderedImage
    public Object getProperty(String str) {
        return Image.UndefinedProperty;
    }

    @Override // java.awt.image.RenderedImage
    public String[] getPropertyNames() {
        return null;
    }

    @Override // java.awt.image.RenderedImage
    public SampleModel getSampleModel() {
        return this.its.getSampleModel();
    }

    @Override // java.awt.image.RenderedImage
    public Vector<RenderedImage> getSources() {
        return null;
    }

    @Override // java.awt.image.RenderedImage
    public Raster getTile(int i, int i2) {
        int i3 = this.tileWidth;
        int i4 = this.tileHeight;
        return getData(new Rectangle(i * i3, i2 * i4, i3, i4));
    }

    @Override // java.awt.image.RenderedImage
    public int getTileGridXOffset() {
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getTileGridYOffset() {
        return 0;
    }

    @Override // java.awt.image.RenderedImage
    public int getTileHeight() {
        return this.tileHeight;
    }

    @Override // java.awt.image.RenderedImage
    public int getTileWidth() {
        return this.tileWidth;
    }

    @Override // java.awt.image.RenderedImage
    public int getWidth() {
        return this.width;
    }

    public synchronized WritableRaster read(Rectangle rectangle) {
        Rectangle rectangle2;
        WritableRaster raster;
        ImageReadParam imageReadParam = this.tileParam;
        if (this.isSubsampling) {
            int i = this.subsampleX;
            int i2 = rectangle.f97732x * i;
            int i3 = this.subsampleY;
            rectangle2 = new Rectangle(i2, rectangle.f97733y * i3, i * rectangle.width, i3 * rectangle.height);
        } else {
            rectangle2 = rectangle;
        }
        imageReadParam.setSourceRegion(rectangle2);
        try {
            raster = this.reader.read(this.imageIndex, this.tileParam).getRaster();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return raster.createWritableChild(0, 0, raster.getWidth(), raster.getHeight(), rectangle.f97732x, rectangle.f97733y, null);
    }

    @Override // java.awt.image.RenderedImage
    public Raster getData(Rectangle rectangle) {
        return read(rectangle);
    }
}
