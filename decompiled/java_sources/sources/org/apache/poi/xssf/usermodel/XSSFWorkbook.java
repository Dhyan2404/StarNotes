package org.apache.poi.xssf.usermodel;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Spliterator;
import java.util.regex.Pattern;
import javax.xml.namespace.QName;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.collections4.ListValuedMap;
import org.apache.commons.collections4.multimap.ArrayListValuedHashMap;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hpsf.ClassIDPredefined;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.ooxml.util.PackageHelper;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackageAccess;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.Ole10Native;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.SheetNameFormatter;
import org.apache.poi.ss.formula.udf.AggregatingUDFFinder;
import org.apache.poi.ss.formula.udf.IndexedUDFFinder;
import org.apache.poi.ss.formula.udf.UDFFinder;
import org.apache.poi.ss.usermodel.CellReferenceType;
import org.apache.poi.ss.usermodel.Date1904Support;
import org.apache.poi.ss.usermodel.Name;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.SheetVisibility;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.ss.util.WorkbookUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.util.Removal;
import org.apache.poi.xssf.XLSBUnsupportedException;
import org.apache.poi.xssf.model.CalculationChain;
import org.apache.poi.xssf.model.ExternalLinksTable;
import org.apache.poi.xssf.model.MapInfo;
import org.apache.poi.xssf.model.SharedStringsTable;
import org.apache.poi.xssf.model.StylesTable;
import org.apache.poi.xssf.model.ThemesTable;
import org.apache.poi.xssf.usermodel.helpers.XSSFFormulaUtils;
import org.apache.poi.xssf.usermodel.helpers.XSSFPasswordHelper;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBookView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDialogsheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalReference;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheets;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbookPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbookProtection;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCalcMode;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRefMode;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STSheetState;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.WorkbookDocument;

