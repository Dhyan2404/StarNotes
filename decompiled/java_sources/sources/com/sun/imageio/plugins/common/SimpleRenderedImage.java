package com.sun.imageio.plugins.common;

import java.awt.Image;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.awt.image.WritableRaster;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Vector;

/* loaded from: classes9.dex */
public abstract class SimpleRenderedImage implements RenderedImage {
    protected ColorModel colorModel;
    protected int height;
    protected int minX;
    protected int minY;
    protected SampleModel sampleModel;
    protected int tileHeight;
    protected int tileWidth;
    protected int width;
    protected int tileGridXOffset = 0;
    protected int tileGridYOffset = 0;
    protected Vector<RenderedImage> sources = new Vector<>();
    protected Hashtable<String, Object> properties = new Hashtable<>();

    public static int XToTileX(int i, int i2, int i3) {
        int i4 = i - i2;
        if (i4 < 0) {
            i4 += 1 - i3;
        }
        return i4 / i3;
    }

    public static int YToTileY(int i, int i2, int i3) {
        int i4 = i - i2;
        if (i4 < 0) {
            i4 += 1 - i3;
        }
        return i4 / i3;
    }

    public static int tileXToX(int i, int i2, int i3) {
        return (i * i3) + i2;
    }

    public static int tileYToY(int i, int i2, int i3) {
        return (i * i3) + i2;
    }

    @Override // java.awt.image.RenderedImage
    public WritableRaster copyData(WritableRaster writableRaster) {
        Rectangle bounds;
        Rectangle bounds2 = getBounds();
        if (writableRaster == null) {
            writableRaster = Raster.createWritableRaster(this.sampleModel.createCompatibleSampleModel(this.width, this.height), new Point(this.minX, this.minY));
            bounds = bounds2;
        } else {
            bounds = writableRaster.getBounds();
        }
        Rectangle intersection = bounds2.contains(bounds) ? bounds : bounds.intersection(bounds2);
        int XToTileX = XToTileX(intersection.f97732x);
        int XToTileX2 = XToTileX((intersection.f97732x + intersection.width) - 1);
        int YToTileY = YToTileY((intersection.f97733y + intersection.height) - 1);
        for (int YToTileY2 = YToTileY(intersection.f97733y); YToTileY2 <= YToTileY; YToTileY2++) {
            for (int i = XToTileX; i <= XToTileX2; i++) {
                Raster tile = getTile(i, YToTileY2);
                tile.getBounds();
                Rectangle intersection2 = bounds.intersection(tile.getBounds());
                int i2 = intersection2.f97732x;
                int i3 = intersection2.f97733y;
                writableRaster.setRect(tile.createChild(i2, i3, intersection2.width, intersection2.height, i2, i3, null));
            }
        }
        return writableRaster;
    }

    public Rectangle getBounds() {
        return new Rectangle(getMinX(), getMinY(), getWidth(), getHeight());
    }

    @Override // java.awt.image.RenderedImage
    public ColorModel getColorModel() {
        return this.colorModel;
    }

    @Override // java.awt.image.RenderedImage
    public Raster getData() {
        return getData(new Rectangle(getMinX(), getMinY(), getWidth(), getHeight()));
    }

    @Override // java.awt.image.RenderedImage
    public int getHeight() {
        return this.height;
    }

    public int getMaxTileX() {
        return XToTileX(getMaxX() - 1);
    }

    public int getMaxTileY() {
        return YToTileY(getMaxY() - 1);
    }

    public final int getMaxX() {
        return getMinX() + getWidth();
    }

    public final int getMaxY() {
        return getMinY() + getHeight();
    }

    @Override // java.awt.image.RenderedImage
    public int getMinTileX() {
        return XToTileX(getMinX());
    }

    @Override // java.awt.image.RenderedImage
    public int getMinTileY() {
        return YToTileY(getMinY());
    }

    @Override // java.awt.image.RenderedImage
    public int getMinX() {
        return this.minX;
    }

    @Override // java.awt.image.RenderedImage
    public int getMinY() {
        return this.minY;
    }

    @Override // java.awt.image.RenderedImage
    public int getNumXTiles() {
        return (getMaxTileX() - getMinTileX()) + 1;
    }

    @Override // java.awt.image.RenderedImage
    public int getNumYTiles() {
        return (getMaxTileY() - getMinTileY()) + 1;
    }

