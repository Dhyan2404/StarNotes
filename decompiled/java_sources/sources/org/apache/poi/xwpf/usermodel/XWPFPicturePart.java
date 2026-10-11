package org.apache.poi.xwpf.usermodel;

import java.awt.Insets;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.p114wp.usermodel.WPPicture;
import org.apache.poi.sl.draw.geom.CustomGeometry;
import org.apache.poi.sl.draw.geom.Guide;
import org.apache.poi.sl.draw.geom.IAdjustableShape;
import org.apache.poi.sl.draw.geom.Outline;
import org.apache.poi.sl.draw.geom.PresetGeometries;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.RectUtils;
import org.apache.poi.xslf.draw.geom.XSLFCustomGeometry;
import org.apache.poi.xslf.usermodel.XSLFPropertiesDelegate;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuide;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;

/* loaded from: classes13.dex */
public class XWPFPicturePart extends WPPicture implements IAdjustableShape, IRunPart {
    protected Rectangle2D anchor;
    protected String name;
    protected double offsetX;
    protected double offsetY;
    protected Rectangle2D origin;
    protected List<Outline> outlines;
    protected XWPFPicture picture;
    protected XWPFPictureData pictureData;
    protected InputStream pictureStream;
    protected PictureType pictureType;
    protected Position position = Position.NONE;
    protected double rotation;
    protected CTTransform2D xfrm;

    public XWPFPicturePart(XWPFPicture xWPFPicture) {
        this.picture = xWPFPicture;
        init();
    }

    private CustomGeometry getGeometry() {
        XSLFPropertiesDelegate.XSLFGeometryProperties geometryDelegate = XSLFPropertiesDelegate.getGeometryDelegate(this.picture.getCTPicture().getSpPr());
        if (geometryDelegate == null) {
            return null;
        }
        PresetGeometries presetGeometries = PresetGeometries.getInstance();
        if (!geometryDelegate.isSetPrstGeom()) {
            return geometryDelegate.isSetCustGeom() ? XSLFCustomGeometry.convertCustomGeometry(geometryDelegate.getCustGeom()) : presetGeometries.get("rect");
        }
        String stringEnumAbstractBase = geometryDelegate.getPrstGeom().getPrst().toString();
        CustomGeometry customGeometry = presetGeometries.get(stringEnumAbstractBase);
        if (customGeometry != null) {
            return customGeometry;
        }
        throw new IllegalStateException("Unknown shape geometry: " + stringEnumAbstractBase + ", available geometries are: " + presetGeometries.keySet());
    }

    private void init() {
        this.xfrm = this.picture.getCTPicture().getSpPr().getXfrm();
        initPictureData();
        initAnchor();
    }

    private void initAnchor() {
        CTTransform2D cTTransform2D = this.xfrm;
        if (cTTransform2D == null) {
            this.rotation = 0.0d;
            Rectangle2D.Double r0 = new Rectangle2D.Double();
            this.anchor = r0;
            this.origin = r0;
            return;
        }
        if (cTTransform2D.isSetExt()) {
            CTPositiveSize2D ext = this.xfrm.getExt();
            Rectangle2D.Double r02 = new Rectangle2D.Double(0.0d, 0.0d, ExtUnits.emuToPixel(ext.getCx()), ExtUnits.emuToPixel(ext.getCy()));
            this.anchor = r02;
            this.origin = r02;
        } else {
            Rectangle2D.Double r03 = new Rectangle2D.Double();
            this.anchor = r03;
            this.origin = r03;
        }
        double rot = this.xfrm.isSetRot() ? this.xfrm.getRot() / 60000.0d : 0.0d;
        this.rotation = rot;
        if (rot != 0.0d) {
            this.anchor = RectUtils.getRotateAnchor(this.origin, rot);
            this.offsetX = (this.origin.getWidth() - this.anchor.getWidth()) / 2.0d;
            this.offsetY = (this.origin.getHeight() - this.anchor.getHeight()) / 2.0d;
            Rectangle2D rectangle2D = this.anchor;
            rectangle2D.setFrame(0.0d, 0.0d, rectangle2D.getWidth(), this.anchor.getHeight());
        }
    }

