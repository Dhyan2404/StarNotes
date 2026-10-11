package org.apache.poi.hwmf.draw;

import java.awt.Color;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Area;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.util.List;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfBinaryRasterOp;
import org.apache.poi.hwmf.record.HwmfBrushStyle;
import org.apache.poi.hwmf.record.HwmfColorRef;
import org.apache.poi.hwmf.record.HwmfFill;
import org.apache.poi.hwmf.record.HwmfFont;
import org.apache.poi.hwmf.record.HwmfHatchStyle;
import org.apache.poi.hwmf.record.HwmfMapMode;
import org.apache.poi.hwmf.record.HwmfMisc;
import org.apache.poi.hwmf.record.HwmfPalette;
import org.apache.poi.hwmf.record.HwmfPenStyle;
import org.apache.poi.hwmf.record.HwmfTernaryRasterOp;
import org.apache.poi.hwmf.record.HwmfText;
import org.apache.poi.sl.draw.ImageRenderer;

/* loaded from: classes12.dex */
public class HwmfDrawProperties {
    private HwmfColorRef backgroundColor;
    private HwmfMisc.WmfSetBkMode.HwmfBkMode bkMode;
    private ImageRenderer brushBitmap;
    private HwmfColorRef brushColor;
    private HwmfHatchStyle brushHatch;
    private HwmfBrushStyle brushStyle;
    private final AffineTransform brushTransform;
    protected Shape clip;
    private HwmfFont font;
    private final Point2D location;
    private HwmfMapMode mapMode;
    private List<HwmfPalette.PaletteEntry> palette;
    private int paletteOffset;
    private HwmfColorRef penColor;
    private double penMiterLimit;
    private HwmfPenStyle penStyle;
    private double penWidth;
    private HwmfFill.WmfSetPolyfillMode.HwmfPolyfillMode polyfillMode;
    private HwmfBinaryRasterOp rasterOp2;
    private HwmfTernaryRasterOp rasterOp3;
    private Shape region;
    private HwmfText.HwmfTextAlignment textAlignAsian;
    private HwmfText.HwmfTextAlignment textAlignLatin;
    private HwmfColorRef textColor;
    private HwmfText.HwmfTextVerticalAlignment textVAlignAsian;
    private HwmfText.HwmfTextVerticalAlignment textVAlignLatin;
    protected final AffineTransform transform;
    private Rectangle2D viewport;
    private final Rectangle2D window;

    public HwmfDrawProperties() {
        this.brushTransform = new AffineTransform();
        this.transform = new AffineTransform();
        this.window = new Rectangle2D.Double(0.0d, 0.0d, 1.0d, 1.0d);
        this.viewport = null;
        this.location = new Point2D.Double(0.0d, 0.0d);
        this.mapMode = HwmfMapMode.MM_ANISOTROPIC;
        Color color = Color.BLACK;
        this.backgroundColor = new HwmfColorRef(color);
        this.brushStyle = HwmfBrushStyle.BS_SOLID;
        this.brushColor = new HwmfColorRef(color);
        this.brushHatch = HwmfHatchStyle.HS_HORIZONTAL;
        this.penWidth = 1.0d;
        this.penStyle = HwmfPenStyle.valueOf(0);
        this.penColor = new HwmfColorRef(color);
        this.penMiterLimit = 10.0d;
        this.bkMode = HwmfMisc.WmfSetBkMode.HwmfBkMode.OPAQUE;
        this.polyfillMode = HwmfFill.WmfSetPolyfillMode.HwmfPolyfillMode.WINDING;
        this.textColor = new HwmfColorRef(color);
        this.textAlignLatin = HwmfText.HwmfTextAlignment.LEFT;
        HwmfText.HwmfTextVerticalAlignment hwmfTextVerticalAlignment = HwmfText.HwmfTextVerticalAlignment.TOP;
        this.textVAlignLatin = hwmfTextVerticalAlignment;
        this.textAlignAsian = HwmfText.HwmfTextAlignment.RIGHT;
        this.textVAlignAsian = hwmfTextVerticalAlignment;
        this.rasterOp2 = HwmfBinaryRasterOp.R2_COPYPEN;
        this.rasterOp3 = null;
        this.clip = null;
        HwmfFont hwmfFont = new HwmfFont();
        this.font = hwmfFont;
        hwmfFont.initDefaults();
    }

