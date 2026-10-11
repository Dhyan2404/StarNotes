package org.apache.poi.hssf.model;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.security.AccessControlException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherBoolProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherDgRecord;
import org.apache.poi.ddf.EscherDggRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRGBProperty;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.ddf.EscherSplitMenuColorsRecord;
import org.apache.poi.hssf.record.BOFRecord;
import org.apache.poi.hssf.record.BackupRecord;
import org.apache.poi.hssf.record.BookBoolRecord;
import org.apache.poi.hssf.record.BoundSheetRecord;
import org.apache.poi.hssf.record.CodepageRecord;
import org.apache.poi.hssf.record.CountryRecord;
import org.apache.poi.hssf.record.DSFRecord;
import org.apache.poi.hssf.record.DateWindow1904Record;
import org.apache.poi.hssf.record.DrawingGroupRecord;
import org.apache.poi.hssf.record.EOFRecord;
import org.apache.poi.hssf.record.EscherAggregate;
import org.apache.poi.hssf.record.ExtSSTRecord;
import org.apache.poi.hssf.record.ExtendedFormatRecord;
import org.apache.poi.hssf.record.FileSharingRecord;
import org.apache.poi.hssf.record.FnGroupCountRecord;
import org.apache.poi.hssf.record.FontRecord;
import org.apache.poi.hssf.record.FormatRecord;
import org.apache.poi.hssf.record.HideObjRecord;
import org.apache.poi.hssf.record.HyperlinkRecord;
import org.apache.poi.hssf.record.InterfaceEndRecord;
import org.apache.poi.hssf.record.InterfaceHdrRecord;
import org.apache.poi.hssf.record.MMSRecord;
import org.apache.poi.hssf.record.NameCommentRecord;
import org.apache.poi.hssf.record.NameRecord;
import org.apache.poi.hssf.record.PaletteRecord;
import org.apache.poi.hssf.record.PasswordRecord;
import org.apache.poi.hssf.record.PasswordRev4Record;
import org.apache.poi.hssf.record.PrecisionRecord;
import org.apache.poi.hssf.record.ProtectRecord;
import org.apache.poi.hssf.record.ProtectionRev4Record;
import org.apache.poi.hssf.record.RecalcIdRecord;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.RefreshAllRecord;
import org.apache.poi.hssf.record.SSTRecord;
import org.apache.poi.hssf.record.StyleRecord;
import org.apache.poi.hssf.record.TabIdRecord;
import org.apache.poi.hssf.record.UseSelFSRecord;
import org.apache.poi.hssf.record.WindowOneRecord;
import org.apache.poi.hssf.record.WindowProtectRecord;
import org.apache.poi.hssf.record.WriteAccessRecord;
import org.apache.poi.hssf.record.WriteProtectRecord;
import org.apache.poi.hssf.record.common.UnicodeString;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFShape;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.ss.formula.EvaluationWorkbook;
import org.apache.poi.ss.formula.FormulaShifter;
import org.apache.poi.ss.formula.ptg.Area3DPtg;
import org.apache.poi.ss.formula.ptg.NameXPtg;
import org.apache.poi.ss.formula.ptg.OperandPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.Ref3DPtg;
import org.apache.poi.ss.formula.udf.UDFFinder;
import org.apache.poi.ss.usermodel.BuiltinFormats;
import org.apache.poi.ss.usermodel.SheetVisibility;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.RecordFormatException;

@Internal
/* loaded from: classes12.dex */
public final class InternalWorkbook {
    private static final short CODEPAGE = 1200;
    private static final int MAX_SENSITIVE_SHEET_NAME_LEN = 31;
    public static final String OLD_WORKBOOK_DIR_ENTRY_NAME = "Book";
    private DrawingManager2 drawingManager;
    private FileSharingRecord fileShare;
    private LinkTable linkTable;
    protected SSTRecord sst;
    private WindowOneRecord windowOne;
    private WriteAccessRecord writeAccess;
    private WriteProtectRecord writeProtect;
    public static final List<String> WORKBOOK_DIR_ENTRY_NAMES = Collections.unmodifiableList(Arrays.asList("Workbook", "WORKBOOK", "BOOK", "WorkBook"));
    private static final Logger LOG = LogManager.getLogger((Class<?>) InternalWorkbook.class);
    private final WorkbookRecordList records = new WorkbookRecordList();
    private final List<BoundSheetRecord> boundsheets = new ArrayList();
    private final List<FormatRecord> formats = new ArrayList();
    private final List<HyperlinkRecord> hyperlinks = new ArrayList();
    private int numxfs = 0;
    private int numfonts = 0;
    private int maxformatid = -1;
    private boolean uses1904datewindowing = false;
    private final List<EscherBSERecord> escherBSERecords = new ArrayList();
    private final Map<String, NameCommentRecord> commentRecords = new LinkedHashMap();

    private InternalWorkbook() {
    }

    private void checkSheets(int i) {
        if (this.boundsheets.size() <= i) {
            if (this.boundsheets.size() + 1 <= i) {
                throw new IllegalStateException("Sheet number out of bounds!");
            }
            BoundSheetRecord createBoundSheet = createBoundSheet(i);
            WorkbookRecordList workbookRecordList = this.records;
            workbookRecordList.add(workbookRecordList.getBspos() + 1, createBoundSheet);
            WorkbookRecordList workbookRecordList2 = this.records;
            workbookRecordList2.setBspos(workbookRecordList2.getBspos() + 1);
            this.boundsheets.add(createBoundSheet);
            getOrCreateLinkTable().checkExternSheet(i);
            fixTabIdRecord();
        }
    }

    private static BOFRecord createBOF() {
        BOFRecord bOFRecord = new BOFRecord();
        bOFRecord.setVersion(1536);
        bOFRecord.setType(5);
        bOFRecord.setBuild(BOFRecord.BUILD);
        bOFRecord.setBuildYear(BOFRecord.BUILD_YEAR);
        bOFRecord.setHistoryBitMask(65);
        bOFRecord.setRequiredVersion(6);
        return bOFRecord;
    }

    private static BackupRecord createBackup() {
        BackupRecord backupRecord = new BackupRecord();
        backupRecord.setBackup((short) 0);
        return backupRecord;
    }

    private static BookBoolRecord createBookBool() {
        BookBoolRecord bookBoolRecord = new BookBoolRecord();
        bookBoolRecord.setSaveLinkValues((short) 0);
        return bookBoolRecord;
    }

    private static BoundSheetRecord createBoundSheet(int i) {
        return new BoundSheetRecord("Sheet" + (i + 1));
    }

