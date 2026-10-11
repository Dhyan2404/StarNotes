package org.apache.poi.xslf.usermodel;

import com.sunia.HTREnginev2.zmo;
import com.zaxxer.sparsebits.SparseBitSet;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Predicate;
import javax.xml.namespace.QName;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.draw.DrawPictureShape;
import org.apache.poi.sl.usermodel.AutoShape;
import org.apache.poi.sl.usermodel.Background;
import org.apache.poi.sl.usermodel.ConnectorShape;
import org.apache.poi.sl.usermodel.FreeformShape;
import org.apache.poi.sl.usermodel.GroupShape;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.sl.usermodel.TableShape;
import org.apache.poi.sl.usermodel.TextBox;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.apache.poi.xslf.usermodel.XSLFSheet;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMappingOverride;
import org.openxmlformats.schemas.presentationml.x2006.main.CTConnector;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOleObject;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPicture;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPlaceholder;
import org.openxmlformats.schemas.presentationml.x2006.main.CTShape;

/* loaded from: classes13.dex */
public abstract class XSLFSheet extends POIXMLDocumentPart implements XSLFShapeContainer, Sheet<XSLFShape, XSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSLFSheet.class);
    protected XSLFDrawing _drawing;
    private Map<Integer, XSLFSimpleShape> _placeholderByIdMap;
    private Map<Integer, XSLFSimpleShape> _placeholderByTypeMap;
    private List<XSLFTextShape> _placeholders;
    protected List<XSLFShape> _shapes;
    protected CTGroupShape _spTree;
    private XSLFTheme _theme;
    private final SparseBitSet shapeIds;

    public XSLFSheet() {
        this.shapeIds = new SparseBitSet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
    
        r1.addAll(buildShapes(org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape.Factory.parse(r7.newXMLStreamReader()), r8));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v4, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.apache.poi.xslf.usermodel.XSLFShapeContainer] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<org.apache.poi.xslf.usermodel.XSLFShape> buildShapes(org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape r7, org.apache.poi.xslf.usermodel.XSLFShapeContainer r8) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xslf.usermodel.XSLFSheet.buildShapes(org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape, org.apache.poi.xslf.usermodel.XSLFShapeContainer):java.util.List");
    }

    private XSLFDrawing getDrawing() {
        initDrawingAndShapes();
        return this._drawing;
    }

    private XSLFSimpleShape getPlaceholderById(int i) {
        initPlaceholders();
        return this._placeholderByIdMap.get(Integer.valueOf(i));
    }

    private void initDrawingAndShapes() {
        CTGroupShape spTree = getSpTree();
        if (this._drawing == null) {
            this._drawing = new XSLFDrawing(this, spTree);
        }
        if (this._shapes == null) {
            this._shapes = buildShapes(spTree, this);
        }
    }

    private void initPlaceholders() {
        if (this._placeholders == null) {
            this._placeholders = new ArrayList();
            this._placeholderByIdMap = new HashMap();
            this._placeholderByTypeMap = new HashMap();
            for (XSLFShape xSLFShape : getShapes()) {
                if (xSLFShape instanceof XSLFTextShape) {
                    XSLFTextShape xSLFTextShape = (XSLFTextShape) xSLFShape;
                    CTPlaceholder cTPlaceholder = xSLFTextShape.getPlaceholderDetails().getCTPlaceholder(false);
                    if (cTPlaceholder != null) {
                        this._placeholders.add(xSLFTextShape);
                        if (cTPlaceholder.isSetIdx()) {
                            this._placeholderByIdMap.put(Integer.valueOf((int) cTPlaceholder.getIdx()), xSLFTextShape);
                        }
                        if (cTPlaceholder.isSetType()) {
                            this._placeholderByTypeMap.put(Integer.valueOf(cTPlaceholder.getType().intValue()), xSLFTextShape);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getTheme$0(POIXMLDocumentPart pOIXMLDocumentPart) {
        return pOIXMLDocumentPart instanceof XSLFTheme;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getTheme$1(POIXMLDocumentPart pOIXMLDocumentPart) {
        this._theme = (XSLFTheme) pOIXMLDocumentPart;
    }

    private void wipeAndReinitialize(XSLFSheet xSLFSheet, int i) {
        this._shapes = null;
        this._drawing = null;
        initDrawingAndShapes();
        this._placeholders = null;
        List<XSLFShape> shapes = getShapes();
        List<XSLFShape> shapes2 = xSLFSheet.getShapes();
        for (int i2 = 0; i2 < shapes2.size(); i2++) {
            shapes.get(i + i2).copy(shapes2.get(i2));
        }
    }

    public void addChart(XSLFChart xSLFChart) {
        addChart(xSLFChart, new Rectangle(10, 10, 500000, 500000));
    }

    public int allocateShapeId() {
        int nextClearBit = this.shapeIds.nextClearBit(1);
        this.shapeIds.set(nextClearBit);
        return nextClearBit;
    }

    public XSLFSheet appendContent(XSLFSheet xSLFSheet) {
        int size = getShapes().size();
        CTGroupShape spTree = getSpTree();
        for (XmlObject xmlObject : xSLFSheet.getSpTree().selectPath("*")) {
            if (xmlObject instanceof CTShape) {
                spTree.addNewSp().set(xmlObject.copy());
            } else if (xmlObject instanceof CTGroupShape) {
                spTree.addNewGrpSp().set(xmlObject.copy());
            } else if (xmlObject instanceof CTConnector) {
                spTree.addNewCxnSp().set(xmlObject.copy());
            } else if (xmlObject instanceof CTPicture) {
                spTree.addNewPic().set(xmlObject.copy());
            } else if (xmlObject instanceof CTGraphicalObjectFrame) {
                spTree.addNewGraphicFrame().set(xmlObject.copy());
            }
        }
        wipeAndReinitialize(xSLFSheet, size);
        return this;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer
    public void clear() {
        Iterator it2 = new ArrayList(getShapes()).iterator();
        while (it2.hasNext()) {
            removeShape((XSLFShape) it2.next());
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public final void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        String rootElementName = getRootElementName();
        if (rootElementName != null) {
            xmlOptions.setSaveSyntheticDocumentElement(new QName(XSSFRelation.NS_PRESENTATIONML, rootElementName));
        }
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            getXmlObject().save(outputStream, xmlOptions);
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

    public void deregisterShapeId(int i) {
        if (!this.shapeIds.get(i)) {
            LOG.atWarn().log("shape id {} hasn't been registered.", Unbox.box(i));
        }
        this.shapeIds.clear(i);
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public void draw(Graphics2D graphics2D) {
        DrawFactory.getInstance(graphics2D).getDrawable(this).draw(graphics2D);
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public Background<XSLFShape, XSLFTextParagraph> getBackground() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public boolean getFollowMasterGraphics() {
        return false;
    }

    public XSLFSimpleShape getPlaceholder(Placeholder placeholder) {
        return getPlaceholderByType(placeholder.ooxmlId);
    }

    public XSLFSimpleShape getPlaceholderByType(int i) {
        initPlaceholders();
        return this._placeholderByTypeMap.get(Integer.valueOf(i));
    }

    public XSLFTextShape[] getPlaceholders() {
        initPlaceholders();
        return (XSLFTextShape[]) this._placeholders.toArray(new XSLFTextShape[0]);
    }

    public abstract String getRootElementName();

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public List<XSLFShape> getShapes() {
        initDrawingAndShapes();
        return this._shapes;
    }

    public CTGroupShape getSpTree() {
        if (this._spTree == null) {
            XmlObject[] selectPath = getXmlObject().selectPath("declare namespace p='http://schemas.openxmlformats.org/presentationml/2006/main' .//*/p:spTree");
            if (selectPath.length == 0) {
                throw new IllegalStateException("CTGroupShape was not found");
            }
            this._spTree = (CTGroupShape) selectPath[0];
        }
        return this._spTree;
    }

    public XSLFTextShape getTextShapeByType(Placeholder placeholder) {
        for (XSLFShape xSLFShape : getShapes()) {
            if (xSLFShape instanceof XSLFTextShape) {
                XSLFTextShape xSLFTextShape = (XSLFTextShape) xSLFShape;
                if (xSLFTextShape.getTextType() == placeholder) {
                    return xSLFTextShape;
                }
            }
        }
        return null;
    }

    public XSLFTheme getTheme() {
        if (this._theme != null || !isSupportTheme()) {
            return this._theme;
        }
        getRelations().stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.moo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getTheme$0;
                lambda$getTheme$0 = XSLFSheet.lambda$getTheme$0((POIXMLDocumentPart) obj);
                return lambda$getTheme$0;
            }
        }).findAny().ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.noo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                XSLFSheet.this.lambda$getTheme$1((POIXMLDocumentPart) obj);
            }
        });
        return this._theme;
    }

    public abstract XmlObject getXmlObject();

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.xslf.usermodel.XMLSlideShow] */
    public String importBlip(String str, POIXMLDocumentPart pOIXMLDocumentPart) {
        return getSlideShow().importBlip(str, pOIXMLDocumentPart, this);
    }

    public XSLFSheet importContent(XSLFSheet xSLFSheet) {
        this._spTree = null;
        getSpTree().set(xSLFSheet.getSpTree().copy());
        wipeAndReinitialize(xSLFSheet, 0);
        return this;
    }

    public void importPart(PackageRelationship packageRelationship, PackagePart packagePart) {
        PackagePart packagePart2 = getPackagePart();
        PackagePartName partName = packagePart.getPartName();
        OPCPackage oPCPackage = packagePart2.getPackage();
        if (oPCPackage.containPart(partName)) {
            return;
        }
        packagePart2.addRelationship(partName, TargetMode.INTERNAL, packageRelationship.getRelationshipType());
        try {
            OutputStream outputStream = oPCPackage.createPart(partName, packagePart.getContentType()).getOutputStream();
            try {
                InputStream inputStream = packagePart.getInputStream();
                try {
                    IOUtils.copy(inputStream, outputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            throw new POIXMLException(e);
        }
    }

    public boolean isSupportTheme() {
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<XSLFShape> iterator() {
        return getShapes().iterator();
    }

    public String mapSchemeColor(String str) {
        return null;
    }

    public void registerShapeId(int i) {
        if (this.shapeIds.get(i)) {
            LOG.atWarn().log("shape id {} has been already used.", Unbox.box(i));
        }
        this.shapeIds.set(i);
    }

    public void removePictureRelation(XSLFPictureShape xSLFPictureShape) {
        String blipId;
        String blipId2 = xSLFPictureShape.getBlipId();
        int i = 0;
        for (XSLFShape xSLFShape : xSLFPictureShape.getSheet().getShapes()) {
            if ((xSLFShape instanceof XSLFPictureShape) && (blipId = ((XSLFPictureShape) xSLFShape).getBlipId()) != null && blipId.equals(blipId2)) {
                i++;
            }
        }
        if (i <= 1) {
            removeRelation(xSLFPictureShape.getBlipId());
        }
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public void addShape(XSLFShape xSLFShape) {
        throw new UnsupportedOperationException("Adding a shape from a different container is not supported - create it from scratch with the XSLFSheet.create* methods");
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public AutoShape<XSLFShape, XSLFTextParagraph> createAutoShape() {
        XSLFAutoShape createAutoShape = getDrawing().createAutoShape();
        getShapes().add(createAutoShape);
        createAutoShape.setParent(this);
        return createAutoShape;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public ConnectorShape<XSLFShape, XSLFTextParagraph> createConnector() {
        XSLFConnectorShape createConnector = getDrawing().createConnector();
        getShapes().add(createConnector);
        createConnector.setParent(this);
        return createConnector;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public FreeformShape<XSLFShape, XSLFTextParagraph> createFreeform() {
        XSLFFreeformShape createFreeform = getDrawing().createFreeform();
        getShapes().add(createFreeform);
        createFreeform.setParent(this);
        return createFreeform;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public GroupShape<XSLFShape, XSLFTextParagraph> createGroup() {
        XSLFGroupShape createGroup = getDrawing().createGroup();
        getShapes().add(createGroup);
        createGroup.setParent(this);
        return createGroup;
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public XSLFObjectShape createOleShape(PictureData pictureData) {
        if (pictureData instanceof XSLFPictureData) {
            XSLFObjectShape createOleShape = getDrawing().createOleShape(addRelation(null, XSLFRelation.IMAGES, (XSLFPictureData) pictureData).getRelationship().getId());
            CTOleObject cTOleObject = createOleShape.getCTOleObject();
            Dimension imageDimension = pictureData.getImageDimension();
            cTOleObject.setImgW(Units.toEMU(imageDimension.getWidth()));
            cTOleObject.setImgH(Units.toEMU(imageDimension.getHeight()));
            getShapes().add(createOleShape);
            createOleShape.setParent(this);
            return createOleShape;
        }
        throw new IllegalArgumentException("pictureData needs to be of type XSLFPictureData");
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public PictureShape<XSLFShape, XSLFTextParagraph> createPicture(PictureData pictureData) {
        if (pictureData instanceof XSLFPictureData) {
            XSLFPictureShape createPicture = getDrawing().createPicture(addRelation(null, XSLFRelation.IMAGES, (XSLFPictureData) pictureData).getRelationship().getId());
            new DrawPictureShape(createPicture).resize();
            getShapes().add(createPicture);
            createPicture.setParent(this);
            return createPicture;
        }
        throw new IllegalArgumentException("pictureData needs to be of type XSLFPictureData");
    }

    public XSLFTable createTable() {
        XSLFTable createTable = getDrawing().createTable();
        getShapes().add(createTable);
        createTable.setParent(this);
        return createTable;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public TextBox<XSLFShape, XSLFTextParagraph> createTextBox() {
        XSLFTextBox createTextBox = getDrawing().createTextBox();
        getShapes().add(createTextBox);
        createTextBox.setParent(this);
        return createTextBox;
    }

    @Internal
    public XSLFSimpleShape getPlaceholder(CTPlaceholder cTPlaceholder) {
        XSLFSimpleShape placeholderById = cTPlaceholder.isSetIdx() ? getPlaceholderById((int) cTPlaceholder.getIdx()) : null;
        return (placeholderById == null && cTPlaceholder.isSetType()) ? getPlaceholderByType(cTPlaceholder.getType().intValue()) : placeholderById;
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public XSLFPlaceholderDetails getPlaceholderDetails(Placeholder placeholder) {
        XSLFSimpleShape placeholder2 = getPlaceholder(placeholder);
        if (placeholder2 == null) {
            return null;
        }
        return new XSLFPlaceholderDetails(placeholder2);
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public SlideShow<XSLFShape, XSLFTextParagraph> getSlideShow() {
        for (POIXMLDocumentPart parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof XMLSlideShow) {
                return (XMLSlideShow) parent;
            }
        }
        throw new IllegalStateException("SlideShow was not found");
    }

    public String mapSchemeColor(CTColorMappingOverride cTColorMappingOverride, String str) {
        String mapSchemeColor = mapSchemeColor(cTColorMappingOverride == null ? null : cTColorMappingOverride.getOverrideClrMapping(), str);
        if (mapSchemeColor != null) {
            return mapSchemeColor;
        }
        XSLFSheet xSLFSheet = (XSLFSheet) getMasterSheet();
        String mapSchemeColor2 = xSLFSheet != null ? xSLFSheet.mapSchemeColor(str) : null;
        return mapSchemeColor2 == null ? str : mapSchemeColor2;
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public boolean removeShape(XSLFShape xSLFShape) {
        XmlObject xmlObject = xSLFShape.getXmlObject();
        CTGroupShape spTree = getSpTree();
        deregisterShapeId(xSLFShape.getShapeId());
        if (xmlObject instanceof CTShape) {
            spTree.getSpList().remove(xmlObject);
        } else if (xmlObject instanceof CTGroupShape) {
            XSLFGroupShape xSLFGroupShape = (XSLFGroupShape) xSLFShape;
            new ArrayList(xSLFGroupShape.getShapes()).forEach(new zmo(xSLFGroupShape));
            spTree.getGrpSpList().remove(xmlObject);
        } else if (xmlObject instanceof CTConnector) {
            spTree.getCxnSpList().remove(xmlObject);
        } else if (xmlObject instanceof CTGraphicalObjectFrame) {
            spTree.getGraphicFrameList().remove(xmlObject);
        } else if (xmlObject instanceof CTPicture) {
            removePictureRelation((XSLFPictureShape) xSLFShape);
            spTree.getPicList().remove(xmlObject);
        } else {
            throw new IllegalArgumentException("Unsupported shape: " + xSLFShape);
        }
        return getShapes().remove(xSLFShape);
    }

    public XSLFSheet(PackagePart packagePart) {
        super(packagePart);
        this.shapeIds = new SparseBitSet();
    }

    public void addChart(XSLFChart xSLFChart, Rectangle2D rectangle2D) {
        getDrawing().addChart(addRelation(null, XSLFRelation.CHART, xSLFChart).getRelationship().getId(), rectangle2D);
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public TableShape<XSLFShape, XSLFTextParagraph> createTable(int i, int i2) {
        if (i >= 1 && i2 >= 1) {
            XSLFTable createTable = getDrawing().createTable();
            getShapes().add(createTable);
            createTable.setParent(this);
            for (int i3 = 0; i3 < i; i3++) {
                XSLFTableRow addRow = createTable.addRow();
                for (int i4 = 0; i4 < i2; i4++) {
                    addRow.addCell();
                }
            }
            return createTable;
        }
        throw new IllegalArgumentException("numRows and numCols must be greater than 0");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mapSchemeColor(org.openxmlformats.schemas.drawingml.x2006.main.CTColorMapping r3, java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xslf.usermodel.XSLFSheet.mapSchemeColor(org.openxmlformats.schemas.drawingml.x2006.main.CTColorMapping, java.lang.String):java.lang.String");
    }

    public XSLFTextShape getPlaceholder(int i) {
        initPlaceholders();
        return this._placeholders.get(i);
    }
}
