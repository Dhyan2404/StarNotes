package org.apache.poi.hslf.usermodel;

import com.google.android.material.motion.MotionUtils;
import java.awt.Dimension;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.POIDocument;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.hpsf.ClassID;
import org.apache.poi.hpsf.ClassIDPredefined;
import org.apache.poi.hpsf.DocumentSummaryInformation;
import org.apache.poi.hpsf.PropertySet;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hpsf.extractor.HPSFPropertiesExtractor;
import org.apache.poi.hslf.exceptions.CorruptPowerPointFileException;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.HeadersFooters;
import org.apache.poi.hslf.record.Document;
import org.apache.poi.hslf.record.DocumentAtom;
import org.apache.poi.hslf.record.ExAviMovie;
import org.apache.poi.hslf.record.ExControl;
import org.apache.poi.hslf.record.ExEmbed;
import org.apache.poi.hslf.record.ExMCIMovie;
import org.apache.poi.hslf.record.ExObjList;
import org.apache.poi.hslf.record.ExObjListAtom;
import org.apache.poi.hslf.record.ExOleObjAtom;
import org.apache.poi.hslf.record.ExOleObjStg;
import org.apache.poi.hslf.record.ExVideoContainer;
import org.apache.poi.hslf.record.FontCollection;
import org.apache.poi.hslf.record.MainMaster;
import org.apache.poi.hslf.record.Notes;
import org.apache.poi.hslf.record.PersistPtrHolder;
import org.apache.poi.hslf.record.PositionDependentRecord;
import org.apache.poi.hslf.record.PositionDependentRecordContainer;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordContainer;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.Slide;
import org.apache.poi.hslf.record.SlideListWithText;
import org.apache.poi.hslf.record.SlidePersistAtom;
import org.apache.poi.hslf.record.TxMasterStyleAtom;
import org.apache.poi.hslf.record.UserEditAtom;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.Ole10Native;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class HSLFSlideShow extends POIDocument implements SlideShow<HSLFShape, HSLFTextParagraph>, Closeable, GenericRecord {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 10000000;
    public static final String POWERPOINT_DOCUMENT = "PowerPoint Document";
    public static final String PP95_DOCUMENT = "PP40";
    public static final String PP97_DOCUMENT = "PP97_DUALSTORAGE";
    private Document _documentRecord;
    private FontCollection _fonts;
    private final HSLFSlideShowImpl _hslfSlideShow;
    private final List<HSLFSlideMaster> _masters;
    private Record[] _mostRecentCoreRecords;
    private final List<HSLFNotes> _notes;
    private Map<Integer, Integer> _sheetIdToCoreRecordsLookup;
    private final List<HSLFSlide> _slides;
    private final List<HSLFTitleMaster> _titleMasters;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFSlideShow.class);
    private static int MAX_RECORD_LENGTH = 10000000;
    private static final ThreadLocal<LoadSavePhase> loadSavePhase = new ThreadLocal<>();

    /* loaded from: classes12.dex */
    public enum LoadSavePhase {
        INIT,
        LOADED
    }

    public HSLFSlideShow(HSLFSlideShowImpl hSLFSlideShowImpl) {
        super(hSLFSlideShowImpl.getDirectory());
        this._masters = new ArrayList();
        this._titleMasters = new ArrayList();
        this._slides = new ArrayList();
        this._notes = new ArrayList();
        loadSavePhase.set(LoadSavePhase.INIT);
        this._hslfSlideShow = hSLFSlideShowImpl;
        for (Record record : hSLFSlideShowImpl.getRecords()) {
            if (record instanceof RecordContainer) {
                RecordContainer.handleParentAwareRecords((RecordContainer) record);
            }
        }
        findMostRecentCoreRecords();
        buildSlidesAndNotes();
        loadSavePhase.set(LoadSavePhase.LOADED);
    }

    public static EscherBSERecord addNewEscherBseRecord(EscherContainerRecord escherContainerRecord, PictureData.PictureType pictureType, byte[] bArr, int i) {
        EscherBSERecord escherBSERecord = new EscherBSERecord();
        escherBSERecord.setRecordId(EscherBSERecord.RECORD_ID);
        escherBSERecord.setOptions((short) ((pictureType.nativeId << 4) | 2));
        escherBSERecord.setSize(bArr.length + 8);
        escherBSERecord.setUid(Arrays.copyOf(bArr, 16));
        escherBSERecord.setBlipTypeMacOS((byte) pictureType.nativeId);
        escherBSERecord.setBlipTypeWin32((byte) pictureType.nativeId);
        if (pictureType == PictureData.PictureType.EMF) {
            escherBSERecord.setBlipTypeMacOS((byte) PictureData.PictureType.PICT.nativeId);
        } else {
            PictureData.PictureType pictureType2 = PictureData.PictureType.WMF;
            if (pictureType == pictureType2) {
                escherBSERecord.setBlipTypeMacOS((byte) PictureData.PictureType.PICT.nativeId);
            } else if (pictureType == PictureData.PictureType.PICT) {
                escherBSERecord.setBlipTypeWin32((byte) pictureType2.nativeId);
            }
        }
        escherBSERecord.setOffset(i);
        escherContainerRecord.addChildRecord(escherBSERecord);
        escherContainerRecord.setOptions((short) ((escherContainerRecord.getChildCount() << 4) | 15));
        return escherBSERecord;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int addPersistentObject(PositionDependentRecord positionDependentRecord) {
        positionDependentRecord.setLastOnDiskOffset(-1);
        this._hslfSlideShow.appendRootLevelRecord((Record) positionDependentRecord);
        HashMap hashMap = new HashMap();
        try {
            this._hslfSlideShow.updateAndWriteDependantRecords(null, hashMap);
            PersistPtrHolder persistPtrHolder = (PersistPtrHolder) hashMap.get(RecordTypes.PersistPtrIncrementalBlock);
            UserEditAtom userEditAtom = (UserEditAtom) hashMap.get(RecordTypes.UserEditAtom);
            int maxPersistWritten = userEditAtom.getMaxPersistWritten() + 1;
            userEditAtom.setLastViewType((short) 1);
            userEditAtom.setMaxPersistWritten(maxPersistWritten);
            int lastOnDiskOffset = positionDependentRecord.getLastOnDiskOffset();
            positionDependentRecord.setLastOnDiskOffset(lastOnDiskOffset);
            persistPtrHolder.addSlideLookup(maxPersistWritten, lastOnDiskOffset);
            LOG.atInfo().log("New slide/object ended up at {}", Unbox.box(lastOnDiskOffset));
            return maxPersistWritten;
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    private void buildSlidesAndNotes() {
        if (this._documentRecord == null) {
            throw new CorruptPowerPointFileException("The PowerPoint file didn't contain a Document Record in its PersistPtr blocks. It is probably corrupt.");
        }
        findMasterSlides();
        HashMap hashMap = new HashMap();
        findNotesSlides(hashMap);
        findSlides(hashMap);
    }

    private void findMasterSlides() {
        SlideListWithText masterSlideListWithText = this._documentRecord.getMasterSlideListWithText();
        if (masterSlideListWithText == null) {
            return;
        }
        for (SlideListWithText.SlideAtomsSet slideAtomsSet : masterSlideListWithText.getSlideAtomsSets()) {
            Record coreRecordForSAS = getCoreRecordForSAS(slideAtomsSet);
            int slideIdentifier = slideAtomsSet.getSlidePersistAtom().getSlideIdentifier();
            if (coreRecordForSAS instanceof Slide) {
                HSLFTitleMaster hSLFTitleMaster = new HSLFTitleMaster((Slide) coreRecordForSAS, slideIdentifier);
                hSLFTitleMaster.setSlideShow(this);
                this._titleMasters.add(hSLFTitleMaster);
            } else if (coreRecordForSAS instanceof MainMaster) {
                HSLFSlideMaster hSLFSlideMaster = new HSLFSlideMaster((MainMaster) coreRecordForSAS, slideIdentifier);
                hSLFSlideMaster.setSlideShow(this);
                this._masters.add(hSLFSlideMaster);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void findMostRecentCoreRecords() {
        HashMap hashMap = new HashMap();
        for (Record record : this._hslfSlideShow.getRecords()) {
            if (record instanceof PersistPtrHolder) {
                PersistPtrHolder persistPtrHolder = (PersistPtrHolder) record;
                int[] knownSlideIDs = persistPtrHolder.getKnownSlideIDs();
                for (int i : knownSlideIDs) {
                    hashMap.remove(Integer.valueOf(i));
                }
                Map<Integer, Integer> slideLocationsLookup = persistPtrHolder.getSlideLocationsLookup();
                for (int i2 : knownSlideIDs) {
                    hashMap.put(Integer.valueOf(i2), slideLocationsLookup.get(Integer.valueOf(i2)));
                }
            }
        }
        this._mostRecentCoreRecords = new Record[hashMap.size()];
        this._sheetIdToCoreRecordsLookup = new HashMap();
        Integer[] numArr = (Integer[]) hashMap.keySet().toArray(new Integer[0]);
        Arrays.sort(numArr);
        for (int i3 = 0; i3 < numArr.length; i3++) {
            this._sheetIdToCoreRecordsLookup.put(numArr[i3], Integer.valueOf(i3));
        }
        HashMap hashMap2 = new HashMap(hashMap.size());
        for (Map.Entry entry : hashMap.entrySet()) {
            hashMap2.put(entry.getValue(), entry.getKey());
        }
        for (Object obj : this._hslfSlideShow.getRecords()) {
            if (obj instanceof PositionDependentRecord) {
                PositionDependentRecord positionDependentRecord = (PositionDependentRecord) obj;
                Integer num = (Integer) hashMap2.get(Integer.valueOf(positionDependentRecord.getLastOnDiskOffset()));
                if (num != null) {
                    int intValue = this._sheetIdToCoreRecordsLookup.get(num).intValue();
                    if (positionDependentRecord instanceof PositionDependentRecordContainer) {
                        ((PositionDependentRecordContainer) obj).setSheetId(num.intValue());
                    }
                    this._mostRecentCoreRecords[intValue] = obj;
                }
            }
        }
        for (Record record2 : this._mostRecentCoreRecords) {
            if (record2 != null && record2.getRecordType() == RecordTypes.Document.typeID) {
                Document document = (Document) record2;
                this._documentRecord = document;
                if (document.getEnvironment() != null) {
                    this._fonts = this._documentRecord.getEnvironment().getFontCollection();
                }
            }
        }
    }

    private void findNotesSlides(Map<Integer, Integer> map) {
        SlideListWithText notesSlideListWithText = this._documentRecord.getNotesSlideListWithText();
        if (notesSlideListWithText == null) {
            return;
        }
        int i = -1;
        for (SlideListWithText.SlideAtomsSet slideAtomsSet : notesSlideListWithText.getSlideAtomsSets()) {
            i++;
            Record coreRecordForSAS = getCoreRecordForSAS(slideAtomsSet);
            SlidePersistAtom slidePersistAtom = slideAtomsSet.getSlidePersistAtom();
            String str = "A Notes SlideAtomSet at " + i + " said its record was at refID " + slidePersistAtom.getRefID();
            if (coreRecordForSAS == null) {
                LOG.atWarn().log("{}, but that record didn't exist - record ignored.", str);
            } else if (coreRecordForSAS instanceof Notes) {
                Notes notes = (Notes) coreRecordForSAS;
                map.put(Integer.valueOf(slidePersistAtom.getSlideIdentifier()), Integer.valueOf(i));
                if (notes.getNotesAtom() == null) {
                    throw new IllegalStateException("Could not read NotesAtom from the NotesRecord for " + i);
                }
                HSLFNotes hSLFNotes = new HSLFNotes(notes);
                hSLFNotes.setSlideShow(this);
                this._notes.add(hSLFNotes);
            } else {
                LOG.atError().log("{}, but that was actually a {}", str, coreRecordForSAS);
            }
        }
    }

    private void findSlides(Map<Integer, Integer> map) {
        HSLFNotes hSLFNotes;
        SlideListWithText slideSlideListWithText = this._documentRecord.getSlideSlideListWithText();
        if (slideSlideListWithText == null) {
            return;
        }
        int i = -1;
        for (SlideListWithText.SlideAtomsSet slideAtomsSet : slideSlideListWithText.getSlideAtomsSets()) {
            i++;
            SlidePersistAtom slidePersistAtom = slideAtomsSet.getSlidePersistAtom();
            Record coreRecordForSAS = getCoreRecordForSAS(slideAtomsSet);
            if (coreRecordForSAS instanceof Slide) {
                Slide slide = (Slide) coreRecordForSAS;
                if (slide.getSlideAtom() == null) {
                    LOG.atError().log("SlideAtomSet at {} at refID {} is null", Unbox.box(i), Unbox.box(slidePersistAtom.getRefID()));
                } else {
                    int notesID = slide.getSlideAtom().getNotesID();
                    if (notesID != 0) {
                        Integer num = map.get(Integer.valueOf(notesID));
                        if (num == null || num.intValue() < 0 || num.intValue() >= this._notes.size()) {
                            LOG.atError().log("Notes not found for noteId={}", Unbox.box(notesID));
                        } else {
                            hSLFNotes = this._notes.get(num.intValue());
                            HSLFSlide hSLFSlide = new HSLFSlide(slide, hSLFNotes, slideAtomsSet, slidePersistAtom.getSlideIdentifier(), i + 1);
                            hSLFSlide.setSlideShow(this);
                            this._slides.add(hSLFSlide);
                        }
                    }
                    hSLFNotes = null;
                    HSLFSlide hSLFSlide2 = new HSLFSlide(slide, hSLFNotes, slideAtomsSet, slidePersistAtom.getSlideIdentifier(), i + 1);
                    hSLFSlide2.setSlideShow(this);
                    this._slides.add(hSLFSlide2);
                }
            } else {
                LOG.atError().log("A Slide SlideAtomSet at {} said its record was at refID {}, but that was actually a {}", Unbox.box(i), Unbox.box(slidePersistAtom.getRefID()), coreRecordForSAS);
            }
        }
    }

    public static LoadSavePhase getLoadSavePhase() {
        return loadSavePhase.get();
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private static Map<String, ClassID> getOleMap() {
        HashMap hashMap = new HashMap();
        hashMap.put(POWERPOINT_DOCUMENT, ClassIDPredefined.POWERPOINT_V8.getClassID());
        ClassIDPredefined classIDPredefined = ClassIDPredefined.EXCEL_V8;
        hashMap.put("Workbook", classIDPredefined.getClassID());
        hashMap.put("WORKBOOK", classIDPredefined.getClassID());
        hashMap.put("BOOK", classIDPredefined.getClassID());
        return hashMap;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    private void writeDirtyParagraphs(HSLFShapeContainer hSLFShapeContainer) {
        for (Shape shape : hSLFShapeContainer.getShapes()) {
            if (shape instanceof HSLFShapeContainer) {
                writeDirtyParagraphs((HSLFShapeContainer) shape);
            } else if (shape instanceof HSLFTextShape) {
                HSLFTextShape hSLFTextShape = (HSLFTextShape) shape;
                Iterator<HSLFTextParagraph> it2 = hSLFTextShape.getTextParagraphs().iterator();
                boolean z = false;
                while (it2.hasNext()) {
                    z |= it2.next().isDirty();
                }
                if (z) {
                    hSLFTextShape.storeText();
                }
            }
        }
    }

    public int addControl(String str, String str2) {
        ExControl exControl = new ExControl();
        exControl.setProgId(str2);
        exControl.setMenuName(str);
        exControl.setClipboardName(str);
        ExOleObjAtom exOleObjAtom = exControl.getExOleObjAtom();
        exOleObjAtom.setDrawAspect(1);
        exOleObjAtom.setType(2);
        exOleObjAtom.setSubType(0);
        int addToObjListAtom = addToObjListAtom(exControl);
        exOleObjAtom.setObjID(addToObjListAtom);
        return addToObjListAtom;
    }

    public int addEmbed(POIFSFileSystem pOIFSFileSystem) {
        ClassID classID;
        DirectoryNode root = pOIFSFileSystem.getRoot();
        if (new ClassID().equals(root.getStorageClsid())) {
            Iterator<Map.Entry<String, ClassID>> it2 = getOleMap().entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    classID = null;
                    break;
                }
                Map.Entry<String, ClassID> next = it2.next();
                if (root.hasEntry(next.getKey())) {
                    classID = next.getValue();
                    break;
                }
            }
            if (classID == null) {
                throw new IllegalArgumentException("Unsupported embedded document");
            }
            root.setStorageClsid(classID);
        }
        ExEmbed exEmbed = new ExEmbed();
        Record[] childRecords = exEmbed.getChildRecords();
        exEmbed.removeChild(childRecords[2]);
        exEmbed.removeChild(childRecords[3]);
        exEmbed.removeChild(childRecords[4]);
        exEmbed.getExEmbedAtom().setCantLockServerB(true);
        ExOleObjAtom exOleObjAtom = exEmbed.getExOleObjAtom();
        exOleObjAtom.setDrawAspect(1);
        exOleObjAtom.setType(0);
        exOleObjAtom.setOptions(1226240);
        ExOleObjStg exOleObjStg = new ExOleObjStg();
        try {
            Ole10Native.createOleMarkerEntry(pOIFSFileSystem);
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            pOIFSFileSystem.writeFilesystem(unsynchronizedByteArrayOutputStream);
            exOleObjStg.setData(unsynchronizedByteArrayOutputStream.toByteArray());
            int addPersistentObject = addPersistentObject(exOleObjStg);
            exOleObjStg.setPersistId(addPersistentObject);
            exOleObjAtom.setObjStgDataRef(addPersistentObject);
            int addToObjListAtom = addToObjListAtom(exEmbed);
            exOleObjAtom.setObjID(addToObjListAtom);
            return addToObjListAtom;
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    public int addMovie(String str, int i) {
        ExMCIMovie exMCIMovie;
        if (i == 1) {
            exMCIMovie = new ExMCIMovie();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException("Unsupported Movie: " + i);
            }
            exMCIMovie = new ExAviMovie();
        }
        ExVideoContainer exVideo = exMCIMovie.getExVideo();
        exVideo.getExMediaAtom().setMask(15204352);
        exVideo.getPathAtom().setText(str);
        int addToObjListAtom = addToObjListAtom(exMCIMovie);
        exVideo.getExMediaAtom().setObjectId(addToObjListAtom);
        return addToObjListAtom;
    }

    public int addToObjListAtom(RecordContainer recordContainer) {
        ExObjList exObjList = getDocumentRecord().getExObjList(true);
        ExObjListAtom exObjListAtom = exObjList.getExObjListAtom();
        int objectIDSeed = ((int) exObjListAtom.getObjectIDSeed()) + 1;
        exObjListAtom.setObjectIDSeed(objectIDSeed);
        exObjList.addChildAfter(recordContainer, exObjListAtom);
        return objectIDSeed;
    }

    @Override // org.apache.poi.POIDocument
    public void clearDirectory() {
        getSlideShowImpl().clearDirectoryImpl();
    }

    @Override // org.apache.poi.POIDocument, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this._hslfSlideShow.close();
    }

    @Override // org.apache.poi.POIDocument
    public void createInformationProperties() {
        getSlideShowImpl().createInformationProperties();
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public MasterSheet<HSLFShape, HSLFTextParagraph> createMasterSheet() {
        return null;
    }

    public Record getCoreRecordForRefID(int i) {
        Integer num = this._sheetIdToCoreRecordsLookup.get(Integer.valueOf(i));
        if (num != null) {
            return this._mostRecentCoreRecords[num.intValue()];
        }
        LOG.atError().log("We tried to look up a reference to a core record, but there was no core ID for reference ID {}", Unbox.box(i));
        return null;
    }

    public Record getCoreRecordForSAS(SlideListWithText.SlideAtomsSet slideAtomsSet) {
        return getCoreRecordForRefID(slideAtomsSet.getSlidePersistAtom().getRefID());
    }

    @Override // org.apache.poi.POIDocument
    public DirectoryNode getDirectory() {
        return getSlideShowImpl().getDirectory();
    }

    public Document getDocumentRecord() {
        return this._documentRecord;
    }

    @Override // org.apache.poi.POIDocument
    public DocumentSummaryInformation getDocumentSummaryInformation() {
        return getSlideShowImpl().getDocumentSummaryInformation();
    }

    public HSLFObjectData[] getEmbeddedObjects() {
        return this._hslfSlideShow.getEmbeddedObjects();
    }

    @Override // org.apache.poi.POIDocument
    public String getEncryptedPropertyStreamName() {
        return getSlideShowImpl().getEncryptedPropertyStreamName();
    }

    @Override // org.apache.poi.POIDocument
    public EncryptionInfo getEncryptionInfo() {
        return getSlideShowImpl().getEncryptionInfo();
    }

    public HSLFFontInfo getFont(int i) {
        return getDocumentRecord().getEnvironment().getFontCollection().getFontInfo(i);
    }

    public FontCollection getFontCollection() {
        return this._fonts;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public List<HSLFFontInfo> getFonts() {
        return getDocumentRecord().getEnvironment().getFontCollection().getFonts();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<? extends GenericRecord> getGenericChildren() {
        return Arrays.asList(this._hslfSlideShow.getRecords());
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("pictures", new Supplier() { // from class: com.sunia.HTREnginev2.r7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFSlideShow.this.getPictureData();
            }
        }, "embeddedObjects", new Supplier() { // from class: com.sunia.HTREnginev2.s7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFSlideShow.this.getEmbeddedObjects();
            }
        });
    }

    public Record[] getMostRecentCoreRecords() {
        return this._mostRecentCoreRecords;
    }

    public List<HSLFNotes> getNotes() {
        return this._notes;
    }

    public HeadersFooters getNotesHeadersFooters() {
        return this._notes.isEmpty() ? new HeadersFooters(this, (short) 79) : new HeadersFooters((HSLFSheet) this._notes.get(0), (short) 79);
    }

    public int getNumberOfFonts() {
        return getDocumentRecord().getEnvironment().getFontCollection().getNumberOfFonts();
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public Dimension getPageSize() {
        DocumentAtom documentAtom = this._documentRecord.getDocumentAtom();
        return new Dimension((int) Units.masterToPoints((int) documentAtom.getSlideSizeX()), (int) Units.masterToPoints((int) documentAtom.getSlideSizeY()));
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public Object getPersistDocument() {
        return getSlideShowImpl();
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public List<HSLFPictureData> getPictureData() {
        return this._hslfSlideShow.getPictureData();
    }

    @Override // org.apache.poi.POIDocument
    public PropertySet getPropertySet(String str) throws IOException {
        return getSlideShowImpl().getPropertySetImpl(str);
    }

    public HeadersFooters getSlideHeadersFooters() {
        return new HeadersFooters(this, (short) 63);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public List<? extends MasterSheet<HSLFShape, HSLFTextParagraph>> getSlideMasters() {
        return this._masters;
    }

    @Internal
    public HSLFSlideShowImpl getSlideShowImpl() {
        return this._hslfSlideShow;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public List<? extends org.apache.poi.sl.usermodel.Slide<HSLFShape, HSLFTextParagraph>> getSlides() {
        return this._slides;
    }

    public HSLFSoundData[] getSoundData() {
        return HSLFSoundData.find(this._documentRecord);
    }

    @Override // org.apache.poi.POIDocument
    public SummaryInformation getSummaryInformation() {
        return getSlideShowImpl().getSummaryInformation();
    }

    public List<HSLFTitleMaster> getTitleMasters() {
        return this._titleMasters;
    }

    @Override // org.apache.poi.POIDocument
    public boolean initDirectory() {
        return getSlideShowImpl().initDirectoryImpl();
    }

    @Override // org.apache.poi.POIDocument
    public void readProperties() {
        getSlideShowImpl().readProperties();
    }

    public HSLFSlide removeSlide(int i) {
        int size = this._slides.size() - 1;
        if (i < 0 || i > size) {
            throw new IllegalArgumentException("Slide index (" + i + ") is out of range (0.." + size + MotionUtils.f31762d);
        }
        SlideListWithText slideSlideListWithText = this._documentRecord.getSlideSlideListWithText();
        if (slideSlideListWithText == null) {
            throw new IllegalStateException("Slide record not defined.");
        }
        SlideListWithText.SlideAtomsSet[] slideAtomsSets = slideSlideListWithText.getSlideAtomsSets();
        ArrayList arrayList = new ArrayList();
        ArrayList<SlideListWithText.SlideAtomsSet> arrayList2 = new ArrayList(Arrays.asList(slideAtomsSets));
        HSLFSlide remove = this._slides.remove(i);
        this._notes.remove(remove.getNotes2());
        arrayList2.remove(i);
        Iterator<HSLFSlide> it2 = this._slides.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            it2.next().setSlideNumber(i2);
            i2++;
        }
        for (SlideListWithText.SlideAtomsSet slideAtomsSet : arrayList2) {
            arrayList.add(slideAtomsSet.getSlidePersistAtom());
            arrayList.addAll(Arrays.asList(slideAtomsSet.getSlideRecords()));
        }
        if (arrayList2.isEmpty()) {
            this._documentRecord.removeSlideListWithText(slideSlideListWithText);
        } else {
            slideSlideListWithText.setSlideAtomsSets((SlideListWithText.SlideAtomsSet[]) arrayList2.toArray(new SlideListWithText.SlideAtomsSet[0]));
            slideSlideListWithText.setChildRecord((Record[]) arrayList.toArray(new Record[0]));
        }
        int notesID = remove.getSlideRecord().getSlideAtom().getNotesID();
        if (notesID != 0) {
            SlideListWithText notesSlideListWithText = this._documentRecord.getNotesSlideListWithText();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            if (notesSlideListWithText != null) {
                for (SlideListWithText.SlideAtomsSet slideAtomsSet2 : notesSlideListWithText.getSlideAtomsSets()) {
                    if (slideAtomsSet2.getSlidePersistAtom().getSlideIdentifier() != notesID) {
                        arrayList4.add(slideAtomsSet2);
                        arrayList3.add(slideAtomsSet2.getSlidePersistAtom());
                        if (slideAtomsSet2.getSlideRecords() != null) {
                            arrayList3.addAll(Arrays.asList(slideAtomsSet2.getSlideRecords()));
                        }
                    }
                }
                if (!arrayList4.isEmpty()) {
                    notesSlideListWithText.setSlideAtomsSets((SlideListWithText.SlideAtomsSet[]) arrayList4.toArray(new SlideListWithText.SlideAtomsSet[0]));
                    notesSlideListWithText.setChildRecord((Record[]) arrayList3.toArray(new Record[0]));
                }
            }
            if (arrayList4.isEmpty()) {
                this._documentRecord.removeSlideListWithText(notesSlideListWithText);
            }
        }
        return remove;
    }

    public void reorderSlide(int i, int i2) {
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException("Old and new slide numbers must be greater than 0");
        }
        if (i > this._slides.size() || i2 > this._slides.size()) {
            throw new IllegalArgumentException("Old and new slide numbers must not exceed the number of slides (" + this._slides.size() + MotionUtils.f31762d);
        }
        SlideListWithText slideSlideListWithText = this._documentRecord.getSlideSlideListWithText();
        if (slideSlideListWithText == null) {
            throw new IllegalStateException("Slide record not defined.");
        }
        SlideListWithText.SlideAtomsSet[] slideAtomsSets = slideSlideListWithText.getSlideAtomsSets();
        int i3 = i - 1;
        SlideListWithText.SlideAtomsSet slideAtomsSet = slideAtomsSets[i3];
        int i4 = i2 - 1;
        slideAtomsSets[i3] = slideAtomsSets[i4];
        slideAtomsSets[i4] = slideAtomsSet;
        Collections.swap(this._slides, i3, i4);
        this._slides.get(i4).setSlideNumber(i2);
        this._slides.get(i3).setSlideNumber(i);
        ArrayList arrayList = new ArrayList();
        for (SlideListWithText.SlideAtomsSet slideAtomsSet2 : slideAtomsSets) {
            arrayList.add(slideAtomsSet2.getSlidePersistAtom());
            arrayList.addAll(Arrays.asList(slideAtomsSet2.getSlideRecords()));
        }
        slideSlideListWithText.setChildRecord((Record[]) arrayList.toArray(new Record[0]));
    }

    @Override // org.apache.poi.POIDocument
    public void replaceDirectory(DirectoryNode directoryNode) throws IOException {
        getSlideShowImpl().replaceDirectoryImpl(directoryNode);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public void setPageSize(Dimension dimension) {
        DocumentAtom documentAtom = this._documentRecord.getDocumentAtom();
        documentAtom.setSlideSizeX(Units.pointsToMaster(dimension.width));
        documentAtom.setSlideSizeY(Units.pointsToMaster(dimension.height));
    }

    @Override // org.apache.poi.POIDocument
    public void validateInPlaceWritePossible() throws IllegalStateException {
        getSlideShowImpl().validateInPlaceWritePossibleImpl();
    }

    @Override // org.apache.poi.POIDocument
    public void write(OutputStream outputStream) throws IOException {
        Iterator<? extends org.apache.poi.sl.usermodel.Slide<HSLFShape, HSLFTextParagraph>> it2 = getSlides().iterator();
        while (it2.hasNext()) {
            writeDirtyParagraphs((HSLFSlide) it2.next());
        }
        Iterator<? extends MasterSheet<HSLFShape, HSLFTextParagraph>> it3 = getSlideMasters().iterator();
        while (it3.hasNext()) {
            HSLFSlideMaster hSLFSlideMaster = (HSLFSlideMaster) it3.next();
            Iterator<List<HSLFTextParagraph>> it4 = hSLFSlideMaster.getTextParagraphs().iterator();
            boolean z = false;
            while (it4.hasNext()) {
                Iterator<HSLFTextParagraph> it5 = it4.next().iterator();
                while (it5.hasNext()) {
                    z |= it5.next().isDirty();
                }
            }
            if (z) {
                for (TxMasterStyleAtom txMasterStyleAtom : hSLFSlideMaster.getTxMasterStyleAtoms()) {
                    if (txMasterStyleAtom != null) {
                        txMasterStyleAtom.updateStyles();
                    }
                }
            }
        }
        this._hslfSlideShow.write(outputStream);
    }

    @Override // org.apache.poi.POIDocument
    public void writeProperties() throws IOException {
        getSlideShowImpl().writePropertiesImpl();
    }

    public HSLFFontInfo addFont(FontInfo fontInfo) {
        return getDocumentRecord().getEnvironment().getFontCollection().addFont(fontInfo);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    /* renamed from: createSlide, reason: merged with bridge method [inline-methods] */
    public org.apache.poi.sl.usermodel.Slide<HSLFShape, HSLFTextParagraph> createSlide2() {
        SlideListWithText slideSlideListWithText = this._documentRecord.getSlideSlideListWithText();
        if (slideSlideListWithText == null) {
            slideSlideListWithText = new SlideListWithText();
            slideSlideListWithText.setInstance(0);
            this._documentRecord.addSlideListWithText(slideSlideListWithText);
        }
        SlidePersistAtom slidePersistAtom = null;
        for (SlideListWithText.SlideAtomsSet slideAtomsSet : slideSlideListWithText.getSlideAtomsSets()) {
            SlidePersistAtom slidePersistAtom2 = slideAtomsSet.getSlidePersistAtom();
            if (slidePersistAtom2.getSlideIdentifier() >= 0) {
                if (slidePersistAtom == null) {
                    slidePersistAtom = slidePersistAtom2;
                }
                if (slidePersistAtom.getSlideIdentifier() < slidePersistAtom2.getSlideIdentifier()) {
                    slidePersistAtom = slidePersistAtom2;
                }
            }
        }
        SlidePersistAtom slidePersistAtom3 = new SlidePersistAtom();
        slidePersistAtom3.setSlideIdentifier(slidePersistAtom == null ? 256 : slidePersistAtom.getSlideIdentifier() + 1);
        slideSlideListWithText.addSlidePersistAtom(slidePersistAtom3);
        HSLFSlide hSLFSlide = new HSLFSlide(slidePersistAtom3.getSlideIdentifier(), slidePersistAtom3.getRefID(), this._slides.size() + 1);
        hSLFSlide.setSlideShow(this);
        hSLFSlide.onCreate();
        this._slides.add(hSLFSlide);
        LOG.atInfo().log("Added slide {} with ref {} and identifier {}", Unbox.box(this._slides.size()), Unbox.box(slidePersistAtom3.getRefID()), Unbox.box(slidePersistAtom3.getSlideIdentifier()));
        Slide slideRecord = hSLFSlide.getSlideRecord();
        int addPersistentObject = addPersistentObject(slideRecord);
        slidePersistAtom3.setRefID(addPersistentObject);
        slideRecord.setSheetId(addPersistentObject);
        hSLFSlide.setMasterSheet(this._masters.get(0));
        return hSLFSlide;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public HSLFPictureData findPictureData(byte[] bArr) {
        byte[] checksum = HSLFPictureData.getChecksum(bArr);
        for (HSLFPictureData hSLFPictureData : getPictureData()) {
            if (Arrays.equals(hSLFPictureData.getUID(), checksum)) {
                return hSLFPictureData;
            }
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public HPSFPropertiesExtractor getMetadataTextExtractor() {
        return new HPSFPropertiesExtractor(getSlideShowImpl());
    }

    @Override // org.apache.poi.POIDocument
    public PropertySet getPropertySet(String str, EncryptionInfo encryptionInfo) throws IOException {
        return getSlideShowImpl().getPropertySetImpl(str, encryptionInfo);
    }

    @Override // org.apache.poi.POIDocument
    public void writeProperties(POIFSFileSystem pOIFSFileSystem) throws IOException {
        getSlideShowImpl().writeProperties(pOIFSFileSystem);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public HSLFFontInfo addFont(InputStream inputStream) throws IOException {
        Document documentRecord = getDocumentRecord();
        documentRecord.getDocumentAtom().setSaveWithFonts(true);
        return documentRecord.getEnvironment().getFontCollection().addFont(inputStream);
    }

    @Override // org.apache.poi.POIDocument
    public void writeProperties(POIFSFileSystem pOIFSFileSystem, List<String> list) throws IOException {
        getSlideShowImpl().writePropertiesImpl(pOIFSFileSystem, list);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public HSLFPictureData addPicture(byte[] bArr, PictureData.PictureType pictureType) throws IOException {
        if (pictureType != null && pictureType.nativeId != -1) {
            HSLFPictureData findPictureData = findPictureData(bArr);
            if (findPictureData != null) {
                return findPictureData;
            }
            EscherContainerRecord dggContainer = this._documentRecord.getPPDrawingGroup().getDggContainer();
            short s = EscherContainerRecord.BSTORE_CONTAINER;
            EscherContainerRecord escherContainerRecord = (EscherContainerRecord) HSLFShape.getEscherChild(dggContainer, s);
            if (escherContainerRecord == null) {
                escherContainerRecord = new EscherContainerRecord();
                escherContainerRecord.setRecordId(s);
                dggContainer.addChildBefore(escherContainerRecord, EscherOptRecord.RECORD_ID);
            }
            EscherBSERecord addNewEscherBseRecord = addNewEscherBseRecord(escherContainerRecord, pictureType, bArr, 0);
            HSLFPictureData createFromImageData = HSLFPictureData.createFromImageData(pictureType, escherContainerRecord, addNewEscherBseRecord, bArr);
            addNewEscherBseRecord.setOffset(this._hslfSlideShow.addPicture(createFromImageData));
            return createFromImageData;
        }
        throw new IllegalArgumentException("Unsupported picture format: " + pictureType);
    }

    @Override // org.apache.poi.POIDocument
    public void write() throws IOException {
        getSlideShowImpl().write();
    }

    @Override // org.apache.poi.POIDocument
    public void write(File file) throws IOException {
        getSlideShowImpl().write(file);
    }

    public HSLFSlideShow() {
        this(HSLFSlideShowImpl.create());
    }

    public HSLFSlideShow(InputStream inputStream) throws IOException {
        this(new HSLFSlideShowImpl(inputStream));
    }

    public HSLFSlideShow(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(new HSLFSlideShowImpl(pOIFSFileSystem));
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public HSLFPictureData addPicture(InputStream inputStream, PictureData.PictureType pictureType) throws IOException {
        if (pictureType != null && pictureType.nativeId != -1) {
            return addPicture(IOUtils.toByteArray(inputStream), pictureType);
        }
        throw new IllegalArgumentException("Unsupported picture format: " + pictureType);
    }

    public HSLFSlideShow(DirectoryNode directoryNode) throws IOException {
        this(new HSLFSlideShowImpl(directoryNode));
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public HSLFPictureData addPicture(File file, PictureData.PictureType pictureType) throws IOException {
        if (pictureType != null && pictureType.nativeId != -1) {
            byte[] safelyAllocate = IOUtils.safelyAllocate(file.length(), MAX_RECORD_LENGTH);
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                IOUtils.readFully(fileInputStream, safelyAllocate);
                fileInputStream.close();
                return addPicture(safelyAllocate, pictureType);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        throw new IllegalArgumentException("Unsupported picture format: " + pictureType);
    }
}