    private static CodepageRecord createCodepage() {
        CodepageRecord codepageRecord = new CodepageRecord();
        codepageRecord.setCodepage((short) 1200);
        return codepageRecord;
    }

    private static CountryRecord createCountry() {
        CountryRecord countryRecord = new CountryRecord();
        countryRecord.setDefaultCountry((short) 1);
        if ("ru_RU".equals(LocaleUtil.getUserLocale().toString())) {
            countryRecord.setCurrentCountry((short) 7);
        } else {
            countryRecord.setCurrentCountry((short) 1);
        }
        return countryRecord;
    }

    private static DSFRecord createDSF() {
        return new DSFRecord(false);
    }

    private static DateWindow1904Record createDateWindow1904() {
        DateWindow1904Record dateWindow1904Record = new DateWindow1904Record();
        dateWindow1904Record.setWindowing((short) 0);
        return dateWindow1904Record;
    }

    private static ExtendedFormatRecord createExtendedFormat(int i) {
        switch (i) {
            case 0:
                return createExtendedFormat(0, 0, -11, 0);
            case 1:
            case 2:
                return createExtendedFormat(1, 0, -11, -3072);
            case 3:
            case 4:
                return createExtendedFormat(2, 0, -11, -3072);
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return createExtendedFormat(0, 0, -11, -3072);
            case 15:
                return createExtendedFormat(0, 0, 1, 0);
            case 16:
                return createExtendedFormat(1, 43, -11, -2048);
            case 17:
                return createExtendedFormat(1, 41, -11, -2048);
            case 18:
                return createExtendedFormat(1, 44, -11, -2048);
            case 19:
                return createExtendedFormat(1, 42, -11, -2048);
            case 20:
                return createExtendedFormat(1, 9, -11, -2048);
            case 21:
                return createExtendedFormat(5, 0, 1, 2048);
            case 22:
                return createExtendedFormat(6, 0, 1, 23552);
            case 23:
                return createExtendedFormat(0, 49, 1, 23552);
            case 24:
                return createExtendedFormat(0, 8, 1, 23552);
            case 25:
                return createExtendedFormat(6, 8, 1, 23552);
            default:
                throw new IllegalStateException("Unrecognized format id: " + i);
        }
    }

    private static ExtSSTRecord createExtendedSST() {
        ExtSSTRecord extSSTRecord = new ExtSSTRecord();
        extSSTRecord.setNumStringsPerBucket((short) 8);
        return extSSTRecord;
    }

    private static FnGroupCountRecord createFnGroupCount() {
        FnGroupCountRecord fnGroupCountRecord = new FnGroupCountRecord();
        fnGroupCountRecord.setCount((short) 14);
        return fnGroupCountRecord;
    }

    private static FontRecord createFont() {
        FontRecord fontRecord = new FontRecord();
        fontRecord.setFontHeight((short) 200);
        fontRecord.setAttributes((short) 0);
        fontRecord.setColorPaletteIndex(Short.MAX_VALUE);
        fontRecord.setBoldWeight((short) 400);
        fontRecord.setFontName(HSSFFont.FONT_ARIAL);
        return fontRecord;
    }

    private static FormatRecord createFormat(int i) {
        int[] iArr = {5, 6, 7, 8, 42, 41, 44, 43};
        if (i >= 0 && i < 8) {
            int i2 = iArr[i];
            return new FormatRecord(i2, BuiltinFormats.getBuiltinFormat(i2));
        }
        throw new IllegalArgumentException("Unexpected id " + i);
    }

    private static HideObjRecord createHideObj() {
        HideObjRecord hideObjRecord = new HideObjRecord();
        hideObjRecord.setHideObj((short) 0);
        return hideObjRecord;
    }

    private static MMSRecord createMMS() {
        MMSRecord mMSRecord = new MMSRecord();
        mMSRecord.setAddMenuCount((byte) 0);
        mMSRecord.setDelMenuCount((byte) 0);
        return mMSRecord;
    }

    private static PaletteRecord createPalette() {
        return new PaletteRecord();
    }

    private static PasswordRecord createPassword() {
        return new PasswordRecord(0);
    }

    private static PasswordRev4Record createPasswordRev4() {
        return new PasswordRev4Record(0);
    }

    private static PrecisionRecord createPrecision() {
        PrecisionRecord precisionRecord = new PrecisionRecord();
        precisionRecord.setFullPrecision(true);
        return precisionRecord;
    }

    private static ProtectRecord createProtect() {
        return new ProtectRecord(false);
    }

    private static ProtectionRev4Record createProtectionRev4() {
        return new ProtectionRev4Record(false);
    }

    private static RefreshAllRecord createRefreshAll() {
        return new RefreshAllRecord(false);
    }

    private static StyleRecord createStyle(int i) {
        int[][] iArr = {new int[]{16, 3}, new int[]{17, 6}, new int[]{18, 4}, new int[]{19, 7}, new int[]{0, 0}, new int[]{20, 5}};
        if (i < 0 || i >= 6) {
            throw new IllegalArgumentException("Unexpected style id " + i);
        }
        StyleRecord styleRecord = new StyleRecord();
        styleRecord.setOutlineStyleLevel(-1);
        styleRecord.setXFIndex(iArr[i][0]);
        styleRecord.setBuiltinStyle(iArr[i][1]);
        return styleRecord;
    }

    private static TabIdRecord createTabId() {
        return new TabIdRecord();
    }

    private static UseSelFSRecord createUseSelFS() {
        return new UseSelFSRecord(false);
    }

    private static WindowOneRecord createWindowOne() {
        WindowOneRecord windowOneRecord = new WindowOneRecord();
        windowOneRecord.setHorizontalHold((short) 360);
        windowOneRecord.setVerticalHold((short) 270);
        windowOneRecord.setWidth((short) 14940);
        windowOneRecord.setHeight((short) 9150);
        windowOneRecord.setOptions((short) 56);
        windowOneRecord.setActiveSheetIndex(0);
        windowOneRecord.setFirstVisibleTab(0);
        windowOneRecord.setNumSelectedTabs((short) 1);
        windowOneRecord.setTabWidthRatio((short) 600);
        return windowOneRecord;
    }

    private static WindowProtectRecord createWindowProtect() {
        return new WindowProtectRecord(false);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x003c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0161 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.poi.hssf.model.InternalWorkbook createWorkbook(java.util.List<org.apache.poi.hssf.record.Record> r11) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hssf.model.InternalWorkbook.createWorkbook(java.util.List):org.apache.poi.hssf.model.InternalWorkbook");
    }

