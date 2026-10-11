package org.apache.poi.hwpf.usermodel;

import java.awt.Color;
import java.awt.Insets;
import java.awt.geom.Rectangle2D;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.p114wp.usermodel.WPPicture;
import org.apache.poi.sl.draw.geom.Outline;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.StringUtils;

/* loaded from: classes12.dex */
public class HWPFDrawing extends WPPicture {
    private Rectangle2D anchor;
    private String name;
    private OfficeDrawing officeDrawing;
    byte[] pictureData;
    private PictureType pictureType;

    public HWPFDrawing(OfficeDrawing officeDrawing, int i) {
        this.pictureType = PictureType.UNKNOWN;
        this.officeDrawing = officeDrawing;
        this.anchor = getAnchor(officeDrawing);
        byte[] pictureData = officeDrawing.getPictureData();
        this.pictureData = pictureData;
        if (pictureData != null) {
            this.pictureType = PictureType.findMatchingType(pictureData);
            this.name = StringUtils.join(Arrays.asList(Integer.valueOf(i), this.pictureType.getExtension()), ".");
        }
    }

    private Rectangle2D getAnchor(OfficeDrawing officeDrawing) {
        return new Rectangle2D.Double(ExtUnits.twipsToPx(officeDrawing.getRectangleLeft()), ExtUnits.twipsToPx(officeDrawing.getRectangleTop()), ExtUnits.twipsToPx(officeDrawing.getRectangleRight() - officeDrawing.getRectangleLeft()), ExtUnits.twipsToPx(officeDrawing.getRectangleBottom() - officeDrawing.getRectangleTop()));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public boolean flipH() {
        return false;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public boolean flipV() {
        return false;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public Color getBackground() {
        return Color.WHITE;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public Insets getClip() {
        return null;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getContentType() {
        return this.pictureType.getMime();
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public InputStream getInputStream() {
        if (this.pictureData == null) {
            return null;
        }
        return new ByteArrayInputStream(this.pictureData);
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getName() {
        return this.name;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public Rectangle2D getOriginAnchor() {
        return this.anchor;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public List<Outline> getOutlines() {
        return null;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Position getPosition() {
        return Position.NONE;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public double getRotation() {
        return 0.0d;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public int identifier() {
        if (this.pictureType == PictureType.UNKNOWN) {
            return -1;
        }
        long hashCode = Objects.hashCode(r0.getMime()) + (Objects.hashCode(this.anchor) * 37) + (Objects.hashCode(this.name) * 43);
        return ((int) hashCode) ^ ((int) (hashCode >> 32));
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Rectangle2D getAnchor() {
        return this.anchor;
    }
}
