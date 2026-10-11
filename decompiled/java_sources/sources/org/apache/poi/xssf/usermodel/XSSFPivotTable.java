package org.apache.poi.xssf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.usermodel.DataConsolidateFunction;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;
import org.apache.poi.util.StringUtil;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCacheSource;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTItems;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTLocation;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPageFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotField;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRowFields;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheetSource;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STAxis;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataConsolidateFunction;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STItemType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STSourceType;

/* loaded from: classes13.dex */
public class XSSFPivotTable extends POIXMLDocumentPart {
    protected static final short CREATED_VERSION = 3;
    protected static final short MIN_REFRESHABLE_VERSION = 3;
    protected static final short UPDATED_VERSION = 3;
    private Sheet dataSheet;
    private Sheet parentSheet;
    private XSSFPivotCache pivotCache;
    private XSSFPivotCacheDefinition pivotCacheDefinition;
    private XSSFPivotCacheRecords pivotCacheRecords;
    private CTPivotTableDefinition pivotTableDefinition;

    /* loaded from: classes13.dex */
    public interface PivotTableReferenceConfigurator {
        void configureReference(CTWorksheetSource cTWorksheetSource);
    }

    public XSSFPivotTable() {
        this.pivotTableDefinition = CTPivotTableDefinition.Factory.newInstance();
        this.pivotCache = new XSSFPivotCache();
        this.pivotCacheDefinition = new XSSFPivotCacheDefinition();
        this.pivotCacheRecords = new XSSFPivotCacheRecords();
    }

    private void addDataField(DataConsolidateFunction dataConsolidateFunction, int i, String str, String str2) {
        checkColumnIndex(i);
        CTDataFields dataFields = this.pivotTableDefinition.getDataFields() != null ? this.pivotTableDefinition.getDataFields() : this.pivotTableDefinition.addNewDataFields();
        CTDataField addNewDataField = dataFields.addNewDataField();
        addNewDataField.setSubtotal(STDataConsolidateFunction.Enum.forInt(dataConsolidateFunction.getValue()));
        addNewDataField.setName(str);
        addNewDataField.setFld(i);
        if (StringUtil.isNotBlank(str2)) {
            addNewDataField.setNumFmtId(this.parentSheet.getWorkbook().createDataFormat().getFormat(str2));
        }
        dataFields.setCount(dataFields.sizeOfDataFieldArray());
    }

    private void checkColumnIndex(int i) throws IndexOutOfBoundsException {
        AreaReference pivotArea = getPivotArea();
        int col = (pivotArea.getLastCell().getCol() - pivotArea.getFirstCell().getCol()) + 1;
        if (i < 0 || i >= col) {
            throw new IndexOutOfBoundsException("Column Index: " + i + ", Size: " + col);
        }
    }