    private static WriteAccessRecord createWriteAccess() {
        WriteAccessRecord writeAccessRecord = new WriteAccessRecord();
        try {
            String property = System.getProperty("user.name");
            if (property == null) {
                property = "POI";
            }
            writeAccessRecord.setUsername(property);
        } catch (AccessControlException e) {
            LOG.atWarn().withThrowable(e).log("can't determine user.name");
            writeAccessRecord.setUsername("POI");
        }
        return writeAccessRecord;
    }

    private static DrawingManager2 findDrawingManager(DrawingGroupRecord drawingGroupRecord, List<EscherBSERecord> list) {
        EscherContainerRecord escherContainer;
        if (drawingGroupRecord == null || (escherContainer = drawingGroupRecord.getEscherContainer()) == null) {
            return null;
        }
        Iterator<EscherRecord> it2 = escherContainer.iterator();
        EscherDggRecord escherDggRecord = null;
        EscherContainerRecord escherContainerRecord = null;
        while (it2.hasNext()) {
            EscherRecord next = it2.next();
            if (next instanceof EscherDggRecord) {
                escherDggRecord = (EscherDggRecord) next;
            } else if (next.getRecordId() == EscherContainerRecord.BSTORE_CONTAINER) {
                escherContainerRecord = (EscherContainerRecord) next;
            }
        }
        if (escherDggRecord == null) {
            return null;
        }
        DrawingManager2 drawingManager2 = new DrawingManager2(escherDggRecord);
        if (escherContainerRecord != null) {
            Iterator<EscherRecord> it3 = escherContainerRecord.iterator();
            while (it3.hasNext()) {
                EscherRecord next2 = it3.next();
                if (next2 instanceof EscherBSERecord) {
                    list.add((EscherBSERecord) next2);
                }
            }
        }
        return drawingManager2;
    }

    private String findSheetNameFromIndex(int i) {
        return (i >= 0 && i < this.boundsheets.size()) ? getSheetName(i) : "";
    }

    private void fixTabIdRecord() {
        if (this.records.getTabpos() <= 0) {
            return;
        }
        WorkbookRecordList workbookRecordList = this.records;
        TabIdRecord tabIdRecord = (TabIdRecord) workbookRecordList.get(workbookRecordList.getTabpos());
        int size = this.boundsheets.size();
        short[] sArr = new short[size];
        for (short s = 0; s < size; s = (short) (s + 1)) {
            sArr[s] = s;
        }
        tabIdRecord.setTabIdArray(sArr);
    }

    private BoundSheetRecord getBoundSheetRec(int i) {
        return this.boundsheets.get(i);
    }

    private LinkTable getOrCreateLinkTable() {
        if (this.linkTable == null) {
            this.linkTable = new LinkTable((short) getNumSheets(), this.records);
        }
        return this.linkTable;
    }

    public int addBSERecord(EscherBSERecord escherBSERecord) {
        EscherContainerRecord escherContainerRecord;
        createDrawingGroup();
        this.escherBSERecords.add(escherBSERecord);
        EscherContainerRecord escherContainerRecord2 = (EscherContainerRecord) ((DrawingGroupRecord) getRecords().get(findFirstRecordLocBySid(DrawingGroupRecord.sid))).getEscherRecord(0);
        short recordId = escherContainerRecord2.getChild(1).getRecordId();
        short s = EscherContainerRecord.BSTORE_CONTAINER;
        if (recordId == s) {
            escherContainerRecord = (EscherContainerRecord) escherContainerRecord2.getChild(1);
        } else {
            EscherContainerRecord escherContainerRecord3 = new EscherContainerRecord();
            escherContainerRecord3.setRecordId(s);
            List<EscherRecord> childRecords = escherContainerRecord2.getChildRecords();
            childRecords.add(1, escherContainerRecord3);
            escherContainerRecord2.setChildRecords(childRecords);
            escherContainerRecord = escherContainerRecord3;
        }
        escherContainerRecord.setOptions((short) ((this.escherBSERecords.size() << 4) | 15));
        escherContainerRecord.addChildRecord(escherBSERecord);
        return this.escherBSERecords.size();
    }

    public NameRecord addName(NameRecord nameRecord) {
        getOrCreateLinkTable().addName(nameRecord);
        return nameRecord;
    }

    public int addSSTString(UnicodeString unicodeString) {
        LOG.atDebug().log("insert to sst string='{}'", unicodeString);
        if (this.sst == null) {
            insertSST();
        }
        return this.sst.addString(unicodeString);
    }

    public boolean changeExternalReference(String str, String str2) {
        return this.linkTable.changeExternalReference(str, str2);
    }

    public short checkExternSheet(int i) {
        return (short) getOrCreateLinkTable().checkExternSheet(i);
    }

    public void cloneDrawings(InternalSheet internalSheet) {
        EscherContainerRecord escherContainer;
        EscherSimpleProperty escherSimpleProperty;
        findDrawingGroup();
        DrawingManager2 drawingManager2 = this.drawingManager;
        if (drawingManager2 == null || internalSheet.aggregateDrawingRecords(drawingManager2, false) == -1 || (escherContainer = ((EscherAggregate) internalSheet.findFirstRecordBySid(EscherAggregate.sid)).getEscherContainer()) == null) {
            return;
        }
        EscherDggRecord dgg = this.drawingManager.getDgg();
        short findNewDrawingGroupId = this.drawingManager.findNewDrawingGroupId();
        dgg.addCluster(findNewDrawingGroupId, 0);
        dgg.setDrawingsSaved(dgg.getDrawingsSaved() + 1);
        Iterator<EscherRecord> it2 = escherContainer.iterator();
        EscherDgRecord escherDgRecord = null;
        while (it2.hasNext()) {
            EscherRecord next = it2.next();
            if (next instanceof EscherDgRecord) {
                EscherDgRecord escherDgRecord2 = (EscherDgRecord) next;
                escherDgRecord2.setOptions((short) (findNewDrawingGroupId << 4));
                escherDgRecord = escherDgRecord2;
            } else if (next instanceof EscherContainerRecord) {
                Iterator<EscherRecord> it3 = ((EscherContainerRecord) next).iterator();
                while (it3.hasNext()) {
                    Iterator<EscherRecord> it4 = ((EscherContainerRecord) it3.next()).iterator();
                    while (it4.hasNext()) {
                        EscherRecord next2 = it4.next();
                        short recordId = next2.getRecordId();
                        if (recordId == EscherSpRecord.RECORD_ID) {
                            if (escherDgRecord == null) {
                                throw new RecordFormatException("EscherDgRecord wasn't set/processed before.");
                            }
                            int allocateShapeId = this.drawingManager.allocateShapeId(escherDgRecord);
                            escherDgRecord.setNumShapes(escherDgRecord.getNumShapes() - 1);
                            ((EscherSpRecord) next2).setShapeId(allocateShapeId);
                        } else if (recordId == EscherOptRecord.RECORD_ID && (escherSimpleProperty = (EscherSimpleProperty) ((EscherOptRecord) next2).lookup(EscherPropertyTypes.BLIP__BLIPTODISPLAY)) != null) {
                            EscherBSERecord bSERecord = getBSERecord(escherSimpleProperty.getPropertyValue());
                            bSERecord.setRef(bSERecord.getRef() + 1);
                        }
                    }
                }
            } else {
                continue;
            }
        }
    }