    private void initPictureData() {
        XWPFPictureData pictureData = this.picture.getPictureData();
        this.pictureData = pictureData;
        if (pictureData == null) {
            this.name = this.picture.getDescription();
            this.pictureType = PictureType.UNKNOWN;
            return;
        }
        this.name = pictureData.getFileName();
        this.pictureType = XWPFWordToHtmlUtils.getPictureType(this.pictureData.getPictureType());
        InputStream inputStream = XWPFWordToHtmlUtils.getInputStream(this.pictureData);
        this.pictureStream = inputStream;
        PictureType pictureType = XWPFWordToHtmlUtils.getPictureType(inputStream);
        if (pictureType != PictureType.UNKNOWN) {
            this.pictureType = pictureType;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.picture.getCTPicture());
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public boolean flipH() {
        CTTransform2D cTTransform2D = this.xfrm;
        return cTTransform2D != null && cTTransform2D.getFlipH();
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public boolean flipV() {
        CTTransform2D cTTransform2D = this.xfrm;
        return cTTransform2D != null && cTTransform2D.getFlipV();
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Rectangle2D getAnchor() {
        return this.anchor;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public Insets getClip() {
        CTRelativeRect srcRect;
        CTBlipFillProperties blipFill = this.picture.getCTPicture().getBlipFill();
        if (blipFill == null || !blipFill.isSetSrcRect() || (srcRect = blipFill.getSrcRect()) == null) {
            return null;
        }
        return new Insets(POIXMLUnits.parsePercent(srcRect.xgetT()), POIXMLUnits.parsePercent(srcRect.xgetL()), POIXMLUnits.parsePercent(srcRect.xgetB()), POIXMLUnits.parsePercent(srcRect.xgetR()));
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getContentType() {
        return this.pictureType.contentType;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public InputStream getInputStream() {
        return this.pictureStream;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getName() {
        return this.name;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public Rectangle2D getOriginAnchor() {
        return this.origin;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<org.apache.poi.sl.draw.geom.Outline> getOutlines() {
        /*
            r28 = this;
            r0 = r28
            java.util.List<org.apache.poi.sl.draw.geom.Outline> r1 = r0.outlines
            if (r1 == 0) goto L7
            return r1
        L7:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r0.outlines = r1
            org.apache.poi.sl.draw.geom.CustomGeometry r1 = r28.getGeometry()
            if (r1 != 0) goto L17
            java.util.List<org.apache.poi.sl.draw.geom.Outline> r0 = r0.outlines
            return r0
        L17:
            java.awt.geom.Rectangle2D r2 = r0.anchor
            if (r2 != 0) goto L1e
            java.util.List<org.apache.poi.sl.draw.geom.Outline> r0 = r0.outlines
            return r0
        L1e:
            java.util.Iterator r2 = r1.iterator()
        L22:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto Ld4
            java.lang.Object r3 = r2.next()
            org.apache.poi.sl.draw.geom.PathIf r3 = (org.apache.poi.sl.draw.geom.PathIf) r3
            long r4 = r3.getW()
            double r4 = (double) r4
            long r6 = r3.getH()
            double r6 = (double) r6
            r8 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            int r10 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            r11 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r13 = 1
            r15 = 0
            if (r10 != 0) goto L58
            java.awt.geom.Rectangle2D r4 = r0.anchor
            double r4 = r4.getWidth()
            int r4 = org.apache.poi.util.Units.toEMU(r4)
            double r4 = (double) r4
            double r17 = org.apache.poi.util.Units.toPoints(r13)
        L53:
            r24 = r4
            r4 = r17
            goto L6f
        L58:
            java.awt.geom.Rectangle2D r10 = r0.anchor
            double r17 = r10.getWidth()
            int r10 = (r17 > r15 ? 1 : (r17 == r15 ? 0 : -1))
            if (r10 != 0) goto L66
            r24 = r4
            r4 = r11
            goto L6f
        L66:
            java.awt.geom.Rectangle2D r10 = r0.anchor
            double r17 = r10.getWidth()
            double r17 = r17 / r4
            goto L53
        L6f:
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 != 0) goto L85
            java.awt.geom.Rectangle2D r6 = r0.anchor
            double r6 = r6.getHeight()
            int r6 = org.apache.poi.util.Units.toEMU(r6)
            double r6 = (double) r6
            double r11 = org.apache.poi.util.Units.toPoints(r13)
        L82:
            r26 = r6
            goto L99
        L85:
            java.awt.geom.Rectangle2D r8 = r0.anchor
            double r8 = r8.getHeight()
            int r8 = (r8 > r15 ? 1 : (r8 == r15 ? 0 : -1))
            if (r8 != 0) goto L90
            goto L82
        L90:
            java.awt.geom.Rectangle2D r8 = r0.anchor
            double r8 = r8.getHeight()
            double r11 = r8 / r6
            goto L82
        L99:
            java.awt.geom.Rectangle2D$Double r6 = new java.awt.geom.Rectangle2D$Double
            r20 = 0
            r22 = 0
            r19 = r6
            r19.<init>(r20, r22, r24, r26)
            org.apache.poi.sl.draw.geom.Context r7 = new org.apache.poi.sl.draw.geom.Context
            r7.<init>(r1, r6, r0)
            java.awt.geom.Path2D$Double r6 = r3.getPath(r7)
            java.awt.geom.AffineTransform r7 = new java.awt.geom.AffineTransform
            r7.<init>()
            java.awt.geom.Rectangle2D r8 = r0.anchor
            double r8 = r8.getX()
            java.awt.geom.Rectangle2D r10 = r0.anchor
            double r13 = r10.getY()
            r7.translate(r8, r13)
            r7.scale(r4, r11)
            java.awt.Shape r4 = r7.createTransformedShape(r6)
            java.util.List<org.apache.poi.sl.draw.geom.Outline> r5 = r0.outlines
            org.apache.poi.sl.draw.geom.Outline r6 = new org.apache.poi.sl.draw.geom.Outline
            r6.<init>(r4, r3)
            r5.add(r6)
            goto L22
        Ld4:
            java.util.List<org.apache.poi.sl.draw.geom.Outline> r0 = r0.outlines
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xwpf.usermodel.XWPFPicturePart.getOutlines():java.util.List");
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Position getPosition() {
        return this.position;
    }

    @Override // org.apache.poi.p114wp.usermodel.WPPicture
    public double getRotation() {
        return this.rotation;
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return "XWPFPicture{" + this.name + '}';
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public int identifier() {
        if (this.pictureType == PictureType.UNKNOWN) {
            return -1;
        }
        long hashCode = Objects.hashCode(r0.contentType) + (Objects.hashCode(this.anchor) * 37) + (Objects.hashCode(this.name) * 43) + (Objects.hashCode(getClip()) * 47) + (Double.doubleToLongBits(getRotation()) * 53) + (flipH() ? 0L : 59L) + (flipV() ? 0L : 61L) + (this.position.ordinal() * 67) + (Arrays.hashCode(getOutlines().toArray()) * 71);
        return ((int) hashCode) ^ ((int) (hashCode >> 32));
    }

    @Override // org.apache.poi.sl.draw.geom.IAdjustableShape
    public Guide getAdjustValue(String str) {
        XSLFPropertiesDelegate.XSLFGeometryProperties geometryDelegate = XSLFPropertiesDelegate.getGeometryDelegate(this.picture.getCTPicture().getSpPr());
        if (geometryDelegate == null || !geometryDelegate.isSetPrstGeom() || !geometryDelegate.getPrstGeom().isSetAvLst()) {
            return null;
        }
        for (CTGeomGuide cTGeomGuide : geometryDelegate.getPrstGeom().getAvLst().getGdArray()) {
            if (cTGeomGuide.getName().equals(str)) {
                Guide guide = new Guide();
                guide.setName(cTGeomGuide.getName());
                guide.setFmla(cTGeomGuide.getFmla());
                return guide;
            }
        }
        return null;
    }
}
