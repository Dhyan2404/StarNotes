package org.apache.poi.hssf.usermodel;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.Toolkit;
import java.awt.image.ImageObserver;
import java.text.AttributedCharacterIterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.util.SuppressForbidden;

/* loaded from: classes12.dex */
public class EscherGraphics extends Graphics {
    private static final Logger LOG = LogManager.getLogger((Class<?>) EscherGraphics.class);
    private Color background;
    private final HSSFShapeGroup escherGroup;
    private Font font;
    private Color foreground;
    private final float verticalPixelsPerPoint;
    private final float verticalPointsPerPixel;
    private final HSSFWorkbook workbook;

    public EscherGraphics(HSSFShapeGroup hSSFShapeGroup, HSSFWorkbook hSSFWorkbook, Color color, float f) {
        this.background = Color.white;
        this.escherGroup = hSSFShapeGroup;
        this.workbook = hSSFWorkbook;
        this.verticalPointsPerPixel = f;
        this.verticalPixelsPerPoint = 1.0f / f;
        this.font = new Font(HSSFFont.FONT_ARIAL, 0, 10);
        this.foreground = color;
    }

    private int[] addToAll(int[] iArr, int i) {
        int[] iArr2 = new int[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[i2] = iArr[i2] + i;
        }
        return iArr2;
    }

    private int findBiggest(int[] iArr) {
        int i = Integer.MIN_VALUE;
        for (int i2 : iArr) {
            if (i2 > i) {
                i = i2;
            }
        }
        return i;
    }

    private int findSmallest(int[] iArr) {
        int i = Integer.MAX_VALUE;
        for (int i2 : iArr) {
            if (i2 < i) {
                i = i2;
            }
        }
        return i;
    }

    private HSSFFont matchFont(Font font) {
        HSSFColor findColor = this.workbook.getCustomPalette().findColor((byte) this.foreground.getRed(), (byte) this.foreground.getGreen(), (byte) this.foreground.getBlue());
        if (findColor == null) {
            findColor = this.workbook.getCustomPalette().findSimilarColor((byte) this.foreground.getRed(), (byte) this.foreground.getGreen(), (byte) this.foreground.getBlue());
        }
        boolean z = (font.getStyle() & 1) != 0;
        boolean z2 = (font.getStyle() & 2) != 0;
        HSSFFont findFont = this.workbook.findFont(z, findColor.getIndex(), (short) (font.getSize() * 20), font.getName(), z2, false, (short) 0, (byte) 0);
        if (findFont != null) {
            return findFont;
        }
        HSSFFont createFont = this.workbook.createFont();
        createFont.setBold(z);
        createFont.setColor(findColor.getIndex());
        createFont.setFontHeight((short) (font.getSize() * 20));
        createFont.setFontName(font.getName());
        createFont.setItalic(z2);
        createFont.setStrikeout(false);
        createFont.setTypeOffset((short) 0);
        createFont.setUnderline((byte) 0);
        return createFont;
    }