    public NameRecord cloneFilter(int i, int i2) {
        NameRecord nameRecord = getNameRecord(i);
        short checkExternSheet = checkExternSheet(i2);
        Ptg[] nameDefinition = nameRecord.getNameDefinition();
        for (int i3 = 0; i3 < nameDefinition.length; i3++) {
            Ptg ptg = nameDefinition[i3];
            if (ptg instanceof Area3DPtg) {
                Area3DPtg area3DPtg = (Area3DPtg) ((OperandPtg) ptg).copy();
                area3DPtg.setExternSheetIndex(checkExternSheet);
                nameDefinition[i3] = area3DPtg;
            } else if (ptg instanceof Ref3DPtg) {
                Ref3DPtg ref3DPtg = (Ref3DPtg) ((OperandPtg) ptg).copy();
                ref3DPtg.setExternSheetIndex(checkExternSheet);
                nameDefinition[i3] = ref3DPtg;
            }
        }
        NameRecord createBuiltInName = createBuiltInName((byte) 13, i2 + 1);
        createBuiltInName.setNameDefinition(nameDefinition);
        createBuiltInName.setHidden(true);
        return createBuiltInName;
    }

    public NameRecord createBuiltInName(byte b, int i) {
        if (i < 0 || i + 1 > 32767) {
            throw new IllegalArgumentException("Sheet number [" + i + "]is not valid ");
        }
        NameRecord nameRecord = new NameRecord(b, i);
        if (!this.linkTable.nameAlreadyExists(nameRecord)) {
            addName(nameRecord);
            return nameRecord;
        }
        throw new IllegalStateException("Builtin (" + ((int) b) + ") already exists for sheet (" + i + MotionUtils.f31762d);
    }

    public ExtendedFormatRecord createCellXF() {
        ExtendedFormatRecord createExtendedFormat = createExtendedFormat();
        WorkbookRecordList workbookRecordList = this.records;
        workbookRecordList.add(workbookRecordList.getXfpos() + 1, createExtendedFormat);
        WorkbookRecordList workbookRecordList2 = this.records;
        workbookRecordList2.setXfpos(workbookRecordList2.getXfpos() + 1);
        this.numxfs++;
        return createExtendedFormat;
    }

    public void createDrawingGroup() {
        EscherContainerRecord escherContainerRecord;
        if (this.drawingManager == null) {
            EscherContainerRecord escherContainerRecord2 = new EscherContainerRecord();
            EscherDggRecord escherDggRecord = new EscherDggRecord();
            EscherOptRecord escherOptRecord = new EscherOptRecord();
            EscherSplitMenuColorsRecord escherSplitMenuColorsRecord = new EscherSplitMenuColorsRecord();
            escherContainerRecord2.setRecordId((short) -4096);
            escherContainerRecord2.setOptions((short) 15);
            escherDggRecord.setRecordId(EscherDggRecord.RECORD_ID);
            escherDggRecord.setOptions((short) 0);
            escherDggRecord.setShapeIdMax(1024);
            escherDggRecord.setNumShapesSaved(0);
            escherDggRecord.setDrawingsSaved(0);
            escherDggRecord.setFileIdClusters(new EscherDggRecord.FileIdCluster[0]);
            this.drawingManager = new DrawingManager2(escherDggRecord);
            if (this.escherBSERecords.isEmpty()) {
                escherContainerRecord = null;
            } else {
                escherContainerRecord = new EscherContainerRecord();
                escherContainerRecord.setRecordId(EscherContainerRecord.BSTORE_CONTAINER);
                escherContainerRecord.setOptions((short) (15 | (this.escherBSERecords.size() << 4)));
                Iterator<EscherBSERecord> it2 = this.escherBSERecords.iterator();
                while (it2.hasNext()) {
                    escherContainerRecord.addChildRecord(it2.next());
                }
            }
            escherOptRecord.setRecordId((short) -4085);
            escherOptRecord.setOptions((short) 51);
            escherOptRecord.addEscherProperty(new EscherBoolProperty(EscherPropertyTypes.TEXT__SIZE_TEXT_TO_FIT_SHAPE, 524296));
            escherOptRecord.addEscherProperty(new EscherRGBProperty(EscherPropertyTypes.FILL__FILLCOLOR, 134217793));
            escherOptRecord.addEscherProperty(new EscherRGBProperty(EscherPropertyTypes.LINESTYLE__COLOR, HSSFShape.LINESTYLE__COLOR_DEFAULT));
            escherSplitMenuColorsRecord.setRecordId((short) -3810);
            escherSplitMenuColorsRecord.setOptions((short) 64);
            escherSplitMenuColorsRecord.setColor1(134217741);
            escherSplitMenuColorsRecord.setColor2(134217740);
            escherSplitMenuColorsRecord.setColor3(134217751);
            escherSplitMenuColorsRecord.setColor4(268435703);
            escherContainerRecord2.addChildRecord(escherDggRecord);
            if (escherContainerRecord != null) {
                escherContainerRecord2.addChildRecord(escherContainerRecord);
            }
            escherContainerRecord2.addChildRecord(escherOptRecord);
            escherContainerRecord2.addChildRecord(escherSplitMenuColorsRecord);
            int findFirstRecordLocBySid = findFirstRecordLocBySid(DrawingGroupRecord.sid);
            if (findFirstRecordLocBySid != -1) {
                DrawingGroupRecord drawingGroupRecord = new DrawingGroupRecord();
                drawingGroupRecord.addEscherRecord(escherContainerRecord2);
                getRecords().set(findFirstRecordLocBySid, drawingGroupRecord);
            } else {
                DrawingGroupRecord drawingGroupRecord2 = new DrawingGroupRecord();
                drawingGroupRecord2.addEscherRecord(escherContainerRecord2);
                getRecords().add(findFirstRecordLocBySid((short) 140) + 1, drawingGroupRecord2);
            }
        }
    }

    public NameRecord createName() {
        return addName(new NameRecord());
    }

