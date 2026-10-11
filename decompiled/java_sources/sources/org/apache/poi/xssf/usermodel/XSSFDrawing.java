package org.apache.poi.xssf.usermodel;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import javax.xml.namespace.QName;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.extractor.ExtractorFactory;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.Drawing;
import org.apache.poi.ss.util.ImageUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTAbsoluteAnchor;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTConnector;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGroupShape;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTOneCellAnchor;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTPicture;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTTwoCellAnchor;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.STEditAs;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTOleObject;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet;

/* loaded from: classes13.dex */
public final class XSSFDrawing extends POIXMLDocumentPart implements Drawing<XSSFShape> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFDrawing.class);
    protected static final String NAMESPACE_A = "http://schemas.openxmlformats.org/drawingml/2006/main";
    protected static final String NAMESPACE_C = "http://schemas.openxmlformats.org/drawingml/2006/chart";
    private CTDrawing drawing;
    private long numOfGraphicFrames;

    /* renamed from: org.apache.poi.xssf.usermodel.XSSFDrawing$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199621 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$ClientAnchor$AnchorType;

        static {
            int[] iArr = new int[ClientAnchor.AnchorType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$ClientAnchor$AnchorType = iArr;
            try {
                iArr[ClientAnchor.AnchorType.DONT_MOVE_AND_RESIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$ClientAnchor$AnchorType[ClientAnchor.AnchorType.MOVE_AND_RESIZE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$ClientAnchor$AnchorType[ClientAnchor.AnchorType.MOVE_DONT_RESIZE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public XSSFDrawing() {
        this.drawing = newDrawing();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        if ((r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTConnector) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        r1 = new org.apache.poi.xssf.usermodel.XSSFConnector(r3, (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTConnector) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
    
        if ((r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
    
        if (hasOleLink(r0) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        r1 = new org.apache.poi.xssf.usermodel.XSSFObjectData(r3, (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r1 = new org.apache.poi.xssf.usermodel.XSSFSimpleShape(r3, (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
    
        if ((r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        r1 = new org.apache.poi.xssf.usermodel.XSSFGraphicFrame(r3, (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
    
        if ((r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGroupShape) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
    
        r1 = new org.apache.poi.xssf.usermodel.XSSFShapeGroup(r3, (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGroupShape) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
    
        if ((r0 instanceof org.apache.xmlbeans.impl.values.XmlAnyTypeImpl) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0070, code lost:
    
        org.apache.poi.xssf.usermodel.XSSFDrawing.LOG.atWarn().log("trying to parse AlternateContent, this unlinks the returned Shapes from the underlying xml content, so those shapes can't be used to modify the drawing, i.e. modifications will be ignored!");
        r4.push();
        r4.toFirstChild();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
    
        r0 = org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing.Factory.parse(r4.newXMLStreamReader()).newCursor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0007, code lost:
    
        if (r4.toFirstChild() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0095, code lost:
    
        if (r0.toFirstChild() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0097, code lost:
    
        addShapes(r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009a, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009e, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009f, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0009, code lost:
    
        r0 = r4.getObject();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a0, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a1, code lost:
    
        if (r0 != null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ab, code lost:
    
        throw r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a3, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
    
        if ((r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a8, code lost:
    
        r1.addSuppressed(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ae, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00af, code lost:
    
        org.apache.poi.xssf.usermodel.XSSFDrawing.LOG.atWarn().withThrowable(r0).log("unable to parse CTDrawing in alternate content.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ac, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c2, code lost:
    
        r4.pop();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c5, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        if ((r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTPicture) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        r1 = new org.apache.poi.xssf.usermodel.XSSFPicture(r3, (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTPicture) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0062, code lost:
    
        r1.anchor = getAnchorFromParent(r0);
        r5.add(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addShapes(org.apache.xmlbeans.XmlCursor r4, java.util.List<org.apache.poi.xssf.usermodel.XSSFShape> r5) {
        /*
            r3 = this;
        L0:
            r4.push()
            boolean r0 = r4.toFirstChild()
            if (r0 == 0) goto Lcc
        L9:
            org.apache.xmlbeans.XmlObject r0 = r4.getObject()
            boolean r1 = r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker
            if (r1 == 0) goto L13
            goto Lc6
        L13:
            boolean r1 = r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTPicture
            if (r1 == 0) goto L20
            org.apache.poi.xssf.usermodel.XSSFPicture r1 = new org.apache.poi.xssf.usermodel.XSSFPicture
            r2 = r0
            org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTPicture r2 = (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTPicture) r2
            r1.<init>(r3, r2)
            goto L62
        L20:
            boolean r1 = r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTConnector
            if (r1 == 0) goto L2d
            org.apache.poi.xssf.usermodel.XSSFConnector r1 = new org.apache.poi.xssf.usermodel.XSSFConnector
            r2 = r0
            org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTConnector r2 = (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTConnector) r2
            r1.<init>(r3, r2)
            goto L62
        L2d:
            boolean r1 = r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape
            if (r1 == 0) goto L49
            boolean r1 = r3.hasOleLink(r0)
            if (r1 == 0) goto L40
            org.apache.poi.xssf.usermodel.XSSFObjectData r1 = new org.apache.poi.xssf.usermodel.XSSFObjectData
            r2 = r0
            org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape r2 = (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape) r2
            r1.<init>(r3, r2)
            goto L62
        L40:
            org.apache.poi.xssf.usermodel.XSSFSimpleShape r1 = new org.apache.poi.xssf.usermodel.XSSFSimpleShape
            r2 = r0
            org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape r2 = (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTShape) r2
            r1.<init>(r3, r2)
            goto L62
        L49:
            boolean r1 = r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame
            if (r1 == 0) goto L56
            org.apache.poi.xssf.usermodel.XSSFGraphicFrame r1 = new org.apache.poi.xssf.usermodel.XSSFGraphicFrame
            r2 = r0
            org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame r2 = (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame) r2
            r1.<init>(r3, r2)
            goto L62
        L56:
            boolean r1 = r0 instanceof org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGroupShape
            if (r1 == 0) goto L6c
            org.apache.poi.xssf.usermodel.XSSFShapeGroup r1 = new org.apache.poi.xssf.usermodel.XSSFShapeGroup
            r2 = r0
            org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGroupShape r2 = (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGroupShape) r2
            r1.<init>(r3, r2)
        L62:
            org.apache.poi.xssf.usermodel.XSSFAnchor r0 = r3.getAnchorFromParent(r0)
            r1.anchor = r0
            r5.add(r1)
            goto Lc6
        L6c:
            boolean r0 = r0 instanceof org.apache.xmlbeans.impl.values.XmlAnyTypeImpl
            if (r0 == 0) goto Lc6
            org.apache.logging.log4j.Logger r0 = org.apache.poi.xssf.usermodel.XSSFDrawing.LOG
            org.apache.logging.log4j.LogBuilder r0 = r0.atWarn()
            java.lang.String r1 = "trying to parse AlternateContent, this unlinks the returned Shapes from the underlying xml content, so those shapes can't be used to modify the drawing, i.e. modifications will be ignored!"
            r0.log(r1)
            r4.push()
            r4.toFirstChild()
            org.apache.xmlbeans.impl.schema.DocumentFactory<org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing> r0 = org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing.Factory     // Catch: java.lang.Throwable -> Lac org.apache.xmlbeans.XmlException -> Lae
            javax.xml.stream.XMLStreamReader r1 = r4.newXMLStreamReader()     // Catch: java.lang.Throwable -> Lac org.apache.xmlbeans.XmlException -> Lae
            java.lang.Object r0 = r0.parse(r1)     // Catch: java.lang.Throwable -> Lac org.apache.xmlbeans.XmlException -> Lae
            org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing r0 = (org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTDrawing) r0     // Catch: java.lang.Throwable -> Lac org.apache.xmlbeans.XmlException -> Lae
            org.apache.xmlbeans.XmlCursor r0 = r0.newCursor()     // Catch: java.lang.Throwable -> Lac org.apache.xmlbeans.XmlException -> Lae
            boolean r1 = r0.toFirstChild()     // Catch: java.lang.Throwable -> L9e
            if (r1 == 0) goto L9a
            r3.addShapes(r0, r5)     // Catch: java.lang.Throwable -> L9e
        L9a:
            r0.close()     // Catch: java.lang.Throwable -> Lac org.apache.xmlbeans.XmlException -> Lae
            goto Lbe
        L9e:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> La0
        La0:
            r2 = move-exception
            if (r0 == 0) goto Lab
            r0.close()     // Catch: java.lang.Throwable -> La7
            goto Lab
        La7:
            r0 = move-exception
            r1.addSuppressed(r0)     // Catch: java.lang.Throwable -> Lac org.apache.xmlbeans.XmlException -> Lae
        Lab:
            throw r2     // Catch: java.lang.Throwable -> Lac org.apache.xmlbeans.XmlException -> Lae
        Lac:
            r3 = move-exception
            goto Lc2
        Lae:
            r0 = move-exception
            org.apache.logging.log4j.Logger r1 = org.apache.poi.xssf.usermodel.XSSFDrawing.LOG     // Catch: java.lang.Throwable -> Lac
            org.apache.logging.log4j.LogBuilder r1 = r1.atWarn()     // Catch: java.lang.Throwable -> Lac
            org.apache.logging.log4j.LogBuilder r0 = r1.withThrowable(r0)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r1 = "unable to parse CTDrawing in alternate content."
            r0.log(r1)     // Catch: java.lang.Throwable -> Lac
        Lbe:
            r4.pop()
            goto Lc6
        Lc2:
            r4.pop()
            throw r3
        Lc6:
            boolean r0 = r4.toNextSibling()
            if (r0 != 0) goto L9
        Lcc:
            r4.pop()
            boolean r0 = r4.toNextSibling()
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xssf.usermodel.XSSFDrawing.addShapes(org.apache.xmlbeans.XmlCursor, java.util.List):void");
    }

    private XSSFGraphicFrame createGraphicFrame(XSSFClientAnchor xSSFClientAnchor) {
        CTGraphicalObjectFrame addNewGraphicFrame = createTwoCellAnchor(xSSFClientAnchor).addNewGraphicFrame();
        addNewGraphicFrame.set(XSSFGraphicFrame.prototype());
        addNewGraphicFrame.setXfrm(createXfrm(xSSFClientAnchor));
        long j = this.numOfGraphicFrames;
        this.numOfGraphicFrames = 1 + j;
        XSSFGraphicFrame xSSFGraphicFrame = new XSSFGraphicFrame(this, addNewGraphicFrame);
        xSSFGraphicFrame.setAnchor(xSSFClientAnchor);
        xSSFGraphicFrame.setId(j);
        xSSFGraphicFrame.setName("Diagramm" + j);
        return xSSFGraphicFrame;
    }

    private CTTwoCellAnchor createTwoCellAnchor(XSSFClientAnchor xSSFClientAnchor) {
        CTTwoCellAnchor addNewTwoCellAnchor = this.drawing.addNewTwoCellAnchor();
        addNewTwoCellAnchor.setFrom(xSSFClientAnchor.getFrom());
        addNewTwoCellAnchor.setTo(xSSFClientAnchor.getTo());
        addNewTwoCellAnchor.addNewClientData();
        xSSFClientAnchor.setTo(addNewTwoCellAnchor.getTo());
        xSSFClientAnchor.setFrom(addNewTwoCellAnchor.getFrom());
        int i = C199621.$SwitchMap$org$apache$poi$ss$usermodel$ClientAnchor$AnchorType[xSSFClientAnchor.getAnchorType().ordinal()];
        addNewTwoCellAnchor.setEditAs(i != 1 ? i != 2 ? i != 3 ? STEditAs.ONE_CELL : STEditAs.ONE_CELL : STEditAs.TWO_CELL : STEditAs.ABSOLUTE);
        return addNewTwoCellAnchor;
    }

    private CTTransform2D createXfrm(XSSFClientAnchor xSSFClientAnchor) {
        CTTransform2D newInstance = CTTransform2D.Factory.newInstance();
        CTPoint2D addNewOff = newInstance.addNewOff();
        addNewOff.setX(Integer.valueOf(xSSFClientAnchor.getDx1()));
        addNewOff.setY(Integer.valueOf(xSSFClientAnchor.getDy1()));
        XSSFSheet sheet = getSheet();
        double d = 0.0d;
        double d2 = 0.0d;
        for (int col1 = xSSFClientAnchor.getCol1(); col1 < xSSFClientAnchor.getCol2(); col1++) {
            d2 += sheet.getColumnWidthInPixels(col1);
        }
        for (int row1 = xSSFClientAnchor.getRow1(); row1 < xSSFClientAnchor.getRow2(); row1++) {
            d += ImageUtils.getRowHeightInPixels(sheet, row1);
        }
        long pixelToEMU = Units.pixelToEMU((int) d2);
        long pixelToEMU2 = Units.pixelToEMU((int) d);
        CTPositiveSize2D addNewExt = newInstance.addNewExt();
        addNewExt.setCx((pixelToEMU - xSSFClientAnchor.getDx1()) + xSSFClientAnchor.getDx2());
        addNewExt.setCy((pixelToEMU2 - xSSFClientAnchor.getDy1()) + xSSFClientAnchor.getDy2());
        return newInstance;
    }

    private XSSFAnchor getAnchorFromParent(XmlObject xmlObject) {
        XmlCursor newCursor = xmlObject.newCursor();
        try {
            XmlObject object = newCursor.toParent() ? newCursor.getObject() : null;
            newCursor.close();
            if (object == null) {
                return null;
            }
            if (object instanceof CTTwoCellAnchor) {
                CTTwoCellAnchor cTTwoCellAnchor = (CTTwoCellAnchor) object;
                return new XSSFClientAnchor(cTTwoCellAnchor.getFrom(), cTTwoCellAnchor.getTo());
            }
            if (object instanceof CTOneCellAnchor) {
                CTOneCellAnchor cTOneCellAnchor = (CTOneCellAnchor) object;
                return new XSSFClientAnchor(getSheet(), cTOneCellAnchor.getFrom(), cTOneCellAnchor.getExt());
            }
            if (!(object instanceof CTAbsoluteAnchor)) {
                return null;
            }
            CTAbsoluteAnchor cTAbsoluteAnchor = (CTAbsoluteAnchor) object;
            return new XSSFClientAnchor(getSheet(), cTAbsoluteAnchor.getPos(), cTAbsoluteAnchor.getExt());
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

    private boolean hasOleLink(XmlObject xmlObject) {
        QName qName = new QName(null, "uri");
        XmlCursor newCursor = xmlObject.newCursor();
        try {
            newCursor.selectPath("declare namespace a='http://schemas.openxmlformats.org/drawingml/2006/main' .//a:extLst/a:ext");
            while (newCursor.toNextSelection()) {
                if ("{63B3BB69-23CF-44E3-9099-C40C66FF867C}".equals(newCursor.getAttributeText(qName))) {
                    newCursor.close();
                    return true;
                }
            }
            newCursor.close();
            return false;
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

    private static CTDrawing newDrawing() {
        return CTDrawing.Factory.newInstance();
    }

    private long newShapeId() {
        return this.drawing.sizeOfAbsoluteAnchorArray() + 1 + this.drawing.sizeOfOneCellAnchorArray() + this.drawing.sizeOfTwoCellAnchorArray();
    }

    public PackageRelationship addPictureReference(int i) {
        return addRelation(null, XSSFRelation.IMAGES, new XSSFPictureData(getSheet().getWorkbook().getAllPictures().get(i).getPackagePart())).getRelationship();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTDrawing.type.getName().getNamespaceURI(), "wsDr", "xdr"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.drawing.save(outputStream, xmlOptions);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public XSSFChart createChart(XSSFClientAnchor xSSFClientAnchor) {
        POIXMLDocumentPart.RelationPart createChartRelationPart = createChartRelationPart();
        XSSFChart xSSFChart = (XSSFChart) createChartRelationPart.getDocumentPart();
        String id = createChartRelationPart.getRelationship().getId();
        XSSFGraphicFrame createGraphicFrame = createGraphicFrame(xSSFClientAnchor);
        createGraphicFrame.setChart(xSSFChart, id);
        createGraphicFrame.getCTGraphicalObjectFrame().setXfrm(createXfrm(xSSFClientAnchor));
        return xSSFChart;
    }

    public POIXMLDocumentPart.RelationPart createChartRelationPart() {
        XSSFRelation xSSFRelation;
        XSSFWorkbook workbook = getSheet().getWorkbook();
        XSSFFactory xSSFFactory = workbook == null ? XSSFFactory.getInstance() : workbook.getXssfFactory();
        OPCPackage oPCPackage = getPackagePart().getPackage();
        int size = oPCPackage.getPartsByContentType(XSSFRelation.CHART.getContentType()).size();
        do {
            size++;
            try {
                xSSFRelation = XSSFRelation.CHART;
            } catch (InvalidFormatException e) {
                throw new IllegalStateException("Failed for " + size, e);
            }
        } while (oPCPackage.getPart(PackagingURIHelper.createPartName(xSSFRelation.getFileName(size))) != null);
        return createRelationship(xSSFRelation, xSSFFactory, size, false);
    }

    public XSSFConnector createConnector(XSSFClientAnchor xSSFClientAnchor) {
        CTConnector addNewCxnSp = createTwoCellAnchor(xSSFClientAnchor).addNewCxnSp();
        addNewCxnSp.set(XSSFConnector.prototype());
        XSSFConnector xSSFConnector = new XSSFConnector(this, addNewCxnSp);
        xSSFConnector.anchor = xSSFClientAnchor;
        return xSSFConnector;
    }

    public XSSFShapeGroup createGroup(XSSFClientAnchor xSSFClientAnchor) {
        CTGroupShape addNewGrpSp = createTwoCellAnchor(xSSFClientAnchor).addNewGrpSp();
        addNewGrpSp.set(XSSFShapeGroup.prototype());
        CTTransform2D createXfrm = createXfrm(xSSFClientAnchor);
        CTGroupTransform2D xfrm = addNewGrpSp.getGrpSpPr().getXfrm();
        xfrm.setOff(createXfrm.getOff());
        xfrm.setExt(createXfrm.getExt());
        xfrm.setChExt(createXfrm.getExt());
        XSSFShapeGroup xSSFShapeGroup = new XSSFShapeGroup(this, addNewGrpSp);
        xSSFShapeGroup.anchor = xSSFClientAnchor;
        return xSSFShapeGroup;
    }

    public XSSFSimpleShape createSimpleShape(XSSFClientAnchor xSSFClientAnchor) {
        long newShapeId = newShapeId();
        CTShape addNewSp = createTwoCellAnchor(xSSFClientAnchor).addNewSp();
        addNewSp.set(XSSFSimpleShape.prototype());
        addNewSp.getNvSpPr().getCNvPr().setId(newShapeId);
        addNewSp.getSpPr().setXfrm(createXfrm(xSSFClientAnchor));
        XSSFSimpleShape xSSFSimpleShape = new XSSFSimpleShape(this, addNewSp);
        xSSFSimpleShape.anchor = xSSFClientAnchor;
        return xSSFSimpleShape;
    }

    public XSSFTextBox createTextbox(XSSFClientAnchor xSSFClientAnchor) {
        long newShapeId = newShapeId();
        CTShape addNewSp = createTwoCellAnchor(xSSFClientAnchor).addNewSp();
        addNewSp.set(XSSFSimpleShape.prototype());
        addNewSp.getNvSpPr().getCNvPr().setId(newShapeId);
        XSSFTextBox xSSFTextBox = new XSSFTextBox(this, addNewSp);
        xSSFTextBox.anchor = xSSFClientAnchor;
        return xSSFTextBox;
    }

    @Internal
    public CTDrawing getCTDrawing() {
        return this.drawing;
    }

    public List<XSSFChart> getCharts() {
        ArrayList arrayList = new ArrayList();
        for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
            if (pOIXMLDocumentPart instanceof XSSFChart) {
                arrayList.add((XSSFChart) pOIXMLDocumentPart);
            }
        }
        return arrayList;
    }

    public List<XSSFShape> getShapes() {
        ArrayList arrayList = new ArrayList();
        XmlCursor newCursor = this.drawing.newCursor();
        try {
            if (newCursor.toFirstChild()) {
                addShapes(newCursor, arrayList);
            }
            newCursor.close();
            return arrayList;
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

    public XSSFSheet getSheet() {
        return (XSSFSheet) getParent();
    }

    public XSSFChart importChart(XSSFChart xSSFChart) {
        CTTwoCellAnchor twoCellAnchorArray = ((XSSFDrawing) xSSFChart.getParent()).getCTDrawing().getTwoCellAnchorArray(0);
        XSSFClientAnchor xSSFClientAnchor = new XSSFClientAnchor((CTMarker) twoCellAnchorArray.getFrom().copy(), (CTMarker) twoCellAnchorArray.getTo().copy());
        xSSFClientAnchor.setAnchorType(ClientAnchor.AnchorType.MOVE_AND_RESIZE);
        XSSFChart createChart = createChart(xSSFClientAnchor);
        createChart.getCTChartSpace().set(xSSFChart.getCTChartSpace().copy());
        return createChart;
    }

    @Override // java.lang.Iterable
    public Iterator<XSSFShape> iterator() {
        return getShapes().iterator();
    }

    @Override // java.lang.Iterable
    public Spliterator<XSSFShape> spliterator() {
        return getShapes().spliterator();
    }

    @Override // org.apache.poi.ss.usermodel.Drawing
    public XSSFClientAnchor createAnchor(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return new XSSFClientAnchor(i, i2, i3, i4, i5, i6, i7, i8);
    }

    @Override // org.apache.poi.ss.usermodel.Drawing
    public XSSFComment createCellComment(ClientAnchor clientAnchor) {
        return getSheet().getCommentsTable(true).createNewComment(clientAnchor);
    }

    @Override // org.apache.poi.ss.usermodel.Drawing
    public XSSFObjectData createObjectData(ClientAnchor clientAnchor, int i, int i2) {
        XSSFSheet sheet = getSheet();
        PackagePart packagePart = sheet.getPackagePart();
        XSSFSheet sheet2 = getSheet();
        long sheetIndex = ((sheet2.getWorkbook().getSheetIndex(sheet2) + 1) * 1024) + newShapeId();
        XSSFRelation xSSFRelation = XSSFRelation.OLEEMBEDDINGS;
        try {
            PackagePartName createPartName = PackagingURIHelper.createPartName(xSSFRelation.getFileName(i));
            TargetMode targetMode = TargetMode.INTERNAL;
            PackageRelationship addRelationship = packagePart.addRelationship(createPartName, targetMode, xSSFRelation.getRelation());
            PackagePartName partName = sheet.getWorkbook().getAllPictures().get(i2).getPackagePart().getPartName();
            PackageRelationship addRelationship2 = packagePart.addRelationship(partName, targetMode, PackageRelationshipTypes.IMAGE_PART);
            PackageRelationship addRelationship3 = getPackagePart().addRelationship(partName, targetMode, PackageRelationshipTypes.IMAGE_PART);
            CTWorksheet cTWorksheet = sheet.getCTWorksheet();
            CTOleObject addNewOleObject = (cTWorksheet.isSetOleObjects() ? cTWorksheet.getOleObjects() : cTWorksheet.addNewOleObjects()).addNewOleObject();
            addNewOleObject.setProgId(ExtractorFactory.OOXML_PACKAGE);
            addNewOleObject.setShapeId(sheetIndex);
            addNewOleObject.setId(addRelationship.getId());
            XmlCursor newCursor = addNewOleObject.newCursor();
            try {
                newCursor.toEndToken();
                newCursor.beginElement("objectPr", XSSFRelation.NS_SPREADSHEETML);
                newCursor.insertAttributeWithValue("id", PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, addRelationship2.getId());
                newCursor.insertAttributeWithValue("defaultSize", "0");
                newCursor.beginElement(Constants.ELEMNAME_ANCHOR_STRING, XSSFRelation.NS_SPREADSHEETML);
                newCursor.insertAttributeWithValue("moveWithCells", "1");
                CTTwoCellAnchor createTwoCellAnchor = createTwoCellAnchor((XSSFClientAnchor) clientAnchor);
                XmlCursor newCursor2 = createTwoCellAnchor.newCursor();
                try {
                    newCursor2.copyXmlContents(newCursor);
                    newCursor2.close();
                    newCursor.toParent();
                    newCursor.toFirstChild();
                    newCursor.setName(new QName(XSSFRelation.NS_SPREADSHEETML, "from"));
                    newCursor.toNextSibling();
                    newCursor.setName(new QName(XSSFRelation.NS_SPREADSHEETML, "to"));
                    newCursor.close();
                    CTShape addNewSp = createTwoCellAnchor.addNewSp();
                    addNewSp.set(XSSFObjectData.prototype());
                    XSSFClientAnchor xSSFClientAnchor = (XSSFClientAnchor) clientAnchor;
                    addNewSp.getSpPr().setXfrm(createXfrm(xSSFClientAnchor));
                    CTBlipFillProperties addNewBlipFill = addNewSp.getSpPr().addNewBlipFill();
                    addNewBlipFill.addNewBlip().setEmbed(addRelationship3.getId());
                    addNewBlipFill.addNewStretch().addNewFillRect();
                    CTNonVisualDrawingProps cNvPr = addNewSp.getNvSpPr().getCNvPr();
                    cNvPr.setId(sheetIndex);
                    cNvPr.setName("Object " + sheetIndex);
                    newCursor = cNvPr.getExtLst().getExtArray(0).newCursor();
                    try {
                        newCursor.toFirstChild();
                        newCursor.setAttributeText(new QName("spid"), "_x0000_s" + sheetIndex);
                        newCursor.close();
                        XSSFObjectData xSSFObjectData = new XSSFObjectData(this, addNewSp);
                        xSSFObjectData.anchor = xSSFClientAnchor;
                        return xSSFObjectData;
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (InvalidFormatException e) {
            throw new POIXMLException(e);
        }
    }

    public XSSFPicture createPicture(XSSFClientAnchor xSSFClientAnchor, int i) {
        PackageRelationship addPictureReference = addPictureReference(i);
        long newShapeId = newShapeId();
        CTPicture addNewPic = createTwoCellAnchor(xSSFClientAnchor).addNewPic();
        addNewPic.set(XSSFPicture.prototype());
        addNewPic.getNvPicPr().getCNvPr().setId(newShapeId);
        XSSFPicture xSSFPicture = new XSSFPicture(this, addNewPic);
        xSSFPicture.anchor = xSSFClientAnchor;
        xSSFPicture.setPictureReference(addPictureReference);
        addNewPic.getSpPr().setXfrm(createXfrm(xSSFClientAnchor));
        return xSSFPicture;
    }

    public XSSFDrawing(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setLoadReplaceDocumentElement(null);
        InputStream inputStream = packagePart.getInputStream();
        try {
            this.drawing = CTDrawing.Factory.parse(inputStream, xmlOptions);
            if (inputStream != null) {
                inputStream.close();
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

    public XSSFChart createChart(ClientAnchor clientAnchor) {
        return createChart((XSSFClientAnchor) clientAnchor);
    }

    public List<XSSFShape> getShapes(XSSFShapeGroup xSSFShapeGroup) {
        ArrayList arrayList = new ArrayList();
        XmlCursor newCursor = xSSFShapeGroup.getCTGroupShape().newCursor();
        try {
            addShapes(newCursor, arrayList);
            if (newCursor != null) {
                newCursor.close();
            }
            return arrayList;
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

    @Override // org.apache.poi.ss.usermodel.Drawing
    public XSSFPicture createPicture(ClientAnchor clientAnchor, int i) {
        return createPicture((XSSFClientAnchor) clientAnchor, i);
    }
}
