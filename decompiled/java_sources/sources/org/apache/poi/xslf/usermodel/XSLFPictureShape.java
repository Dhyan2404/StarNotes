package org.apache.poi.xslf.usermodel;

import java.awt.Insets;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import javax.imageio.ImageIO;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.util.Units;
import org.apache.poi.xslf.draw.SVGImageRenderer;
import org.apache.poi.xslf.usermodel.XSLFPictureShape;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlip;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtension;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeType;
import org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPicture;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual;

/* loaded from: classes13.dex */
public class XSLFPictureShape extends XSLFSimpleShape implements PictureShape<XSLFShape, XSLFTextParagraph> {
    private static final String BITMAP_URI = "{28A0092B-C50C-407E-A947-70E740481C1C}";
    private static final String MS_DML_NS = "http://schemas.microsoft.com/office/drawing/2010/main";
    private static final String MS_SVG_NS = "http://schemas.microsoft.com/office/drawing/2016/SVG/main";
    private static final String SVG_URI = "{96DAC541-7B7A-43D3-8B79-37D633B846F1}";
    private XSLFPictureData _data;
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSLFPictureShape.class);
    private static final QName EMBED_TAG = new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "embed", "rel");
    private static final QName[] BLIP_FILL = {new QName(XSSFRelation.NS_PRESENTATIONML, "blipFill")};

    public XSLFPictureShape(CTPicture cTPicture, XSLFSheet xSLFSheet) {
        super(cTPicture, xSLFSheet);
    }

    /* JADX WARN: Type inference failed for: r11v4, types: [org.apache.poi.xslf.usermodel.XSLFSimpleShape, org.apache.poi.xslf.usermodel.XSLFPictureShape] */
    public static XSLFPictureShape addSvgImage(XSLFSheet xSLFSheet, XSLFPictureData xSLFPictureData, PictureData.PictureType pictureType, Rectangle2D rectangle2D) throws IOException {
        PictureData.PictureType pictureType2;
        if (xSLFPictureData == null || xSLFPictureData.getType() == null) {
            throw new IllegalArgumentException("Cannot process svgPic with null type");
        }
        SVGImageRenderer sVGImageRenderer = new SVGImageRenderer();
        InputStream inputStream = xSLFPictureData.getInputStream();
        try {
            sVGImageRenderer.loadImage(inputStream, xSLFPictureData.getType().contentType);
            if (inputStream != null) {
                inputStream.close();
            }
            Dimension2D dimension = sVGImageRenderer.getDimension();
            if (rectangle2D == null) {
                rectangle2D = new Rectangle2D.Double(0.0d, 0.0d, Units.pixelToPoints((int) dimension.getWidth()), Units.pixelToPoints((int) dimension.getHeight()));
            }
            if (pictureType == null) {
                pictureType = PictureData.PictureType.PNG;
            }
            if (pictureType != PictureData.PictureType.JPEG && pictureType != PictureData.PictureType.GIF && pictureType != (pictureType2 = PictureData.PictureType.PNG)) {
                pictureType = pictureType2;
            }
            BufferedImage image = sVGImageRenderer.getImage(dimension);
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(100000);
            try {
                ImageIO.write(image, pictureType.extension.substring(1), unsynchronizedByteArrayOutputStream);
                ?? createPicture = xSLFSheet.createPicture((PictureData) xSLFSheet.getSlideShow().addPicture(unsynchronizedByteArrayOutputStream.toInputStream(), pictureType));
                createPicture.setAnchor(rectangle2D);
                createPicture.setSvgImage(xSLFPictureData);
                unsynchronizedByteArrayOutputStream.close();
                return createPicture;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private CTPictureNonVisual getCTPictureNonVisual() {
        XmlObject xmlObject = getXmlObject();
        if (xmlObject instanceof CTPicture) {
            return ((CTPicture) xmlObject).getNvPicPr();
        }
        return null;
    }

    private int getExt(CTOfficeArtExtensionList cTOfficeArtExtensionList, String str) {
        int sizeOfExtArray = cTOfficeArtExtensionList.sizeOfExtArray();
        for (int i = 0; i < sizeOfExtArray; i++) {
            if (str.equals(cTOfficeArtExtensionList.getExtArray(i).getUri())) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CTBlipFillProperties parse(XMLStreamReader xMLStreamReader) throws XmlException {
        CTPicture parse = CTPicture.Factory.parse(xMLStreamReader);
        if (parse != null) {
            return parse.getBlipFill();
        }
        return null;
    }

    public static CTPicture prototype(int i, String str) {
        CTPicture newInstance = CTPicture.Factory.newInstance();
        CTPictureNonVisual addNewNvPicPr = newInstance.addNewNvPicPr();
        CTNonVisualDrawingProps addNewCNvPr = addNewNvPicPr.addNewCNvPr();
        addNewCNvPr.setName("Picture " + i);
        addNewCNvPr.setId((long) i);
        addNewNvPicPr.addNewCNvPicPr().addNewPicLocks().setNoChangeAspect(true);
        addNewNvPicPr.addNewNvPr();
        CTBlipFillProperties addNewBlipFill = newInstance.addNewBlipFill();
        addNewBlipFill.addNewBlip().setEmbed(str);
        addNewBlipFill.addNewStretch().addNewFillRect();
        CTPresetGeometry2D addNewPrstGeom = newInstance.addNewSpPr().addNewPrstGeom();
        addNewPrstGeom.setPrst(STShapeType.RECT);
        addNewPrstGeom.addNewAvLst();
        return newInstance;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    @Override // org.apache.poi.xslf.usermodel.XSLFSimpleShape, org.apache.poi.xslf.usermodel.XSLFShape
    public void copy(XSLFShape xSLFShape) {
        super.copy(xSLFShape);
        XSLFPictureShape xSLFPictureShape = (XSLFPictureShape) xSLFShape;
        String blipId = xSLFPictureShape.getBlipId();
        if (blipId == null) {
            LOG.atWarn().log("unable to copy invalid picture shape");
            return;
        }
        String importBlip = getSheet().importBlip(blipId, xSLFPictureShape.getSheet());
        CTBlip blip = getBlipFill().getBlip();
        blip.setEmbed(importBlip);
        CTPictureNonVisual cTPictureNonVisual = getCTPictureNonVisual();
        CTApplicationNonVisualDrawingProps nvPr = cTPictureNonVisual == null ? null : cTPictureNonVisual.getNvPr();
        if (nvPr != null && nvPr.isSetCustDataLst()) {
            nvPr.unsetCustDataLst();
        }
        if (blip.isSetExtLst()) {
            for (CTOfficeArtExtension cTOfficeArtExtension : blip.getExtLst().getExtArray()) {
                XmlObject[] selectPath = cTOfficeArtExtension.selectPath("declare namespace a14='http://schemas.microsoft.com/office/drawing/2010/main' $this//a14:imgProps/a14:imgLayer");
                if (selectPath != null && selectPath.length == 1) {
                    XmlCursor newCursor = selectPath[0].newCursor();
                    try {
                        QName qName = EMBED_TAG;
                        newCursor.setAttributeText(qName, getSheet().importBlip(newCursor.getAttributeText(qName), xSLFPictureShape.getSheet()));
                        newCursor.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            if (newCursor != null) {
                                try {
                                    newCursor.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    }
                }
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.PictureShape
    public PictureData getAlternativePictureData() {
        return getSvgImage();
    }

    public CTBlip getBlip() {
        return getBlipFill().getBlip();
    }

    public CTBlipFillProperties getBlipFill() {
        CTBlipFillProperties blipFill = ((CTPicture) getXmlObject()).getBlipFill();
        if (blipFill != null) {
            return blipFill;
        }
        try {
            return (CTBlipFillProperties) XPathHelper.selectProperty(getXmlObject(), CTBlipFillProperties.class, new XSLFShape.ReparseFactory() { // from class: com.sunia.HTREnginev2.bno
                @Override // org.apache.poi.xslf.usermodel.XSLFShape.ReparseFactory
                public final XmlObject parse(XMLStreamReader xMLStreamReader) {
                    CTBlipFillProperties parse;
                    parse = XSLFPictureShape.parse(xMLStreamReader);
                    return parse;
                }
            }, BLIP_FILL);
        } catch (XmlException unused) {
            return null;
        }
    }

    public String getBlipId() {
        CTBlip blip = getBlip();
        if (blip == null) {
            return null;
        }
        String embed = blip.getEmbed();
        if (embed.isEmpty()) {
            return null;
        }
        return embed;
    }

    public String getBlipLink() {
        CTBlip blip = getBlip();
        if (blip == null) {
            return null;
        }
        String link = blip.getLink();
        if (link.isEmpty()) {
            return null;
        }
        return link;
    }

    @Override // org.apache.poi.sl.usermodel.PictureShape
    public Insets getClipping() {
        CTRelativeRect srcRect = getBlipFill().getSrcRect();
        if (srcRect == null) {
            return null;
        }
        return new Insets(POIXMLUnits.parsePercent(srcRect.xgetT()), POIXMLUnits.parsePercent(srcRect.xgetL()), POIXMLUnits.parsePercent(srcRect.xgetB()), POIXMLUnits.parsePercent(srcRect.xgetR()));
    }

    public String getName() {
        CTNonVisualDrawingProps cNvPr;
        CTPictureNonVisual cTPictureNonVisual = getCTPictureNonVisual();
        if (cTPictureNonVisual == null || (cNvPr = cTPictureNonVisual.getCNvPr()) == null) {
            return null;
        }
        return cNvPr.getName();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    public URI getPictureLink() {
        String blipLink;
        PackageRelationship relationship;
        if (getBlipId() != null || (blipLink = getBlipLink()) == null || (relationship = getSheet().getPackagePart().getRelationship(blipLink)) == null) {
            return null;
        }
        return relationship.getTargetURI();
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    public XSLFPictureData getSvgImage() {
        CTOfficeArtExtensionList extLst;
        CTBlip blip = getBlip();
        if (blip == null || (extLst = blip.getExtLst()) == null) {
            return null;
        }
        int sizeOfExtArray = extLst.sizeOfExtArray();
        for (int i = 0; i < sizeOfExtArray; i++) {
            XmlCursor newCursor = extLst.getExtArray(i).newCursor();
            try {
                if (newCursor.toChild(MS_SVG_NS, "svgBlip")) {
                    String attributeText = newCursor.getAttributeText(EMBED_TAG);
                    XSLFPictureData xSLFPictureData = attributeText != null ? (XSLFPictureData) getSheet().getRelationById(attributeText) : null;
                    newCursor.close();
                    return xSLFPictureData;
                }
                newCursor.close();
            } finally {
            }
        }
        return null;
    }

    public String getVideoFileLink() {
        CTPictureNonVisual cTPictureNonVisual;
        CTApplicationNonVisualDrawingProps nvPr;
        if (!isVideoFile() || (cTPictureNonVisual = getCTPictureNonVisual()) == null || (nvPr = cTPictureNonVisual.getNvPr()) == null || nvPr.getVideoFile() == null) {
            return null;
        }
        return nvPr.getVideoFile().getLink();
    }

    public boolean isExternalLinkedPicture() {
        return getBlipId() == null && getBlipLink() != null;
    }

    public boolean isVideoFile() {
        CTApplicationNonVisualDrawingProps nvPr;
        CTPictureNonVisual cTPictureNonVisual = getCTPictureNonVisual();
        if (cTPictureNonVisual == null || (nvPr = cTPictureNonVisual.getNvPr()) == null) {
            return false;
        }
        return nvPr.isSetVideoFile();
    }

    public boolean setName(String str) {
        XmlObject xmlObject = getXmlObject();
        if (!(xmlObject instanceof CTPicture)) {
            return false;
        }
        CTPicture cTPicture = (CTPicture) xmlObject;
        CTPictureNonVisual nvPicPr = cTPicture.getNvPicPr();
        if (nvPicPr == null) {
            nvPicPr = cTPicture.addNewNvPicPr();
        }
        if (nvPicPr == null) {
            return false;
        }
        CTNonVisualDrawingProps cNvPr = nvPicPr.getCNvPr();
        if (cNvPr == null) {
            cNvPr = nvPicPr.addNewCNvPr();
        }
        if (cNvPr == null) {
            return false;
        }
        cNvPr.setName(str);
        return true;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape, org.apache.poi.sl.usermodel.SimpleShape
    public void setPlaceholder(Placeholder placeholder) {
        super.setPlaceholder(placeholder);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    /* JADX WARN: Type inference failed for: r9v4, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    public void setSvgImage(XSLFPictureData xSLFPictureData) {
        XmlCursor newCursor;
        CTBlip blip = getBlip();
        CTOfficeArtExtensionList extLst = blip.isSetExtLst() ? blip.getExtLst() : blip.addNewExtLst();
        if (getExt(extLst, BITMAP_URI) == -1) {
            CTOfficeArtExtension addNewExt = extLst.addNewExt();
            addNewExt.setUri(BITMAP_URI);
            newCursor = addNewExt.newCursor();
            try {
                newCursor.toEndToken();
                newCursor.beginElement(new QName(MS_DML_NS, "useLocalDpi", "a14"));
                newCursor.insertNamespace("a14", MS_DML_NS);
                newCursor.insertAttributeWithValue("val", "0");
                newCursor.close();
            } finally {
            }
        }
        int ext = getExt(extLst, SVG_URI);
        if (ext != -1) {
            extLst.removeExt(ext);
        }
        String relationId = getSheet().getRelationId(xSLFPictureData);
        if (relationId == null) {
            relationId = getSheet().addRelation(null, XSLFRelation.IMAGE_SVG, xSLFPictureData).getRelationship().getId();
        }
        CTOfficeArtExtension addNewExt2 = extLst.addNewExt();
        addNewExt2.setUri(SVG_URI);
        newCursor = addNewExt2.newCursor();
        try {
            newCursor.toEndToken();
            newCursor.beginElement(new QName(MS_SVG_NS, "svgBlip", "asvg"));
            newCursor.insertNamespace("asvg", MS_SVG_NS);
            newCursor.insertAttributeWithValue(EMBED_TAG, relationId);
            newCursor.close();
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    @Override // org.apache.poi.sl.usermodel.PictureShape
    public XSLFPictureData getPictureData() {
        if (this._data == null) {
            String blipId = getBlipId();
            if (blipId == null) {
                return null;
            }
            this._data = (XSLFPictureData) getSheet().getRelationById(blipId);
        }
        return this._data;
    }
}