    public FontRecord createNewFont() {
        FontRecord createFont = createFont();
        WorkbookRecordList workbookRecordList = this.records;
        workbookRecordList.add(workbookRecordList.getFontpos() + 1, createFont);
        WorkbookRecordList workbookRecordList2 = this.records;
        workbookRecordList2.setFontpos(workbookRecordList2.getFontpos() + 1);
        this.numfonts++;
        return createFont;
    }

    public StyleRecord createStyleRecord(int i) {
        StyleRecord styleRecord = new StyleRecord();
        styleRecord.setXFIndex(i);
        int i2 = -1;
        for (int xfpos = this.records.getXfpos(); xfpos < this.records.size() && i2 == -1; xfpos++) {
            Record record = this.records.get(xfpos);
            if (!(record instanceof ExtendedFormatRecord) && !(record instanceof StyleRecord)) {
                i2 = xfpos;
            }
        }
        if (i2 == -1) {
            throw new IllegalStateException("No XF Records found!");
        }
        this.records.add(i2, styleRecord);
        return styleRecord;
    }

    public boolean doesContainsSheetName(String str, int i) {
        if (str.length() > 31) {
            str = str.substring(0, 31);
        }
        int i2 = 0;
        for (BoundSheetRecord boundSheetRecord : this.boundsheets) {
            int i3 = i2 + 1;
            if (i != i2) {
                String sheetname = boundSheetRecord.getSheetname();
                if (sheetname.length() > 31) {
                    sheetname = sheetname.substring(0, 31);
                }
                if (str.equalsIgnoreCase(sheetname)) {
                    return true;
                }
            }
            i2 = i3;
        }
        return false;
    }

    public DrawingManager2 findDrawingGroup() {
        DrawingManager2 drawingManager2 = this.drawingManager;
        if (drawingManager2 != null) {
            return drawingManager2;
        }
        for (Record record : this.records.getRecords()) {
            if (record instanceof DrawingGroupRecord) {
                DrawingGroupRecord drawingGroupRecord = (DrawingGroupRecord) record;
                drawingGroupRecord.decode();
                DrawingManager2 findDrawingManager = findDrawingManager(drawingGroupRecord, this.escherBSERecords);
                this.drawingManager = findDrawingManager;
                if (findDrawingManager != null) {
                    return findDrawingManager;
                }
            }
        }
        DrawingManager2 findDrawingManager2 = findDrawingManager((DrawingGroupRecord) findFirstRecordBySid(DrawingGroupRecord.sid), this.escherBSERecords);
        this.drawingManager = findDrawingManager2;
        return findDrawingManager2;
    }

    public Record findFirstRecordBySid(short s) {
        for (Record record : this.records.getRecords()) {
            if (record.getSid() == s) {
                return record;
            }
        }
        return null;
    }

    public int findFirstRecordLocBySid(short s) {
        Iterator<Record> it2 = this.records.getRecords().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getSid() == s) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public Record findNextRecordBySid(short s, int i) {
        int i2 = 0;
        for (Record record : this.records.getRecords()) {
            if (record.getSid() == s) {
                int i3 = i2 + 1;
                if (i2 == i) {
                    return record;
                }
                i2 = i3;
            }
        }
        return null;
    }

    public String findSheetFirstNameFromExternSheet(int i) {
        return findSheetNameFromIndex(this.linkTable.getFirstInternalSheetIndexForExtIndex(i));
    }

    public String findSheetLastNameFromExternSheet(int i) {
        return findSheetNameFromIndex(this.linkTable.getLastInternalSheetIndexForExtIndex(i));
    }

    public EscherBSERecord getBSERecord(int i) {
        return this.escherBSERecords.get(i - 1);
    }

    public BackupRecord getBackupRecord() {
        WorkbookRecordList workbookRecordList = this.records;
        return (BackupRecord) workbookRecordList.get(workbookRecordList.getBackuppos());
    }

    public PaletteRecord getCustomPalette() {
        int palettepos = this.records.getPalettepos();
        if (palettepos == -1) {
            PaletteRecord createPalette = createPalette();
            this.records.add(1, createPalette);
            this.records.setPalettepos(1);
            return createPalette;
        }
        Record record = this.records.get(palettepos);
        if (record instanceof PaletteRecord) {
            return (PaletteRecord) record;
        }
        throw new IllegalStateException("InternalError: Expected PaletteRecord but got a '" + record + CloudStorageConstants.SINGLE_QUOTES);
    }

    public DrawingManager2 getDrawingManager() {
        return this.drawingManager;
    }

    public ExtendedFormatRecord getExFormatAt(int i) {
        Record record = this.records.get((this.records.getXfpos() - (this.numxfs - 1)) + i);
        if (record instanceof ExtendedFormatRecord) {
            return (ExtendedFormatRecord) record;
        }
        throw new IllegalStateException("Did not have a ExtendedFormatRecord: " + record);
    }

    public EvaluationWorkbook.ExternalName getExternalName(int i, int i2) {
        String resolveNameXText = this.linkTable.resolveNameXText(i, i2, this);
        if (resolveNameXText == null) {
            return null;
        }
        return new EvaluationWorkbook.ExternalName(resolveNameXText, i2, this.linkTable.resolveNameXIx(i, i2));
    }

    public EvaluationWorkbook.ExternalSheet getExternalSheet(int i) {
        String[] externalBookAndSheetName = this.linkTable.getExternalBookAndSheetName(i);
        if (externalBookAndSheetName == null) {
            return null;
        }
        return externalBookAndSheetName.length == 2 ? new EvaluationWorkbook.ExternalSheet(externalBookAndSheetName[0], externalBookAndSheetName[1]) : new EvaluationWorkbook.ExternalSheetRange(externalBookAndSheetName[0], externalBookAndSheetName[1], externalBookAndSheetName[2]);
    }

    public int getExternalSheetIndex(String str, String str2) {
        return getOrCreateLinkTable().getExternalSheetIndex(str, str2, str2);
    }

    public FileSharingRecord getFileSharing() {
        if (this.fileShare == null) {
            this.fileShare = new FileSharingRecord();
            this.records.add(findFirstRecordLocBySid((short) 92) + 1, this.fileShare);
        }
        return this.fileShare;
    }

    public int getFirstSheetIndexFromExternSheetIndex(int i) {
        return this.linkTable.getFirstInternalSheetIndexForExtIndex(i);
    }

    public int getFontIndex(FontRecord fontRecord) {
        int i = 0;
        while (i <= this.numfonts) {
            WorkbookRecordList workbookRecordList = this.records;
            if (((FontRecord) workbookRecordList.get((workbookRecordList.getFontpos() - (this.numfonts - 1)) + i)) == fontRecord) {
                return i > 3 ? i + 1 : i;
            }
            i++;
        }
        throw new IllegalArgumentException("Could not find that font!");
    }