/* loaded from: classes13.dex */
public class XSSFWorkbook extends POIXMLDocument implements Workbook, Date1904Support {
    private static final Pattern COMMA_PATTERN = Pattern.compile(",");
    private static final Pattern GET_ALL_PICTURES_PATTERN = Pattern.compile("/xl/media/.*?");
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFWorkbook.class);
    public static final int PICTURE_TYPE_BMP = 11;
    public static final int PICTURE_TYPE_EPS = 10;
    public static final int PICTURE_TYPE_GIF = 8;
    public static final int PICTURE_TYPE_TIFF = 9;
    public static final int PICTURE_TYPE_WPG = 12;
    private XSSFCreationHelper _creationHelper;
    private Row.MissingCellPolicy _missingCellPolicy;
    private final IndexedUDFFinder _udfFinder;
    private CalculationChain calcChain;
    private boolean cellFormulaValidation;
    private List<ExternalLinksTable> externalLinks;
    private XSSFDataFormat formatter;
    private MapInfo mapInfo;
    private List<XSSFName> namedRanges;
    private ListValuedMap<String, XSSFName> namedRangesByName;
    private List<XSSFPictureData> pictures;
    private List<CTPivotCache> pivotCaches;
    private List<XSSFPivotTable> pivotTables;
    private SharedStringsTable sharedStringSource;
    private List<XSSFSheet> sheets;
    private StylesTable stylesSource;
    private CTWorkbook workbook;
    private final XSSFFactory xssfFactory;

    /* renamed from: org.apache.poi.xssf.usermodel.XSSFWorkbook$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199861 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility;

        static {
            int[] iArr = new int[SheetVisibility.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility = iArr;
            try {
                iArr[SheetVisibility.VISIBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility[SheetVisibility.HIDDEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility[SheetVisibility.VERY_HIDDEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public final class SheetIterator<T extends Sheet> implements Iterator<T> {

        /* renamed from: it */
        private final Iterator<T> f111835it;

        public SheetIterator() {
            this.f111835it = XSSFWorkbook.this.sheets.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f111835it.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() throws IllegalStateException {
            throw new UnsupportedOperationException("remove method not supported on XSSFWorkbook.iterator(). Use Sheet.removeSheetAt(int) instead.");
        }

        @Override // java.util.Iterator
        public T next() throws NoSuchElementException {
            return this.f111835it.next();
        }
    }

    public XSSFWorkbook() {
        this(XSSFWorkbookType.XLSX);
    }

    private static boolean addRelation(POIXMLDocumentPart.RelationPart relationPart, POIXMLDocumentPart pOIXMLDocumentPart) {
        PackageRelationship relationship = relationPart.getRelationship();
        if (relationship.getTargetMode() == TargetMode.EXTERNAL) {
            pOIXMLDocumentPart.getPackagePart().addRelationship(relationship.getTargetURI(), relationship.getTargetMode(), relationship.getRelationshipType(), relationship.getId());
            return true;
        }
        XSSFRelation xSSFRelation = XSSFRelation.getInstance(relationship.getRelationshipType());
        if (xSSFRelation == null) {
            LOG.atWarn().log("Can't clone sheet relationship (some data will be lost in the cloned sheet) - unknown relation type found: {}", relationship.getRelationshipType());
            return false;
        }
        pOIXMLDocumentPart.addRelation(relationship.getId(), xSSFRelation, relationPart.getDocumentPart());
        return true;
    }

    private CTSheet addSheet(String str) {
        CTSheet addNewSheet = this.workbook.getSheets().addNewSheet();
        addNewSheet.setName(str);
        return addNewSheet;
    }

    private boolean containsSheet(String str, int i) {
        CTSheet[] sheetArray = this.workbook.getSheets().getSheetArray();
        if (str.length() > 31) {
            str = str.substring(0, 31);
        }
        for (int i2 = 0; i2 < sheetArray.length; i2++) {
            String name = sheetArray[i2].getName();
            if (name.length() > 31) {
                name = name.substring(0, 31);
            }
            if (i != i2 && str.equalsIgnoreCase(name)) {
                return true;
            }
        }
        return false;
    }

    private XSSFName createAndStoreName(CTDefinedName cTDefinedName) {
        XSSFName xSSFName = new XSSFName(cTDefinedName, this);
        this.namedRanges.add(xSSFName);
        this.namedRangesByName.put(cTDefinedName.getName().toLowerCase(Locale.ENGLISH), xSSFName);
        return xSSFName;
    }

    private static String getReferencePrintArea(String str, int i, int i2, int i3, int i4) {
        CellReference cellReference = new CellReference(str, i3, i, true, true);
        CellReference cellReference2 = new CellReference(str, i4, i2, true, true);
        return "$" + cellReference.getCellRefParts()[2] + "$" + cellReference.getCellRefParts()[1] + ":$" + cellReference2.getCellRefParts()[2] + "$" + cellReference2.getCellRefParts()[1];
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087 A[LOOP:0: B:13:0x0032->B:18:0x0087, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0086 A[SYNTHETIC] */
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
            int r5 = r8.getSheetIndex(r4)
            r6 = -1
            if (r5 != r6) goto L87
            return r4
        L87:
            r4 = r0
            goto L32
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xssf.usermodel.XSSFWorkbook.getUniqueSheetName(java.lang.String):java.lang.String");
    }

    public static OPCPackage newPackage(XSSFWorkbookType xSSFWorkbookType) {
        OPCPackage oPCPackage = null;
        try {
            oPCPackage = OPCPackage.create(new UnsynchronizedByteArrayOutputStream());
            PackagePartName createPartName = PackagingURIHelper.createPartName(XSSFRelation.WORKBOOK.getDefaultFileName());
            oPCPackage.addRelationship(createPartName, TargetMode.INTERNAL, PackageRelationshipTypes.CORE_DOCUMENT);
            oPCPackage.createPart(createPartName, xSSFWorkbookType.getContentType());
            oPCPackage.getPackageProperties().setCreatorProperty(POIXMLDocument.DOCUMENT_CREATOR);
            return oPCPackage;
        } catch (Exception e) {
            IOUtils.closeQuietly(oPCPackage);
            throw new POIXMLException(e);
        }
    }

    private void onSheetDelete(int i) {
        getSheetAt(i).onSheetDelete();
        this.workbook.getSheets().removeSheet(i);
        CalculationChain calculationChain = this.calcChain;
        if (calculationChain != null) {
            removeRelation(calculationChain);
            this.calcChain = null;
        }
        ArrayList arrayList = new ArrayList();
        for (XSSFName xSSFName : this.namedRanges) {
            CTDefinedName cTName = xSSFName.getCTName();
            if (cTName.isSetLocalSheetId()) {
                long j = i;
                if (cTName.getLocalSheetId() == j) {
                    arrayList.add(xSSFName);
                } else if (cTName.getLocalSheetId() > j) {
                    cTName.setLocalSheetId(cTName.getLocalSheetId() - 1);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            removeName((XSSFName) it2.next());
        }
    }

    private void onWorkbookCreate() {
        CTWorkbook newInstance = CTWorkbook.Factory.newInstance();
        this.workbook = newInstance;
        newInstance.addNewWorkbookPr().setDate1904(false);
        setBookViewsIfMissing();
        this.workbook.addNewSheets();
        getProperties().getExtendedProperties().getUnderlyingProperties().setApplication(POIXMLDocument.DOCUMENT_CREATOR);
        this.sharedStringSource = (SharedStringsTable) createRelationship(XSSFRelation.SHARED_STRINGS, this.xssfFactory);
        StylesTable stylesTable = (StylesTable) createRelationship(XSSFRelation.STYLES, this.xssfFactory);
        this.stylesSource = stylesTable;
        stylesTable.setWorkbook(this);
        this.namedRanges = new ArrayList();
        this.namedRangesByName = new ArrayListValuedHashMap();
        this.sheets = new ArrayList();
        this.pivotTables = new ArrayList();
        this.externalLinks = new ArrayList();
    }

    private void reprocessNamedRanges() {
        this.namedRangesByName = new ArrayListValuedHashMap();
        this.namedRanges = new ArrayList();
        if (this.workbook.isSetDefinedNames()) {
            for (CTDefinedName cTDefinedName : this.workbook.getDefinedNames().getDefinedNameArray()) {
                createAndStoreName(cTDefinedName);
            }
        }
    }

    private CTWorkbookProtection safeGetWorkbookProtection() {
        return !workbookProtectionPresent() ? this.workbook.addNewWorkbookProtection() : this.workbook.getWorkbookProtection();
    }

    private void saveCalculationChain() {
        CalculationChain calculationChain = this.calcChain;
        if (calculationChain == null || calculationChain.getCTCalcChain().sizeOfCArray() != 0) {
            return;
        }
        removeRelation(this.calcChain);
        this.calcChain = null;
    }

    private void saveNamedRanges() {
        if (this.namedRanges.isEmpty()) {
            if (this.workbook.isSetDefinedNames()) {
                this.workbook.unsetDefinedNames();
                return;
            }
            return;
        }
        CTDefinedNames newInstance = CTDefinedNames.Factory.newInstance();
        CTDefinedName[] cTDefinedNameArr = new CTDefinedName[this.namedRanges.size()];
        Iterator<XSSFName> it2 = this.namedRanges.iterator();
        int i = 0;
        while (it2.hasNext()) {
            cTDefinedNameArr[i] = it2.next().getCTName();
            i++;
        }
        newInstance.setDefinedNameArray(cTDefinedNameArr);
        if (this.workbook.isSetDefinedNames()) {
            this.workbook.unsetDefinedNames();
        }
        this.workbook.setDefinedNames(newInstance);
        reprocessNamedRanges();
    }

    private void setBookViewsIfMissing() {
        if (this.workbook.isSetBookViews()) {
            return;
        }
        this.workbook.addNewBookViews().addNewWorkbookView().setActiveTab(0L);
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

    private void updateNamedRangesAfterSheetReorder(int i, int i2) {
        for (XSSFName xSSFName : this.namedRanges) {
            int sheetIndex = xSSFName.getSheetIndex();
            if (sheetIndex != -1) {
                if (sheetIndex == i) {
                    xSSFName.setSheetIndex(i2);
                } else if (i2 <= sheetIndex && sheetIndex < i) {
                    xSSFName.setSheetIndex(sheetIndex + 1);
                } else if (i < sheetIndex && sheetIndex <= i2) {
                    xSSFName.setSheetIndex(sheetIndex - 1);
                }
            }
        }
    }

    private void validateSheetIndex(int i) {
        int size = this.sheets.size() - 1;
        if (i < 0 || i > size) {
            String str = "(0.." + size + MotionUtils.f31762d;
            if (size == -1) {
                str = "(no sheets)";
            }
            throw new IllegalArgumentException("Sheet index (" + i + ") is out of range " + str);
        }
    }

    private void validateSheetName(String str) throws IllegalArgumentException {
        if (containsSheet(str, this.sheets.size())) {
            throw new IllegalArgumentException("The workbook already contains a sheet named '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
    }

    private boolean workbookProtectionPresent() {
        return this.workbook.isSetWorkbookProtection();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int addOlePackage(byte[] bArr, String str, String str2, String str3) throws IOException {
        XSSFRelation xSSFRelation = XSSFRelation.OLEEMBEDDINGS;
        OPCPackage oPCPackage = getPackage();
        try {
            int unusedPartIndex = oPCPackage.getUnusedPartIndex(xSSFRelation.getDefaultFileName());
            PackagePart createPart = oPCPackage.createPart(PackagingURIHelper.createPartName(xSSFRelation.getFileName(unusedPartIndex)), xSSFRelation.getContentType());
            Ole10Native ole10Native = new Ole10Native(str, str2, str3, bArr);
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(bArr.length + 500);
            try {
                ole10Native.writeOut(unsynchronizedByteArrayOutputStream);
                POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem();
                try {
                    DirectoryNode root = pOIFSFileSystem.getRoot();
                    root.createDocument(Ole10Native.OLE10_NATIVE, unsynchronizedByteArrayOutputStream.toInputStream());
                    root.setStorageClsid(ClassIDPredefined.OLE_V1_PACKAGE.getClassID());
                    OutputStream outputStream = createPart.getOutputStream();
                    try {
                        pOIFSFileSystem.writeFilesystem(outputStream);
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        pOIFSFileSystem.close();
                        unsynchronizedByteArrayOutputStream.close();
                        return unusedPartIndex;
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        unsynchronizedByteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (InvalidFormatException e) {
            throw new IOException("ole object name not recognized", e);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int addPicture(byte[] bArr, int i) {
        int size = getAllPictures().size() + 1;
        XSSFPictureData xSSFPictureData = (XSSFPictureData) createRelationship(XSSFPictureData.RELATIONS[i], this.xssfFactory, size, true).getDocumentPart();
        try {
            OutputStream outputStream = xSSFPictureData.getPackagePart().getOutputStream();
            try {
                outputStream.write(bArr);
                outputStream.close();
                this.pictures.add(xSSFPictureData);
                return size - 1;
            } finally {
            }
        } catch (IOException e) {
            throw new POIXMLException(e);
        }
    }

    public CTPivotCache addPivotCache(String str) {
        CTWorkbook cTWorkbook = getCTWorkbook();
        CTPivotCache addNewPivotCache = (cTWorkbook.isSetPivotCaches() ? cTWorkbook.getPivotCaches() : cTWorkbook.addNewPivotCaches()).addNewPivotCache();
        addNewPivotCache.setCacheId(getPivotTables().size() + 1);
        addNewPivotCache.setId(str);
        if (this.pivotCaches == null) {
            this.pivotCaches = new ArrayList();
        }
        this.pivotCaches.add(addNewPivotCache);
        return addNewPivotCache;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void addToolPack(UDFFinder uDFFinder) {
        this._udfFinder.add(uDFFinder);
    }

    public void beforeDocumentRead() {
        if (getCorePart().getContentType().equals(XSSFRelation.XLSB_BINARY_WORKBOOK.getContentType())) {
            throw new XLSBUnsupportedException();
        }
        this.pivotTables = new ArrayList();
        this.pivotCaches = new ArrayList();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocument, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            IOUtils.closeQuietly(this.sharedStringSource);
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        saveNamedRanges();
        saveCalculationChain();
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTWorkbook.type.getName().getNamespaceURI(), "workbook"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.workbook.save(outputStream, xmlOptions);
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

    public XSSFName createBuiltInName(String str, int i) {
        validateSheetIndex(i);
        CTDefinedName addNewDefinedName = (this.workbook.getDefinedNames() == null ? this.workbook.addNewDefinedNames() : this.workbook.getDefinedNames()).addNewDefinedName();
        addNewDefinedName.setName(str);
        addNewDefinedName.setLocalSheetId(i);
        if (getBuiltInName(str, i) == null) {
            return createAndStoreName(addNewDefinedName);
        }
        throw new POIXMLException("Builtin (" + str + ") already exists for sheet (" + i + MotionUtils.f31762d);
    }

    public XSSFDialogsheet createDialogsheet(String str, CTDialogsheet cTDialogsheet) {
        return new XSSFDialogsheet(createSheet(str));
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getActiveSheetIndex() {
        return (int) this.workbook.getBookViews().getWorkbookViewArray(0).getActiveTab();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocument
    public List<PackagePart> getAllEmbeddedParts() throws OpenXML4JException {
        LinkedList linkedList = new LinkedList();
        for (XSSFSheet xSSFSheet : this.sheets) {
            Iterator<PackageRelationship> it2 = xSSFSheet.getPackagePart().getRelationshipsByType(XSSFRelation.OLEEMBEDDINGS.getRelation()).iterator();
            while (it2.hasNext()) {
                linkedList.add(xSSFSheet.getPackagePart().getRelatedPart(it2.next()));
            }
            Iterator<PackageRelationship> it3 = xSSFSheet.getPackagePart().getRelationshipsByType(XSSFRelation.PACKEMBEDDINGS.getRelation()).iterator();
            while (it3.hasNext()) {
                linkedList.add(xSSFSheet.getPackagePart().getRelatedPart(it3.next()));
            }
        }
        return linkedList;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<XSSFName> getAllNames() {
        return Collections.unmodifiableList(this.namedRanges);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<XSSFPictureData> getAllPictures() {
        if (this.pictures == null) {
            List<PackagePart> partsByName = getPackage().getPartsByName(GET_ALL_PICTURES_PATTERN);
            this.pictures = new ArrayList(partsByName.size());
            Iterator<PackagePart> it2 = partsByName.iterator();
            while (it2.hasNext()) {
                this.pictures.add(new XSSFPictureData(it2.next()));
            }
        }
        return this.pictures;
    }

    public XSSFName getBuiltInName(String str, int i) {
        for (XSSFName xSSFName : this.namedRangesByName.get((ListValuedMap<String, XSSFName>) str.toLowerCase(Locale.ENGLISH))) {
            if (xSSFName.getSheetIndex() == i) {
                return xSSFName;
            }
        }
        return null;
    }

    @Internal
    public CTWorkbook getCTWorkbook() {
        return this.workbook;
    }

    @Internal
    public CalculationChain getCalculationChain() {
        return this.calcChain;
    }

    public boolean getCellFormulaValidation() {
        return this.cellFormulaValidation;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public CellReferenceType getCellReferenceType() {
        CTCalcPr calcPr = getCTWorkbook().getCalcPr();
        return calcPr == null ? CellReferenceType.UNKNOWN : calcPr.getRefMode() == STRefMode.R_1_C_1 ? CellReferenceType.R1C1 : calcPr.getRefMode() == STRefMode.A_1 ? CellReferenceType.A1 : CellReferenceType.UNKNOWN;
    }

    public Collection<XSSFMap> getCustomXMLMappings() {
        MapInfo mapInfo = this.mapInfo;
        return mapInfo == null ? new ArrayList() : mapInfo.getAllXSSFMaps();
    }

    @Internal
    public List<ExternalLinksTable> getExternalLinksTable() {
        return this.externalLinks;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getFirstVisibleTab() {
        return (short) this.workbook.getBookViews().getWorkbookViewArray(0).getFirstSheet();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean getForceFormulaRecalculation() {
        CTCalcPr calcPr = getCTWorkbook().getCalcPr();
        return calcPr != null && calcPr.isSetFullCalcOnLoad() && calcPr.getFullCalcOnLoad();
    }

    @Internal
    public MapInfo getMapInfo() {
        return this.mapInfo;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Row.MissingCellPolicy getMissingCellPolicy() {
        return this._missingCellPolicy;
    }

    @Deprecated
    public XSSFName getNameAt(int i) {
        int size = this.namedRanges.size();
        if (size < 1) {
            throw new IllegalStateException("There are no defined names in this workbook");
        }
        if (i >= 0 && i <= size) {
            return this.namedRanges.get(i);
        }
        throw new IllegalArgumentException("Specified name index " + i + " is outside the allowable range (0.." + (size - 1) + ").");
    }

    @Deprecated
    public int getNameIndex(String str) {
        XSSFName name = getName(str);
        if (name != null) {
            return this.namedRanges.indexOf(name);
        }
        return -1;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<XSSFName> getNames(String str) {
        return Collections.unmodifiableList(this.namedRangesByName.get((ListValuedMap<String, XSSFName>) str.toLowerCase(Locale.ENGLISH)));
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumCellStyles() {
        return this.stylesSource.getNumCellStyles();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfFonts() {
        return this.stylesSource.getFonts().size();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @Removal(version = "6.0.0")
    @Deprecated
    public int getNumberOfFontsAsInt() {
        return getNumberOfFonts();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfNames() {
        return this.namedRanges.size();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfSheets() {
        return this.sheets.size();
    }

    public List<XSSFPivotTable> getPivotTables() {
        return this.pivotTables;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public String getPrintArea(int i) {
        XSSFName builtInName = getBuiltInName(XSSFName.BUILTIN_PRINT_AREA, i);
        if (builtInName == null) {
            return null;
        }
        return builtInName.getRefersToFormula();
    }

    @Internal
    public SharedStringsTable getSharedStringSource() {
        return this.sharedStringSource;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getSheetIndex(String str) {
        Iterator<XSSFSheet> it2 = this.sheets.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (str.equalsIgnoreCase(it2.next().getSheetName())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public String getSheetName(int i) {
        validateSheetIndex(i);
        return this.sheets.get(i).getSheetName();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SheetVisibility getSheetVisibility(int i) {
        validateSheetIndex(i);
        STSheetState.Enum state = this.sheets.get(i).sheet.getState();
        if (state == STSheetState.VISIBLE) {
            return SheetVisibility.VISIBLE;
        }
        if (state == STSheetState.HIDDEN) {
            return SheetVisibility.HIDDEN;
        }
        if (state == STSheetState.VERY_HIDDEN) {
            return SheetVisibility.VERY_HIDDEN;
        }
        throw new IllegalArgumentException("This should never happen");
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SpreadsheetVersion getSpreadsheetVersion() {
        return SpreadsheetVersion.EXCEL2007;
    }

    public StylesTable getStylesSource() {
        return this.stylesSource;
    }

    public XSSFTable getTable(String str) {
        List<XSSFSheet> list;
        if (str == null || (list = this.sheets) == null) {
            return null;
        }
        Iterator<XSSFSheet> it2 = list.iterator();
        while (it2.hasNext()) {
            for (XSSFTable xSSFTable : it2.next().getTables()) {
                if (str.equalsIgnoreCase(xSSFTable.getName())) {
                    return xSSFTable;
                }
            }
        }
        return null;
    }

    public ThemesTable getTheme() {
        StylesTable stylesTable = this.stylesSource;
        if (stylesTable == null) {
            return null;
        }
        return stylesTable.getTheme();
    }

    public UDFFinder getUDFFinder() {
        return this._udfFinder;
    }

    public XSSFWorkbookType getWorkbookType() {
        return isMacroEnabled() ? XSSFWorkbookType.XLSM : XSSFWorkbookType.XLSX;
    }

    public XSSFFactory getXssfFactory() {
        return this.xssfFactory;
    }

    @Override // org.apache.poi.ss.usermodel.Date1904Support
    @Internal
    public boolean isDate1904() {
        CTWorkbookPr workbookPr = this.workbook.getWorkbookPr();
        return workbookPr != null && workbookPr.getDate1904();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @NotImplemented
    public boolean isHidden() {
        throw new IllegalStateException("Not implemented yet");
    }

    public boolean isMacroEnabled() {
        return getPackagePart().getContentType().equals(XSSFRelation.MACROS_WORKBOOK.getContentType());
    }

    public boolean isRevisionLocked() {
        return workbookProtectionPresent() && this.workbook.getWorkbookProtection().getLockRevision();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean isSheetHidden(int i) {
        validateSheetIndex(i);
        return this.sheets.get(i).sheet.getState() == STSheetState.HIDDEN;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean isSheetVeryHidden(int i) {
        validateSheetIndex(i);
        return this.sheets.get(i).sheet.getState() == STSheetState.VERY_HIDDEN;
    }

    public boolean isStructureLocked() {
        return workbookProtectionPresent() && this.workbook.getWorkbookProtection().getLockStructure();
    }

    public boolean isWindowsLocked() {
        return workbookProtectionPresent() && this.workbook.getWorkbookProtection().getLockWindows();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook, java.lang.Iterable
    public Iterator<Sheet> iterator() {
        return sheetIterator();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int linkExternalWorkbook(String str, Workbook workbook) {
        int i;
        if (getCreationHelper().getReferencedWorkbooks().containsKey(str)) {
            Iterator<POIXMLDocumentPart.RelationPart> it2 = getRelationParts().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                }
                POIXMLDocumentPart.RelationPart next = it2.next();
                if ((next.getDocumentPart() instanceof ExternalLinksTable) && ((ExternalLinksTable) next.getDocumentPart()).getLinkedFileName().equals(str)) {
                    String uri = next.getRelationship().getTargetURI().toString();
                    String defaultFileName = XSSFRelation.EXTERNAL_LINKS.getDefaultFileName();
                    i = Integer.parseInt(uri.substring(defaultFileName.indexOf(35), defaultFileName.indexOf(46)));
                    break;
                }
            }
        } else {
            XSSFRelation xSSFRelation = XSSFRelation.EXTERNAL_LINKS;
            i = getNextPartNumber(xSSFRelation, getPackagePart().getPackage().getPartsByContentType(xSSFRelation.getContentType()).size() + 1);
            POIXMLDocumentPart.RelationPart createRelationship = createRelationship(xSSFRelation, this.xssfFactory, i, false);
            ExternalLinksTable externalLinksTable = (ExternalLinksTable) createRelationship.getDocumentPart();
            externalLinksTable.setLinkedFileName(str);
            getExternalLinksTable().add(externalLinksTable);
            getCTWorkbook().addNewExternalReferences().addNewExternalReference().setId(createRelationship.getRelationship().getId());
        }
        getCreationHelper().addExternalWorkbook(str, workbook);
        return i;
    }

    public void lockRevision() {
        safeGetWorkbookProtection().setLockRevision(true);
    }

    public void lockStructure() {
        safeGetWorkbookProtection().setLockStructure(true);
    }

    public void lockWindows() {
        safeGetWorkbookProtection().setLockWindows(true);
    }

    public void onDeleteFormula(XSSFCell xSSFCell) {
        if (this.calcChain != null) {
            this.calcChain.removeItem((int) xSSFCell.getSheet().sheet.getSheetId(), xSSFCell.getReference());
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        try {
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                this.workbook = WorkbookDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getWorkbook();
                if (inputStream != null) {
                    inputStream.close();
                }
                HashMap hashMap = new HashMap();
                HashMap hashMap2 = new HashMap();
                ThemesTable themesTable = null;
                for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
                    POIXMLDocumentPart documentPart = relationPart.getDocumentPart();
                    if (documentPart instanceof SharedStringsTable) {
                        this.sharedStringSource = (SharedStringsTable) documentPart;
                    } else if (documentPart instanceof StylesTable) {
                        this.stylesSource = (StylesTable) documentPart;
                    } else if (documentPart instanceof ThemesTable) {
                        themesTable = (ThemesTable) documentPart;
                    } else if (documentPart instanceof CalculationChain) {
                        this.calcChain = (CalculationChain) documentPart;
                    } else if (documentPart instanceof MapInfo) {
                        this.mapInfo = (MapInfo) documentPart;
                    } else if (documentPart instanceof XSSFSheet) {
                        hashMap.put(relationPart.getRelationship().getId(), (XSSFSheet) documentPart);
                    } else if (documentPart instanceof ExternalLinksTable) {
                        hashMap2.put(relationPart.getRelationship().getId(), (ExternalLinksTable) documentPart);
                    }
                }
                boolean z = getPackage().getPackageAccess() == PackageAccess.READ;
                if (this.stylesSource == null) {
                    if (z) {
                        this.stylesSource = new StylesTable();
                    } else {
                        this.stylesSource = (StylesTable) createRelationship(XSSFRelation.STYLES, this.xssfFactory);
                    }
                }
                this.stylesSource.setWorkbook(this);
                this.stylesSource.setTheme(themesTable);
                if (this.sharedStringSource == null) {
                    if (z) {
                        this.sharedStringSource = new SharedStringsTable();
                    } else {
                        this.sharedStringSource = (SharedStringsTable) createRelationship(XSSFRelation.SHARED_STRINGS, this.xssfFactory);
                    }
                }
                this.sheets = new ArrayList(hashMap.size());
                CTWorkbook cTWorkbook = this.workbook;
                if (cTWorkbook == null || cTWorkbook.getSheets() == null || this.workbook.getSheets().getSheetArray() == null) {
                    throw new POIXMLException("Cannot read a workbook without sheets");
                }
                for (CTSheet cTSheet : this.workbook.getSheets().getSheetArray()) {
                    parseSheet(hashMap, cTSheet);
                }
                this.externalLinks = new ArrayList(hashMap2.size());
                if (this.workbook.isSetExternalReferences()) {
                    for (CTExternalReference cTExternalReference : this.workbook.getExternalReferences().getExternalReferenceArray()) {
                        ExternalLinksTable externalLinksTable = (ExternalLinksTable) hashMap2.get(cTExternalReference.getId());
                        if (externalLinksTable == null) {
                            LOG.atWarn().log("ExternalLinksTable with r:id {} was defined, but didn't exist in package, skipping", cTExternalReference.getId());
                        } else {
                            this.externalLinks.add(externalLinksTable);
                        }
                    }
                }
                reprocessNamedRanges();
            } finally {
            }
        } catch (XmlException e) {
            throw new POIXMLException(e);
        }
    }

    public void parseSheet(Map<String, XSSFSheet> map, CTSheet cTSheet) {
        XSSFSheet xSSFSheet = map.get(cTSheet.getId());
        if (xSSFSheet == null) {
            LOG.atWarn().log("Sheet with name {} and r:id {} was defined, but didn't exist in package, skipping", cTSheet.getName(), cTSheet.getId());
            return;
        }
        xSSFSheet.sheet = cTSheet;
        xSSFSheet.onDocumentRead();
        this.sheets.add(xSSFSheet);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removeName(Name name) {
        if (this.namedRangesByName.removeMapping(name.getNameName().toLowerCase(Locale.ENGLISH), name) && this.namedRanges.remove(name)) {
            return;
        }
        throw new IllegalArgumentException("Name was not found: " + name);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removePrintArea(int i) {
        XSSFName builtInName = getBuiltInName(XSSFName.BUILTIN_PRINT_AREA, i);
        if (builtInName != null) {
            removeName(builtInName);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removeSheetAt(int i) {
        validateSheetIndex(i);
        onSheetDelete(i);
        removeRelation(getSheetAt(i));
        this.sheets.remove(i);
        if (this.sheets.isEmpty()) {
            return;
        }
        int size = i >= this.sheets.size() ? this.sheets.size() - 1 : i;
        int activeSheetIndex = getActiveSheetIndex();
        if (activeSheetIndex == i) {
            setActiveSheet(size);
        } else if (activeSheetIndex > i) {
            setActiveSheet(activeSheetIndex - 1);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setActiveSheet(int i) {
        validateSheetIndex(i);
        for (CTBookView cTBookView : this.workbook.getBookViews().getWorkbookViewArray()) {
            cTBookView.setActiveTab(i);
        }
    }

    public void setCellFormulaValidation(boolean z) {
        this.cellFormulaValidation = z;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setCellReferenceType(CellReferenceType cellReferenceType) {
        CTCalcPr calcPr = getCTWorkbook().getCalcPr();
        if (cellReferenceType == CellReferenceType.UNKNOWN) {
            if (calcPr != null) {
                calcPr.unsetRefMode();
            }
        } else {
            if (calcPr == null) {
                calcPr = getCTWorkbook().addNewCalcPr();
            }
            calcPr.setRefMode(cellReferenceType == CellReferenceType.R1C1 ? STRefMode.R_1_C_1 : STRefMode.A_1);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setFirstVisibleTab(int i) {
        this.workbook.getBookViews().getWorkbookViewArray(0).setFirstSheet(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setForceFormulaRecalculation(boolean z) {
        CTWorkbook cTWorkbook = getCTWorkbook();
        CTCalcPr calcPr = cTWorkbook.isSetCalcPr() ? cTWorkbook.getCalcPr() : cTWorkbook.addNewCalcPr();
        calcPr.setFullCalcOnLoad(z);
        if (z && calcPr.getCalcMode() == STCalcMode.MANUAL) {
            calcPr.setCalcMode(STCalcMode.AUTO);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @NotImplemented
    public void setHidden(boolean z) {
        throw new IllegalStateException("Not implemented yet");
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setMissingCellPolicy(Row.MissingCellPolicy missingCellPolicy) {
        this._missingCellPolicy = missingCellPolicy;
    }

    public void setPivotTables(List<XSSFPivotTable> list) {
        this.pivotTables = list;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setPrintArea(int i, String str) {
        XSSFName builtInName = getBuiltInName(XSSFName.BUILTIN_PRINT_AREA, i);
        if (builtInName == null) {
            builtInName = createBuiltInName(XSSFName.BUILTIN_PRINT_AREA, i);
        }
        String[] split = COMMA_PATTERN.split(str);
        StringBuilder sb = new StringBuilder(32);
        for (int i2 = 0; i2 < split.length; i2++) {
            if (i2 > 0) {
                sb.append(',');
            }
            SheetNameFormatter.appendFormat(sb, getSheetName(i));
            sb.append(PublicSuffixDatabase.f103895g);
            sb.append(split[i2]);
        }
        builtInName.setRefersToFormula(sb.toString());
    }

    public void setRevisionsPassword(String str, HashAlgorithm hashAlgorithm) {
        if (str != null || workbookProtectionPresent()) {
            XSSFPasswordHelper.setPassword(safeGetWorkbookProtection(), str, hashAlgorithm, "revisions");
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSelectedTab(int i) {
        Iterator<XSSFSheet> it2 = this.sheets.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            it2.next().setSelected(i2 == i);
            i2++;
        }
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
        validateSheetIndex(i);
        String sheetName = getSheetName(i);
        if (str.length() > 31) {
            str = str.substring(0, 31);
        }
        WorkbookUtil.validateSheetName(str);
        if (str.equals(sheetName)) {
            return;
        }
        if (containsSheet(str, i)) {
            throw new IllegalArgumentException("The workbook already contains a sheet of this name");
        }
        new XSSFFormulaUtils(this).updateSheetName(i, sheetName, str);
        this.workbook.getSheets().getSheetArray(i).setName(str);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetOrder(String str, int i) {
        int sheetIndex = getSheetIndex(str);
        List<XSSFSheet> list = this.sheets;
        list.add(i, list.remove(sheetIndex));
        CTSheets sheets = this.workbook.getSheets();
        XmlObject copy = sheets.getSheetArray(sheetIndex).copy();
        this.workbook.getSheets().removeSheet(sheetIndex);
        sheets.insertNewSheet(i).set(copy);
        CTSheet[] sheetArray = sheets.getSheetArray();
        for (int i2 = 0; i2 < sheetArray.length; i2++) {
            this.sheets.get(i2).sheet = sheetArray[i2];
        }
        updateNamedRangesAfterSheetReorder(sheetIndex, i);
        updateActiveSheetAfterSheetReorder(sheetIndex, i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetVisibility(int i, SheetVisibility sheetVisibility) {
        validateSheetIndex(i);
        CTSheet cTSheet = this.sheets.get(i).sheet;
        int i2 = C199861.$SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility[sheetVisibility.ordinal()];
        if (i2 == 1) {
            cTSheet.setState(STSheetState.VISIBLE);
        } else if (i2 == 2) {
            cTSheet.setState(STSheetState.HIDDEN);
        } else {
            if (i2 != 3) {
                throw new IllegalArgumentException("This should never happen");
            }
            cTSheet.setState(STSheetState.VERY_HIDDEN);
        }
    }

    public void setVBAProject(InputStream inputStream) throws IOException {
        OutputStream outputStream;
        if (!isMacroEnabled()) {
            setWorkbookType(XSSFWorkbookType.XLSM);
        }
        try {
            XSSFRelation xSSFRelation = XSSFRelation.VBA_MACROS;
            PackagePartName createPartName = PackagingURIHelper.createPartName(xSSFRelation.getDefaultFileName());
            OPCPackage oPCPackage = getPackage();
            if (!oPCPackage.containPart(createPartName)) {
                outputStream = createRelationship(xSSFRelation, this.xssfFactory).getPackagePart().getOutputStream();
            } else {
                outputStream = oPCPackage.getPart(createPartName).getOutputStream();
            }
            try {
                IOUtils.copy(inputStream, outputStream);
            } finally {
                IOUtils.closeQuietly(outputStream);
            }
        } catch (InvalidFormatException e) {
            throw new POIXMLException(e);
        }
    }

    public void setWorkbookPassword(String str, HashAlgorithm hashAlgorithm) {
        if (str != null || workbookProtectionPresent()) {
            XSSFPasswordHelper.setPassword(safeGetWorkbookProtection(), str, hashAlgorithm, "workbook");
        }
    }

    public void setWorkbookType(XSSFWorkbookType xSSFWorkbookType) {
        try {
            getPackagePart().setContentType(xSSFWorkbookType.getContentType());
        } catch (InvalidFormatException e) {
            throw new POIXMLException(e);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Iterator<Sheet> sheetIterator() {
        return new SheetIterator();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook, java.lang.Iterable
    public Spliterator<Sheet> spliterator() {
        return this.sheets.spliterator();
    }

    public void unLock() {
        if (workbookProtectionPresent()) {
            this.workbook.unsetWorkbookProtection();
        }
    }

    public void unLockRevision() {
        safeGetWorkbookProtection().setLockRevision(false);
    }

    public void unLockStructure() {
        safeGetWorkbookProtection().setLockStructure(false);
    }

    public void unLockWindows() {
        safeGetWorkbookProtection().setLockWindows(false);
    }

    public void updateName(XSSFName xSSFName, String str) {
        ListValuedMap<String, XSSFName> listValuedMap = this.namedRangesByName;
        Locale locale = Locale.ENGLISH;
        if (listValuedMap.removeMapping(str.toLowerCase(locale), xSSFName)) {
            this.namedRangesByName.put(xSSFName.getNameName().toLowerCase(locale), xSSFName);
            return;
        }
        throw new IllegalArgumentException("Name was not found: " + xSSFName);
    }

    public boolean validateRevisionsPassword(String str) {
        return !workbookProtectionPresent() ? str == null : XSSFPasswordHelper.validatePassword(safeGetWorkbookProtection(), str, "revisions");
    }

    public boolean validateWorkbookPassword(String str) {
        return !workbookProtectionPresent() ? str == null : XSSFPasswordHelper.validatePassword(safeGetWorkbookProtection(), str, "workbook");
    }

    public XSSFWorkbook(XSSFFactory xSSFFactory) {
        this(XSSFWorkbookType.XLSX, xSSFFactory);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFSheet cloneSheet(int i) {
        return cloneSheet(i, null);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFCellStyle createCellStyle() {
        return this.stylesSource.createCellStyle();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFDataFormat createDataFormat() {
        if (this.formatter == null) {
            this.formatter = new XSSFDataFormat(this.stylesSource);
        }
        return this.formatter;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFEvaluationWorkbook createEvaluationWorkbook() {
        return XSSFEvaluationWorkbook.create(this);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFFont createFont() {
        XSSFFont xSSFFont = new XSSFFont();
        xSSFFont.registerTo(this.stylesSource);
        return xSSFFont;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFName createName() {
        CTDefinedName newInstance = CTDefinedName.Factory.newInstance();
        newInstance.setName("");
        return createAndStoreName(newInstance);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFFont findFont(boolean z, short s, short s2, String str, boolean z2, boolean z3, short s3, byte b) {
        return this.stylesSource.findFont(z, s, s2, str, z2, z3, s3, b);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFCellStyle getCellStyleAt(int i) {
        return this.stylesSource.getStyleAt(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFCreationHelper getCreationHelper() {
        if (this._creationHelper == null) {
            this._creationHelper = new XSSFCreationHelper(this);
        }
        return this._creationHelper;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFFont getFontAt(int i) {
        return this.stylesSource.getFontAt(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFName getName(String str) {
        List<XSSFName> names = getNames(str);
        if (names.isEmpty()) {
            return null;
        }
        return names.iterator().next();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFSheet getSheet(String str) {
        for (XSSFSheet xSSFSheet : this.sheets) {
            if (str.equalsIgnoreCase(xSSFSheet.getSheetName())) {
                return xSSFSheet;
            }
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFSheet getSheetAt(int i) {
        validateSheetIndex(i);
        return this.sheets.get(i);
    }

    public XSSFWorkbook(XSSFWorkbookType xSSFWorkbookType) {
        this(xSSFWorkbookType, (XSSFFactory) null);
    }

    public XSSFSheet cloneSheet(int i, String str) {
        validateSheetIndex(i);
        XSSFSheet xSSFSheet = this.sheets.get(i);
        if (str == null) {
            str = getUniqueSheetName(xSSFSheet.getSheetName());
        } else {
            validateSheetName(str);
        }
        XSSFSheet createSheet = createSheet(str);
        XSSFDrawing xSSFDrawing = null;
        for (POIXMLDocumentPart.RelationPart relationPart : xSSFSheet.getRelationParts()) {
            POIXMLDocumentPart documentPart = relationPart.getDocumentPart();
            if (documentPart instanceof XSSFDrawing) {
                xSSFDrawing = (XSSFDrawing) documentPart;
            } else {
                addRelation(relationPart, createSheet);
            }
        }
        try {
            Iterator<PackageRelationship> it2 = xSSFSheet.getPackagePart().getRelationships().iterator();
            while (it2.hasNext()) {
                PackageRelationship next = it2.next();
                if (next.getTargetMode() == TargetMode.EXTERNAL) {
                    createSheet.getPackagePart().addExternalRelationship(next.getTargetURI().toASCIIString(), next.getRelationshipType(), next.getId());
                }
            }
            try {
                UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                try {
                    xSSFSheet.write(unsynchronizedByteArrayOutputStream);
                    InputStream inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
                    try {
                        createSheet.read(inputStream);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        unsynchronizedByteArrayOutputStream.close();
                        CTWorksheet cTWorksheet = createSheet.getCTWorksheet();
                        if (cTWorksheet.isSetLegacyDrawing()) {
                            LOG.atWarn().log("Cloning sheets with comments is not yet supported.");
                            cTWorksheet.unsetLegacyDrawing();
                        }
                        if (cTWorksheet.isSetPageSetup()) {
                            LOG.atWarn().log("Cloning sheets with page setup is not yet supported.");
                            cTWorksheet.unsetPageSetup();
                        }
                        createSheet.setSelected(false);
                        if (xSSFDrawing != null) {
                            if (cTWorksheet.isSetDrawing()) {
                                cTWorksheet.unsetDrawing();
                            }
                            XSSFDrawing createDrawingPatriarch = createSheet.createDrawingPatriarch();
                            createDrawingPatriarch.getCTDrawing().set(xSSFDrawing.getCTDrawing().copy());
                            XSSFDrawing drawingPatriarch = xSSFSheet.getDrawingPatriarch();
                            if (drawingPatriarch != null) {
                                for (POIXMLDocumentPart.RelationPart relationPart2 : drawingPatriarch.getRelationParts()) {
                                    POIXMLDocumentPart documentPart2 = relationPart2.getDocumentPart();
                                    if (documentPart2 instanceof XSSFChart) {
                                        XSSFChart xSSFChart = (XSSFChart) createDrawingPatriarch.createChartRelationPart().getDocumentPart();
                                        xSSFChart.importContent((XSSFChart) documentPart2);
                                        xSSFChart.replaceReferences(createSheet);
                                    } else {
                                        addRelation(relationPart2, createDrawingPatriarch);
                                    }
                                }
                            }
                        }
                        XSSFSheet.cloneTables(createSheet);
                        return createSheet;
                    } finally {
                    }
                } finally {
                }
            } catch (IOException e) {
                throw new POIXMLException("Failed to clone sheet", e);
            }
        } catch (InvalidFormatException e2) {
            throw new POIXMLException("Failed to clone sheet", e2);
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFSheet createSheet() {
        String str = "Sheet" + this.sheets.size();
        int i = 0;
        while (getSheet(str) != null) {
            str = "Sheet" + i;
            i++;
        }
        return createSheet(str);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getSheetIndex(Sheet sheet) {
        Iterator<XSSFSheet> it2 = this.sheets.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next() == sheet) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private XSSFWorkbook(XSSFWorkbookType xSSFWorkbookType, XSSFFactory xSSFFactory) {
        super(newPackage(xSSFWorkbookType));
        this._udfFinder = new IndexedUDFFinder(AggregatingUDFFinder.DEFAULT);
        this._missingCellPolicy = Row.MissingCellPolicy.RETURN_NULL_AND_BLANK;
        this.cellFormulaValidation = true;
        this.xssfFactory = xSSFFactory == null ? XSSFFactory.getInstance() : xSSFFactory;
        onWorkbookCreate();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public XSSFSheet createSheet(String str) {
        if (str != null) {
            validateSheetName(str);
            if (str.length() > 31) {
                String substring = str.substring(0, 31);
                LOG.atWarn().log("Sheet '{}' will be added with a trimmed name '{}' for MS Excel compliance.", str, substring);
                str = substring;
            }
            WorkbookUtil.validateSheetName(str);
            CTSheet addSheet = addSheet(str);
            int i = 1;
            loop0: while (true) {
                Iterator<XSSFSheet> it2 = this.sheets.iterator();
                while (it2.hasNext()) {
                    i = (int) Math.max(it2.next().sheet.getSheetId() + 1, i);
                }
                String fileName = XSSFRelation.WORKSHEET.getFileName(i);
                for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
                    if (pOIXMLDocumentPart.getPackagePart() == null || !fileName.equals(pOIXMLDocumentPart.getPackagePart().getPartName().getName())) {
                    }
                }
                i++;
            }
            POIXMLDocumentPart.RelationPart createRelationship = createRelationship(XSSFRelation.WORKSHEET, this.xssfFactory, i, false);
            XSSFSheet xSSFSheet = (XSSFSheet) createRelationship.getDocumentPart();
            xSSFSheet.sheet = addSheet;
            addSheet.setId(createRelationship.getRelationship().getId());
            addSheet.setSheetId(i);
            if (this.sheets.isEmpty()) {
                xSSFSheet.setSelected(true);
            }
            this.sheets.add(xSSFSheet);
            return xSSFSheet;
        }
        throw new IllegalArgumentException("sheetName must not be null");
    }

    public XSSFWorkbook(OPCPackage oPCPackage) throws IOException {
        super(oPCPackage);
        this._udfFinder = new IndexedUDFFinder(AggregatingUDFFinder.DEFAULT);
        this._missingCellPolicy = Row.MissingCellPolicy.RETURN_NULL_AND_BLANK;
        this.cellFormulaValidation = true;
        XSSFFactory xSSFFactory = XSSFFactory.getInstance();
        this.xssfFactory = xSSFFactory;
        beforeDocumentRead();
        load(xSSFFactory);
        setBookViewsIfMissing();
    }

    public int addPicture(InputStream inputStream, int i) throws IOException {
        int size = getAllPictures().size() + 1;
        XSSFPictureData xSSFPictureData = (XSSFPictureData) createRelationship(XSSFPictureData.RELATIONS[i], this.xssfFactory, size, true).getDocumentPart();
        OutputStream outputStream = xSSFPictureData.getPackagePart().getOutputStream();
        try {
            IOUtils.copy(inputStream, outputStream);
            if (outputStream != null) {
                outputStream.close();
            }
            this.pictures.add(xSSFPictureData);
            return size - 1;
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

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setPrintArea(int i, int i2, int i3, int i4, int i5) {
        setPrintArea(i, getReferencePrintArea(getSheetName(i), i2, i3, i4, i5));
    }

    public void setVBAProject(XSSFWorkbook xSSFWorkbook) throws IOException, InvalidFormatException {
        InputStream contents;
        if (xSSFWorkbook.isMacroEnabled() && (contents = XSSFRelation.VBA_MACROS.getContents(xSSFWorkbook.getCorePart())) != null) {
            setVBAProject(contents);
        }
    }

    public XSSFWorkbook(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    private XSSFWorkbook(InputStream inputStream, boolean z) throws IOException {
        this(PackageHelper.open(inputStream, z));
    }

    public XSSFWorkbook(File file) throws IOException, InvalidFormatException {
        this(OPCPackage.open(file));
    }

    public XSSFWorkbook(String str) throws IOException {
        this(POIXMLDocument.openPackage(str));
    }

    public XSSFWorkbook(PackagePart packagePart) throws IOException {
        this(packagePart.getInputStream(), true);
    }
}
