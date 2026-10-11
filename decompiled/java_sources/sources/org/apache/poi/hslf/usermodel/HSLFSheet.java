package org.apache.poi.hslf.usermodel;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.HeadersFooters;
import org.apache.poi.hslf.record.CString;
import org.apache.poi.hslf.record.ColorSchemeAtom;
import org.apache.poi.hslf.record.PPDrawing;
import org.apache.poi.hslf.record.RecordContainer;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.SheetContainer;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.usermodel.AutoShape;
import org.apache.poi.sl.usermodel.Background;
import org.apache.poi.sl.usermodel.ConnectorShape;
import org.apache.poi.sl.usermodel.FreeformShape;
import org.apache.poi.sl.usermodel.GroupShape;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.sl.usermodel.TableShape;
import org.apache.poi.sl.usermodel.TextBox;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public abstract class HSLFSheet implements HSLFShapeContainer, Sheet<HSLFShape, HSLFTextParagraph> {
    private HSLFBackground _background;
    private final SheetContainer _container;
    private final int _sheetNo;
    private HSLFSlideShow _slideShow;

    public HSLFSheet(SheetContainer sheetContainer, int i) {
        this._container = sheetContainer;
        this._sheetNo = i;
    }

    public int _getSheetNumber() {
        return this._sheetNo;
    }

    public int _getSheetRefId() {
        return this._container.getSheetId();
    }

    public int allocateShapeId() {
        return this._slideShow.getDocumentRecord().getPPDrawingGroup().getEscherDggRecord().allocateShapeId(this._container.getPPDrawing().getEscherDgRecord(), false);
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public void draw(Graphics2D graphics2D) {
        DrawFactory.getInstance(graphics2D).getDrawable(this).draw(graphics2D);
    }

    public ColorSchemeAtom getColorScheme() {
        return this._container.getColorScheme();
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public boolean getFollowMasterGraphics() {
        return false;
    }

    public HeadersFooters getHeadersFooters() {
        return new HeadersFooters(this, (short) 63);
    }

    public abstract HSLFMasterSheet getMasterSheet();

    public PPDrawing getPPDrawing() {
        return this._container.getPPDrawing();
    }

    public HSLFSimpleShape getPlaceholder(Placeholder placeholder) {
        for (HSLFShape hSLFShape : getShapes()) {
            if (hSLFShape instanceof HSLFSimpleShape) {
                HSLFSimpleShape hSLFSimpleShape = (HSLFSimpleShape) hSLFShape;
                if (placeholder == hSLFSimpleShape.getPlaceholder()) {
                    return hSLFSimpleShape;
                }
            }
        }
        return null;
    }

    public HSLFTextShape getPlaceholderByTextType(int i) {
        for (HSLFShape hSLFShape : getShapes()) {
            if (hSLFShape instanceof HSLFTextShape) {
                HSLFTextShape hSLFTextShape = (HSLFTextShape) hSLFShape;
                if (hSLFTextShape.getRunType() == i) {
                    return hSLFTextShape;
                }
            }
        }
        return null;
    }

    public String getProgrammableTag() {
        RecordContainer recordContainer;
        CString cString;
        RecordContainer recordContainer2 = (RecordContainer) getSheetContainer().findFirstOfType(RecordTypes.ProgTags.typeID);
        if (recordContainer2 == null || (recordContainer = (RecordContainer) recordContainer2.findFirstOfType(RecordTypes.ProgBinaryTag.typeID)) == null || (cString = (CString) recordContainer.findFirstOfType(RecordTypes.CString.typeID)) == null) {
            return null;
        }
        return cString.getText();
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public List<HSLFShape> getShapes() {
        EscherContainerRecord escherContainerRecord;
        HSLFHyperlink find;
        Iterator<EscherRecord> it2 = getPPDrawing().getDgContainer().iterator();
        while (true) {
            if (!it2.hasNext()) {
                escherContainerRecord = null;
                break;
            }
            EscherRecord next = it2.next();
            if (next.getRecordId() == EscherContainerRecord.SPGR_CONTAINER) {
                escherContainerRecord = (EscherContainerRecord) next;
                break;
            }
        }
        if (escherContainerRecord == null) {
            throw new IllegalStateException("spgr not found");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<EscherRecord> it3 = escherContainerRecord.iterator();
        boolean z = true;
        while (it3.hasNext()) {
            EscherRecord next2 = it3.next();
            if (z) {
                z = false;
            } else {
                if (!(next2 instanceof EscherContainerRecord)) {
                    throw new IllegalArgumentException("Did not have a EscherContainerRecord: " + next2);
                }
                HSLFShape createShape = HSLFShapeFactory.createShape((EscherContainerRecord) next2, null);
                createShape.setSheet(this);
                if ((createShape instanceof HSLFSimpleShape) && (find = HSLFHyperlink.find(createShape)) != null) {
                    ((HSLFSimpleShape) createShape).setHyperlink(find);
                }
                arrayList.add(createShape);
            }
        }
        return arrayList;
    }

    public SheetContainer getSheetContainer() {
        return this._container;
    }

    public abstract List<List<HSLFTextParagraph>> getTextParagraphs();

    @Override // java.lang.Iterable
    public Iterator<HSLFShape> iterator() {
        return getShapes().iterator();
    }

    public void onAddTextShape(HSLFTextShape hSLFTextShape) {
    }

    public void onCreate() {
    }

    @Internal
    public void setSlideShow(HSLFSlideShow hSLFSlideShow) {
        if (this._slideShow != null) {
            throw new HSLFException("Can't change existing slideshow reference");
        }
        this._slideShow = hSLFSlideShow;
        List<List<HSLFTextParagraph>> textParagraphs = getTextParagraphs();
        if (textParagraphs == null) {
            return;
        }
        for (List<HSLFTextParagraph> list : textParagraphs) {
            HSLFTextParagraph.supplySheet(list, this);
            HSLFTextParagraph.applyHyperlinks(list);
        }
    }

    @Override // java.lang.Iterable
    public Spliterator<HSLFShape> spliterator() {
        return getShapes().spliterator();
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public void addShape(HSLFShape hSLFShape) {
        ((EscherContainerRecord) HSLFShape.getEscherChild(getPPDrawing().getDgContainer(), EscherContainerRecord.SPGR_CONTAINER)).addChildRecord(hSLFShape.getSpContainer());
        hSLFShape.setSheet(this);
        hSLFShape.setShapeId(allocateShapeId());
        hSLFShape.afterInsert(this);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public AutoShape<HSLFShape, HSLFTextParagraph> createAutoShape() {
        HSLFAutoShape hSLFAutoShape = new HSLFAutoShape(ShapeType.RECT);
        hSLFAutoShape.setHorizontalCentered(Boolean.TRUE);
        hSLFAutoShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFAutoShape);
        return hSLFAutoShape;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public ConnectorShape<HSLFShape, HSLFTextParagraph> createConnector() {
        HSLFConnectorShape hSLFConnectorShape = new HSLFConnectorShape();
        hSLFConnectorShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFConnectorShape);
        return hSLFConnectorShape;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public FreeformShape<HSLFShape, HSLFTextParagraph> createFreeform() {
        HSLFFreeformShape hSLFFreeformShape = new HSLFFreeformShape();
        hSLFFreeformShape.setHorizontalCentered(Boolean.TRUE);
        hSLFFreeformShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFFreeformShape);
        return hSLFFreeformShape;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public GroupShape<HSLFShape, HSLFTextParagraph> createGroup() {
        HSLFGroupShape hSLFGroupShape = new HSLFGroupShape();
        hSLFGroupShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFGroupShape);
        return hSLFGroupShape;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public HSLFObjectShape createOleShape(PictureData pictureData) {
        if (pictureData instanceof HSLFPictureData) {
            HSLFObjectShape hSLFObjectShape = new HSLFObjectShape((HSLFPictureData) pictureData);
            hSLFObjectShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
            addShape((HSLFShape) hSLFObjectShape);
            return hSLFObjectShape;
        }
        throw new IllegalArgumentException("pictureData needs to be of type HSLFPictureData");
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public PictureShape<HSLFShape, HSLFTextParagraph> createPicture(PictureData pictureData) {
        if (pictureData instanceof HSLFPictureData) {
            HSLFPictureShape hSLFPictureShape = new HSLFPictureShape((HSLFPictureData) pictureData);
            hSLFPictureShape.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
            addShape((HSLFShape) hSLFPictureShape);
            return hSLFPictureShape;
        }
        throw new IllegalArgumentException("pictureData needs to be of type HSLFPictureData");
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public TableShape<HSLFShape, HSLFTextParagraph> createTable(int i, int i2) {
        if (i >= 1 && i2 >= 1) {
            HSLFTable hSLFTable = new HSLFTable(i, i2);
            addShape((HSLFShape) hSLFTable);
            return hSLFTable;
        }
        throw new IllegalArgumentException("numRows and numCols must be greater than 0");
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public TextBox<HSLFShape, HSLFTextParagraph> createTextBox() {
        HSLFTextBox hSLFTextBox = new HSLFTextBox();
        hSLFTextBox.setHorizontalCentered(Boolean.TRUE);
        hSLFTextBox.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, 100.0d, 100.0d));
        addShape((HSLFShape) hSLFTextBox);
        return hSLFTextBox;
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public Background<HSLFShape, HSLFTextParagraph> getBackground() {
        if (this._background == null) {
            HSLFBackground hSLFBackground = new HSLFBackground((EscherContainerRecord) getPPDrawing().getDgContainer().getChildById(EscherContainerRecord.SP_CONTAINER), null);
            this._background = hSLFBackground;
            hSLFBackground.setSheet(this);
        }
        return this._background;
    }

    public HSLFPlaceholderDetails getPlaceholderDetails(Placeholder placeholder) {
        HSLFSimpleShape placeholder2 = getPlaceholder(placeholder);
        if (placeholder2 == null) {
            return null;
        }
        return new HSLFShapePlaceholderDetails(placeholder2);
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public SlideShow<HSLFShape, HSLFTextParagraph> getSlideShow() {
        return this._slideShow;
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public boolean removeShape(HSLFShape hSLFShape) {
        EscherContainerRecord escherContainerRecord = (EscherContainerRecord) getPPDrawing().getDgContainer().getChildById(EscherContainerRecord.SPGR_CONTAINER);
        if (escherContainerRecord == null) {
            return false;
        }
        return escherContainerRecord.removeChildRecord(hSLFShape.getSpContainer());
    }
}