    @Override // java.awt.Graphics
    public void clearRect(int i, int i2, int i3, int i4) {
        Color color = this.foreground;
        setColor(this.background);
        fillRect(i, i2, i3, i4);
        setColor(color);
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void clipRect(int i, int i2, int i3, int i4) {
        LOG.atWarn().log("clipRect not supported");
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void copyArea(int i, int i2, int i3, int i4, int i5, int i6) {
        LOG.atWarn().log("copyArea not supported");
    }

    @Override // java.awt.Graphics
    public Graphics create() {
        return new EscherGraphics(this.escherGroup, this.workbook, this.foreground, this.font, this.verticalPointsPerPixel);
    }

    @Override // java.awt.Graphics
    public void dispose() {
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void drawArc(int i, int i2, int i3, int i4, int i5, int i6) {
        LOG.atWarn().log("drawArc not supported");
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color, ImageObserver imageObserver) {
        LOG.atWarn().log("drawImage not supported");
        return true;
    }

    @Override // java.awt.Graphics
    public void drawLine(int i, int i2, int i3, int i4) {
        drawLine(i, i2, i3, i4, 0);
    }

    @Override // java.awt.Graphics
    public void drawOval(int i, int i2, int i3, int i4) {
        HSSFSimpleShape createShape = this.escherGroup.createShape(new HSSFChildAnchor(i, i2, i3 + i, i4 + i2));
        createShape.setShapeType(3);
        createShape.setLineWidth(0);
        createShape.setLineStyleColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
        createShape.setNoFill(true);
    }

    @Override // java.awt.Graphics
    public void drawPolygon(int[] iArr, int[] iArr2, int i) {
        int findBiggest = findBiggest(iArr);
        int findBiggest2 = findBiggest(iArr2);
        int findSmallest = findSmallest(iArr);
        int findSmallest2 = findSmallest(iArr2);
        HSSFPolygon createPolygon = this.escherGroup.createPolygon(new HSSFChildAnchor(findSmallest, findSmallest2, findBiggest, findBiggest2));
        createPolygon.setPolygonDrawArea(findBiggest - findSmallest, findBiggest2 - findSmallest2);
        createPolygon.setPoints(addToAll(iArr, -findSmallest), addToAll(iArr2, -findSmallest2));
        createPolygon.setLineStyleColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
        createPolygon.setLineWidth(0);
        createPolygon.setNoFill(true);
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void drawPolyline(int[] iArr, int[] iArr2, int i) {
        LOG.atWarn().log("drawPolyline not supported");
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void drawRect(int i, int i2, int i3, int i4) {
        LOG.atWarn().log("drawRect not supported");
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void drawRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        LOG.atWarn().log("drawRoundRect not supported");
    }

    @Override // java.awt.Graphics
    public void drawString(String str, int i, int i2) {
        Font font;
        if (str == null || str.isEmpty()) {
            return;
        }
        if (this.font.getName().equals(Font.SANS_SERIF)) {
            font = new Font(HSSFFont.FONT_ARIAL, this.font.getStyle(), (int) (this.font.getSize() / this.verticalPixelsPerPoint));
        } else {
            font = new Font(this.font.getName(), this.font.getStyle(), (int) (this.font.getSize() / this.verticalPixelsPerPoint));
        }
        int stringWidth = (StaticFontMetrics.getFontDetails(font).getStringWidth(str) * 8) + 12;
        int size = ((int) ((this.font.getSize() / this.verticalPixelsPerPoint) + 6.0f)) * 2;
        float size2 = this.font.getSize();
        float f = this.verticalPixelsPerPoint;
        int i3 = (int) (i2 - ((size2 / f) + (f * 2.0f)));
        HSSFTextbox createTextbox = this.escherGroup.createTextbox(new HSSFChildAnchor(i, i3, stringWidth + i, size + i3));
        createTextbox.setNoFill(true);
        createTextbox.setLineStyle(-1);
        HSSFRichTextString hSSFRichTextString = new HSSFRichTextString(str);
        hSSFRichTextString.applyFont(matchFont(font));
        createTextbox.setString(hSSFRichTextString);
    }

    @Override // java.awt.Graphics
    public void fillArc(int i, int i2, int i3, int i4, int i5, int i6) {
        LOG.atWarn().log("fillArc not supported");
    }

    @Override // java.awt.Graphics
    public void fillOval(int i, int i2, int i3, int i4) {
        HSSFSimpleShape createShape = this.escherGroup.createShape(new HSSFChildAnchor(i, i2, i3 + i, i4 + i2));
        createShape.setShapeType(3);
        createShape.setLineStyle(-1);
        createShape.setFillColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
        createShape.setLineStyleColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
        createShape.setNoFill(false);
    }

    @Override // java.awt.Graphics
    public void fillPolygon(int[] iArr, int[] iArr2, int i) {
        int findBiggest = findBiggest(iArr);
        int findBiggest2 = findBiggest(iArr2);
        int findSmallest = findSmallest(iArr);
        int findSmallest2 = findSmallest(iArr2);
        HSSFPolygon createPolygon = this.escherGroup.createPolygon(new HSSFChildAnchor(findSmallest, findSmallest2, findBiggest, findBiggest2));
        createPolygon.setPolygonDrawArea(findBiggest - findSmallest, findBiggest2 - findSmallest2);
        createPolygon.setPoints(addToAll(iArr, -findSmallest), addToAll(iArr2, -findSmallest2));
        createPolygon.setLineStyleColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
        createPolygon.setFillColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
    }

    @Override // java.awt.Graphics
    public void fillRect(int i, int i2, int i3, int i4) {
        HSSFSimpleShape createShape = this.escherGroup.createShape(new HSSFChildAnchor(i, i2, i3 + i, i4 + i2));
        createShape.setShapeType(1);
        createShape.setLineStyle(-1);
        createShape.setFillColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
        createShape.setLineStyleColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
    }

    @Override // java.awt.Graphics
    public void fillRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        LOG.atWarn().log("fillRoundRect not supported");
    }

    public Color getBackground() {
        return this.background;
    }

    @Override // java.awt.Graphics
    public Shape getClip() {
        return getClipBounds();
    }

    @Override // java.awt.Graphics
    public Rectangle getClipBounds() {
        return null;
    }

    @Override // java.awt.Graphics
    public Color getColor() {
        return this.foreground;
    }

    public HSSFShapeGroup getEscherGraphics() {
        return this.escherGroup;
    }

    @Override // java.awt.Graphics
    public Font getFont() {
        return this.font;
    }

    @Override // java.awt.Graphics
    @SuppressForbidden
    public FontMetrics getFontMetrics(Font font) {
        return Toolkit.getDefaultToolkit().getFontMetrics(font);
    }

    public void setBackground(Color color) {
        this.background = color;
    }

    @Override // java.awt.Graphics
    public void setClip(int i, int i2, int i3, int i4) {
        setClip(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics
    public void setColor(Color color) {
        this.foreground = color;
    }

    @Override // java.awt.Graphics
    public void setFont(Font font) {
        this.font = font;
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void setPaintMode() {
        LOG.atWarn().log("setPaintMode not supported");
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void setXORMode(Color color) {
        LOG.atWarn().log("setXORMode not supported");
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void translate(int i, int i2) {
        LOG.atWarn().log("translate not supported");
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ImageObserver imageObserver) {
        LOG.atWarn().log("drawImage not supported");
        return true;
    }

    public void drawLine(int i, int i2, int i3, int i4, int i5) {
        HSSFSimpleShape createShape = this.escherGroup.createShape(new HSSFChildAnchor(i, i2, i3, i4));
        createShape.setShapeType(20);
        createShape.setLineWidth(i5);
        createShape.setLineStyleColor(this.foreground.getRed(), this.foreground.getGreen(), this.foreground.getBlue());
    }

    @Override // java.awt.Graphics
    @NotImplemented
    public void setClip(Shape shape) {
        LOG.atWarn().log("setClip not supported");
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, Color color, ImageObserver imageObserver) {
        return drawImage(image, i, i2, i + i3, i2 + i4, 0, 0, image.getWidth(imageObserver), image.getHeight(imageObserver), color, imageObserver);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, ImageObserver imageObserver) {
        return drawImage(image, i, i2, i + i3, i2 + i4, 0, 0, image.getWidth(imageObserver), image.getHeight(imageObserver), imageObserver);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, Color color, ImageObserver imageObserver) {
        return drawImage(image, i, i2, image.getWidth(imageObserver), image.getHeight(imageObserver), color, imageObserver);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, ImageObserver imageObserver) {
        return drawImage(image, i, i2, image.getWidth(imageObserver), image.getHeight(imageObserver), imageObserver);
    }

    public EscherGraphics(HSSFShapeGroup hSSFShapeGroup, HSSFWorkbook hSSFWorkbook, Color color, Font font, float f) {
        this.background = Color.white;
        this.escherGroup = hSSFShapeGroup;
        this.workbook = hSSFWorkbook;
        this.foreground = color;
        this.font = font;
        this.verticalPointsPerPixel = f;
        this.verticalPixelsPerPoint = 1.0f / f;
    }

    @Override // java.awt.Graphics
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2) {
        LOG.atWarn().log("drawString not supported");
    }
}