    @Override // java.awt.image.RenderedImage
    public Object getProperty(String str) {
        Object obj = this.properties.get(str.toLowerCase());
        return obj != null ? obj : Image.UndefinedProperty;
    }

    @Override // java.awt.image.RenderedImage
    public String[] getPropertyNames() {
        if (this.properties.size() <= 0) {
            return null;
        }
        String[] strArr = new String[this.properties.size()];
        Enumeration<String> keys = this.properties.keys();
        int i = 0;
        while (keys.hasMoreElements()) {
            strArr[i] = keys.nextElement();
            i++;
        }
        return strArr;
    }

    @Override // java.awt.image.RenderedImage
    public SampleModel getSampleModel() {
        return this.sampleModel;
    }

    @Override // java.awt.image.RenderedImage
    public Vector<RenderedImage> getSources() {
        return null;
    }

    @Override // java.awt.image.RenderedImage
    public int getTileGridXOffset() {
        return this.tileGridXOffset;
    }

    @Override // java.awt.image.RenderedImage
    public int getTileGridYOffset() {
        return this.tileGridYOffset;
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

    public int XToTileX(int i) {
        return XToTileX(i, getTileGridXOffset(), getTileWidth());
    }

    public int YToTileY(int i) {
        return YToTileY(i, getTileGridYOffset(), getTileHeight());
    }

    public int tileXToX(int i) {
        return (i * this.tileWidth) + this.tileGridXOffset;
    }

    public int tileYToY(int i) {
        return (i * this.tileHeight) + this.tileGridYOffset;
    }

    @Override // java.awt.image.RenderedImage
    public Raster getData(Rectangle rectangle) {
        Rectangle bounds = getBounds();
        if (rectangle == null) {
            rectangle = bounds;
        } else if (!rectangle.intersects(bounds)) {
            throw new IllegalArgumentException("The provided region doesn't intersect with the image bounds.");
        }
        int XToTileX = XToTileX(rectangle.f97732x);
        int YToTileY = YToTileY(rectangle.f97733y);
        int XToTileX2 = XToTileX((rectangle.f97732x + rectangle.width) - 1);
        int YToTileY2 = YToTileY((rectangle.f97733y + rectangle.height) - 1);
        if (XToTileX == XToTileX2 && YToTileY == YToTileY2) {
            Raster tile = getTile(XToTileX, YToTileY);
            int i = rectangle.f97732x;
            int i2 = rectangle.f97733y;
            return tile.createChild(i, i2, rectangle.width, rectangle.height, i, i2, null);
        }
        if (!bounds.contains(rectangle)) {
            Rectangle intersection = rectangle.intersection(bounds);
            XToTileX = XToTileX(intersection.f97732x);
            YToTileY = YToTileY(intersection.f97733y);
            XToTileX2 = XToTileX((intersection.f97732x + intersection.width) - 1);
            YToTileY2 = YToTileY((intersection.f97733y + intersection.height) - 1);
        }
        WritableRaster createWritableRaster = Raster.createWritableRaster(this.sampleModel.createCompatibleSampleModel(rectangle.width, rectangle.height), rectangle.getLocation());
        while (YToTileY <= YToTileY2) {
            for (int i3 = XToTileX; i3 <= XToTileX2; i3++) {
                Raster tile2 = getTile(i3, YToTileY);
                tile2.getBounds();
                Rectangle intersection2 = rectangle.intersection(tile2.getBounds());
                int i4 = intersection2.f97732x;
                int i5 = intersection2.f97733y;
                createWritableRaster.setRect(tile2.createChild(i4, i5, intersection2.width, intersection2.height, i4, i5, null));
            }
            YToTileY++;
        }
        return createWritableRaster;
    }

    public String[] getPropertyNames(String str) {
        String[] propertyNames = getPropertyNames();
        if (propertyNames == null) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        Vector vector = new Vector();
        int i = 0;
        for (int i2 = 0; i2 < propertyNames.length; i2++) {
            if (propertyNames[i2].startsWith(lowerCase)) {
                vector.addElement(propertyNames[i2]);
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        String[] strArr = new String[vector.size()];
        Iterator it2 = vector.iterator();
        while (it2.hasNext()) {
            strArr[i] = (String) it2.next();
            i++;
        }
        return strArr;
    }
}