    private void lazyInitXSSFPivotCacheDefinition() {
        for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
            if (pOIXMLDocumentPart instanceof XSSFPivotCacheDefinition) {
                this.pivotCacheDefinition = (XSSFPivotCacheDefinition) pOIXMLDocumentPart;
                return;
            }
        }
    }

    private void setDataSheet(Sheet sheet) {
        this.dataSheet = sheet;
    }

    public void addColLabel(int i, String str) {
        CTColFields addNewColFields;
        checkColumnIndex(i);
        AreaReference pivotArea = getPivotArea();
        int row = pivotArea.getLastCell().getRow() - pivotArea.getFirstCell().getRow();
        CTPivotFields pivotFields = this.pivotTableDefinition.getPivotFields();
        CTPivotField newInstance = CTPivotField.Factory.newInstance();
        CTItems addNewItems = newInstance.addNewItems();
        newInstance.setAxis(STAxis.AXIS_COL);
        newInstance.setShowAll(false);
        if (StringUtil.isNotBlank(str)) {
            newInstance.setNumFmtId(this.parentSheet.getWorkbook().createDataFormat().getFormat(str));
        }
        for (int i2 = 0; i2 <= row; i2++) {
            addNewItems.addNewItem().setT(STItemType.DEFAULT);
        }
        addNewItems.setCount(addNewItems.sizeOfItemArray());
        pivotFields.setPivotFieldArray(i, newInstance);
        if (this.pivotTableDefinition.getColFields() != null) {
            addNewColFields = this.pivotTableDefinition.getColFields();
        } else {
            addNewColFields = this.pivotTableDefinition.addNewColFields();
        }
        addNewColFields.addNewField().setX(i);
        addNewColFields.setCount(addNewColFields.sizeOfFieldArray());
    }

    public void addColumnLabel(DataConsolidateFunction dataConsolidateFunction, int i, String str, String str2) {
        CTColFields addNewColFields;
        checkColumnIndex(i);
        addDataColumn(i, true);
        addDataField(dataConsolidateFunction, i, str, str2);
        if (this.pivotTableDefinition.getDataFields().getCount() == 2) {
            if (this.pivotTableDefinition.getColFields() != null) {
                addNewColFields = this.pivotTableDefinition.getColFields();
            } else {
                addNewColFields = this.pivotTableDefinition.addNewColFields();
            }
            addNewColFields.addNewField().setX(-2);
            addNewColFields.setCount(addNewColFields.sizeOfFieldArray());
        }
    }

    public void addDataColumn(int i, boolean z) {
        checkColumnIndex(i);
        CTPivotFields pivotFields = this.pivotTableDefinition.getPivotFields();
        CTPivotField newInstance = CTPivotField.Factory.newInstance();
        newInstance.setDataField(z);
        newInstance.setShowAll(false);
        pivotFields.setPivotFieldArray(i, newInstance);
    }

    public void addReportFilter(int i) {
        CTPageFields addNewPageFields;
        checkColumnIndex(i);
        AreaReference pivotArea = getPivotArea();
        int row = pivotArea.getLastCell().getRow() - pivotArea.getFirstCell().getRow();
        CTLocation location = this.pivotTableDefinition.getLocation();
        String ref = location.getRef();
        SpreadsheetVersion spreadsheetVersion = SpreadsheetVersion.EXCEL2007;
        AreaReference areaReference = new AreaReference(ref, spreadsheetVersion);
        if (areaReference.getFirstCell().getRow() < 2) {
            location.setRef(new AreaReference(new CellReference(2, areaReference.getFirstCell().getCol()), new CellReference(3, areaReference.getFirstCell().getCol() + 1), spreadsheetVersion).formatAsString());
        }
        CTPivotFields pivotFields = this.pivotTableDefinition.getPivotFields();
        CTPivotField newInstance = CTPivotField.Factory.newInstance();
        CTItems addNewItems = newInstance.addNewItems();
        newInstance.setAxis(STAxis.AXIS_PAGE);
        newInstance.setShowAll(false);
        for (int i2 = 0; i2 <= row; i2++) {
            addNewItems.addNewItem().setT(STItemType.DEFAULT);
        }
        addNewItems.setCount(addNewItems.sizeOfItemArray());
        pivotFields.setPivotFieldArray(i, newInstance);
        if (this.pivotTableDefinition.getPageFields() != null) {
            addNewPageFields = this.pivotTableDefinition.getPageFields();
            this.pivotTableDefinition.setMultipleFieldFilters(true);
        } else {
            addNewPageFields = this.pivotTableDefinition.addNewPageFields();
        }
        CTPageField addNewPageField = addNewPageFields.addNewPageField();
        addNewPageField.setHier(-1);
        addNewPageField.setFld(i);
        addNewPageFields.setCount(addNewPageFields.sizeOfPageFieldArray());
        this.pivotTableDefinition.getLocation().setColPageCount(addNewPageFields.getCount());
    }

    public void addRowLabel(int i) {
        checkColumnIndex(i);
        AreaReference pivotArea = getPivotArea();
        int row = pivotArea.getLastCell().getRow() - pivotArea.getFirstCell().getRow();
        CTPivotFields pivotFields = this.pivotTableDefinition.getPivotFields();
        CTPivotField newInstance = CTPivotField.Factory.newInstance();
        CTItems addNewItems = newInstance.addNewItems();
        newInstance.setAxis(STAxis.AXIS_ROW);
        newInstance.setShowAll(false);
        for (int i2 = 0; i2 <= row; i2++) {
            addNewItems.addNewItem().setT(STItemType.DEFAULT);
        }
        addNewItems.setCount(addNewItems.sizeOfItemArray());
        pivotFields.setPivotFieldArray(i, newInstance);
        CTRowFields rowFields = this.pivotTableDefinition.getRowFields() != null ? this.pivotTableDefinition.getRowFields() : this.pivotTableDefinition.addNewRowFields();
        rowFields.addNewField().setX(i);
        rowFields.setCount(rowFields.sizeOfFieldArray());
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTPivotTableDefinition.type.getName().getNamespaceURI(), "pivotTableDefinition"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.pivotTableDefinition.save(outputStream, xmlOptions);
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

    public void createDefaultDataColumns() {
        CTPivotFields pivotFields = this.pivotTableDefinition.getPivotFields() != null ? this.pivotTableDefinition.getPivotFields() : this.pivotTableDefinition.addNewPivotFields();
        AreaReference pivotArea = getPivotArea();
        short col = pivotArea.getLastCell().getCol();
        for (int col2 = pivotArea.getFirstCell().getCol(); col2 <= col; col2++) {
            CTPivotField addNewPivotField = pivotFields.addNewPivotField();
            addNewPivotField.setDataField(false);
            addNewPivotField.setShowAll(false);
        }
        pivotFields.setCount(pivotFields.sizeOfPivotFieldArray());
    }

    public void createSourceReferences(CellReference cellReference, Sheet sheet, PivotTableReferenceConfigurator pivotTableReferenceConfigurator) {
        CTLocation location;
        AreaReference areaReference = new AreaReference(cellReference, new CellReference(cellReference.getRow() + 1, cellReference.getCol() + 1), SpreadsheetVersion.EXCEL2007);
        if (this.pivotTableDefinition.getLocation() == null) {
            location = this.pivotTableDefinition.addNewLocation();
            location.setFirstDataCol(1L);
            location.setFirstDataRow(1L);
            location.setFirstHeaderRow(1L);
        } else {
            location = this.pivotTableDefinition.getLocation();
        }
        location.setRef(areaReference.formatAsString());
        this.pivotTableDefinition.setLocation(location);
        CTCacheSource addNewCacheSource = getPivotCacheDefinition().getCTPivotCacheDefinition().addNewCacheSource();
        addNewCacheSource.setType(STSourceType.WORKSHEET);
        CTWorksheetSource addNewWorksheetSource = addNewCacheSource.addNewWorksheetSource();
        addNewWorksheetSource.setSheet(sheet.getSheetName());
        setDataSheet(sheet);
        pivotTableReferenceConfigurator.configureReference(addNewWorksheetSource);
        if (addNewWorksheetSource.getName() == null && addNewWorksheetSource.getRef() == null) {
            throw new IllegalArgumentException("Pivot table source area reference or name must be specified.");
        }
    }

    @Internal
    public CTPivotTableDefinition getCTPivotTableDefinition() {
        return this.pivotTableDefinition;
    }

    public List<Integer> getColLabelColumns() {
        if (this.pivotTableDefinition.getColFields() == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (CTField cTField : this.pivotTableDefinition.getColFields().getFieldArray()) {
            arrayList.add(Integer.valueOf(cTField.getX()));
        }
        return arrayList;
    }

    public Sheet getDataSheet() {
        return this.dataSheet;
    }

    public Sheet getParentSheet() {
        return this.parentSheet;
    }

    public AreaReference getPivotArea() {
        return getPivotCacheDefinition().getPivotArea(getDataSheet().getWorkbook());
    }

    public XSSFPivotCache getPivotCache() {
        return this.pivotCache;
    }

    public XSSFPivotCacheDefinition getPivotCacheDefinition() {
        if (this.pivotCacheDefinition == null) {
            lazyInitXSSFPivotCacheDefinition();
        }
        return this.pivotCacheDefinition;
    }

    public XSSFPivotCacheRecords getPivotCacheRecords() {
        return this.pivotCacheRecords;
    }

    public List<Integer> getRowLabelColumns() {
        if (this.pivotTableDefinition.getRowFields() == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (CTField cTField : this.pivotTableDefinition.getRowFields().getFieldArray()) {
            arrayList.add(Integer.valueOf(cTField.getX()));
        }
        return arrayList;
    }

    public void readFrom(InputStream inputStream) throws IOException {
        try {
            XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
            xmlOptions.setLoadReplaceDocumentElement(null);
            this.pivotTableDefinition = CTPivotTableDefinition.Factory.parse(inputStream, xmlOptions);
            this.pivotCacheDefinition = null;
        } catch (XmlException e) {
            throw new IOException(e.getLocalizedMessage());
        }
    }

    @Internal
    public void setCTPivotTableDefinition(CTPivotTableDefinition cTPivotTableDefinition) {
        this.pivotTableDefinition = cTPivotTableDefinition;
    }

    public void setDefaultPivotTableDefinition() {
        this.pivotTableDefinition.setMultipleFieldFilters(false);
        this.pivotTableDefinition.setIndent(0L);
        this.pivotTableDefinition.setCreatedVersion((short) 3);
        this.pivotTableDefinition.setMinRefreshableVersion((short) 3);
        this.pivotTableDefinition.setUpdatedVersion((short) 3);
        this.pivotTableDefinition.setItemPrintTitles(true);
        this.pivotTableDefinition.setUseAutoFormatting(true);
        this.pivotTableDefinition.setApplyNumberFormats(false);
        this.pivotTableDefinition.setApplyWidthHeightFormats(true);
        this.pivotTableDefinition.setApplyAlignmentFormats(false);
        this.pivotTableDefinition.setApplyPatternFormats(false);
        this.pivotTableDefinition.setApplyFontFormats(false);
        this.pivotTableDefinition.setApplyBorderFormats(false);
        this.pivotTableDefinition.setCacheId(this.pivotCache.getCTPivotCache().getCacheId());
        this.pivotTableDefinition.setName("PivotTable" + this.pivotTableDefinition.getCacheId());
        this.pivotTableDefinition.setDataCaption("Values");
        CTPivotTableStyle addNewPivotTableStyleInfo = this.pivotTableDefinition.addNewPivotTableStyleInfo();
        addNewPivotTableStyleInfo.setName("PivotStyleLight16");
        addNewPivotTableStyleInfo.setShowLastColumn(true);
        addNewPivotTableStyleInfo.setShowColStripes(false);
        addNewPivotTableStyleInfo.setShowRowStripes(false);
        addNewPivotTableStyleInfo.setShowColHeaders(true);
        addNewPivotTableStyleInfo.setShowRowHeaders(true);
    }

    public void setParentSheet(XSSFSheet xSSFSheet) {
        this.parentSheet = xSSFSheet;
    }

    public void setPivotCache(XSSFPivotCache xSSFPivotCache) {
        this.pivotCache = xSSFPivotCache;
    }

    public void setPivotCacheDefinition(XSSFPivotCacheDefinition xSSFPivotCacheDefinition) {
        this.pivotCacheDefinition = xSSFPivotCacheDefinition;
    }

    public void setPivotCacheRecords(XSSFPivotCacheRecords xSSFPivotCacheRecords) {
        this.pivotCacheRecords = xSSFPivotCacheRecords;
    }

    public XSSFPivotTable(PackagePart packagePart) throws IOException {
        super(packagePart);
        InputStream inputStream = packagePart.getInputStream();
        try {
            readFrom(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void addColumnLabel(DataConsolidateFunction dataConsolidateFunction, int i, String str) {
        addColumnLabel(dataConsolidateFunction, i, str, null);
    }

    public void addColumnLabel(DataConsolidateFunction dataConsolidateFunction, int i) {
        addColumnLabel(dataConsolidateFunction, i, dataConsolidateFunction.getName(), null);
    }

    public void addColLabel(int i) {
        addColLabel(i, null);
    }
}
