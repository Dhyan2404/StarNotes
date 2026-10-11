package org.apache.poi.hssf.usermodel;

import java.util.Objects;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.hssf.record.CommonObjectDataSubRecord;
import org.apache.poi.hssf.record.EndSubRecord;
import org.apache.poi.hssf.record.NoteRecord;
import org.apache.poi.hssf.record.NoteStructureSubRecord;
import org.apache.poi.hssf.record.ObjRecord;
import org.apache.poi.hssf.record.TextObjectRecord;
import org.apache.poi.ss.usermodel.ChildAnchor;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.Comment;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.ss.util.CellAddress;

/* loaded from: classes12.dex */
public class HSSFComment extends HSSFTextbox implements Comment {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int FILL_TYPE_PICTURE = 3;
    private static final int FILL_TYPE_SOLID = 0;
    private static final int GROUP_SHAPE_HIDDEN_MASK = 16777218;
    private static final int GROUP_SHAPE_NOT_HIDDEN_MASK = -16777219;
    private static final int GROUP_SHAPE_PROPERTY_DEFAULT_VALUE = 655362;
    private final NoteRecord _note;

    public HSSFComment(EscherContainerRecord escherContainerRecord, ObjRecord objRecord, TextObjectRecord textObjectRecord, NoteRecord noteRecord) {
        super(escherContainerRecord, objRecord, textObjectRecord);
        this._note = noteRecord;
    }

    private static NoteRecord createNoteRecord() {
        NoteRecord noteRecord = new NoteRecord();
        noteRecord.setFlags((short) 0);
        noteRecord.setAuthor("");
        return noteRecord;
    }

