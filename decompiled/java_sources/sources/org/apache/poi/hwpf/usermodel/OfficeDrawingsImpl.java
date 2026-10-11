package org.apache.poi.hwpf.usermodel;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherBlipRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.ddf.EscherTertiaryOptRecord;
import org.apache.poi.hwpf.model.FSPA;
import org.apache.poi.hwpf.model.FSPATable;
import org.apache.poi.hwpf.model.OfficeArtContent;
import org.apache.poi.hwpf.usermodel.OfficeDrawing;

/* loaded from: classes12.dex */
public class OfficeDrawingsImpl implements OfficeDrawings {
    private final FSPATable _fspaTable;
    private final byte[] _mainStream;
    private final OfficeArtContent officeArtContent;

    public OfficeDrawingsImpl(FSPATable fSPATable, OfficeArtContent officeArtContent, byte[] bArr) {
        this._fspaTable = fSPATable;
        this.officeArtContent = officeArtContent;
        this._mainStream = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EscherBlipRecord getBitmapRecord(int i) {
        EscherContainerRecord bStoreContainer = this.officeArtContent.getBStoreContainer();
        if (bStoreContainer == null || bStoreContainer.getChildCount() < i) {
            return null;
        }
        EscherRecord child = bStoreContainer.getChild(i - 1);
        if (child instanceof EscherBlipRecord) {
            return (EscherBlipRecord) child;
        }
        if (child instanceof EscherBSERecord) {
            EscherBSERecord escherBSERecord = (EscherBSERecord) child;
            EscherBlipRecord blipRecord = escherBSERecord.getBlipRecord();
            if (blipRecord != null) {
                return blipRecord;
            }
            if (escherBSERecord.getOffset() > 0) {
                EscherRecordFactory defaultEscherRecordFactory = new DefaultEscherRecordFactory();
                EscherRecord createRecord = defaultEscherRecordFactory.createRecord(this._mainStream, escherBSERecord.getOffset());
                if (createRecord instanceof EscherBlipRecord) {
                    createRecord.fillFields(this._mainStream, escherBSERecord.getOffset(), defaultEscherRecordFactory);
                    return (EscherBlipRecord) createRecord;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EscherContainerRecord getEscherShapeRecordContainer(int i) {
        for (EscherContainerRecord escherContainerRecord : this.officeArtContent.getSpContainers()) {
            EscherSpRecord escherSpRecord = (EscherSpRecord) escherContainerRecord.getChildById((short) -4086);
            if (escherSpRecord != null && escherSpRecord.getShapeId() == i) {
                return escherContainerRecord;
            }
        }
        return null;
    }

    private OfficeDrawing getOfficeDrawing(final FSPA fspa) {
        return new OfficeDrawing() { // from class: org.apache.poi.hwpf.usermodel.OfficeDrawingsImpl.1
            private int getTertiaryPropertyValue(EscherPropertyTypes escherPropertyTypes) {
                EscherTertiaryOptRecord escherTertiaryOptRecord;
                EscherSimpleProperty escherSimpleProperty;
                EscherContainerRecord escherShapeRecordContainer = OfficeDrawingsImpl.this.getEscherShapeRecordContainer(getShapeId());
                if (escherShapeRecordContainer == null || (escherTertiaryOptRecord = (EscherTertiaryOptRecord) escherShapeRecordContainer.getChildById(EscherTertiaryOptRecord.RECORD_ID)) == null || (escherSimpleProperty = (EscherSimpleProperty) escherTertiaryOptRecord.lookup(escherPropertyTypes)) == null) {
                    return -1;
                }
                return escherSimpleProperty.getPropertyValue();
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public OfficeDrawing.HorizontalPositioning getHorizontalPositioning() {
                int tertiaryPropertyValue = getTertiaryPropertyValue(EscherPropertyTypes.GROUPSHAPE__POSH);
                return tertiaryPropertyValue != 0 ? tertiaryPropertyValue != 1 ? tertiaryPropertyValue != 2 ? tertiaryPropertyValue != 3 ? tertiaryPropertyValue != 4 ? tertiaryPropertyValue != 5 ? OfficeDrawing.HorizontalPositioning.ABSOLUTE : OfficeDrawing.HorizontalPositioning.OUTSIDE : OfficeDrawing.HorizontalPositioning.INSIDE : OfficeDrawing.HorizontalPositioning.RIGHT : OfficeDrawing.HorizontalPositioning.CENTER : OfficeDrawing.HorizontalPositioning.LEFT : OfficeDrawing.HorizontalPositioning.ABSOLUTE;
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public OfficeDrawing.HorizontalRelativeElement getHorizontalRelative() {
                int tertiaryPropertyValue = getTertiaryPropertyValue(EscherPropertyTypes.GROUPSHAPE__POSRELH);
                if (tertiaryPropertyValue == 1) {
                    return OfficeDrawing.HorizontalRelativeElement.MARGIN;
                }
                if (tertiaryPropertyValue == 2) {
                    return OfficeDrawing.HorizontalRelativeElement.PAGE;
                }
                if (tertiaryPropertyValue != 3 && tertiaryPropertyValue == 4) {
                    return OfficeDrawing.HorizontalRelativeElement.CHAR;
                }
                return OfficeDrawing.HorizontalRelativeElement.TEXT;
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public EscherContainerRecord getOfficeArtSpContainer() {
                return OfficeDrawingsImpl.this.getEscherShapeRecordContainer(getShapeId());
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public byte[] getPictureData() {
                EscherOptRecord escherOptRecord;
                EscherSimpleProperty escherSimpleProperty;
                EscherContainerRecord escherShapeRecordContainer = OfficeDrawingsImpl.this.getEscherShapeRecordContainer(getShapeId());
                if (escherShapeRecordContainer == null || (escherOptRecord = (EscherOptRecord) escherShapeRecordContainer.getChildById(EscherOptRecord.RECORD_ID)) == null || (escherSimpleProperty = (EscherSimpleProperty) escherOptRecord.lookup(EscherPropertyTypes.BLIP__BLIPTODISPLAY)) == null) {
                    return null;
                }
                EscherBlipRecord bitmapRecord = OfficeDrawingsImpl.this.getBitmapRecord(escherSimpleProperty.getPropertyValue());
                if (bitmapRecord == null) {
                    return null;
                }
                return bitmapRecord.getPicturedata();
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public int getRectangleBottom() {
                return fspa.getYaBottom();
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public int getRectangleLeft() {
                return fspa.getXaLeft();
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public int getRectangleRight() {
                return fspa.getXaRight();
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public int getRectangleTop() {
                return fspa.getYaTop();
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public int getShapeId() {
                return fspa.getSpid();
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public OfficeDrawing.VerticalPositioning getVerticalPositioning() {
                int tertiaryPropertyValue = getTertiaryPropertyValue(EscherPropertyTypes.GROUPSHAPE__POSV);
                return tertiaryPropertyValue != 0 ? tertiaryPropertyValue != 1 ? tertiaryPropertyValue != 2 ? tertiaryPropertyValue != 3 ? tertiaryPropertyValue != 4 ? tertiaryPropertyValue != 5 ? OfficeDrawing.VerticalPositioning.ABSOLUTE : OfficeDrawing.VerticalPositioning.OUTSIDE : OfficeDrawing.VerticalPositioning.INSIDE : OfficeDrawing.VerticalPositioning.BOTTOM : OfficeDrawing.VerticalPositioning.CENTER : OfficeDrawing.VerticalPositioning.TOP : OfficeDrawing.VerticalPositioning.ABSOLUTE;
            }

            @Override // org.apache.poi.hwpf.usermodel.OfficeDrawing
            public OfficeDrawing.VerticalRelativeElement getVerticalRelativeElement() {
                int tertiaryPropertyValue = getTertiaryPropertyValue(EscherPropertyTypes.GROUPSHAPE__POSV);
                if (tertiaryPropertyValue == 1) {
                    return OfficeDrawing.VerticalRelativeElement.MARGIN;
                }
                if (tertiaryPropertyValue == 2) {
                    return OfficeDrawing.VerticalRelativeElement.PAGE;
                }
                if (tertiaryPropertyValue != 3 && tertiaryPropertyValue == 4) {
                    return OfficeDrawing.VerticalRelativeElement.LINE;
                }
                return OfficeDrawing.VerticalRelativeElement.TEXT;
            }

            public String toString() {
                return "OfficeDrawingImpl: " + fspa;
            }
        };
    }

    @Override // org.apache.poi.hwpf.usermodel.OfficeDrawings
    public OfficeDrawing getOfficeDrawingAt(int i) {
        FSPA fspaFromCp = this._fspaTable.getFspaFromCp(i);
        if (fspaFromCp == null) {
            return null;
        }
        return getOfficeDrawing(fspaFromCp);
    }

    @Override // org.apache.poi.hwpf.usermodel.OfficeDrawings
    public Collection<OfficeDrawing> getOfficeDrawings() {
        ArrayList arrayList = new ArrayList();
        Iterator<FSPA> it2 = this._fspaTable.getShapes().iterator();
        while (it2.hasNext()) {
            arrayList.add(getOfficeDrawing(it2.next()));
        }
        return Collections.unmodifiableList(arrayList);
    }
}