    public HwmfColorRef getBackgroundColor() {
        return this.backgroundColor;
    }

    public HwmfMisc.WmfSetBkMode.HwmfBkMode getBkMode() {
        return this.bkMode;
    }

    public ImageRenderer getBrushBitmap() {
        return this.brushBitmap;
    }

    public HwmfColorRef getBrushColor() {
        return this.brushColor;
    }

    public HwmfHatchStyle getBrushHatch() {
        return this.brushHatch;
    }

    public HwmfBrushStyle getBrushStyle() {
        return this.brushStyle;
    }

    public AffineTransform getBrushTransform() {
        return this.brushTransform;
    }

    public Shape getClip() {
        return this.clip;
    }

    public HwmfFont getFont() {
        return this.font;
    }

    public Point2D getLocation() {
        return (Point2D) this.location.clone();
    }

    public HwmfMapMode getMapMode() {
        return this.mapMode;
    }

    public List<HwmfPalette.PaletteEntry> getPalette() {
        return this.palette;
    }

    public int getPaletteOffset() {
        return this.paletteOffset;
    }

    public HwmfColorRef getPenColor() {
        return this.penColor;
    }

    public double getPenMiterLimit() {
        return this.penMiterLimit;
    }

    public HwmfPenStyle getPenStyle() {
        return this.penStyle;
    }

    public double getPenWidth() {
        return this.penWidth;
    }

    public HwmfFill.WmfSetPolyfillMode.HwmfPolyfillMode getPolyfillMode() {
        return this.polyfillMode;
    }

    public HwmfBinaryRasterOp getRasterOp2() {
        return this.rasterOp2;
    }

    public HwmfTernaryRasterOp getRasterOp3() {
        return this.rasterOp3;
    }

    public Shape getRegion() {
        return this.region;
    }

    public HwmfText.HwmfTextAlignment getTextAlignAsian() {
        return this.textAlignAsian;
    }

    public HwmfText.HwmfTextAlignment getTextAlignLatin() {
        return this.textAlignLatin;
    }

    public HwmfColorRef getTextColor() {
        return this.textColor;
    }

    public HwmfText.HwmfTextVerticalAlignment getTextVAlignAsian() {
        return this.textVAlignAsian;
    }

    public HwmfText.HwmfTextVerticalAlignment getTextVAlignLatin() {
        return this.textVAlignLatin;
    }

    public AffineTransform getTransform() {
        return this.transform;
    }

    public Rectangle2D getViewport() {
        Rectangle2D rectangle2D = this.viewport;
        if (rectangle2D == null) {
            return null;
        }
        return (Rectangle2D) rectangle2D.clone();
    }

    public int getWindingRule() {
        return getPolyfillMode().awtFlag;
    }

    public Rectangle2D getWindow() {
        return (Rectangle2D) this.window.clone();
    }

    public void setBackgroundColor(HwmfColorRef hwmfColorRef) {
        this.backgroundColor = hwmfColorRef;
    }

    public void setBkMode(HwmfMisc.WmfSetBkMode.HwmfBkMode hwmfBkMode) {
        this.bkMode = hwmfBkMode;
    }

    public void setBrushBitmap(ImageRenderer imageRenderer) {
        this.brushBitmap = imageRenderer;
    }

    public void setBrushColor(HwmfColorRef hwmfColorRef) {
        this.brushColor = hwmfColorRef;
    }

