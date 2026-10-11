package org.apache.poi.hssf.usermodel;

import com.alibaba.fastjson2.JSONB;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Spliterator;
import java.util.regex.Pattern;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.POIDocument;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherBlipRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.hpsf.ClassID;
import org.apache.poi.hpsf.ClassIDPredefined;
import org.apache.poi.hpsf.DocumentSummaryInformation;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.hssf.OldExcelFormatException;
import org.apache.poi.hssf.model.HSSFFormulaParser;
import org.apache.poi.hssf.model.InternalSheet;
import org.apache.poi.hssf.model.InternalWorkbook;
import org.apache.poi.hssf.model.RecordStream;
import org.apache.poi.hssf.model.WorkbookRecordList;
import org.apache.poi.hssf.record.AbstractEscherHolderRecord;
import org.apache.poi.hssf.record.DrawingGroupRecord;
import org.apache.poi.hssf.record.FilePassRecord;
import org.apache.poi.hssf.record.LabelRecord;
import org.apache.poi.hssf.record.LabelSSTRecord;
import org.apache.poi.hssf.record.NameRecord;
import org.apache.poi.hssf.record.RecalcIdRecord;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.RecordBase;
import org.apache.poi.hssf.record.RecordFactory;
import org.apache.poi.hssf.record.RefModeRecord;
import org.apache.poi.hssf.record.SSTRecord;
import org.apache.poi.hssf.record.UnknownRecord;
import org.apache.poi.hssf.record.aggregates.RecordAggregate;
import org.apache.poi.hssf.record.common.UnicodeString;
import org.apache.poi.hssf.record.crypto.Biff8DecryptingStream;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.poifs.crypt.ChunkedCipherOutputStream;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionMode;
import org.apache.poi.poifs.crypt.EncryptionVerifier;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentNode;
import org.apache.poi.poifs.filesystem.EntryUtils;
import org.apache.poi.poifs.filesystem.FilteringDirectoryNode;
import org.apache.poi.poifs.filesystem.Ole10Native;
import org.apache.poi.poifs.filesystem.POIFSDocument;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.FormulaShifter;
import org.apache.poi.ss.formula.FormulaType;
import org.apache.poi.ss.formula.SheetNameFormatter;
import org.apache.poi.ss.formula.udf.AggregatingUDFFinder;
import org.apache.poi.ss.formula.udf.IndexedUDFFinder;
import org.apache.poi.ss.formula.udf.UDFFinder;
import org.apache.poi.ss.usermodel.CellReferenceType;
import org.apache.poi.ss.usermodel.Name;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Shape;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.SheetVisibility;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Configurator;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class HSSFWorkbook extends POIDocument implements Workbook {
    private static final int DEFAULT_MAX_IMAGE_LENGTH = 50000000;
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static int MAX_IMAGE_LENGTH = 50000000;
    private static int MAX_RECORD_LENGTH = 100000;
    private static final int MAX_STYLES = 4030;
    protected List<HSSFSheet> _sheets;
    private final UDFFinder _udfFinder;
    private Map<Integer, HSSFFont> fonts;
    private HSSFDataFormat formatter;
    private Row.MissingCellPolicy missingCellPolicy;
    private final ArrayList<HSSFName> names;
    private boolean preserveNodes;
    private InternalWorkbook workbook;
    private static final Pattern COMMA_PATTERN = Pattern.compile(",");
    public static final int INITIAL_CAPACITY = Configurator.getIntValue("HSSFWorkbook.SheetInitialCapacity", 3);
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) HSSFWorkbook.class);

    /* loaded from: classes12.dex */
    public final class SheetIterator<T extends Sheet> implements Iterator<T> {

        /* renamed from: it */
        private final Iterator<T> f111432it;

        public SheetIterator() {
            this.f111432it = HSSFWorkbook.this._sheets.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f111432it.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() throws IllegalStateException {
            throw new UnsupportedOperationException("remove method not supported on HSSFWorkbook.iterator(). Use Sheet.removeSheetAt(int) instead.");
        }

        @Override // java.util.Iterator
        public T next() throws NoSuchElementException {
            return this.f111432it.next();
        }
    }

    /* loaded from: classes12.dex */
    public static final class SheetRecordCollector implements RecordAggregate.RecordVisitor {
        private int _totalSize = 0;
        private final List<Record> _list = new ArrayList(128);

        public int getTotalSize() {
            return this._totalSize;
        }

        public int serialize(int i, byte[] bArr) {
            Iterator<Record> it2 = this._list.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                i2 += it2.next().serialize(i + i2, bArr);
            }
            return i2;
        }

        @Override // org.apache.poi.hssf.record.aggregates.RecordAggregate.RecordVisitor
        public void visitRecord(Record record) {
            this._list.add(record);
            this._totalSize += record.getRecordSize();
        }
    }

    public HSSFWorkbook() {
        this(InternalWorkbook.createWorkbook());
    }

    private void convertLabelRecords(List<Record> list, int i) {
        LOGGER.atDebug().log("convertLabelRecords called");
        while (i < list.size()) {
            Record record = list.get(i);
            if (record.getSid() == 516) {
                LabelRecord labelRecord = (LabelRecord) record;
                list.remove(i);
                LabelSSTRecord labelSSTRecord = new LabelSSTRecord();
                int addSSTString = this.workbook.addSSTString(new UnicodeString(labelRecord.getValue()));
                labelSSTRecord.setRow(labelRecord.getRow());
                labelSSTRecord.setColumn(labelRecord.getColumn());
                labelSSTRecord.setXFIndex(labelRecord.getXFIndex());
                labelSSTRecord.setSSTIndex(addSSTString);
                list.add(i, labelSSTRecord);
            }
            i++;
        }
        LOGGER.atDebug().log("convertLabelRecords exit");
    }

    public static HSSFWorkbook create(InternalWorkbook internalWorkbook) {
        return new HSSFWorkbook(internalWorkbook);
    }

    public static int getMaxImageLength() {
        return MAX_IMAGE_LENGTH;
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static Map<String, ClassID> getOleMap() {
        HashMap hashMap = new HashMap();
        hashMap.put(HSLFSlideShow.POWERPOINT_DOCUMENT, ClassIDPredefined.POWERPOINT_V8.getClassID());
        Iterator<String> it2 = InternalWorkbook.WORKBOOK_DIR_ENTRY_NAMES.iterator();
        while (it2.hasNext()) {
            hashMap.put(it2.next(), ClassIDPredefined.EXCEL_V7_WORKBOOK.getClassID());
        }
        return hashMap;
    }

    private HSSFSheet[] getSheets() {
        HSSFSheet[] hSSFSheetArr = new HSSFSheet[this._sheets.size()];
        this._sheets.toArray(hSSFSheetArr);
        return hSSFSheetArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0089 A[LOOP:0: B:13:0x0032->B:18:0x0089, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getUniqueSheetName(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 40
            int r0 = r9.lastIndexOf(r0)
            r1 = 0
            java.lang.String r2 = ")"
            r3 = 2
            if (r0 <= 0) goto L31
            boolean r4 = r9.endsWith(r2)
            if (r4 == 0) goto L31
            int r4 = r0 + 1
            int r5 = r9.length()
            int r5 = r5 + (-1)
            java.lang.String r4 = r9.substring(r4, r5)
            java.lang.String r4 = r4.trim()     // Catch: java.lang.NumberFormatException -> L31
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.NumberFormatException -> L31
            int r4 = r4 + 1
            java.lang.String r0 = r9.substring(r1, r0)     // Catch: java.lang.NumberFormatException -> L32
            java.lang.String r9 = r0.trim()     // Catch: java.lang.NumberFormatException -> L32
            goto L32
        L31:
            r4 = r3
        L32:
            int r0 = r4 + 1
            java.lang.String r4 = java.lang.Integer.toString(r4)
            int r5 = r9.length()
            int r6 = r4.length()
            int r5 = r5 + r6
            int r5 = r5 + r3
            r6 = 31
            if (r5 >= r6) goto L5e
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r9)
            java.lang.String r6 = " ("
            r5.append(r6)
            r5.append(r4)
            r5.append(r2)
            java.lang.String r4 = r5.toString()
            goto L7f
        L5e:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r7 = r4.length()
            int r6 = r6 - r7
            int r6 = r6 - r3
            java.lang.String r6 = r9.substring(r1, r6)
            r5.append(r6)
            java.lang.String r6 = "("
            r5.append(r6)
            r5.append(r4)
            r5.append(r2)
            java.lang.String r4 = r5.toString()
        L7f:
            org.apache.poi.hssf.model.InternalWorkbook r5 = r8.workbook
            int r5 = r5.getSheetIndex(r4)
            r6 = -1
            if (r5 != r6) goto L89
            return r4
        L89:
            r4 = r0
            goto L32
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hssf.usermodel.HSSFWorkbook.getUniqueSheetName(java.lang.String):java.lang.String");
    }

    public static String getWorkbookDirEntryName(DirectoryNode directoryNode) {
        for (String str : InternalWorkbook.WORKBOOK_DIR_ENTRY_NAMES) {
            if (directoryNode.hasEntry(str)) {
                return str;
            }
        }
        if (directoryNode.hasEntry(Decryptor.DEFAULT_POIFS_ENTRY)) {
            throw new EncryptedDocumentException("The supplied spreadsheet seems to be an Encrypted .xlsx file. It must be decrypted before use by XSSF, it cannot be used by HSSF");
        }
        if (directoryNode.hasEntry(InternalWorkbook.OLD_WORKBOOK_DIR_ENTRY_NAME)) {
            throw new OldExcelFormatException("The supplied spreadsheet seems to be Excel 5.0/7.0 (BIFF5) format. POI only supports BIFF8 format (from Excel versions 97/2000/XP/2003)");
        }
        if (directoryNode.hasEntry("WordDocument")) {
            throw new IllegalArgumentException("The document is really a DOC file");
        }
        throw new IllegalArgumentException("The supplied POIFSFileSystem does not contain a BIFF8 'Workbook' entry. Is it really an excel file? Had: " + directoryNode.getEntryNames());
    }

    private void searchForPictures(List<EscherRecord> list, List<HSSFPictureData> list2) {
        EscherBlipRecord blipRecord;
        for (EscherRecord escherRecord : list) {
            if ((escherRecord instanceof EscherBSERecord) && (blipRecord = ((EscherBSERecord) escherRecord).getBlipRecord()) != null) {
                list2.add(new HSSFPictureData(blipRecord));
            }
            searchForPictures(escherRecord.getChildRecords(), list2);
        }
    }

    public static void setMaxImageLength(int i) {
        MAX_IMAGE_LENGTH = i;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    private void setPropertiesFromWorkbook(InternalWorkbook internalWorkbook) {
        this.workbook = internalWorkbook;
    }

    private void updateActiveSheetAfterSheetReorder(int i, int i2) {
        int activeSheetIndex = getActiveSheetIndex();
        if (activeSheetIndex == i) {
            setActiveSheet(i2);
            return;
        }
        if (activeSheetIndex >= i || activeSheetIndex >= i2) {
            if (activeSheetIndex <= i || activeSheetIndex <= i2) {
                if (i2 > i) {
                    setActiveSheet(activeSheetIndex - 1);
                } else {
                    setActiveSheet(activeSheetIndex + 1);
                }
            }
        }
    }

    private void updateEncryptionInfo() {
        readProperties();
        FilePassRecord filePassRecord = (FilePassRecord) this.workbook.findFirstRecordBySid((short) 47);
        String currentUserPassword = Biff8EncryptionKey.getCurrentUserPassword();
        WorkbookRecordList workbookRecordList = this.workbook.getWorkbookRecordList();
        if (currentUserPassword == null) {
            if (filePassRecord != null) {
                workbookRecordList.remove(filePassRecord);
                return;
            }
            return;
        }
        if (filePassRecord == null) {
            filePassRecord = new FilePassRecord(EncryptionMode.cryptoAPI);
            workbookRecordList.add(1, filePassRecord);
        }
        EncryptionInfo encryptionInfo = filePassRecord.getEncryptionInfo();
        EncryptionVerifier verifier = encryptionInfo.getVerifier();
        byte[] encryptedVerifier = verifier.getEncryptedVerifier();
        Decryptor decryptor = encryptionInfo.getDecryptor();
        Encryptor encryptor = encryptionInfo.getEncryptor();
        if (encryptedVerifier != null) {
            try {
                if (decryptor.verifyPassword(currentUserPassword)) {
                    encryptor.confirmPassword(currentUserPassword, null, null, decryptor.getVerifier(), verifier.getSalt(), null);
                }
            } catch (GeneralSecurityException e) {
                throw new EncryptedDocumentException("can't validate/update encryption setting", e);
            }
        }
        encryptor.confirmPassword(currentUserPassword);
    }

    private void updateNamedRangesAfterSheetReorder(int i, int i2) {
        Iterator<HSSFName> it2 = this.names.iterator();
        while (it2.hasNext()) {
            HSSFName next = it2.next();
            int sheetIndex = next.getSheetIndex();
            if (sheetIndex != -1) {
                if (sheetIndex == i) {
                    next.setSheetIndex(i2);
                } else if (i2 <= sheetIndex && sheetIndex < i) {
                    next.setSheetIndex(sheetIndex + 1);
                } else if (i < sheetIndex && sheetIndex <= i2) {
                    next.setSheetIndex(sheetIndex - 1);
                }
            }
        }
    }

    private void validateSheetIndex(int i) {
        int size = this._sheets.size() - 1;
        if (i < 0 || i > size) {
            String str = "(0.." + size + MotionUtils.f31762d;
            if (size == -1) {
                str = "(no sheets)";
            }
            throw new IllegalArgumentException("Sheet index (" + i + ") is out of range " + str);
        }
    }

    public int addOlePackage(POIFSFileSystem pOIFSFileSystem, String str, String str2, String str3) throws IOException {
        DirectoryNode root = pOIFSFileSystem.getRoot();
        Iterator<Map.Entry<String, ClassID>> it2 = getOleMap().entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<String, ClassID> next = it2.next();
            if (root.hasEntry(next.getKey())) {
                root.setStorageClsid(next.getValue());
                break;
            }
        }
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            pOIFSFileSystem.writeFilesystem(unsynchronizedByteArrayOutputStream);
            int addOlePackage = addOlePackage(unsynchronizedByteArrayOutputStream.toByteArray(), str, str2, str3);
            unsynchronizedByteArrayOutputStream.close();
            return addOlePackage;
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0055  */
    @Override // org.apache.poi.ss.usermodel.Workbook
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int addPicture(byte[] r8, int r9) {
        /*
            r7 = this;
            r7.initDrawings()
            byte[] r0 = org.apache.commons.codec.digest.DigestUtils.md5(r8)
            r1 = 2
            r2 = 0
            if (r9 == r1) goto L35
            r3 = 3
            if (r9 == r3) goto L23
            org.apache.poi.ddf.EscherBitmapBlip r3 = new org.apache.poi.ddf.EscherBitmapBlip
            r3.<init>()
            r3.setUID(r0)
            r4 = -1
            r3.setMarker(r4)
            r3.setPictureData(r8)
            int r8 = r8.length
            int r8 = r8 + 25
            r4 = 255(0xff, float:3.57E-43)
            goto L4b
        L23:
            org.apache.poi.poifs.filesystem.FileMagic r3 = org.apache.poi.poifs.filesystem.FileMagic.valueOf(r8)
            org.apache.poi.poifs.filesystem.FileMagic r4 = org.apache.poi.poifs.filesystem.FileMagic.WMF
            if (r3 != r4) goto L35
            int r3 = r8.length
            r4 = 22
            int r3 = r3 - r4
            int r5 = org.apache.poi.hssf.usermodel.HSSFWorkbook.MAX_IMAGE_LENGTH
            byte[] r8 = org.apache.poi.util.IOUtils.safelyClone(r8, r4, r3, r5)
        L35:
            org.apache.poi.ddf.EscherMetafileBlip r3 = new org.apache.poi.ddf.EscherMetafileBlip
            r3.<init>()
            r3.setUID(r0)
            r3.setPictureData(r8)
            r8 = -2
            r3.setFilter(r8)
            int r8 = r3.getCompressedSize()
            int r8 = r8 + 58
            r4 = r2
        L4b:
            short r5 = org.apache.poi.ddf.EscherBlipRecord.RECORD_ID_START
            int r5 = r5 + r9
            short r5 = (short) r5
            r3.setRecordId(r5)
            switch(r9) {
                case 2: goto L8a;
                case 3: goto L84;
                case 4: goto L7e;
                case 5: goto L78;
                case 6: goto L72;
                case 7: goto L6c;
                default: goto L55;
            }
        L55:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Unexpected picture format: "
            r8.append(r0)
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        L6c:
            r5 = 31360(0x7a80, float:4.3945E-41)
            r3.setOptions(r5)
            goto L8f
        L72:
            r5 = 28160(0x6e00, float:3.946E-41)
            r3.setOptions(r5)
            goto L8f
        L78:
            r5 = 18080(0x46a0, float:2.5335E-41)
            r3.setOptions(r5)
            goto L8f
        L7e:
            r5 = 21536(0x5420, float:3.0178E-41)
            r3.setOptions(r5)
            goto L8f
        L84:
            r5 = 8544(0x2160, float:1.1973E-41)
            r3.setOptions(r5)
            goto L8f
        L8a:
            r5 = 15680(0x3d40, float:2.1972E-41)
            r3.setOptions(r5)
        L8f:
            org.apache.poi.ddf.EscherBSERecord r5 = new org.apache.poi.ddf.EscherBSERecord
            r5.<init>()
            short r6 = org.apache.poi.ddf.EscherBSERecord.RECORD_ID
            r5.setRecordId(r6)
            int r6 = r9 << 4
            r1 = r1 | r6
            short r1 = (short) r1
            r5.setOptions(r1)
            byte r9 = (byte) r9
            r5.setBlipTypeMacOS(r9)
            r5.setBlipTypeWin32(r9)
            r5.setUid(r0)
            r5.setTag(r4)
            r5.setSize(r8)
            r5.setRef(r2)
            r5.setOffset(r2)
            r5.setBlipRecord(r3)
            org.apache.poi.hssf.model.InternalWorkbook r7 = r7.workbook
            int r7 = r7.addBSERecord(r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hssf.usermodel.HSSFWorkbook.addPicture(byte[], int):int");
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void addToolPack(UDFFinder uDFFinder) {
        ((AggregatingUDFFinder) this._udfFinder).add(uDFFinder);
    }

    public boolean changeExternalReference(String str, String str2) {
        return this.workbook.changeExternalReference(str, str2);
    }

    @Override // org.apache.poi.POIDocument, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
    }

    public HSSFName createBuiltInName(byte b, int i) {
        HSSFName hSSFName = new HSSFName(this, this.workbook.createBuiltInName(b, i + 1), null);
        this.names.add(hSSFName);
        return hSSFName;
    }

    public void dumpDrawingGroupRecords(boolean z) {
        DrawingGroupRecord drawingGroupRecord = (DrawingGroupRecord) this.workbook.findFirstRecordBySid(DrawingGroupRecord.sid);
        if (drawingGroupRecord == null) {
            return;
        }
        drawingGroupRecord.decode();
        List<EscherRecord> escherRecords = drawingGroupRecord.getEscherRecords();
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(System.out, Charset.defaultCharset()));
        for (EscherRecord escherRecord : escherRecords) {
            if (z) {
                System.out.println(escherRecord);
            } else {
                escherRecord.display(printWriter, 0);
            }
        }
        printWriter.flush();
    }

    public void encryptBytes(byte[] bArr) {
        EncryptionInfo encryptionInfo = getEncryptionInfo();
        if (encryptionInfo == null) {
            return;
        }
        Encryptor encryptor = encryptionInfo.getEncryptor();
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(bArr, 0);
        LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream = new LittleEndianByteArrayOutputStream(bArr, 0);
        encryptor.setChunkSize(1024);
        byte[] bArr2 = new byte[1024];
        try {
            ChunkedCipherOutputStream dataStream = encryptor.getDataStream(littleEndianByteArrayOutputStream, 0);
            int i = 0;
            while (i < bArr.length) {
                IOUtils.readFully(littleEndianByteArrayInputStream, bArr2, 0, 4);
                int uShort = LittleEndian.getUShort(bArr2, 0);
                int uShort2 = LittleEndian.getUShort(bArr2, 2);
                boolean isNeverEncryptedRecord = Biff8DecryptingStream.isNeverEncryptedRecord(uShort);
                dataStream.setNextRecordSize(uShort2, isNeverEncryptedRecord);
                dataStream.writePlain(bArr2, 0, 4);
                if (uShort == 133) {
                    byte[] safelyAllocate = IOUtils.safelyAllocate(uShort2, MAX_RECORD_LENGTH);
                    littleEndianByteArrayInputStream.readFully(safelyAllocate);
                    dataStream.writePlain(safelyAllocate, 0, 4);
                    dataStream.write(safelyAllocate, 4, uShort2 - 4);
                } else {
                    int i2 = uShort2;
                    while (i2 > 0) {
                        int min = Math.min(i2, 1024);
                        littleEndianByteArrayInputStream.readFully(bArr2, 0, min);
                        if (isNeverEncryptedRecord) {
                            dataStream.writePlain(bArr2, 0, min);
                        } else {
                            dataStream.write(bArr2, 0, min);
                        }
                        i2 -= min;
                    }
                }
                i += uShort2 + 4;
            }
            dataStream.close();
        } catch (Exception e) {
            throw new EncryptedDocumentException(e);
        }
    }

    public int findExistingBuiltinNameRecordIdx(int i, byte b) {
        for (int i2 = 0; i2 < this.names.size(); i2++) {
            NameRecord nameRecord = this.workbook.getNameRecord(i2);
            if (nameRecord == null) {
                throw new IllegalStateException("Unable to find all defined names to iterate over");
            }
            if (nameRecord.isBuiltInName() && nameRecord.getBuiltInName() == b && nameRecord.getSheetNumber() - 1 == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getActiveSheetIndex() {
        return this.workbook.getWindowOne().getActiveSheetIndex();
    }

    public List<HSSFObjectData> getAllEmbeddedObjects() {
        ArrayList arrayList = new ArrayList();
        Iterator<HSSFSheet> it2 = this._sheets.iterator();
        while (it2.hasNext()) {
            getAllEmbeddedObjects(it2.next(), arrayList);
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<HSSFName> getAllNames() {
        return Collections.unmodifiableList(this.names);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<HSSFPictureData> getAllPictures() {
        ArrayList arrayList = new ArrayList();
        for (Record record : this.workbook.getRecords()) {
            if (record instanceof AbstractEscherHolderRecord) {
                AbstractEscherHolderRecord abstractEscherHolderRecord = (AbstractEscherHolderRecord) record;
                abstractEscherHolderRecord.decode();
                searchForPictures(abstractEscherHolderRecord.getEscherRecords(), arrayList);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public boolean getBackupFlag() {
        return this.workbook.getBackupRecord().getBackup() != 0;
    }

    public HSSFName getBuiltInName(byte b, int i) {
        int findExistingBuiltinNameRecordIdx = findExistingBuiltinNameRecordIdx(i, b);
        if (findExistingBuiltinNameRecordIdx < 0) {
            return null;
        }
        return this.names.get(findExistingBuiltinNameRecordIdx);
    }

    public byte[] getBytes() {
        LOGGER.atDebug().log("HSSFWorkbook.getBytes()");
        HSSFSheet[] sheets = getSheets();
        int length = sheets.length;
        updateEncryptionInfo();
        this.workbook.preSerialize();
        for (HSSFSheet hSSFSheet : sheets) {
            hSSFSheet.getSheet().preSerialize();
            hSSFSheet.preSerialize();
        }
        int size = this.workbook.getSize();
        SheetRecordCollector[] sheetRecordCollectorArr = new SheetRecordCollector[length];
        for (int i = 0; i < length; i++) {
            this.workbook.setSheetBof(i, size);
            SheetRecordCollector sheetRecordCollector = new SheetRecordCollector();
            sheets[i].getSheet().visitContainedRecords(sheetRecordCollector, size);
            size += sheetRecordCollector.getTotalSize();
            sheetRecordCollectorArr[i] = sheetRecordCollector;
        }
        byte[] bArr = new byte[size];
        int serialize = this.workbook.serialize(0, bArr);
        for (int i2 = 0; i2 < length; i2++) {
            SheetRecordCollector sheetRecordCollector2 = sheetRecordCollectorArr[i2];
            int serialize2 = sheetRecordCollector2.serialize(serialize, bArr);
            if (serialize2 != sheetRecordCollector2.getTotalSize()) {
                throw new IllegalStateException("Actual serialized sheet size (" + serialize2 + ") differs from pre-calculated size (" + sheetRecordCollector2.getTotalSize() + ") for sheet (" + i2 + MotionUtils.f31762d);
            }
            serialize += serialize2;
        }
        encryptBytes(bArr);
        return bArr;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public CellReferenceType getCellReferenceType() {
        RefModeRecord refModeRecord;
        Iterator<HSSFSheet> it2 = this._sheets.iterator();
        while (it2.hasNext()) {
            Iterator<RecordBase> it3 = it2.next().getSheet().getRecords().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    refModeRecord = null;
                    break;
                }
                RecordBase next = it3.next();
                if (next instanceof RefModeRecord) {
                    refModeRecord = (RefModeRecord) next;
                    break;
                }
            }
            if (refModeRecord != null) {
                if (refModeRecord.getMode() == 0) {
                    return CellReferenceType.R1C1;
                }
                if (refModeRecord.getMode() == 1) {
                    return CellReferenceType.A1;
                }
            }
        }
        return CellReferenceType.UNKNOWN;
    }

    public HSSFPalette getCustomPalette() {
        return new HSSFPalette(this.workbook.getCustomPalette());
    }

    @Override // org.apache.poi.POIDocument
    public EncryptionInfo getEncryptionInfo() {
        FilePassRecord filePassRecord = (FilePassRecord) this.workbook.findFirstRecordBySid((short) 47);
        if (filePassRecord != null) {
            return filePassRecord.getEncryptionInfo();
        }
        return null;
    }

    public EncryptionMode getEncryptionMode() {
        FilePassRecord filePassRecord = (FilePassRecord) getInternalWorkbook().findFirstRecordBySid((short) 47);
        if (filePassRecord == null) {
            return null;
        }
        return filePassRecord.getEncryptionInfo().getEncryptionMode();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getFirstVisibleTab() {
        return this.workbook.getWindowOne().getFirstVisibleTab();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean getForceFormulaRecalculation() {
        RecalcIdRecord recalcIdRecord = (RecalcIdRecord) getWorkbook().findFirstRecordBySid(RecalcIdRecord.sid);
        return (recalcIdRecord == null || recalcIdRecord.getEngineId() == 0) ? false : true;
    }

    @Internal
    public InternalWorkbook getInternalWorkbook() {
        return this.workbook;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Row.MissingCellPolicy getMissingCellPolicy() {
        return this.missingCellPolicy;
    }

    public HSSFName getNameAt(int i) {
        int size = this.names.size();
        if (size < 1) {
            throw new IllegalStateException("There are no defined names in this workbook");
        }
        if (i >= 0 && i <= size) {
            return this.names.get(i);
        }
        throw new IllegalArgumentException("Specified name index " + i + " is outside the allowable range (0.." + (size - 1) + ").");
    }

    public int getNameIndex(String str) {
        for (int i = 0; i < this.names.size(); i++) {
            if (getNameName(i).equalsIgnoreCase(str)) {
                return i;
            }
        }
        return -1;
    }

    public String getNameName(int i) {
        return getNameAt(i).getNameName();
    }

    public NameRecord getNameRecord(int i) {
        return getWorkbook().getNameRecord(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<HSSFName> getNames(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<HSSFName> it2 = this.names.iterator();
        while (it2.hasNext()) {
            HSSFName next = it2.next();
            if (next.getNameName().equals(str)) {
                arrayList.add(next);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumCellStyles() {
        return this.workbook.getNumExFormats();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfFonts() {
        return this.workbook.getNumberOfFontRecords();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @Removal(version = "6.0.0")
    @Deprecated
    public int getNumberOfFontsAsInt() {
        return getNumberOfFonts();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfNames() {
        return this.names.size();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfSheets() {
        return this._sheets.size();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public String getPrintArea(int i) {
        NameRecord specificBuiltinRecord = this.workbook.getSpecificBuiltinRecord((byte) 6, i + 1);
        if (specificBuiltinRecord == null) {
            return null;
        }
        return HSSFFormulaParser.toFormulaString(this, specificBuiltinRecord.getNameDefinition());
    }

    public Collection<Integer> getSelectedTabs() {
        ArrayList arrayList = new ArrayList();
        int size = this._sheets.size();
        for (int i = 0; i < size; i++) {
            if (getSheetAt(i).isSelected()) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getSheetIndex(String str) {
        return this.workbook.getSheetIndex(str);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public String getSheetName(int i) {
        validateSheetIndex(i);
        return this.workbook.getSheetName(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SheetVisibility getSheetVisibility(int i) {
        return this.workbook.getSheetVisibility(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SpreadsheetVersion getSpreadsheetVersion() {
        return SpreadsheetVersion.EXCEL97;
    }

    public UDFFinder getUDFFinder() {
        return this._udfFinder;
    }

    @Internal
    public InternalWorkbook getWorkbook() {
        return this.workbook;
    }

    public void initDrawings() {
        if (this.workbook.findDrawingGroup() == null) {
            this.workbook.createDrawingGroup();
            return;
        }
        Iterator<HSSFSheet> it2 = this._sheets.iterator();
        while (it2.hasNext()) {
            it2.next().getDrawingPatriarch();
        }
    }

    public void insertChartRecord() {
        this.workbook.getRecords().add(this.workbook.findFirstRecordLocBySid(SSTRecord.sid), new UnknownRecord(235, new byte[]{15, 0, 0, JSONB.Constants.BC_INT32_NUM_MIN, 82, 0, 0, 0, 0, 0, 6, JSONB.Constants.BC_INT32_NUM_MIN, 24, 0, 0, 0, 1, 8, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, TarConstants.LF_CHR, 0, 11, JSONB.Constants.BC_INT32_NUM_MIN, 18, 0, 0, 0, -65, 0, 8, 0, 8, 0, -127, 1, 9, 0, 0, 8, -64, 1, 64, 0, 0, 8, 64, 0, 30, -15, 16, 0, 0, 0, 13, 0, 0, 8, 12, 0, 0, 8, 23, 0, 0, 8, -9, 0, 0, 16}));
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean isHidden() {
        return this.workbook.getWindowOne().getHidden();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean isSheetHidden(int i) {
        validateSheetIndex(i);
        return this.workbook.isSheetHidden(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean isSheetVeryHidden(int i) {
        validateSheetIndex(i);
        return this.workbook.isSheetVeryHidden(i);
    }

    public boolean isWriteProtected() {
        return this.workbook.isWriteProtected();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int linkExternalWorkbook(String str, Workbook workbook) {
        return this.workbook.linkExternalWorkbook(str, workbook);
    }

    public void removeName(int i) {
        this.names.remove(i);
        this.workbook.removeName(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removePrintArea(int i) {
        getWorkbook().removeBuiltinRecord((byte) 6, i + 1);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removeSheetAt(int i) {
        validateSheetIndex(i);
        boolean isSelected = getSheetAt(i).isSelected();
        this._sheets.remove(i);
        this.workbook.removeSheet(i);
        int size = this._sheets.size();
        if (size < 1) {
            return;
        }
        int i2 = i >= size ? size - 1 : i;
        if (isSelected) {
            boolean z = false;
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    break;
                }
                if (getSheetAt(i3).isSelected()) {
                    z = true;
                    break;
                }
                i3++;
            }
            if (!z) {
                setSelectedTab(i2);
            }
        }
        int activeSheetIndex = getActiveSheetIndex();
        if (activeSheetIndex == i) {
            setActiveSheet(i2);
        } else if (activeSheetIndex > i) {
            setActiveSheet(activeSheetIndex - 1);
        }
    }

    public void resetFontCache() {
        this.fonts = new HashMap();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setActiveSheet(int i) {
        validateSheetIndex(i);
        int size = this._sheets.size();
        int i2 = 0;
        while (i2 < size) {
            getSheetAt(i2).setActive(i2 == i);
            i2++;
        }
        this.workbook.getWindowOne().setActiveSheetIndex(i);
    }

    public void setBackupFlag(boolean z) {
        this.workbook.getBackupRecord().setBackup(z ? (short) 1 : (short) 0);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setCellReferenceType(CellReferenceType cellReferenceType) {
        RefModeRecord refModeRecord;
        Iterator<HSSFSheet> it2 = this._sheets.iterator();
        while (it2.hasNext()) {
            List<RecordBase> records = it2.next().getSheet().getRecords();
            Iterator<RecordBase> it3 = records.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    refModeRecord = null;
                    break;
                }
                RecordBase next = it3.next();
                if (next instanceof RefModeRecord) {
                    refModeRecord = (RefModeRecord) next;
                    break;
                }
            }
            if (cellReferenceType == CellReferenceType.R1C1) {
                if (refModeRecord == null) {
                    refModeRecord = new RefModeRecord();
                    records.add(records.size() - 1, refModeRecord);
                }
                refModeRecord.setMode((short) 0);
            } else if (cellReferenceType == CellReferenceType.A1) {
                if (refModeRecord == null) {
                    refModeRecord = new RefModeRecord();
                    records.add(records.size() - 1, refModeRecord);
                }
                refModeRecord.setMode((short) 1);
            } else if (refModeRecord != null) {
                records.remove(refModeRecord);
            }
        }
    }

    public void setEncryptionMode(EncryptionMode encryptionMode) {
        if (encryptionMode == null) {
            Biff8EncryptionKey.setCurrentUserPassword(null);
            return;
        }
        if (encryptionMode != EncryptionMode.xor && encryptionMode != EncryptionMode.binaryRC4 && encryptionMode != EncryptionMode.cryptoAPI) {
            throw new IllegalArgumentException("Only xor, binaryRC4 and cryptoAPI are supported.");
        }
        FilePassRecord filePassRecord = (FilePassRecord) getInternalWorkbook().findFirstRecordBySid((short) 47);
        if (encryptionMode == (filePassRecord != null ? filePassRecord.getEncryptionInfo().getEncryptionMode() : null)) {
            return;
        }
        readProperties();
        WorkbookRecordList workbookRecordList = getInternalWorkbook().getWorkbookRecordList();
        if (filePassRecord != null) {
            workbookRecordList.remove(filePassRecord);
        }
        workbookRecordList.add(1, new FilePassRecord(encryptionMode));
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setFirstVisibleTab(int i) {
        this.workbook.getWindowOne().setFirstVisibleTab(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setForceFormulaRecalculation(boolean z) {
        getWorkbook().getRecalcId().setEngineId(0);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setHidden(boolean z) {
        this.workbook.getWindowOne().setHidden(z);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setMissingCellPolicy(Row.MissingCellPolicy missingCellPolicy) {
        this.missingCellPolicy = missingCellPolicy;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setPrintArea(int i, String str) {
        int i2 = i + 1;
        NameRecord specificBuiltinRecord = this.workbook.getSpecificBuiltinRecord((byte) 6, i2);
        if (specificBuiltinRecord == null) {
            specificBuiltinRecord = this.workbook.createBuiltInName((byte) 6, i2);
        }
        String[] split = COMMA_PATTERN.split(str);
        StringBuilder sb = new StringBuilder(32);
        for (int i3 = 0; i3 < split.length; i3++) {
            if (i3 > 0) {
                sb.append(',');
            }
            SheetNameFormatter.appendFormat(sb, getSheetName(i));
            sb.append(PublicSuffixDatabase.f103895g);
            sb.append(split[i3]);
        }
        specificBuiltinRecord.setNameDefinition(HSSFFormulaParser.parse(sb.toString(), this, FormulaType.NAMEDRANGE, i));
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSelectedTab(int i) {
        validateSheetIndex(i);
        int size = this._sheets.size();
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 >= size) {
                this.workbook.getWindowOne().setNumSelectedTabs((short) 1);
                return;
            }
            HSSFSheet sheetAt = getSheetAt(i2);
            if (i2 != i) {
                z = false;
            }
            sheetAt.setSelected(z);
            i2++;
        }
    }

    public void setSelectedTabs(int[] iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        setSelectedTabs(arrayList);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetHidden(int i, boolean z) {
        setSheetVisibility(i, z ? SheetVisibility.HIDDEN : SheetVisibility.VISIBLE);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetName(int i, String str) {
        if (str == null) {
            throw new IllegalArgumentException("sheetName must not be null");
        }
        if (!this.workbook.doesContainsSheetName(str, i)) {
            validateSheetIndex(i);
            this.workbook.setSheetName(i, str);
        } else {
            throw new IllegalArgumentException("The workbook already contains a sheet named '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetOrder(String str, int i) {
        int sheetIndex = getSheetIndex(str);
        List<HSSFSheet> list = this._sheets;
        list.add(i, list.remove(sheetIndex));
        this.workbook.setSheetOrder(str, i);
        FormulaShifter createForSheetShift = FormulaShifter.createForSheetShift(sheetIndex, i);
        Iterator<HSSFSheet> it2 = this._sheets.iterator();
        while (it2.hasNext()) {
            it2.next().getSheet().updateFormulasAfterCellShift(createForSheetShift, -1);
        }
        this.workbook.updateNamesAfterCellShift(createForSheetShift);
        updateNamedRangesAfterSheetReorder(sheetIndex, i);
        updateActiveSheetAfterSheetReorder(sheetIndex, i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetVisibility(int i, SheetVisibility sheetVisibility) {
        validateSheetIndex(i);
        this.workbook.setSheetHidden(i, sheetVisibility);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Iterator<Sheet> sheetIterator() {
        return new SheetIterator();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook, java.lang.Iterable
    public Spliterator<Sheet> spliterator() {
        return this._sheets.spliterator();
    }

    public void unwriteProtectWorkbook() {
        this.workbook.unwriteProtectWorkbook();
    }

    @Override // org.apache.poi.POIDocument
    public void write() throws IOException {
        validateInPlaceWritePossible();
        DirectoryNode directory = getDirectory();
        new POIFSDocument((DocumentNode) directory.getEntry(getWorkbookDirEntryName(directory))).replaceContents(new UnsynchronizedByteArrayInputStream(getBytes()));
        writeProperties();
        directory.getFileSystem().writeFilesystem();
    }

    public void writeProtectWorkbook(String str, String str2) {
        this.workbook.writeProtectWorkbook(str, str2);
    }

    private HSSFWorkbook(InternalWorkbook internalWorkbook) {
        super((DirectoryNode) null);
        this.missingCellPolicy = Row.MissingCellPolicy.RETURN_NULL_AND_BLANK;
        this._udfFinder = new IndexedUDFFinder(AggregatingUDFFinder.DEFAULT);
        this.workbook = internalWorkbook;
        int i = INITIAL_CAPACITY;
        this._sheets = new ArrayList(i);
        this.names = new ArrayList<>(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFSheet cloneSheet(int i) {
        validateSheetIndex(i);
        HSSFSheet hSSFSheet = this._sheets.get(i);
        String sheetName = this.workbook.getSheetName(i);
        HSSFSheet cloneSheet = hSSFSheet.cloneSheet(this);
        cloneSheet.setSelected(false);
        cloneSheet.setActive(false);
        String uniqueSheetName = getUniqueSheetName(sheetName);
        int size = this._sheets.size();
        this._sheets.add(cloneSheet);
        this.workbook.setSheetName(size, uniqueSheetName);
        int findExistingBuiltinNameRecordIdx = findExistingBuiltinNameRecordIdx(i, (byte) 13);
        if (findExistingBuiltinNameRecordIdx != -1) {
            this.names.add(new HSSFName(this, this.workbook.cloneFilter(findExistingBuiltinNameRecordIdx, size)));
        }
        return cloneSheet;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFCellStyle createCellStyle() {
        if (this.workbook.getNumExFormats() != MAX_STYLES) {
            return new HSSFCellStyle((short) (getNumCellStyles() - 1), this.workbook.createCellXF(), this);
        }
        throw new IllegalStateException("The maximum number of cell styles was exceeded. You can define up to 4000 styles in a .xls workbook");
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFDataFormat createDataFormat() {
        if (this.formatter == null) {
            this.formatter = new HSSFDataFormat(this.workbook);
        }
        return this.formatter;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFEvaluationWorkbook createEvaluationWorkbook() {
        return HSSFEvaluationWorkbook.create(this);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFFont createFont() {
        this.workbook.createNewFont();
        int numberOfFonts = getNumberOfFonts() - 1;
        if (numberOfFonts > 3) {
            numberOfFonts++;
        }
        if (numberOfFonts < 32767) {
            return getFontAt(numberOfFonts);
        }
        throw new IllegalArgumentException("Maximum number of fonts was exceeded");
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFName createName() {
        HSSFName hSSFName = new HSSFName(this, this.workbook.createName());
        this.names.add(hSSFName);
        return hSSFName;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFFont findFont(boolean z, short s, short s2, String str, boolean z2, boolean z3, short s3, byte b) {
        int numberOfFonts = getNumberOfFonts();
        for (int i = 0; i <= numberOfFonts; i++) {
            if (i != 4) {
                HSSFFont fontAt = getFontAt(i);
                if (fontAt.getBold() == z && fontAt.getColor() == s && fontAt.getFontHeight() == s2 && fontAt.getFontName().equals(str) && fontAt.getItalic() == z2 && fontAt.getStrikeout() == z3 && fontAt.getTypeOffset() == s3 && fontAt.getUnderline() == b) {
                    return fontAt;
                }
            }
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFCellStyle getCellStyleAt(int i) {
        return new HSSFCellStyle((short) i, this.workbook.getExFormatAt(i), this);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFCreationHelper getCreationHelper() {
        return new HSSFCreationHelper(this);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFFont getFontAt(int i) {
        if (this.fonts == null) {
            this.fonts = new HashMap();
        }
        Integer valueOf = Integer.valueOf(i);
        if (this.fonts.containsKey(valueOf)) {
            return this.fonts.get(valueOf);
        }
        HSSFFont hSSFFont = new HSSFFont(i, this.workbook.getFontRecordAt(i));
        this.fonts.put(valueOf, hSSFFont);
        return hSSFFont;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFName getName(String str) {
        int nameIndex = getNameIndex(str);
        if (nameIndex < 0) {
            return null;
        }
        return this.names.get(nameIndex);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFSheet getSheet(String str) {
        HSSFSheet hSSFSheet = null;
        for (int i = 0; i < this._sheets.size(); i++) {
            if (this.workbook.getSheetName(i).equalsIgnoreCase(str)) {
                hSSFSheet = this._sheets.get(i);
            }
        }
        return hSSFSheet;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFSheet getSheetAt(int i) {
        validateSheetIndex(i);
        return this._sheets.get(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getSheetIndex(Sheet sheet) {
        return this._sheets.indexOf(sheet);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFSheet createSheet() {
        HSSFSheet hSSFSheet = new HSSFSheet(this);
        this._sheets.add(hSSFSheet);
        this.workbook.setSheetName(this._sheets.size() - 1, "Sheet" + (this._sheets.size() - 1));
        boolean z = this._sheets.size() == 1;
        hSSFSheet.setSelected(z);
        hSSFSheet.setActive(z);
        return hSSFSheet;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removeName(Name name) {
        removeName(getNameIndex((HSSFName) name));
    }

    public int getNameIndex(HSSFName hSSFName) {
        for (int i = 0; i < this.names.size(); i++) {
            if (hSSFName == this.names.get(i)) {
                return i;
            }
        }
        return -1;
    }

    private void getAllEmbeddedObjects(HSSFSheet hSSFSheet, List<HSSFObjectData> list) {
        HSSFPatriarch drawingPatriarch = hSSFSheet.getDrawingPatriarch();
        if (drawingPatriarch == null) {
            return;
        }
        getAllEmbeddedObjects(drawingPatriarch, list);
    }

    public void setSelectedTabs(Collection<Integer> collection) {
        Iterator<Integer> it2 = collection.iterator();
        while (it2.hasNext()) {
            validateSheetIndex(it2.next().intValue());
        }
        HashSet hashSet = new HashSet(collection);
        int size = this._sheets.size();
        for (int i = 0; i < size; i++) {
            getSheetAt(i).setSelected(hashSet.contains(Integer.valueOf(i)));
        }
        this.workbook.getWindowOne().setNumSelectedTabs((short) hashSet.size());
    }

    private void getAllEmbeddedObjects(HSSFShapeContainer hSSFShapeContainer, List<HSSFObjectData> list) {
        for (Shape shape : hSSFShapeContainer.getChildren()) {
            if (shape instanceof HSSFObjectData) {
                list.add((HSSFObjectData) shape);
            } else if (shape instanceof HSSFShapeContainer) {
                getAllEmbeddedObjects((HSSFShapeContainer) shape, list);
            }
        }
    }

    public HSSFWorkbook(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem, true);
    }

    public HSSFWorkbook(POIFSFileSystem pOIFSFileSystem, boolean z) throws IOException {
        this(pOIFSFileSystem.getRoot(), pOIFSFileSystem, z);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public HSSFSheet createSheet(String str) {
        if (str != null) {
            if (!this.workbook.doesContainsSheetName(str, this._sheets.size())) {
                if (str.length() > 31) {
                    String substring = str.substring(0, 31);
                    LOGGER.atWarn().log("Sheet '{}' will be added with a trimmed name '{}' for MS Excel compliance.", str, substring);
                    str = substring;
                }
                HSSFSheet hSSFSheet = new HSSFSheet(this);
                this.workbook.setSheetName(this._sheets.size(), str);
                this._sheets.add(hSSFSheet);
                boolean z = this._sheets.size() == 1;
                hSSFSheet.setSelected(z);
                hSSFSheet.setActive(z);
                return hSSFSheet;
            }
            throw new IllegalArgumentException("The workbook already contains a sheet named '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
        throw new IllegalArgumentException("sheetName must not be null");
    }

    @Override // org.apache.poi.POIDocument
    public void write(File file) throws IOException {
        POIFSFileSystem create = POIFSFileSystem.create(file);
        try {
            write(create);
            create.writeFilesystem();
            create.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (create != null) {
                    try {
                        create.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public HSSFWorkbook(DirectoryNode directoryNode, POIFSFileSystem pOIFSFileSystem, boolean z) throws IOException {
        this(directoryNode, z);
    }

    public HSSFWorkbook(DirectoryNode directoryNode, boolean z) throws IOException {
        super(directoryNode);
        this.missingCellPolicy = Row.MissingCellPolicy.RETURN_NULL_AND_BLANK;
        this._udfFinder = new IndexedUDFFinder(AggregatingUDFFinder.DEFAULT);
        String workbookDirEntryName = getWorkbookDirEntryName(directoryNode);
        this.preserveNodes = z;
        if (!z) {
            clearDirectory();
        }
        int i = INITIAL_CAPACITY;
        this._sheets = new ArrayList(i);
        this.names = new ArrayList<>(i);
        List<Record> createRecords = RecordFactory.createRecords(directoryNode.createDocumentInputStream(workbookDirEntryName));
        InternalWorkbook createWorkbook = InternalWorkbook.createWorkbook(createRecords);
        this.workbook = createWorkbook;
        setPropertiesFromWorkbook(createWorkbook);
        int numRecords = this.workbook.getNumRecords();
        convertLabelRecords(createRecords, numRecords);
        RecordStream recordStream = new RecordStream(createRecords, numRecords);
        while (recordStream.hasNext()) {
            try {
                this._sheets.add(new HSSFSheet(this, InternalSheet.createSheet(recordStream)));
            } catch (InternalSheet.UnsupportedBOFType e) {
                LOGGER.atWarn().log("Unsupported BOF found of type {}", Unbox.box(e.getType()));
            }
        }
        for (int i2 = 0; i2 < this.workbook.getNumNames(); i2++) {
            NameRecord nameRecord = this.workbook.getNameRecord(i2);
            this.names.add(new HSSFName(this, nameRecord, this.workbook.getNameCommentRecord(nameRecord)));
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setPrintArea(int i, int i2, int i3, int i4, int i5) {
        setPrintArea(i, new CellReference(i4, i2, true, true).formatAsString() + ":" + new CellReference(i5, i3, true, true).formatAsString());
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int addOlePackage(byte[] bArr, String str, String str2, String str3) throws IOException {
        if (initDirectory()) {
            this.preserveNodes = true;
        }
        int i = 0;
        DirectoryEntry directoryEntry = null;
        do {
            StringBuilder sb = new StringBuilder();
            sb.append("MBD");
            i++;
            sb.append(HexDump.toHex(i));
            String sb2 = sb.toString();
            if (!getDirectory().hasEntry(sb2)) {
                directoryEntry = getDirectory().createDirectory(sb2);
                directoryEntry.setStorageClsid(ClassIDPredefined.OLE_V1_PACKAGE.getClassID());
            }
        } while (directoryEntry == null);
        Ole10Native.createOleMarkerEntry(directoryEntry);
        Ole10Native ole10Native = new Ole10Native(str, str2, str3, bArr);
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            ole10Native.writeOut(unsynchronizedByteArrayOutputStream);
            directoryEntry.createDocument(Ole10Native.OLE10_NATIVE, unsynchronizedByteArrayOutputStream.toInputStream());
            unsynchronizedByteArrayOutputStream.close();
            return i;
        } finally {
        }
    }

    @Override // org.apache.poi.POIDocument
    public void write(OutputStream outputStream) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem();
        try {
            write(pOIFSFileSystem);
            pOIFSFileSystem.writeFilesystem(outputStream);
            pOIFSFileSystem.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pOIFSFileSystem.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void write(POIFSFileSystem pOIFSFileSystem) throws IOException {
        ArrayList arrayList = new ArrayList(1);
        pOIFSFileSystem.createDocument(new UnsynchronizedByteArrayInputStream(getBytes()), "Workbook");
        writeProperties(pOIFSFileSystem, arrayList);
        if (this.preserveNodes) {
            arrayList.addAll(InternalWorkbook.WORKBOOK_DIR_ENTRY_NAMES);
            arrayList.addAll(Arrays.asList(DocumentSummaryInformation.DEFAULT_STREAM_NAME, SummaryInformation.DEFAULT_STREAM_NAME, getEncryptedPropertyStreamName()));
            EntryUtils.copyNodes(new FilteringDirectoryNode(getDirectory(), arrayList), new FilteringDirectoryNode(pOIFSFileSystem.getRoot(), arrayList));
            pOIFSFileSystem.getRoot().setStorageClsid(getDirectory().getStorageClsid());
        }
    }

    public HSSFWorkbook(InputStream inputStream) throws IOException {
        this(inputStream, true);
    }

    public HSSFWorkbook(InputStream inputStream, boolean z) throws IOException {
        this(new POIFSFileSystem(inputStream).getRoot(), z);
    }
}
