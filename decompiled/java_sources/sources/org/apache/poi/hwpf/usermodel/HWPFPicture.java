package org.apache.poi.hwpf.usermodel;

import java.awt.Color;
import java.awt.Insets;
import java.awt.geom.Rectangle2D;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.p114wp.usermodel.WPPicture;
import org.apache.poi.sl.draw.geom.Outline;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes12.dex */
public class HWPFPicture extends WPPicture {
    private Rectangle2D anchor;
    private Insets clip;
    private String name;
    private Picture picture;
    private PictureType pictureType;

    public HWPFPicture(Picture picture) {
        this.picture = picture;
        initAnchorAndClip(picture);
        this.pictureType = picture.suggestPictureType();
        this.name = picture.suggestFullFileName();
    }

    private void initAnchorAndClip(Picture picture) {
        double cropLeft = picture.getCropLeft();
        double cropTop = picture.getCropTop();
        double cropRight = picture.getCropRight();
        double cropBottom = picture.getCropBottom();
        float horizontalScalingFactor = picture.getHorizontalScalingFactor();
        float verticalScalingFactor = picture.getVerticalScalingFactor();
        double dxaGoal = picture.getDxaGoal();
        if (horizontalScalingFactor > 0.0f) {
            dxaGoal *= horizontalScalingFactor / 1000.0f;
        }
        double twipsToPx = ExtUnits.twipsToPx(dxaGoal);
        double dyaGoal = picture.getDyaGoal();
        if (verticalScalingFactor > 0.0f) {
            dyaGoal *= verticalScalingFactor / 1000.0f;
        }
        double twipsToPx2 = ExtUnits.twipsToPx(dyaGoal);
        this.anchor = new Rectangle2D.Double(0.0d, 0.0d, twipsToPx - ((cropLeft + cropRight) * twipsToPx), twipsToPx2 - ((cropTop + cropBottom) * twipsToPx2));
        this.clip = new Insets((int) (cropTop * 100000.0d), (int) (cropLeft * 100000.0d), (int) (cropBottom * 100000.0d), (int) (cropRight * 100000.0d));
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

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Rectangle2D getAnchor() {
        return this.anchor;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public Color getBackground() {
        return Color.WHITE;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public Insets getClip() {
        return this.clip;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getContentType() {
        return this.pictureType.getMime();
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public InputStream getInputStream() {
        byte[] content = this.picture.getContent();
        if (content == null) {
            return null;
        }
        return new ByteArrayInputStream(content);
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
        long hashCode = Objects.hashCode(r0.getMime()) + (Objects.hashCode(this.anchor) * 37) + (Objects.hashCode(this.clip) * 43) + (Objects.hashCode(this.name) * 47);
        return ((int) hashCode) ^ ((int) (hashCode >> 32));
    }
}