    private void setHidden(boolean z) {
        EscherOptRecord optRecord = getOptRecord();
        EscherPropertyTypes escherPropertyTypes = EscherPropertyTypes.GROUPSHAPE__FLAGS;
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) optRecord.lookup(escherPropertyTypes);
        if (z) {
            setPropertyValue(new EscherSimpleProperty(escherPropertyTypes, false, false, escherSimpleProperty.getPropertyValue() | GROUP_SHAPE_HIDDEN_MASK));
        } else {
            setPropertyValue(new EscherSimpleProperty(escherPropertyTypes, false, false, escherSimpleProperty.getPropertyValue() & GROUP_SHAPE_NOT_HIDDEN_MASK));
        }
    }

    @Override // org.apache.poi.hssf.usermodel.HSSFTextbox, org.apache.poi.hssf.usermodel.HSSFSimpleShape, org.apache.poi.hssf.usermodel.HSSFShape
    public void afterInsert(HSSFPatriarch hSSFPatriarch) {
        super.afterInsert(hSSFPatriarch);
        hSSFPatriarch.getBoundAggregate().addTailRecord(getNoteRecord());
    }

    @Override // org.apache.poi.hssf.usermodel.HSSFTextbox, org.apache.poi.hssf.usermodel.HSSFSimpleShape, org.apache.poi.hssf.usermodel.HSSFShape
    public void afterRemove(HSSFPatriarch hSSFPatriarch) {
        super.afterRemove(hSSFPatriarch);
        hSSFPatriarch.getBoundAggregate().removeTailRecord(getNoteRecord());
    }

    @Override // org.apache.poi.hssf.usermodel.HSSFTextbox, org.apache.poi.hssf.usermodel.HSSFSimpleShape, org.apache.poi.hssf.usermodel.HSSFShape
    public HSSFShape cloneShape() {
        TextObjectRecord textObjectRecord = (TextObjectRecord) getTextObjectRecord().cloneViaReserialise();
        EscherContainerRecord escherContainerRecord = new EscherContainerRecord();
        escherContainerRecord.fillFields(getEscherContainer().serialize(), 0, new DefaultEscherRecordFactory());
        return new HSSFComment(escherContainerRecord, (ObjRecord) getObjRecord().cloneViaReserialise(), textObjectRecord, (NoteRecord) getNoteRecord().cloneViaReserialise());
    }

    @Override // org.apache.poi.hssf.usermodel.HSSFTextbox, org.apache.poi.hssf.usermodel.HSSFSimpleShape, org.apache.poi.hssf.usermodel.HSSFShape
    public ObjRecord createObjRecord() {
        ObjRecord objRecord = new ObjRecord();
        CommonObjectDataSubRecord commonObjectDataSubRecord = new CommonObjectDataSubRecord();
        commonObjectDataSubRecord.setObjectType((short) 202);
        commonObjectDataSubRecord.setLocked(true);
        commonObjectDataSubRecord.setPrintable(true);
        commonObjectDataSubRecord.setAutofill(false);
        commonObjectDataSubRecord.setAutoline(true);
        NoteStructureSubRecord noteStructureSubRecord = new NoteStructureSubRecord();
        EndSubRecord endSubRecord = new EndSubRecord();
        objRecord.addSubRecord(commonObjectDataSubRecord);
        objRecord.addSubRecord(noteStructureSubRecord);
        objRecord.addSubRecord(endSubRecord);
        return objRecord;
    }

    @Override // org.apache.poi.hssf.usermodel.HSSFTextbox, org.apache.poi.hssf.usermodel.HSSFSimpleShape, org.apache.poi.hssf.usermodel.HSSFShape
    public EscherContainerRecord createSpContainer() {
        EscherContainerRecord createSpContainer = super.createSpContainer();
        EscherOptRecord escherOptRecord = (EscherOptRecord) createSpContainer.getChildById(EscherOptRecord.RECORD_ID);
        escherOptRecord.removeEscherProperty(EscherPropertyTypes.TEXT__TEXTLEFT);
        escherOptRecord.removeEscherProperty(EscherPropertyTypes.TEXT__TEXTRIGHT);
        escherOptRecord.removeEscherProperty(EscherPropertyTypes.TEXT__TEXTTOP);
        escherOptRecord.removeEscherProperty(EscherPropertyTypes.TEXT__TEXTBOTTOM);
        escherOptRecord.setEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.GROUPSHAPE__FLAGS, false, false, GROUP_SHAPE_PROPERTY_DEFAULT_VALUE));
        return createSpContainer;
    }

    public boolean equals(Object obj) {
        if (obj instanceof HSSFComment) {
            return getNoteRecord().equals(((HSSFComment) obj).getNoteRecord());
        }
        return false;
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public CellAddress getAddress() {
        return new CellAddress(getRow(), getColumn());
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public String getAuthor() {
        return this._note.getAuthor();
    }

    public int getBackgroundImageId() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) getOptRecord().lookup(EscherPropertyTypes.FILL__PATTERNTEXTURE);
        if (escherSimpleProperty == null) {
            return 0;
        }
        return escherSimpleProperty.getPropertyValue();
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public ClientAnchor getClientAnchor() {
        ChildAnchor anchor = super.getAnchor();
        if (anchor instanceof ClientAnchor) {
            return (ClientAnchor) anchor;
        }
        throw new IllegalStateException("Anchor can not be changed in " + ClientAnchor.class.getSimpleName());
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public int getColumn() {
        return this._note.getColumn();
    }

    public NoteRecord getNoteRecord() {
        return this._note;
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public int getRow() {
        return this._note.getRow();
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public /* bridge */ /* synthetic */ RichTextString getString() {
        return super.getString();
    }

    public boolean hasPosition() {
        return this._note != null && getColumn() >= 0 && getRow() >= 0;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(getRow()), Integer.valueOf(getColumn()));
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public boolean isVisible() {
        return this._note.getFlags() == 2;
    }

    public void resetBackgroundImage() {
        EscherOptRecord optRecord = getOptRecord();
        EscherPropertyTypes escherPropertyTypes = EscherPropertyTypes.FILL__PATTERNTEXTURE;
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) optRecord.lookup(escherPropertyTypes);
        if (escherSimpleProperty != null) {
            getPatriarch().getSheet().getWorkbook().getWorkbook().getBSERecord(escherSimpleProperty.getPropertyValue()).setRef(r0.getRef() - 1);
            getOptRecord().removeEscherProperty(escherPropertyTypes);
        }
        setPropertyValue(new EscherSimpleProperty(EscherPropertyTypes.FILL__FILLTYPE, false, false, 0));
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public void setAddress(CellAddress cellAddress) {
        setRow(cellAddress.getRow());
        setColumn(cellAddress.getColumn());
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public void setAuthor(String str) {
        NoteRecord noteRecord = this._note;
        if (noteRecord != null) {
            noteRecord.setAuthor(str);
        }
    }

    public void setBackgroundImage(int i) {
        setPropertyValue(new EscherSimpleProperty(EscherPropertyTypes.FILL__PATTERNTEXTURE, false, true, i));
        setPropertyValue(new EscherSimpleProperty(EscherPropertyTypes.FILL__FILLTYPE, false, false, 3));
        EscherBSERecord bSERecord = getPatriarch().getSheet().getWorkbook().getWorkbook().getBSERecord(i);
        bSERecord.setRef(bSERecord.getRef() + 1);
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public void setColumn(int i) {
        this._note.setColumn(i);
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public void setRow(int i) {
        this._note.setRow(i);
    }

    @Override // org.apache.poi.hssf.usermodel.HSSFShape
    public void setShapeId(int i) {
        if (i > 65535) {
            throw new IllegalArgumentException("Cannot add more than 65535 shapes");
        }
        super.setShapeId(i);
        ((CommonObjectDataSubRecord) getObjRecord().getSubRecords().get(0)).setObjectId(i);
        this._note.setShapeId(i);
    }

    @Override // org.apache.poi.hssf.usermodel.HSSFTextbox, org.apache.poi.hssf.usermodel.HSSFSimpleShape
    public void setShapeType(int i) {
        throw new IllegalStateException("Shape type can not be changed in " + getClass().getSimpleName());
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public void setVisible(boolean z) {
        this._note.setFlags(z ? (short) 2 : (short) 0);
        setHidden(!z);
    }

    public HSSFComment(HSSFShape hSSFShape, HSSFAnchor hSSFAnchor) {
        this(hSSFShape, hSSFAnchor, createNoteRecord());
    }

    @Override // org.apache.poi.ss.usermodel.Comment
    public void setAddress(int i, int i2) {
        setRow(i);
        setColumn(i2);
    }

    private HSSFComment(HSSFShape hSSFShape, HSSFAnchor hSSFAnchor, NoteRecord noteRecord) {
        super(hSSFShape, hSSFAnchor);
        this._note = noteRecord;
        setFillColor(134217808);
        setVisible(false);
        setAuthor("");
        ((CommonObjectDataSubRecord) getObjRecord().getSubRecords().get(0)).setObjectType((short) 25);
    }

    public HSSFComment(NoteRecord noteRecord, TextObjectRecord textObjectRecord) {
        this(null, new HSSFClientAnchor(), noteRecord);
    }
}
