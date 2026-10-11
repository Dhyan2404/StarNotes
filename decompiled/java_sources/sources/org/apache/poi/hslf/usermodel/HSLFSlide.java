package org.apache.poi.hslf.usermodel;

import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherDgRecord;
import org.apache.poi.ddf.EscherDggRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.HeadersFooters;
import org.apache.poi.hslf.record.CString;
import org.apache.poi.hslf.record.ColorSchemeAtom;
import org.apache.poi.hslf.record.Comment2000;
import org.apache.poi.hslf.record.EscherTextboxWrapper;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordContainer;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.SSSlideInfoAtom;
import org.apache.poi.hslf.record.SlideAtom;
import org.apache.poi.hslf.record.SlideAtomLayout;
import org.apache.poi.hslf.record.SlideListWithText;
import org.apache.poi.hslf.record.StyleTextProp9Atom;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.usermodel.Background;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.Notes;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.sl.usermodel.SimpleShape;
import org.apache.poi.sl.usermodel.Slide;
import org.apache.poi.sl.usermodel.TextShape;

/* loaded from: classes12.dex */
public final class HSLFSlide extends HSLFSheet implements Slide<HSLFShape, HSLFTextParagraph> {
    private SlideListWithText.SlideAtomsSet _atomSet;
    private HSLFNotes _notes;
    private final List<List<HSLFTextParagraph>> _paragraphs;
    private int _slideNo;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFSlide$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194691 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ddf$EscherRecordTypes;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$Placeholder;

