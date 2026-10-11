package org.apache.poi.xslf.usermodel;

import java.awt.Dimension;
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
import java.util.OptionalLong;
import java.util.function.Consumer;
import java.util.function.ToLongFunction;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.ooxml.extractor.POIXMLPropertiesTextExtractor;
import org.apache.poi.ooxml.util.PackageHelper;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.Slide;
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Units;
import org.apache.poi.xslf.usermodel.XMLSlideShow;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPresentation;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideIdListEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterIdListEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideSize;
import org.openxmlformats.schemas.presentationml.x2006.main.PresentationDocument;

/* loaded from: classes13.dex */
public class XMLSlideShow extends POIXMLDocument implements SlideShow<XSLFShape, XSLFTextParagraph> {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private final List<XSLFChart> _charts;
    private XSLFCommentAuthors _commentAuthors;
    private final List<XSLFSlideMaster> _masters;
    private XSLFNotesMaster _notesMaster;
    private final List<XSLFPictureData> _pictures;
    private CTPresentation _presentation;
    private final List<XSLFSlide> _slides;
    private XSLFTableStyles _tableStyles;
    private static final Logger LOG = LogManager.getLogger((Class<?>) XMLSlideShow.class);
    private static int MAX_RECORD_LENGTH = 1000000;
    private static final Pattern GET_ALL_EMBEDDED_PARTS_PATTERN = Pattern.compile("/ppt/embeddings/.*?");
    private static final Pattern GET_PICTURE_DATA_PATTERN = Pattern.compile("/ppt/media/.*?");

    public XMLSlideShow() {
        this(empty());
    }

    private XSLFNotes createNotesSlide(XSLFSlide xSLFSlide) {
        if (this._notesMaster == null) {
            createNotesMaster();
        }
        XSLFRelation xSLFRelation = XSLFRelation.NOTES;
        XSLFNotes xSLFNotes = (XSLFNotes) createRelationship(xSLFRelation, XSLFFactory.getInstance(), findNextAvailableFileNameIndex(xSLFRelation));
        xSLFSlide.addRelation(null, xSLFRelation, xSLFNotes);
        xSLFNotes.addRelation(null, XSLFRelation.NOTES_MASTER, this._notesMaster);
        xSLFNotes.addRelation(null, XSLFRelation.SLIDE, xSLFSlide);
        xSLFNotes.importContent(this._notesMaster);
        return xSLFNotes;
    }

    public static OPCPackage empty() {
        InputStream resourceAsStream = XMLSlideShow.class.getResourceAsStream("empty.pptx");
        try {
            if (resourceAsStream == null) {
                throw new POIXMLException("Missing resource 'empty.pptx'");
            }
            try {
                return OPCPackage.open(resourceAsStream);
            } catch (Exception e) {
                throw new POIXMLException(e);
            }
        } finally {
            IOUtils.closeQuietly(resourceAsStream);
        }
    }