    public void setBrushHatch(HwmfHatchStyle hwmfHatchStyle) {
        this.brushHatch = hwmfHatchStyle;
    }

    public void setBrushStyle(HwmfBrushStyle hwmfBrushStyle) {
        this.brushStyle = hwmfBrushStyle;
    }

    public void setBrushTransform(AffineTransform affineTransform) {
        if (affineTransform == null) {
            this.brushTransform.setToIdentity();
        } else {
            this.brushTransform.setTransform(affineTransform);
        }
    }

    public void setClip(Shape shape) {
        this.clip = shape;
    }

    public void setFont(HwmfFont hwmfFont) {
        this.font = hwmfFont;
    }

    public void setLocation(double d, double d2) {
        this.location.setLocation(d, d2);
    }

    public void setMapMode(HwmfMapMode hwmfMapMode) {
        this.mapMode = hwmfMapMode;
    }

    public void setPalette(List<HwmfPalette.PaletteEntry> list) {
        this.palette = list;
    }

    public void setPaletteOffset(int i) {
        this.paletteOffset = i;
    }

    public void setPenColor(HwmfColorRef hwmfColorRef) {
        this.penColor = hwmfColorRef;
    }

    public void setPenMiterLimit(double d) {
        this.penMiterLimit = d;
    }

    public void setPenStyle(HwmfPenStyle hwmfPenStyle) {
        this.penStyle = hwmfPenStyle;
    }

    public void setPenWidth(double d) {
        this.penWidth = d;
    }

    public void setPolyfillMode(HwmfFill.WmfSetPolyfillMode.HwmfPolyfillMode hwmfPolyfillMode) {
        this.polyfillMode = hwmfPolyfillMode;
    }

    public void setRasterOp2(HwmfBinaryRasterOp hwmfBinaryRasterOp) {
        this.rasterOp2 = hwmfBinaryRasterOp;
    }

    public void setRasterOp3(HwmfTernaryRasterOp hwmfTernaryRasterOp) {
        this.rasterOp3 = hwmfTernaryRasterOp;
    }

    public void setRegion(Shape shape) {
        this.region = shape;
    }

    public void setTextAlignAsian(HwmfText.HwmfTextAlignment hwmfTextAlignment) {
        this.textAlignAsian = hwmfTextAlignment;
    }

    public void setTextAlignLatin(HwmfText.HwmfTextAlignment hwmfTextAlignment) {
        this.textAlignLatin = hwmfTextAlignment;
    }

    public void setTextColor(HwmfColorRef hwmfColorRef) {
        this.textColor = hwmfColorRef;
    }

    public void setTextVAlignAsian(HwmfText.HwmfTextVerticalAlignment hwmfTextVerticalAlignment) {
        this.textVAlignAsian = hwmfTextVerticalAlignment;
    }

    public void setTextVAlignLatin(HwmfText.HwmfTextVerticalAlignment hwmfTextVerticalAlignment) {
        this.textVAlignLatin = hwmfTextVerticalAlignment;
    }

    public void setTransform(AffineTransform affineTransform) {
        this.transform.setTransform(affineTransform);
    }

    public void setViewportExt(double d, double d2) {
        if (this.viewport == null) {
            this.viewport = (Rectangle2D) this.window.clone();
        }
        double x = this.viewport.getX();
        double y = this.viewport.getY();
        if (d == 0.0d) {
            d = this.viewport.getWidth();
        }
        double d3 = d;
        if (d2 == 0.0d) {
            d2 = this.viewport.getHeight();
        }
        this.viewport.setRect(x, y, d3, d2);
    }

    public void setViewportOrg(double d, double d2) {
        if (this.viewport == null) {
            this.viewport = (Rectangle2D) this.window.clone();
        }
        this.viewport.setRect(d, d2, this.viewport.getWidth(), this.viewport.getHeight());
    }

