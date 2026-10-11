package org.apache.poi.xssf.usermodel;

import java.awt.Dimension;
import java.io.IOException;
import java.io.InputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.ss.usermodel.Picture;
import org.apache.poi.ss.util.ImageUtils;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeType;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTPicture;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTPictureNonVisual;

/* loaded from: classes13.dex */
public final class XSSFPicture extends XSSFShape implements Picture {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFPicture.class);
    private static CTPicture prototype;
    private final CTPicture ctPicture;

    public XSSFPicture(XSSFDrawing xSSFDrawing, CTPicture cTPicture) {
        this.drawing = xSSFDrawing;
        this.ctPicture = cTPicture;
    }

    public static Dimension getImageDimension(PackagePart packagePart, int i) {
        try {
            InputStream inputStream = packagePart.getInputStream();
            try {
                Dimension imageDimension = ImageUtils.getImageDimension(inputStream, i);
                if (inputStream != null) {
                    inputStream.close();
                }
                return imageDimension;
            } finally {
            }
        } catch (IOException e) {
            LOG.atWarn().withThrowable(e).log("Failed to read image");
            return new Dimension();
        }
    }

    public static CTPicture prototype() {
        if (prototype == null) {
            CTPicture newInstance = CTPicture.Factory.newInstance();
            CTPictureNonVisual addNewNvPicPr = newInstance.addNewNvPicPr();
            CTNonVisualDrawingProps addNewCNvPr = addNewNvPicPr.addNewCNvPr();
            addNewCNvPr.setId(1L);
            addNewCNvPr.setName("Picture 1");
            addNewCNvPr.setDescr("Picture");
            addNewNvPicPr.addNewCNvPicPr().addNewPicLocks().setNoChangeAspect(true);
            CTBlipFillProperties addNewBlipFill = newInstance.addNewBlipFill();
            addNewBlipFill.addNewBlip().setEmbed("");
            addNewBlipFill.addNewStretch().addNewFillRect();
            CTShapeProperties addNewSpPr = newInstance.addNewSpPr();
            CTTransform2D addNewXfrm = addNewSpPr.addNewXfrm();
            CTPositiveSize2D addNewExt = addNewXfrm.addNewExt();
            addNewExt.setCx(0L);
            addNewExt.setCy(0L);
            CTPoint2D addNewOff = addNewXfrm.addNewOff();
            addNewOff.setX(0);
            addNewOff.setY(0);
            CTPresetGeometry2D addNewPrstGeom = addNewSpPr.addNewPrstGeom();
            addNewPrstGeom.setPrst(STShapeType.RECT);
            addNewPrstGeom.addNewAvLst();
            prototype = newInstance;
        }
        return prototype;
    }

    @Internal
    public CTPicture getCTPicture() {
        return this.ctPicture;
    }

    @Override // org.apache.poi.ss.usermodel.Shape
    public String getShapeName() {
        return this.ctPicture.getNvPicPr().getCNvPr().getName();
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFShape
    public CTShapeProperties getShapeProperties() {
        return this.ctPicture.getSpPr();
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public void resize() {
        resize(Double.MAX_VALUE);
    }

    public void setPictureReference(PackageRelationship packageRelationship) {
        this.ctPicture.getBlipFill().getBlip().setEmbed(packageRelationship.getId());
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public XSSFClientAnchor getClientAnchor() {
        XSSFAnchor anchor = getAnchor();
        if (anchor instanceof XSSFClientAnchor) {
            return (XSSFClientAnchor) anchor;
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public XSSFPictureData getPictureData() {
        return (XSSFPictureData) getDrawing().getRelationById(this.ctPicture.getBlipFill().getBlip().getEmbed());
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public XSSFSheet getSheet() {
        return (XSSFSheet) getDrawing().getParent();
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public void resize(double d) {
        resize(d, d);
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public XSSFClientAnchor getPreferredSize() {
        return getPreferredSize(1.0d);
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public void resize(double d, double d2) {
        XSSFClientAnchor clientAnchor = getClientAnchor();
        XSSFClientAnchor preferredSize = getPreferredSize(d, d2);
        if (clientAnchor != null && preferredSize != null) {
            int row1 = clientAnchor.getRow1() + (preferredSize.getRow2() - preferredSize.getRow1());
            clientAnchor.setCol2(clientAnchor.getCol1() + (preferredSize.getCol2() - preferredSize.getCol1()));
            clientAnchor.setDx2(preferredSize.getDx2());
            clientAnchor.setRow2(row1);
            clientAnchor.setDy2(preferredSize.getDy2());
            return;
        }
        LOG.atWarn().log("picture is not anchored via client anchor - ignoring resize call");
    }

    public XSSFClientAnchor getPreferredSize(double d) {
        return getPreferredSize(d, d);
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public XSSFClientAnchor getPreferredSize(double d, double d2) {
        Dimension preferredSize = ImageUtils.setPreferredSize(this, d, d2);
        CTPositiveSize2D ext = this.ctPicture.getSpPr().getXfrm().getExt();
        ext.setCx((int) preferredSize.getWidth());
        ext.setCy((int) preferredSize.getHeight());
        return getClientAnchor();
    }

    @Override // org.apache.poi.ss.usermodel.Picture
    public Dimension getImageDimension() {
        XSSFPictureData pictureData = getPictureData();
        return getImageDimension(pictureData.getPackagePart(), pictureData.getPictureType());
    }
}