    private int findNextAvailableFileNameIndex(XSLFRelation xSLFRelation) {
        try {
            return getPackage().getUnusedPartIndex(xSLFRelation.getDefaultFileName());
        } catch (InvalidFormatException e) {
            throw new IllegalStateException(e);
        }
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getPictureData$2(PackagePart packagePart) {
        XSLFPictureData xSLFPictureData = new XSLFPictureData(packagePart);
        xSLFPictureData.setIndex(this._pictures.size());
        this._pictures.add(xSLFPictureData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$onDocumentRead$0(Map map, CTSlideMasterIdListEntry cTSlideMasterIdListEntry) {
        this._masters.add(map.get(cTSlideMasterIdListEntry.getId2()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDocumentRead$1(Map map, CTSlideIdListEntry cTSlideIdListEntry) {
        XSLFSlide xSLFSlide = (XSLFSlide) map.get(cTSlideIdListEntry.getId2());
        if (xSLFSlide == null) {
            LOG.atWarn().log("Slide with r:id {} was defined, but didn't exist in package, skipping", Unbox.box(cTSlideIdListEntry.getId()));
        } else {
            this._slides.add(xSLFSlide);
        }
    }

    private void removePictureRelations(XSLFSlide xSLFSlide, XSLFPictureData xSLFPictureData) {
        removePictureRelations(xSLFSlide, xSLFSlide, xSLFPictureData);
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this._presentation.save(outputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
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

    public XSLFChart createChart(XSLFSlide xSLFSlide) {
        XSLFChart createChart = createChart();
        xSLFSlide.addRelation(null, XSLFRelation.CHART, createChart);
        return createChart;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public MasterSheet<XSLFShape, XSLFTextParagraph> createMasterSheet() throws IOException {
        throw new UnsupportedOperationException();
    }

    public void createNotesMaster() {
        int i = 1;
        POIXMLDocumentPart.RelationPart createRelationship = createRelationship(XSLFRelation.NOTES_MASTER, XSLFFactory.getInstance(), 1, false);
        this._notesMaster = (XSLFNotesMaster) createRelationship.getDocumentPart();
        this._presentation.addNewNotesMasterIdLst().addNewNotesMasterId().setId(createRelationship.getRelationship().getId());
        ArrayList arrayList = new ArrayList();
        for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
            if (pOIXMLDocumentPart instanceof XSLFTheme) {
                arrayList.add(XSLFRelation.THEME.getFileNameIndex(pOIXMLDocumentPart));
            }
        }
        if (!arrayList.isEmpty()) {
            int i2 = 1;
            boolean z = false;
            for (int i3 = 1; i3 <= arrayList.size(); i3++) {
                if (!arrayList.contains(Integer.valueOf(i3))) {
                    i2 = i3;
                    z = true;
                }
            }
            i = !z ? 1 + arrayList.size() : i2;
        }
        XSLFRelation xSLFRelation = XSLFRelation.THEME;
        XSLFTheme xSLFTheme = (XSLFTheme) createRelationship(xSLFRelation, XSLFFactory.getInstance(), i);
        xSLFTheme.importTheme(((XSLFSlide) getSlides().get(0)).getTheme());
        this._notesMaster.addRelation(null, xSLFRelation, xSLFTheme);
    }

    public XSLFSlideLayout findLayout(String str) {
        Iterator<? extends MasterSheet<XSLFShape, XSLFTextParagraph>> it2 = getSlideMasters().iterator();
        while (it2.hasNext()) {
            XSLFSlideLayout layout = ((XSLFSlideMaster) it2.next()).getLayout(str);
            if (layout != null) {
                return layout;
            }
        }
        return null;
    }

    @Override // org.apache.poi.ooxml.POIXMLDocument
    public List<PackagePart> getAllEmbeddedParts() {
        return Collections.unmodifiableList(getPackage().getPartsByName(GET_ALL_EMBEDDED_PARTS_PATTERN));
    }

    @Internal
    public CTPresentation getCTPresentation() {
        return this._presentation;
    }

    public List<XSLFChart> getCharts() {
        return Collections.unmodifiableList(this._charts);
    }

    public XSLFCommentAuthors getCommentAuthors() {
        return this._commentAuthors;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public List<XSLFFontInfo> getFonts() {
        return XSLFFontInfo.getFonts(this);
    }

    public XSLFNotesMaster getNotesMaster() {
        return this._notesMaster;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.xslf.usermodel.XSLFNotes] */
    public XSLFNotes getNotesSlide(XSLFSlide xSLFSlide) {
        ?? notes2 = xSLFSlide.getNotes2();
        return notes2 == 0 ? createNotesSlide(xSLFSlide) : notes2;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public Dimension getPageSize() {
        CTSlideSize sldSz = this._presentation.getSldSz();
        return new Dimension((int) Units.toPoints(sldSz.getCx()), (int) Units.toPoints(sldSz.getCy()));
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public Object getPersistDocument() {
        return this;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public List<XSLFPictureData> getPictureData() {
        if (this._pictures.isEmpty()) {
            getPackage().getPartsByName(GET_PICTURE_DATA_PATTERN).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.wlo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    XMLSlideShow.this.lambda$getPictureData$2((PackagePart) obj);
                }
            });
        }
        return Collections.unmodifiableList(this._pictures);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public List<? extends MasterSheet<XSLFShape, XSLFTextParagraph>> getSlideMasters() {
        return this._masters;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public List<? extends Slide<XSLFShape, XSLFTextParagraph>> getSlides() {
        return this._slides;
    }

    public XSLFTableStyles getTableStyles() {
        return this._tableStyles;
    }

    public String importBlip(String str, POIXMLDocumentPart pOIXMLDocumentPart, POIXMLDocumentPart pOIXMLDocumentPart2) {
        OPCPackage oPCPackage = pOIXMLDocumentPart2.getPackagePart().getPackage();
        if (oPCPackage != getPackage()) {
            throw new IllegalStateException("the target document part is not a child of this package");
        }
        POIXMLDocumentPart documentPart = pOIXMLDocumentPart.getRelationPartById(str).getDocumentPart();
        if (documentPart instanceof XSLFPictureData) {
            XSLFPictureData xSLFPictureData = (XSLFPictureData) documentPart;
            if (oPCPackage != pOIXMLDocumentPart.getPackagePart().getPackage()) {
                xSLFPictureData = addPicture(xSLFPictureData.getData(), xSLFPictureData.getType());
            }
            return pOIXMLDocumentPart2.addRelation(null, XSLFRelation.IMAGES, xSLFPictureData).getRelationship().getId();
        }
        throw new IllegalStateException("cannot import blip " + str + " - its document part is not XSLFPictureData");
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        try {
            InputStream inputStream = getCorePart().getInputStream();
            try {
                this._presentation = PresentationDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getPresentation();
                if (inputStream != null) {
                    inputStream.close();
                }
                final HashMap hashMap = new HashMap();
                final HashMap hashMap2 = new HashMap();
                HashMap hashMap3 = new HashMap();
                for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
                    POIXMLDocumentPart documentPart = relationPart.getDocumentPart();
                    if (documentPart instanceof XSLFSlide) {
                        hashMap2.put(relationPart.getRelationship().getId(), (XSLFSlide) documentPart);
                        for (POIXMLDocumentPart pOIXMLDocumentPart : documentPart.getRelations()) {
                            if (pOIXMLDocumentPart instanceof XSLFChart) {
                                hashMap3.put(pOIXMLDocumentPart.getPackagePart().getPartName().getName(), (XSLFChart) pOIXMLDocumentPart);
                            }
                        }
                    } else if (documentPart instanceof XSLFSlideMaster) {
                        hashMap.put(getRelationId(documentPart), (XSLFSlideMaster) documentPart);
                    } else if (documentPart instanceof XSLFTableStyles) {
                        this._tableStyles = (XSLFTableStyles) documentPart;
                    } else if (documentPart instanceof XSLFNotesMaster) {
                        this._notesMaster = (XSLFNotesMaster) documentPart;
                    } else if (documentPart instanceof XSLFCommentAuthors) {
                        this._commentAuthors = (XSLFCommentAuthors) documentPart;
                    }
                }
                this._charts.clear();
                this._charts.addAll(hashMap3.values());
                this._masters.clear();
                if (this._presentation.isSetSldMasterIdLst()) {
                    this._presentation.getSldMasterIdLst().getSldMasterIdList().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.ulo
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            XMLSlideShow.this.lambda$onDocumentRead$0(hashMap, (CTSlideMasterIdListEntry) obj);
                        }
                    });
                }
                this._slides.clear();
                if (this._presentation.isSetSldIdLst()) {
                    this._presentation.getSldIdLst().getSldIdList().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.vlo
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            XMLSlideShow.this.lambda$onDocumentRead$1(hashMap2, (CTSlideIdListEntry) obj);
                        }
                    });
                }
            } finally {
            }
        } catch (XmlException e) {
            throw new POIXMLException(e);
        }
    }

    public XSLFSlide removeSlide(int i) {
        XSLFSlide remove = this._slides.remove(i);
        removeRelation(remove);
        this._presentation.getSldIdLst().removeSldId(i);
        for (POIXMLDocumentPart pOIXMLDocumentPart : remove.getRelations()) {
            if (pOIXMLDocumentPart instanceof XSLFChart) {
                XSLFChart xSLFChart = (XSLFChart) pOIXMLDocumentPart;
                remove.removeChartRelation(xSLFChart);
                this._charts.remove(xSLFChart);
            } else if (pOIXMLDocumentPart instanceof XSLFSlideLayout) {
                remove.removeLayoutRelation((XSLFSlideLayout) pOIXMLDocumentPart);
            } else if (pOIXMLDocumentPart instanceof XSLFNotes) {
                removeRelation(remove.removeNotes(this._notesMaster));
            } else if (pOIXMLDocumentPart instanceof XSLFPictureData) {
                XSLFPictureData xSLFPictureData = (XSLFPictureData) pOIXMLDocumentPart;
                removePictureRelations(remove, xSLFPictureData);
                this._pictures.remove(xSLFPictureData);
            }
        }
        return remove;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public void setPageSize(Dimension dimension) {
        CTSlideSize newInstance = CTSlideSize.Factory.newInstance();
        newInstance.setCx(Units.toEMU(dimension.getWidth()));
        newInstance.setCy(Units.toEMU(dimension.getHeight()));
        this._presentation.setSldSz(newInstance);
    }

    public void setSlideOrder(XSLFSlide xSLFSlide, int i) {
        int indexOf = this._slides.indexOf(xSLFSlide);
        if (indexOf == -1) {
            throw new IllegalArgumentException("Slide not found");
        }
        if (indexOf == i) {
            return;
        }
        List<XSLFSlide> list = this._slides;
        list.add(i, list.remove(indexOf));
        CTSlideIdList sldIdLst = this._presentation.getSldIdLst();
        CTSlideIdListEntry[] sldIdArray = sldIdLst.getSldIdArray();
        CTSlideIdListEntry cTSlideIdListEntry = sldIdArray[indexOf];
        if (indexOf < i) {
            System.arraycopy(sldIdArray, indexOf + 1, sldIdArray, indexOf, i - indexOf);
        } else {
            System.arraycopy(sldIdArray, i, sldIdArray, i + 1, indexOf - i);
        }
        sldIdArray[i] = cTSlideIdListEntry;
        sldIdLst.setSldIdArray(sldIdArray);
    }

    public XMLSlideShow(OPCPackage oPCPackage) {
        super(oPCPackage);
        this._slides = new ArrayList();
        this._masters = new ArrayList();
        this._pictures = new ArrayList();
        this._charts = new ArrayList();
        try {
            if (getCorePart().getContentType().equals(XSLFRelation.THEME_MANAGER.getContentType())) {
                rebase(getPackage());
            }
            load(XSLFFactory.getInstance());
        } catch (Exception e) {
            throw new POIXMLException(e);
        }
    }

    private void removePictureRelations(XSLFSlide xSLFSlide, XSLFShapeContainer xSLFShapeContainer, XSLFPictureData xSLFPictureData) {
        for (XSLFShape xSLFShape : xSLFShapeContainer.getShapes()) {
            if (xSLFShape instanceof XSLFGroupShape) {
                removePictureRelations(xSLFSlide, (XSLFGroupShape) xSLFShape, xSLFPictureData);
            }
            if (xSLFShape instanceof XSLFPictureShape) {
                XSLFPictureShape xSLFPictureShape = (XSLFPictureShape) xSLFShape;
                if (xSLFPictureShape.getPictureData() == xSLFPictureData) {
                    xSLFSlide.removePictureRelation(xSLFPictureShape);
                }
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public XSLFFontInfo addFont(InputStream inputStream) throws IOException {
        return XSLFFontInfo.addFontToSlideShow(this, inputStream);
    }

    public XSLFSlide createSlide(XSLFSlideLayout xSLFSlideLayout) {
        CTSlideIdList sldIdLst = this._presentation.isSetSldIdLst() ? this._presentation.getSldIdLst() : this._presentation.addNewSldIdLst();
        OptionalLong max = Stream.of((Object[]) sldIdLst.getSldIdArray()).mapToLong(new ToLongFunction() { // from class: com.sunia.HTREnginev2.xlo
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((CTSlideIdListEntry) obj).getId();
            }
        }).max();
        XSLFRelation xSLFRelation = XSLFRelation.SLIDE;
        int max2 = (int) (Math.max(max.orElse(0L), 255L) + 1);
        POIXMLDocumentPart.RelationPart createRelationship = createRelationship(xSLFRelation, XSLFFactory.getInstance(), findNextAvailableFileNameIndex(xSLFRelation), false);
        XSLFSlide xSLFSlide = (XSLFSlide) createRelationship.getDocumentPart();
        CTSlideIdListEntry addNewSldId = sldIdLst.addNewSldId();
        addNewSldId.setId(max2);
        addNewSldId.setId2(createRelationship.getRelationship().getId());
        xSLFSlideLayout.copyLayout(xSLFSlide);
        xSLFSlide.getPackagePart().clearRelationships();
        xSLFSlide.addRelation(null, XSLFRelation.SLIDE_LAYOUT, xSLFSlideLayout);
        this._slides.add(xSLFSlide);
        return xSLFSlide;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public XSLFPictureData findPictureData(byte[] bArr) {
        long calculateChecksum = IOUtils.calculateChecksum(bArr);
        byte[] bArr2 = new byte[8];
        LittleEndian.putLong(bArr2, 0, calculateChecksum);
        for (XSLFPictureData xSLFPictureData : getPictureData()) {
            if (Arrays.equals(xSLFPictureData.getChecksum(), bArr2)) {
                return xSLFPictureData;
            }
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public POIXMLPropertiesTextExtractor getMetadataTextExtractor() {
        return new POIXMLPropertiesTextExtractor(this);
    }

    public XSLFChart createChart() {
        XSLFRelation xSLFRelation = XSLFRelation.CHART;
        int findNextAvailableFileNameIndex = findNextAvailableFileNameIndex(xSLFRelation);
        XSLFChart xSLFChart = (XSLFChart) createRelationship(xSLFRelation, XSLFFactory.getInstance(), findNextAvailableFileNameIndex, true).getDocumentPart();
        xSLFChart.setChartIndex(findNextAvailableFileNameIndex);
        this._charts.add(xSLFChart);
        return xSLFChart;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public XSLFPictureData addPicture(byte[] bArr, PictureData.PictureType pictureType) {
        int size;
        XSLFPictureData findPictureData = findPictureData(bArr);
        if (findPictureData != null) {
            return findPictureData;
        }
        XSLFRelation relationForType = XSLFPictureData.getRelationForType(pictureType);
        if (relationForType != null) {
            try {
                size = getPackage().getUnusedPartIndex("/ppt/media/image#\\..+");
            } catch (InvalidFormatException unused) {
                size = this._pictures.size() + 1;
            }
            XSLFPictureData xSLFPictureData = (XSLFPictureData) createRelationship(relationForType, XSLFFactory.getInstance(), size, true).getDocumentPart();
            xSLFPictureData.setIndex(this._pictures.size());
            this._pictures.add(xSLFPictureData);
            try {
                OutputStream outputStream = xSLFPictureData.getPackagePart().getOutputStream();
                try {
                    outputStream.write(bArr);
                    outputStream.close();
                    return xSLFPictureData;
                } finally {
                }
            } catch (IOException e) {
                throw new POIXMLException(e);
            }
        } else {
            throw new IllegalArgumentException("Picture type " + pictureType + " is not supported.");
        }
    }

    public XMLSlideShow(InputStream inputStream) throws IOException {
        this(PackageHelper.open(inputStream));
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public XSLFPictureData addPicture(InputStream inputStream, PictureData.PictureType pictureType) throws IOException {
        return addPicture(IOUtils.toByteArrayWithMaxLength(inputStream, XSLFPictureData.getMaxImageSize()), pictureType);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    /* renamed from: createSlide, reason: avoid collision after fix types in other method */
    public Slide<XSLFShape, XSLFTextParagraph> createSlide2() {
        XSLFSlideMaster xSLFSlideMaster = this._masters.get(0);
        XSLFSlideLayout layout = xSLFSlideMaster.getLayout(SlideLayout.BLANK);
        if (layout == null) {
            LOG.atWarn().log("Blank layout was not found - defaulting to first slide layout in master");
            XSLFSlideLayout[] slideLayouts = xSLFSlideMaster.getSlideLayouts();
            if (slideLayouts.length != 0) {
                layout = slideLayouts[0];
            } else {
                throw new POIXMLException("SlideMaster must contain a SlideLayout.");
            }
        }
        return createSlide(layout);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShow
    public XSLFPictureData addPicture(File file, PictureData.PictureType pictureType) throws IOException {
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
}