    public void setWindowExt(double d, double d2) {
        double x = this.window.getX();
        double y = this.window.getY();
        if (d == 0.0d) {
            d = this.window.getWidth();
        }
        double d3 = d;
        if (d2 == 0.0d) {
            d2 = this.window.getHeight();
        }
        this.window.setRect(x, y, d3, d2);
    }

    public void setWindowOrg(double d, double d2) {
        this.window.setRect(d, d2, this.window.getWidth(), this.window.getHeight());
    }

    public void setBrushBitmap(BufferedImage bufferedImage) {
        this.brushBitmap = bufferedImage == null ? null : new HwmfGraphics.BufferedImageRenderer(bufferedImage);
    }

    public void setLocation(Point2D point2D) {
        this.location.setLocation(point2D);
    }

    public HwmfDrawProperties(HwmfDrawProperties hwmfDrawProperties) {
        AffineTransform affineTransform = new AffineTransform();
        this.brushTransform = affineTransform;
        AffineTransform affineTransform2 = new AffineTransform();
        this.transform = affineTransform2;
        Rectangle2D rectangle2D = hwmfDrawProperties.window;
        this.window = rectangle2D == null ? null : (Rectangle2D) rectangle2D.clone();
        Rectangle2D rectangle2D2 = hwmfDrawProperties.viewport;
        this.viewport = rectangle2D2 == null ? null : (Rectangle2D) rectangle2D2.clone();
        this.location = (Point2D) hwmfDrawProperties.location.clone();
        this.mapMode = hwmfDrawProperties.mapMode;
        HwmfColorRef hwmfColorRef = hwmfDrawProperties.backgroundColor;
        this.backgroundColor = hwmfColorRef == null ? null : hwmfColorRef.copy();
        this.brushStyle = hwmfDrawProperties.brushStyle;
        this.brushColor = hwmfDrawProperties.brushColor.copy();
        this.brushHatch = hwmfDrawProperties.brushHatch;
        this.brushBitmap = hwmfDrawProperties.brushBitmap;
        affineTransform.setTransform(hwmfDrawProperties.brushTransform);
        this.penWidth = hwmfDrawProperties.penWidth;
        HwmfPenStyle hwmfPenStyle = hwmfDrawProperties.penStyle;
        this.penStyle = hwmfPenStyle == null ? null : hwmfPenStyle.copy();
        HwmfColorRef hwmfColorRef2 = hwmfDrawProperties.penColor;
        this.penColor = hwmfColorRef2 == null ? null : hwmfColorRef2.copy();
        this.penMiterLimit = hwmfDrawProperties.penMiterLimit;
        this.bkMode = hwmfDrawProperties.bkMode;
        this.polyfillMode = hwmfDrawProperties.polyfillMode;
        Shape shape = hwmfDrawProperties.region;
        if (shape instanceof Rectangle2D) {
            this.region = shape.getBounds2D();
        } else if (shape instanceof Area) {
            this.region = new Area(hwmfDrawProperties.region);
        }
        this.palette = hwmfDrawProperties.palette;
        this.paletteOffset = hwmfDrawProperties.paletteOffset;
        this.font = hwmfDrawProperties.font;
        HwmfColorRef hwmfColorRef3 = hwmfDrawProperties.textColor;
        this.textColor = hwmfColorRef3 != null ? hwmfColorRef3.copy() : null;
        this.textAlignLatin = hwmfDrawProperties.textAlignLatin;
        this.textVAlignLatin = hwmfDrawProperties.textVAlignLatin;
        this.textAlignAsian = hwmfDrawProperties.textAlignAsian;
        this.textVAlignAsian = hwmfDrawProperties.textVAlignAsian;
        this.rasterOp2 = hwmfDrawProperties.rasterOp2;
        this.rasterOp3 = hwmfDrawProperties.rasterOp3;
        affineTransform2.setTransform(hwmfDrawProperties.transform);
        this.clip = hwmfDrawProperties.clip;
    }
}
