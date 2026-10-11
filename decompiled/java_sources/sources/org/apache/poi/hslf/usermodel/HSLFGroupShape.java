package org.apache.poi.hslf.usermodel;

import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.EscherChildAnchorRecord;
import org.apache.poi.ddf.EscherClientAnchorRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.ddf.EscherSpgrRecord;
import org.apache.poi.sl.usermodel.AutoShape;
import org.apache.poi.sl.usermodel.ConnectorShape;
import org.apache.poi.sl.usermodel.FreeformShape;
import org.apache.poi.sl.usermodel.GroupShape;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.sl.usermodel.TableShape;
import org.apache.poi.sl.usermodel.TextBox;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public class HSLFGroupShape extends HSLFShape implements HSLFShapeContainer, GroupShape<HSLFShape, HSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFGroupShape.class);

    public HSLFGroupShape() {
        this(null, null);
        createSpContainer(false);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public EscherContainerRecord createSpContainer(boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(z);
        createSpContainer.setRecordId(EscherContainerRecord.SPGR_CONTAINER);
        EscherContainerRecord escherContainerRecord = new EscherContainerRecord();
        escherContainerRecord.setRecordId(EscherContainerRecord.SP_CONTAINER);
        escherContainerRecord.setOptions((short) 15);
        EscherSpgrRecord escherSpgrRecord = new EscherSpgrRecord();
        escherSpgrRecord.setOptions((short) 1);
        escherContainerRecord.addChildRecord(escherSpgrRecord);
        EscherSpRecord escherSpRecord = new EscherSpRecord();
        escherSpRecord.setOptions((short) ((ShapeType.NOT_PRIMITIVE.nativeId << 4) + 2));
        escherSpRecord.setFlags(513);
        escherContainerRecord.addChildRecord(escherSpRecord);
        escherContainerRecord.addChildRecord(new EscherClientAnchorRecord());
        createSpContainer.addChildRecord(escherContainerRecord);
        return createSpContainer;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape, org.apache.poi.sl.usermodel.Shape, org.apache.poi.sl.usermodel.PlaceableShape
    public Rectangle2D getAnchor() {
        int flag;
        int dx1;
        int i;
        int i2;
        EscherClientAnchorRecord escherClientAnchorRecord = (EscherClientAnchorRecord) getEscherChild(EscherClientAnchorRecord.RECORD_ID);
        if (escherClientAnchorRecord == null) {
            LOG.atInfo().log("EscherClientAnchorRecord was not found for shape group. Searching for EscherChildAnchorRecord.");
            EscherChildAnchorRecord escherChildAnchorRecord = (EscherChildAnchorRecord) getEscherChild(EscherChildAnchorRecord.RECORD_ID);
            i = escherChildAnchorRecord.getDx1();
            flag = escherChildAnchorRecord.getDy1();
            dx1 = escherChildAnchorRecord.getDx2();
            i2 = escherChildAnchorRecord.getDy2();
        } else {
            short col1 = escherClientAnchorRecord.getCol1();
            flag = escherClientAnchorRecord.getFlag();
            dx1 = escherClientAnchorRecord.getDx1();
            short row1 = escherClientAnchorRecord.getRow1();
            i = col1;
            i2 = row1;
        }
        return new Rectangle2D.Double(i == -1 ? -1.0d : Units.masterToPoints(i), flag == -1 ? -1.0d : Units.masterToPoints(flag), dx1 == -1 ? -1.0d : Units.masterToPoints(dx1 - i), i2 == -1 ? -1.0d : Units.masterToPoints(i2 - flag));
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public <T extends EscherRecord> T getEscherChild(int i) {
        return (T) ((EscherContainerRecord) getSpContainer().getChild(0)).getChildById((short) i);
    }

    public HSLFHyperlink getHyperlink() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.GroupShape
    public Rectangle2D getInteriorAnchor() {
        EscherSpgrRecord escherSpgrRecord = (EscherSpgrRecord) getEscherChild(EscherSpgrRecord.RECORD_ID);
        double masterToPoints = Units.masterToPoints(escherSpgrRecord.getRectX1());
        double masterToPoints2 = Units.masterToPoints(escherSpgrRecord.getRectY1());
        return new Rectangle2D.Double(masterToPoints, masterToPoints2, Units.masterToPoints(escherSpgrRecord.getRectX2()) - masterToPoints, Units.masterToPoints(escherSpgrRecord.getRectY2()) - masterToPoints2);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public ShapeType getShapeType() {
        return ShapeType.forId(((EscherSpRecord) getEscherChild(EscherSpRecord.RECORD_ID)).getOptions() >> 4, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public List<HSLFShape> getShapes() {
        ArrayList arrayList = new ArrayList();
        Iterator<EscherRecord> it2 = getSpContainer().iterator();
        boolean z = true;
        while (it2.hasNext()) {
            EscherRecord next = it2.next();
            if (z) {
                z = false;
            } else if (next instanceof EscherContainerRecord) {
                HSLFShape createShape = HSLFShapeFactory.createShape((EscherContainerRecord) next, this);
                createShape.setSheet(getSheet());
                arrayList.add(createShape);
            } else {
                LOG.atError().log("Shape contained non container escher record, was {}", next.getClass().getName());
            }
        }
        return arrayList;
    }

    @Override // java.lang.Iterable
    public Iterator<HSLFShape> iterator() {
        return getShapes().iterator();
    }

    public void moveAndScale(Rectangle2D rectangle2D) {
        Rectangle2D anchor = getAnchor();
        double width = anchor.getWidth() == 0.0d ? 0.0d : rectangle2D.getWidth() / anchor.getWidth();
        double height = anchor.getHeight() != 0.0d ? rectangle2D.getHeight() / anchor.getHeight() : 0.0d;
        setExteriorAnchor(rectangle2D);
        for (HSLFShape hSLFShape : getShapes()) {
            Rectangle2D anchor2 = hSLFShape.getAnchor();
            hSLFShape.setAnchor(new Rectangle2D.Double(rectangle2D.getX() + ((anchor2.getX() - anchor.getX()) * width), rectangle2D.getY() + ((anchor2.getY() - anchor.getY()) * height), anchor2.getWidth() * width, anchor2.getHeight() * height));
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape, org.apache.poi.sl.usermodel.PlaceableShape
    public void setAnchor(Rectangle2D rectangle2D) {
        EscherClientAnchorRecord escherClientAnchorRecord = (EscherClientAnchorRecord) getEscherChild(EscherClientAnchorRecord.RECORD_ID);
        if ((escherClientAnchorRecord.getDx1() == 0 && escherClientAnchorRecord.getRow1() == 0) ? false : true) {
            moveAndScale(rectangle2D);
        } else {
            setExteriorAnchor(rectangle2D);
        }
    }

    public void setExteriorAnchor(Rectangle2D rectangle2D) {
        EscherClientAnchorRecord escherClientAnchorRecord = (EscherClientAnchorRecord) getEscherChild(EscherClientAnchorRecord.RECORD_ID);
        byte[] bArr = new byte[16];
        LittleEndian.putUShort(bArr, 0, 0);
        LittleEndian.putUShort(bArr, 2, 0);
        LittleEndian.putInt(bArr, 4, 8);
        escherClientAnchorRecord.fillFields(bArr, 0, null);
        escherClientAnchorRecord.setFlag((short) Units.pointsToMaster(rectangle2D.getY()));
        escherClientAnchorRecord.setCol1((short) Units.pointsToMaster(rectangle2D.getX()));
        escherClientAnchorRecord.setDx1((short) Units.pointsToMaster(rectangle2D.getWidth() + rectangle2D.getX()));
        escherClientAnchorRecord.setRow1((short) Units.pointsToMaster(rectangle2D.getHeight() + rectangle2D.getY()));
        setInteriorAnchor(rectangle2D);
    }

    @Override // org.apache.poi.sl.usermodel.GroupShape
    public void setInteriorAnchor(Rectangle2D rectangle2D) {
        EscherSpgrRecord escherSpgrRecord = (EscherSpgrRecord) getEscherChild(EscherSpgrRecord.RECORD_ID);
        int pointsToMaster = Units.pointsToMaster(rectangle2D.getX());
        int pointsToMaster2 = Units.pointsToMaster(rectangle2D.getY());
        int pointsToMaster3 = Units.pointsToMaster(rectangle2D.getX() + rectangle2D.getWidth());
        int pointsToMaster4 = Units.pointsToMaster(rectangle2D.getY() + rectangle2D.getHeight());
        escherSpgrRecord.setRectX1(pointsToMaster);
        escherSpgrRecord.setRectY1(pointsToMaster2);
        escherSpgrRecord.setRectX2(pointsToMaster3);
        escherSpgrRecord.setRectY2(pointsToMaster4);
    }

    @Override // java.lang.Iterable
    public Spliterator<HSLFShape> spliterator() {
        return getShapes().spliterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public void addShape(HSLFShape hSLFShape) {
        getSpContainer().addChildRecord(hSLFShape.getSpContainer());
        ?? sheet = getSheet();
        hSLFShape.setSheet(sheet);
        hSLFShape.setShapeId(sheet.allocateShapeId());
        hSLFShape.afterInsert(sheet);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public AutoShape<HSLFShape, HSLFTextParagraph> createAutoShape() {
        HSLFAutoShape hSLFAutoShape = new HSLFAutoShape(ShapeType.RECT, this);
        hSLFAutoShape.setHorizontalCentered(Boolean.TRUE);
        hSLFAutoShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFAutoShape);
        return hSLFAutoShape;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public ConnectorShape<HSLFShape, HSLFTextParagraph> createConnector() {
        HSLFConnectorShape hSLFConnectorShape = new HSLFConnectorShape(this);
        hSLFConnectorShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFConnectorShape);
        return hSLFConnectorShape;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public FreeformShape<HSLFShape, HSLFTextParagraph> createFreeform() {
        HSLFFreeformShape hSLFFreeformShape = new HSLFFreeformShape(this);
        hSLFFreeformShape.setHorizontalCentered(Boolean.TRUE);
        hSLFFreeformShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFFreeformShape);
        return hSLFFreeformShape;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public GroupShape<HSLFShape, HSLFTextParagraph> createGroup() {
        HSLFGroupShape hSLFGroupShape = new HSLFGroupShape(this);
        hSLFGroupShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFGroupShape);
        return hSLFGroupShape;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public HSLFObjectShape createOleShape(PictureData pictureData) {
        if (pictureData instanceof HSLFPictureData) {
            HSLFObjectShape hSLFObjectShape = new HSLFObjectShape((HSLFPictureData) pictureData, this);
            hSLFObjectShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
            addShape((HSLFShape) hSLFObjectShape);
            return hSLFObjectShape;
        }
        throw new IllegalArgumentException("pictureData needs to be of type HSLFPictureData");
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public PictureShape<HSLFShape, HSLFTextParagraph> createPicture(PictureData pictureData) {
        if (pictureData instanceof HSLFPictureData) {
            HSLFPictureShape hSLFPictureShape = new HSLFPictureShape((HSLFPictureData) pictureData, this);
            hSLFPictureShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
            addShape((HSLFShape) hSLFPictureShape);
            return hSLFPictureShape;
        }
        throw new IllegalArgumentException("pictureData needs to be of type HSLFPictureData");
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public TableShape<HSLFShape, HSLFTextParagraph> createTable(int i, int i2) {
        if (i >= 1 && i2 >= 1) {
            HSLFTable hSLFTable = new HSLFTable(i, i2, this);
            hSLFTable.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
            addShape((HSLFShape) hSLFTable);
            return hSLFTable;
        }
        throw new IllegalArgumentException("numRows and numCols must be greater than 0");
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public TextBox<HSLFShape, HSLFTextParagraph> createTextBox() {
        HSLFTextBox hSLFTextBox = new HSLFTextBox(this);
        hSLFTextBox.setHorizontalCentered(Boolean.TRUE);
        hSLFTextBox.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFTextBox);
        return hSLFTextBox;
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public boolean removeShape(HSLFShape hSLFShape) {
        throw new UnsupportedOperationException();
    }

    public HSLFGroupShape(ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        this(null, shapeContainer);
        createSpContainer(shapeContainer instanceof HSLFGroupShape);
    }

    public HSLFGroupShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }
}