        static {
            int[] iArr = new int[Placeholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$Placeholder = iArr;
            try {
                iArr[Placeholder.DATETIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.SLIDE_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.HEADER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.FOOTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[EscherRecordTypes.values().length];
            $SwitchMap$org$apache$poi$ddf$EscherRecordTypes = iArr2;
            try {
                iArr2[EscherRecordTypes.SPGR_CONTAINER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.SP_CONTAINER.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public HSLFSlide(org.apache.poi.hslf.record.Slide slide, HSLFNotes hSLFNotes, SlideListWithText.SlideAtomsSet slideAtomsSet, int i, int i2) {
        super(slide, i);
        ArrayList arrayList = new ArrayList();
        this._paragraphs = arrayList;
        this._notes = hSLFNotes;
        this._atomSet = slideAtomsSet;
        this._slideNo = i2;
        if (slideAtomsSet != null && slideAtomsSet.getSlideRecords().length > 0) {
            arrayList.addAll(HSLFTextParagraph.findTextParagraphs(this._atomSet.getSlideRecords()));
            if (arrayList.isEmpty()) {
                throw new HSLFException("No text records found for slide");
            }
        }
        for (List<HSLFTextParagraph> list : HSLFTextParagraph.findTextParagraphs(getPPDrawing(), this)) {
            if (!this._paragraphs.contains(list)) {
                this._paragraphs.add(list);
            }
        }
    }

    private static RecordContainer selectContainer(RecordContainer recordContainer, int i, RecordTypes... recordTypesArr) {
        return (recordContainer == null || i >= recordTypesArr.length) ? recordContainer : selectContainer((RecordContainer) recordContainer.findFirstOfType(recordTypesArr[i].typeID), i + 1, recordTypesArr);
    }

    public HSLFTextBox addTitle() {
        HSLFPlaceholder hSLFPlaceholder = new HSLFPlaceholder();
        hSLFPlaceholder.setShapeType(ShapeType.RECT);
        hSLFPlaceholder.setPlaceholder(Placeholder.TITLE);
        hSLFPlaceholder.setRunType(TextShape.TextPlaceholder.TITLE.nativeId);
        hSLFPlaceholder.setText("Click to edit title");
        hSLFPlaceholder.setAnchor(new Rectangle(54, 48, 612, 90));
        addShape((HSLFShape) hSLFPlaceholder);
        return hSLFPlaceholder;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public void draw(Graphics2D graphics2D) {
        DrawFactory.getInstance(graphics2D).getDrawable((Slide<?, ?>) this).draw(graphics2D);
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void free() {
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet
    public ColorSchemeAtom getColorScheme() {
        if (!getFollowMasterScheme()) {
            return super.getColorScheme();
        }
        HSLFMasterSheet masterSheet = getMasterSheet();
        if (masterSheet == null) {
            return null;
        }
        return masterSheet.getColorScheme();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public List<HSLFComment> getComments() {
        ArrayList arrayList = new ArrayList();
        RecordContainer selectContainer = selectContainer(getSheetContainer(), 0, RecordTypes.ProgTags, RecordTypes.ProgBinaryTag, RecordTypes.BinaryTagData);
        if (selectContainer != null) {
            for (Record record : selectContainer.getChildRecords()) {
                if (record instanceof Comment2000) {
                    arrayList.add(new HSLFComment((Comment2000) record));
                }
            }
        }
        return arrayList;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean getDisplayPlaceholder(Placeholder placeholder) {
        HeadersFooters headersFooters = getHeadersFooters();
        SlideAtomLayout.SlideLayoutType geometryType = getSlideRecord().getSlideAtom().getSSlideLayoutAtom().getGeometryType();
        boolean z = geometryType == SlideAtomLayout.SlideLayoutType.TITLE_SLIDE || geometryType == SlideAtomLayout.SlideLayoutType.TITLE_ONLY || geometryType == SlideAtomLayout.SlideLayoutType.MASTER_TITLE;
        int i = C194691.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        if (i != 1) {
            return i != 2 ? i != 3 ? i == 4 && headersFooters.isFooterVisible() && headersFooters.getFooterAtom() != null && !z : (!headersFooters.isHeaderVisible() || headersFooters.getHeaderAtom() == null || z) ? false : true : headersFooters.isSlideNumberVisible() && !z;
        }
        if (headersFooters.isDateTimeVisible()) {
            return (headersFooters.isTodayDateVisible() || (headersFooters.isUserDateVisible() && headersFooters.getUserDateAtom() != null)) && !z;
        }
        return false;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean getFollowMasterBackground() {
        return getSlideRecord().getSlideAtom().getFollowMasterBackground();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean getFollowMasterColourScheme() {
        return false;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public boolean getFollowMasterGraphics() {
        return getFollowMasterObjects();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean getFollowMasterObjects() {
        return getSlideRecord().getSlideAtom().getFollowMasterObjects();
    }

    public boolean getFollowMasterScheme() {
        return getSlideRecord().getSlideAtom().getFollowMasterScheme();
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet
    public HeadersFooters getHeadersFooters() {
        return new HeadersFooters((HSLFSheet) this, (short) 63);
    }

    public StyleTextProp9Atom[] getNumberedListInfo() {
        return getPPDrawing().getNumberedListInfo();
    }

    public SlideListWithText.SlideAtomsSet getSlideAtomsSet() {
        return this._atomSet;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public String getSlideName() {
        CString cString = (CString) getSlideRecord().findFirstOfType(RecordTypes.CString.typeID);
        if (cString != null) {
            return cString.getText();
        }
        return "Slide" + getSlideNumber();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public int getSlideNumber() {
        return this._slideNo;
    }

    public org.apache.poi.hslf.record.Slide getSlideRecord() {
        return (org.apache.poi.hslf.record.Slide) getSheetContainer();
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Notes
    public List<List<HSLFTextParagraph>> getTextParagraphs() {
        return this._paragraphs;
    }

    public EscherTextboxWrapper[] getTextboxWrappers() {
        return getPPDrawing().getTextboxWrappers();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public String getTitle() {
        for (List<HSLFTextParagraph> list : getTextParagraphs()) {
            if (!list.isEmpty()) {
                int runType = list.get(0).getRunType();
                if (TextShape.TextPlaceholder.isTitle(runType)) {
                    return HSLFTextParagraph.toExternalString(HSLFTextParagraph.getRawText(list), runType);
                }
            }
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void init() {
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean isHidden() {
        SSSlideInfoAtom sSSlideInfoAtom = (SSSlideInfoAtom) getSlideRecord().findFirstOfType(RecordTypes.SSSlideInfoAtom.typeID);
        return sSSlideInfoAtom != null && sSSlideInfoAtom.getEffectTransitionFlagByBit(4);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet
    public void onAddTextShape(HSLFTextShape hSLFTextShape) {
        this._paragraphs.add(hSLFTextShape.getTextParagraphs());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    @Override // org.apache.poi.hslf.usermodel.HSLFSheet
    public void onCreate() {
        EscherDggRecord escherDggRecord = getSlideShow().getDocumentRecord().getPPDrawingGroup().getEscherDggRecord();
        EscherContainerRecord dgContainer = getSheetContainer().getPPDrawing().getDgContainer();
        EscherDgRecord escherDgRecord = (EscherDgRecord) HSLFShape.getEscherChild(dgContainer, EscherDgRecord.RECORD_ID);
        escherDgRecord.setOptions((short) ((escherDggRecord.getMaxDrawingGroupId() + 1) << 4));
        escherDggRecord.setDrawingsSaved(escherDggRecord.getDrawingsSaved() + 1);
        for (EscherContainerRecord escherContainerRecord : dgContainer.getChildContainers()) {
            int i = C194691.$SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.forTypeID(escherContainerRecord.getRecordId()).ordinal()];
            EscherSpRecord escherSpRecord = i != 1 ? i != 2 ? null : (EscherSpRecord) escherContainerRecord.getChildById(EscherSpRecord.RECORD_ID) : (EscherSpRecord) ((EscherContainerRecord) escherContainerRecord.getChild(0)).getChildById(EscherSpRecord.RECORD_ID);
            if (escherSpRecord != null) {
                escherSpRecord.setShapeId(allocateShapeId());
            }
        }
        escherDgRecord.setNumShapes(1);
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void setFollowMasterBackground(boolean z) {
        getSlideRecord().getSlideAtom().setFollowMasterBackground(z);
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void setFollowMasterColourScheme(boolean z) {
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void setFollowMasterObjects(boolean z) {
        getSlideRecord().getSlideAtom().setFollowMasterObjects(z);
    }

    public void setFollowMasterScheme(boolean z) {
        getSlideRecord().getSlideAtom().setFollowMasterScheme(z);
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void setHidden(boolean z) {
        org.apache.poi.hslf.record.Slide slideRecord = getSlideRecord();
        SSSlideInfoAtom sSSlideInfoAtom = (SSSlideInfoAtom) slideRecord.findFirstOfType(RecordTypes.SSSlideInfoAtom.typeID);
        if (sSSlideInfoAtom == null) {
            sSSlideInfoAtom = new SSSlideInfoAtom();
            slideRecord.addChildAfter(sSSlideInfoAtom, slideRecord.findFirstOfType(RecordTypes.SlideAtom.typeID));
        }
        sSSlideInfoAtom.setEffectTransitionFlagByBit(4, z);
    }

    public void setMasterSheet(HSLFMasterSheet hSLFMasterSheet) {
        getSlideRecord().getSlideAtom().setMasterID(hSLFMasterSheet._getSheetNumber());
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void setNotes(Notes<HSLFShape, HSLFTextParagraph> notes) {
        if (notes != null && !(notes instanceof HSLFNotes)) {
            throw new IllegalArgumentException("notes needs to be of type HSLFNotes");
        }
        this._notes = (HSLFNotes) notes;
        SlideAtom slideAtom = getSlideRecord().getSlideAtom();
        HSLFNotes hSLFNotes = this._notes;
        if (hSLFNotes == null) {
            slideAtom.setNotesID(0);
        } else {
            slideAtom.setNotesID(hSLFNotes._getSheetNumber());
        }
    }

    public void setSlideNumber(int i) {
        this._slideNo = i;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public Background<HSLFShape, HSLFTextParagraph> getBackground() {
        if (getFollowMasterBackground()) {
            HSLFMasterSheet masterSheet = getMasterSheet();
            if (masterSheet == null) {
                return null;
            }
            return masterSheet.getBackground();
        }
        return super.getBackground();
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    @Override // org.apache.poi.hslf.usermodel.HSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public HSLFMasterSheet getMasterSheet() {
        int masterID = getSlideRecord().getSlideAtom().getMasterID();
        Iterator<? extends MasterSheet<HSLFShape, HSLFTextParagraph>> it2 = getSlideShow().getSlideMasters().iterator();
        while (it2.hasNext()) {
            HSLFSlideMaster hSLFSlideMaster = (HSLFSlideMaster) it2.next();
            if (masterID == hSLFSlideMaster._getSheetNumber()) {
                return hSLFSlideMaster;
            }
        }
        for (HSLFTitleMaster hSLFTitleMaster : getSlideShow().getTitleMasters()) {
            if (masterID == hSLFTitleMaster._getSheetNumber()) {
                return hSLFTitleMaster;
            }
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    /* renamed from: getNotes, reason: merged with bridge method [inline-methods] */
    public Notes<HSLFShape, HSLFTextParagraph> getNotes2() {
        return this._notes;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    /* renamed from: getSlideLayout, reason: merged with bridge method [inline-methods] */
    public MasterSheet<HSLFShape, HSLFTextParagraph> getSlideLayout2() {
        return getMasterSheet();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean getDisplayPlaceholder(SimpleShape<?, ?> simpleShape) {
        Placeholder placeholder = simpleShape.getPlaceholder();
        if (placeholder == null) {
            return false;
        }
        HeadersFooters headersFooters = getHeadersFooters();
        SlideAtomLayout.SlideLayoutType geometryType = getSlideRecord().getSlideAtom().getSSlideLayoutAtom().getGeometryType();
        boolean z = geometryType == SlideAtomLayout.SlideLayoutType.TITLE_SLIDE || geometryType == SlideAtomLayout.SlideLayoutType.TITLE_ONLY || geometryType == SlideAtomLayout.SlideLayoutType.MASTER_TITLE;
        int i = C194691.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        return i != 3 ? i == 4 && headersFooters.isFooterVisible() && headersFooters.getFooterAtom() != null && !z : (!headersFooters.isHeaderVisible() || headersFooters.getHeaderAtom() == null || z) ? false : true;
    }

    public HSLFSlide(int i, int i2, int i3) {
        super(new org.apache.poi.hslf.record.Slide(), i);
        this._paragraphs = new ArrayList();
        this._slideNo = i3;
        getSheetContainer().setSheetId(i2);
    }
}
