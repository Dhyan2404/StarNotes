package org.apache.poi.xslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.poi.hpsf.ClassID;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.Ole10Native;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.usermodel.ObjectMetaData;
import org.apache.poi.sl.usermodel.ObjectShape;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.usermodel.XSLFObjectShape;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlip;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeType;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOleObject;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPicture;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPictureNonVisual;

/* loaded from: classes13.dex */
public class XSLFObjectShape extends XSLFGraphicFrame implements ObjectShape<XSLFShape, XSLFTextParagraph> {
    static final String OLE_URI = "http://schemas.openxmlformats.org/presentationml/2006/ole";
    private XSLFPictureData _data;
    private final CTOleObject _oleObject;
    private static final QName[] GRAPHIC = {new QName(XSSFRelation.NS_DRAWINGML, "graphic")};
    private static final QName[] GRAPHIC_DATA = {new QName(XSSFRelation.NS_DRAWINGML, "graphicData")};
    private static final QName[] OLE_OBJ = {new QName(XSSFRelation.NS_PRESENTATIONML, "oleObj")};
    private static final QName[] CT_PICTURE = {new QName(XSSFRelation.NS_PRESENTATIONML, "pic")};

    public XSLFObjectShape(CTGraphicalObjectFrame cTGraphicalObjectFrame, XSLFSheet xSLFSheet) {
        super(cTGraphicalObjectFrame, xSLFSheet);
        try {
            this._oleObject = (CTOleObject) XPathHelper.selectProperty(getXmlObject(), CTOleObject.class, null, GRAPHIC, GRAPHIC_DATA, OLE_OBJ);
        } catch (XmlException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUpdatedData(PackagePart packagePart, ObjectMetaData objectMetaData, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        packagePart.clear();
        InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(byteArrayOutputStream.toInputStream());
        try {
            OutputStream outputStream = packagePart.getOutputStream();
            try {
                if (FileMagic.valueOf(prepareToCheckMagic) == FileMagic.OLE2) {
                    POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(prepareToCheckMagic);
                    try {
                        pOIFSFileSystem.getRoot().setStorageClsid(objectMetaData.getClassID());
                        pOIFSFileSystem.writeFilesystem(outputStream);
                        pOIFSFileSystem.close();
                    } finally {
                    }
                } else if (objectMetaData.getOleEntry() == null) {
                    byteArrayOutputStream.writeTo(outputStream);
                } else {
                    POIFSFileSystem pOIFSFileSystem2 = new POIFSFileSystem();
                    try {
                        ClassID classID = objectMetaData.getClassID();
                        if (classID != null) {
                            pOIFSFileSystem2.getRoot().setStorageClsid(classID);
                        }
                        pOIFSFileSystem2.createDocument(prepareToCheckMagic, objectMetaData.getOleEntry());
                        Ole10Native.createOleMarkerEntry(pOIFSFileSystem2);
                        pOIFSFileSystem2.writeFilesystem(outputStream);
                        pOIFSFileSystem2.close();
                    } finally {
                    }
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                if (prepareToCheckMagic != null) {
                    prepareToCheckMagic.close();
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (prepareToCheckMagic != null) {
                    try {
                        prepareToCheckMagic.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CTPicture parse(XMLStreamReader xMLStreamReader) throws XmlException {
        CTGroupShape parse = CTGroupShape.Factory.parse(xMLStreamReader);
        if (parse.sizeOfPicArray() > 0) {
            return parse.getPicArray(0);
        }
        return null;
    }

    public static CTGraphicalObjectFrame prototype(int i, String str) {
        CTGraphicalObjectFrame newInstance = CTGraphicalObjectFrame.Factory.newInstance();
        CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr = newInstance.addNewNvGraphicFramePr();
        CTNonVisualDrawingProps addNewCNvPr = addNewNvGraphicFramePr.addNewCNvPr();
        addNewCNvPr.setName("Object " + i);
        addNewCNvPr.setId((long) i);
        addNewNvGraphicFramePr.addNewCNvGraphicFramePr();
        addNewNvGraphicFramePr.addNewNvPr();
        newInstance.addNewXfrm();
        CTGraphicalObjectData addNewGraphicData = newInstance.addNewGraphic().addNewGraphicData();
        addNewGraphicData.setUri(OLE_URI);
        XmlCursor newCursor = addNewGraphicData.newCursor();
        try {
            newCursor.toEndToken();
            newCursor.beginElement(new QName(XSSFRelation.NS_PRESENTATIONML, "oleObj"));
            newCursor.insertElement(new QName(XSSFRelation.NS_PRESENTATIONML, "embed"));
            CTGroupShape newInstance2 = CTGroupShape.Factory.newInstance();
            CTPicture addNewPic = newInstance2.addNewPic();
            CTPictureNonVisual addNewNvPicPr = addNewPic.addNewNvPicPr();
            CTNonVisualDrawingProps addNewCNvPr2 = addNewNvPicPr.addNewCNvPr();
            addNewCNvPr2.setName("");
            addNewCNvPr2.setId(0L);
            addNewNvPicPr.addNewCNvPicPr();
            addNewNvPicPr.addNewNvPr();
            CTBlipFillProperties addNewBlipFill = addNewPic.addNewBlipFill();
            addNewBlipFill.addNewBlip().setEmbed(str);
            addNewBlipFill.addNewStretch().addNewFillRect();
            CTShapeProperties addNewSpPr = addNewPic.addNewSpPr();
            CTTransform2D addNewXfrm = addNewSpPr.addNewXfrm();
            CTPoint2D addNewOff = addNewXfrm.addNewOff();
            addNewOff.setX(1270000);
            addNewOff.setY(1270000);
            CTPositiveSize2D addNewExt = addNewXfrm.addNewExt();
            addNewExt.setCx(1270000L);
            addNewExt.setCy(1270000L);
            addNewSpPr.addNewPrstGeom().setPrst(STShapeType.RECT);
            XmlCursor newCursor2 = newInstance2.newCursor();
            try {
                newCursor2.toStartDoc();
                newCursor2.moveXmlContents(newCursor);
                newCursor2.close();
                newCursor.close();
                return newInstance;
            } finally {
            }
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

    public CTBlip getBlip() {
        return getBlipFill().getBlip();
    }

    public CTBlipFillProperties getBlipFill() {
        try {
            CTPicture cTPicture = (CTPicture) XPathHelper.selectProperty(getXmlObject(), CTPicture.class, new XSLFShape.ReparseFactory() { // from class: com.sunia.HTREnginev2.ano
                @Override // org.apache.poi.xslf.usermodel.XSLFShape.ReparseFactory
                public final XmlObject parse(XMLStreamReader xMLStreamReader) {
                    CTPicture parse;
                    parse = XSLFObjectShape.parse(xMLStreamReader);
                    return parse;
                }
            }, GRAPHIC, GRAPHIC_DATA, OLE_OBJ, CT_PICTURE);
            if (cTPicture != null) {
                return cTPicture.getBlipFill();
            }
            return null;
        } catch (XmlException unused) {
            return null;
        }
    }

    public String getBlipId() {
        String embed = getBlip().getEmbed();
        if (embed.isEmpty()) {
            return null;
        }
        return embed;
    }

    @Internal
    public CTOleObject getCTOleObject() {
        return this._oleObject;
    }

    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public String getFullName() {
        CTOleObject cTOleObject = this._oleObject;
        if (cTOleObject == null) {
            return null;
        }
        return cTOleObject.getName();
    }

    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public String getProgId() {
        CTOleObject cTOleObject = this._oleObject;
        if (cTOleObject == null) {
            return null;
        }
        return cTOleObject.getProgId();
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public OutputStream updateObjectData(ObjectMetaData.Application application, final ObjectMetaData objectMetaData) throws IOException {
        final POIXMLDocumentPart.RelationPart createRelationship;
        if (application != null) {
            objectMetaData = application.getMetaData();
        }
        if (objectMetaData == null || objectMetaData.getClassID() == null) {
            throw new IllegalArgumentException("either application and/or metaData needs to be set.");
        }
        ?? sheet = getSheet();
        if (this._oleObject.isSetId()) {
            createRelationship = sheet.getRelationPartById(this._oleObject.getId());
        } else {
            try {
                XSLFRelation xSLFRelation = XSLFRelation.OLE_OBJECT;
                createRelationship = sheet.createRelationship(xSLFRelation, XSLFFactory.getInstance(), sheet.getPackagePart().getPackage().getUnusedPartIndex(xSLFRelation.getDefaultFileName()), false);
                this._oleObject.setId(createRelationship.getRelationship().getId());
            } catch (InvalidFormatException e) {
                throw new IOException("Unable to add new ole embedding", e);
            }
        }
        this._oleObject.setProgId(objectMetaData.getProgId());
        this._oleObject.setName(objectMetaData.getObjectName());
        return new ByteArrayOutputStream() { // from class: org.apache.poi.xslf.usermodel.XSLFObjectShape.1
            @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                XSLFObjectShape.this.addUpdatedData(createRelationship.getDocumentPart().getPackagePart(), objectMetaData, this);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public XSLFObjectData getObjectData() {
        return (XSLFObjectData) getSheet().getRelationPartById(getCTOleObject().getId()).getDocumentPart();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public XSLFPictureData getPictureData() {
        if (this._data == null) {
            String blipId = getBlipId();
            if (blipId == null) {
                return null;
            }
            PackagePart packagePart = getSheet().getPackagePart();
            PackageRelationship relationship = packagePart.getRelationship(blipId);
            if (relationship != null) {
                try {
                    this._data = new XSLFPictureData(packagePart.getRelatedPart(relationship));
                } catch (Exception e) {
                    throw new POIXMLException(e);
                }
            }
        }
        return this._data;
    }
}