    public FontRecord getFontRecordAt(int i) {
        int i2 = i > 4 ? i - 1 : i;
        if (i2 <= this.numfonts - 1) {
            WorkbookRecordList workbookRecordList = this.records;
            return (FontRecord) workbookRecordList.get((workbookRecordList.getFontpos() - (this.numfonts - 1)) + i2);
        }
        throw new ArrayIndexOutOfBoundsException("There are only " + this.numfonts + " font records, but you asked for index " + i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
    
        return (short) r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public short getFormat(java.lang.String r4, boolean r5) {
        /*
            r3 = this;
            java.util.List<org.apache.poi.hssf.record.FormatRecord> r0 = r3.formats
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L22
            java.lang.Object r1 = r0.next()
            org.apache.poi.hssf.record.FormatRecord r1 = (org.apache.poi.hssf.record.FormatRecord) r1
            java.lang.String r2 = r1.getFormatString()
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L6
            int r3 = r1.getIndexCode()
        L20:
            short r3 = (short) r3
            return r3
        L22:
            if (r5 == 0) goto L29
            int r3 = r3.createFormat(r4)
            goto L20
        L29:
            r3 = -1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hssf.model.InternalWorkbook.getFormat(java.lang.String, boolean):short");
    }

    public List<FormatRecord> getFormats() {
        return this.formats;
    }

    public List<HyperlinkRecord> getHyperlinks() {
        return this.hyperlinks;
    }

    public int getLastSheetIndexFromExternSheetIndex(int i) {
        return this.linkTable.getLastInternalSheetIndexForExtIndex(i);
    }

    public NameCommentRecord getNameCommentRecord(NameRecord nameRecord) {
        return this.commentRecords.get(nameRecord.getNameText());
    }

    public NameRecord getNameRecord(int i) {
        return this.linkTable.getNameRecord(i);
    }

    public NameXPtg getNameXPtg(String str, int i, UDFFinder uDFFinder) {
        LinkTable orCreateLinkTable = getOrCreateLinkTable();
        NameXPtg nameXPtg = orCreateLinkTable.getNameXPtg(str, i);
        return (nameXPtg != null || uDFFinder.findFunction(str) == null) ? nameXPtg : orCreateLinkTable.addNameXPtg(str);
    }

    public int getNumExFormats() {
        LOG.atDebug().log("getXF={}", Unbox.box(this.numxfs));
        return this.numxfs;
    }

    public int getNumNames() {
        LinkTable linkTable = this.linkTable;
        if (linkTable == null) {
            return 0;
        }
        return linkTable.getNumNames();
    }

    public int getNumRecords() {
        return this.records.size();
    }

    public int getNumSheets() {
        LOG.atDebug().log("getNumSheets={}", Unbox.box(this.boundsheets.size()));
        return this.boundsheets.size();
    }

    public int getNumberOfFontRecords() {
        return this.numfonts;
    }

    public RecalcIdRecord getRecalcId() {
        RecalcIdRecord recalcIdRecord = (RecalcIdRecord) findFirstRecordBySid(RecalcIdRecord.sid);
        if (recalcIdRecord != null) {
            return recalcIdRecord;
        }
        RecalcIdRecord recalcIdRecord2 = new RecalcIdRecord();
        this.records.add(findFirstRecordLocBySid((short) 140) + 1, recalcIdRecord2);
        return recalcIdRecord2;
    }

    public List<Record> getRecords() {
        return this.records.getRecords();
    }

    public UnicodeString getSSTString(int i) {
        if (this.sst == null) {
            insertSST();
        }
        UnicodeString string = this.sst.getString(i);
        LOG.atTrace().log("Returning SST for index={} String= {}", Unbox.box(i), string);
        return string;
    }

    public int getSheetIndex(String str) {
        int size = this.boundsheets.size();
        for (int i = 0; i < size; i++) {
            if (getSheetName(i).equalsIgnoreCase(str)) {
                return i;
            }
        }
        return -1;
    }

    public String getSheetName(int i) {
        return getBoundSheetRec(i).getSheetname();
    }

    public SheetVisibility getSheetVisibility(int i) {
        BoundSheetRecord boundSheetRec = getBoundSheetRec(i);
        return boundSheetRec.isVeryHidden() ? SheetVisibility.VERY_HIDDEN : boundSheetRec.isHidden() ? SheetVisibility.HIDDEN : SheetVisibility.VISIBLE;
    }

    public int getSize() {
        int i = 0;
        SSTRecord sSTRecord = null;
        for (Record record : this.records.getRecords()) {
            if (record instanceof SSTRecord) {
                sSTRecord = (SSTRecord) record;
            }
            i += (record.getSid() != 255 || sSTRecord == null) ? record.getRecordSize() : sSTRecord.calcExtSSTRecordSize();
        }
        return i;
    }

    public NameRecord getSpecificBuiltinRecord(byte b, int i) {
        return getOrCreateLinkTable().getSpecificBuiltinRecord(b, i);
    }

    public StyleRecord getStyleRecord(int i) {
        for (int xfpos = this.records.getXfpos(); xfpos < this.records.size(); xfpos++) {
            Record record = this.records.get(xfpos);
            if (record instanceof StyleRecord) {
                StyleRecord styleRecord = (StyleRecord) record;
                if (styleRecord.getXFIndex() == i) {
                    return styleRecord;
                }
            }
        }
        return null;
    }

    public WindowOneRecord getWindowOne() {
        return this.windowOne;
    }

    @Internal
    public WorkbookRecordList getWorkbookRecordList() {
        return this.records;
    }

    public WriteAccessRecord getWriteAccess() {
        if (this.writeAccess == null) {
            this.writeAccess = createWriteAccess();
            this.records.add(findFirstRecordLocBySid((short) 226) + 1, this.writeAccess);
        }
        return this.writeAccess;
    }

    public WriteProtectRecord getWriteProtect() {
        if (this.writeProtect == null) {
            this.writeProtect = new WriteProtectRecord();
            this.records.add(findFirstRecordLocBySid((short) 2057) + 1, this.writeProtect);
        }
        return this.writeProtect;
    }

    public void insertSST() {
        LOG.atDebug().log("creating new SST via insertSST!");
        this.sst = new SSTRecord();
        this.records.add(r0.size() - 1, createExtendedSST());
        this.records.add(r0.size() - 2, this.sst);
    }

    public boolean isSheetHidden(int i) {
        return getBoundSheetRec(i).isHidden();
    }

    public boolean isSheetVeryHidden(int i) {
        return getBoundSheetRec(i).isVeryHidden();
    }

    public boolean isUsing1904DateWindowing() {
        return this.uses1904datewindowing;
    }

    public boolean isWriteProtected() {
        return this.fileShare != null && getFileSharing().getReadOnly() == 1;
    }

    public int linkExternalWorkbook(String str, Workbook workbook) {
        return getOrCreateLinkTable().linkExternalWorkbook(str, workbook);
    }

    public void preSerialize() {
        if (this.records.getTabpos() > 0) {
            WorkbookRecordList workbookRecordList = this.records;
            if (((TabIdRecord) workbookRecordList.get(workbookRecordList.getTabpos())).getTabIdSize() < this.boundsheets.size()) {
                fixTabIdRecord();
            }
        }
    }

    public void removeBuiltinRecord(byte b, int i) {
        this.linkTable.removeBuiltinRecord(b, i);
    }

    public void removeExFormatRecord(ExtendedFormatRecord extendedFormatRecord) {
        this.records.remove(extendedFormatRecord);
        this.numxfs--;
    }

    public void removeFontRecord(FontRecord fontRecord) {
        this.records.remove(fontRecord);
        this.numfonts--;
    }

    public void removeName(int i) {
        if (this.linkTable.getNumNames() > i) {
            this.records.remove(findFirstRecordLocBySid((short) 24) + i);
            this.linkTable.removeName(i);
        }
    }

    public void removeSheet(int i) {
        if (this.boundsheets.size() > i) {
            WorkbookRecordList workbookRecordList = this.records;
            workbookRecordList.remove((workbookRecordList.getBspos() - (this.boundsheets.size() - 1)) + i);
            this.boundsheets.remove(i);
            fixTabIdRecord();
        }
        int i2 = i + 1;
        for (int i3 = 0; i3 < getNumNames(); i3++) {
            NameRecord nameRecord = getNameRecord(i3);
            if (nameRecord.getSheetNumber() == i2) {
                nameRecord.setSheetNumber(0);
            } else if (nameRecord.getSheetNumber() > i2) {
                nameRecord.setSheetNumber(nameRecord.getSheetNumber() - 1);
            }
        }
        LinkTable linkTable = this.linkTable;
        if (linkTable != null) {
            linkTable.removeSheet(i);
        }
    }

    public String resolveNameXText(int i, int i2) {
        return this.linkTable.resolveNameXText(i, i2, this);
    }

    public int serialize(int i, byte[] bArr) {
        int serialize;
        LOG.atDebug().log("Serializing Workbook with offsets");
        Iterator<Record> it2 = this.records.getRecords().iterator();
        SSTRecord sSTRecord = null;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (it2.hasNext()) {
            Record next = it2.next();
            if (next instanceof SSTRecord) {
                sSTRecord = (SSTRecord) next;
                i3 = i2;
            }
            if (next.getSid() == 255 && sSTRecord != null) {
                next = sSTRecord.createExtSSTRecord(i3 + i);
            }
            if (!(next instanceof BoundSheetRecord)) {
                serialize = next.serialize(i2 + i, bArr);
            } else if (z) {
                serialize = 0;
            } else {
                Iterator<BoundSheetRecord> it3 = this.boundsheets.iterator();
                serialize = 0;
                while (it3.hasNext()) {
                    serialize += it3.next().serialize(i2 + i + serialize, bArr);
                }
                z = true;
            }
            i2 += serialize;
        }
        LOG.atDebug().log("Exiting serialize workbook");
        return i2;
    }

    public void setSheetBof(int i, int i2) {
        LOG.atDebug().log("setting bof for sheetnum ={} at pos={}", Unbox.box(i), Unbox.box(i2));
        checkSheets(i);
        getBoundSheetRec(i).setPositionOfBof(i2);
    }

    public void setSheetHidden(int i, boolean z) {
        setSheetHidden(i, z ? SheetVisibility.HIDDEN : SheetVisibility.VISIBLE);
    }

    public void setSheetName(int i, String str) {
        checkSheets(i);
        if (str.length() > 31) {
            str = str.substring(0, 31);
        }
        this.boundsheets.get(i).setSheetname(str);
    }

    public void setSheetOrder(String str, int i) {
        int sheetIndex = getSheetIndex(str);
        List<BoundSheetRecord> list = this.boundsheets;
        list.add(i, list.remove(sheetIndex));
        int bspos = this.records.getBspos();
        int size = bspos - (this.boundsheets.size() - 1);
        int i2 = sheetIndex + size;
        Record record = this.records.get(i2);
        this.records.remove(i2);
        this.records.add(size + i, record);
        this.records.setBspos(bspos);
    }

    public void unwriteProtectWorkbook() {
        this.records.remove(this.fileShare);
        this.records.remove(this.writeProtect);
        this.fileShare = null;
        this.writeProtect = null;
    }

    public void updateNameCommentRecordCache(NameCommentRecord nameCommentRecord) {
        if (this.commentRecords.containsValue(nameCommentRecord)) {
            Iterator<Map.Entry<String, NameCommentRecord>> it2 = this.commentRecords.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<String, NameCommentRecord> next = it2.next();
                if (next.getValue().equals(nameCommentRecord)) {
                    this.commentRecords.remove(next.getKey());
                    break;
                }
            }
        }
        this.commentRecords.put(nameCommentRecord.getNameText(), nameCommentRecord);
    }

    public void updateNamesAfterCellShift(FormulaShifter formulaShifter) {
        for (int i = 0; i < getNumNames(); i++) {
            NameRecord nameRecord = getNameRecord(i);
            Ptg[] nameDefinition = nameRecord.getNameDefinition();
            if (formulaShifter.adjustFormula(nameDefinition, nameRecord.getSheetNumber())) {
                nameRecord.setNameDefinition(nameDefinition);
            }
        }
    }

    public void updateStyleRecord(int i, int i2) {
        for (int xfpos = this.records.getXfpos(); xfpos < this.records.size(); xfpos++) {
            Record record = this.records.get(xfpos);
            if (record instanceof StyleRecord) {
                StyleRecord styleRecord = (StyleRecord) record;
                if (styleRecord.getXFIndex() == i) {
                    styleRecord.setXFIndex(i2);
                }
            }
        }
    }

    public void writeProtectWorkbook(String str, String str2) {
        FileSharingRecord fileSharing = getFileSharing();
        WriteAccessRecord writeAccess = getWriteAccess();
        getWriteProtect();
        fileSharing.setReadOnly((short) 1);
        fileSharing.setPassword((short) CryptoFunctions.createXorVerifier1(str));
        fileSharing.setUsername(str2);
        writeAccess.setUsername(str2);
    }

    public short checkExternSheet(int i, int i2) {
        return (short) getOrCreateLinkTable().checkExternSheet(i, i2);
    }

    public int getExternalSheetIndex(String str, String str2, String str3) {
        return getOrCreateLinkTable().getExternalSheetIndex(str, str2, str3);
    }

    public void setSheetHidden(int i, SheetVisibility sheetVisibility) {
        checkSheets(i);
        BoundSheetRecord boundSheetRec = getBoundSheetRec(i);
        boundSheetRec.setHidden(sheetVisibility == SheetVisibility.HIDDEN);
        boundSheetRec.setVeryHidden(sheetVisibility == SheetVisibility.VERY_HIDDEN);
    }

    public void removeExFormatRecord(int i) {
        this.records.remove((this.records.getXfpos() - (this.numxfs - 1)) + i);
        this.numxfs--;
    }

    public int createFormat(String str) {
        int i = this.maxformatid;
        this.maxformatid = i >= 164 ? i + 1 : 164;
        FormatRecord formatRecord = new FormatRecord(this.maxformatid, str);
        int i2 = 0;
        while (i2 < this.records.size() && this.records.get(i2).getSid() != 1054) {
            i2++;
        }
        int size = i2 + this.formats.size();
        this.formats.add(formatRecord);
        this.records.add(size, formatRecord);
        return this.maxformatid;
    }

    public NameXPtg getNameXPtg(String str, UDFFinder uDFFinder) {
        return getNameXPtg(str, -1, uDFFinder);
    }

    private static ExtendedFormatRecord createExtendedFormat(int i, int i2, int i3, int i4) {
        ExtendedFormatRecord extendedFormatRecord = new ExtendedFormatRecord();
        extendedFormatRecord.setFontIndex((short) i);
        extendedFormatRecord.setFormatIndex((short) i2);
        extendedFormatRecord.setCellOptions((short) i3);
        extendedFormatRecord.setAlignmentOptions((short) 32);
        extendedFormatRecord.setIndentionOptions((short) i4);
        extendedFormatRecord.setBorderOptions((short) 0);
        extendedFormatRecord.setPaletteOptions((short) 0);
        extendedFormatRecord.setAdtlPaletteOptions((short) 0);
        extendedFormatRecord.setFillPaletteOptions((short) 8384);
        return extendedFormatRecord;
    }

    private static ExtendedFormatRecord createExtendedFormat() {
        ExtendedFormatRecord extendedFormatRecord = new ExtendedFormatRecord();
        extendedFormatRecord.setFontIndex((short) 0);
        extendedFormatRecord.setFormatIndex((short) 0);
        extendedFormatRecord.setCellOptions((short) 1);
        extendedFormatRecord.setAlignmentOptions((short) 32);
        extendedFormatRecord.setIndentionOptions((short) 0);
        extendedFormatRecord.setBorderOptions((short) 0);
        extendedFormatRecord.setPaletteOptions((short) 0);
        extendedFormatRecord.setAdtlPaletteOptions((short) 0);
        extendedFormatRecord.setFillPaletteOptions((short) 8384);
        HSSFColor.HSSFColorPredefined hSSFColorPredefined = HSSFColor.HSSFColorPredefined.BLACK;
        extendedFormatRecord.setTopBorderPaletteIdx(hSSFColorPredefined.getIndex());
        extendedFormatRecord.setBottomBorderPaletteIdx(hSSFColorPredefined.getIndex());
        extendedFormatRecord.setLeftBorderPaletteIdx(hSSFColorPredefined.getIndex());
        extendedFormatRecord.setRightBorderPaletteIdx(hSSFColorPredefined.getIndex());
        return extendedFormatRecord;
    }

    public static InternalWorkbook createWorkbook() {
        LOG.atDebug().log("creating new workbook from scratch");
        InternalWorkbook internalWorkbook = new InternalWorkbook();
        ArrayList arrayList = new ArrayList(30);
        internalWorkbook.records.setRecords(arrayList);
        List<FormatRecord> list = internalWorkbook.formats;
        arrayList.add(createBOF());
        arrayList.add(new InterfaceHdrRecord(1200));
        arrayList.add(createMMS());
        arrayList.add(InterfaceEndRecord.instance);
        internalWorkbook.getWriteAccess();
        arrayList.add(createCodepage());
        arrayList.add(createDSF());
        arrayList.add(createTabId());
        internalWorkbook.records.setTabpos(arrayList.size() - 1);
        arrayList.add(createFnGroupCount());
        arrayList.add(createWindowProtect());
        arrayList.add(createProtect());
        internalWorkbook.records.setProtpos(arrayList.size() - 1);
        arrayList.add(createPassword());
        arrayList.add(createProtectionRev4());
        arrayList.add(createPasswordRev4());
        WindowOneRecord createWindowOne = createWindowOne();
        internalWorkbook.windowOne = createWindowOne;
        arrayList.add(createWindowOne);
        arrayList.add(createBackup());
        internalWorkbook.records.setBackuppos(arrayList.size() - 1);
        arrayList.add(createHideObj());
        arrayList.add(createDateWindow1904());
        arrayList.add(createPrecision());
        arrayList.add(createRefreshAll());
        arrayList.add(createBookBool());
        arrayList.add(createFont());
        arrayList.add(createFont());
        arrayList.add(createFont());
        arrayList.add(createFont());
        internalWorkbook.records.setFontpos(arrayList.size() - 1);
        internalWorkbook.numfonts = 4;
        for (int i = 0; i <= 7; i++) {
            FormatRecord createFormat = createFormat(i);
            internalWorkbook.maxformatid = Math.max(internalWorkbook.maxformatid, createFormat.getIndexCode());
            list.add(createFormat);
            arrayList.add(createFormat);
        }
        for (int i2 = 0; i2 < 21; i2++) {
            arrayList.add(createExtendedFormat(i2));
            internalWorkbook.numxfs++;
        }
        internalWorkbook.records.setXfpos(arrayList.size() - 1);
        for (int i3 = 0; i3 < 6; i3++) {
            arrayList.add(createStyle(i3));
        }
        arrayList.add(createUseSelFS());
        BoundSheetRecord createBoundSheet = createBoundSheet(0);
        arrayList.add(createBoundSheet);
        internalWorkbook.boundsheets.add(createBoundSheet);
        internalWorkbook.records.setBspos(arrayList.size() - 1);
        arrayList.add(createCountry());
        internalWorkbook.getOrCreateLinkTable().checkExternSheet(0);
        SSTRecord sSTRecord = new SSTRecord();
        internalWorkbook.sst = sSTRecord;
        arrayList.add(sSTRecord);
        arrayList.add(createExtendedSST());
        arrayList.add(EOFRecord.instance);
        LOG.atDebug().log("exit create new workbook from scratch");
        return internalWorkbook;
    }
}
