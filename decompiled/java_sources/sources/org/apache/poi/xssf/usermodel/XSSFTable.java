package org.apache.poi.xssf.usermodel;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentSkipListMap;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Table;
import org.apache.poi.ss.usermodel.TableStyleInfo;
import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;
import org.apache.poi.util.StringUtil;
import org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTable;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.TableDocument;

/* loaded from: classes13.dex */
public class XSSFTable extends POIXMLDocumentPart implements Table {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFTable.class);
    private transient ConcurrentSkipListMap<String, Integer> columnMap;
    private transient String commonXPath;
    private CTTable ctTable;
    private transient CellReference endCellReference;
    private transient String name;
    private transient CellReference startCellReference;
    private transient String styleName;
    private transient List<XSSFTableColumn> tableColumns;
    private transient List<XSSFXmlColumnPr> xmlColumnPrs;

    public XSSFTable() {
        this.ctTable = CTTable.Factory.newInstance();
    }

    private List<XSSFXmlColumnPr> getXmlColumnPrs() {
        if (this.xmlColumnPrs == null) {
            this.xmlColumnPrs = new ArrayList();
            Iterator<XSSFTableColumn> it2 = getColumns().iterator();
            while (it2.hasNext()) {
                XSSFXmlColumnPr xmlColumnPr = it2.next().getXmlColumnPr();
                if (xmlColumnPr != null) {
                    this.xmlColumnPrs.add(xmlColumnPr);
                }
            }
        }
        return this.xmlColumnPrs;
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            writeTo(outputStream);
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

    @Override // org.apache.poi.ss.usermodel.Table
    public boolean contains(CellReference cellReference) {
        return cellReference != null && getSheetName().equals(cellReference.getSheetName()) && cellReference.getRow() >= getStartRowIndex() && cellReference.getRow() <= getEndRowIndex() && cellReference.getCol() >= getStartColIndex() && cellReference.getCol() <= getEndColIndex();
    }

    public XSSFTableColumn createColumn(String str) {
        return createColumn(str, getColumnCount());
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public int findColumnIndex(String str) {
        if (str == null) {
            return -1;
        }
        if (this.columnMap == null) {
            this.columnMap = new ConcurrentSkipListMap<>(String.CASE_INSENSITIVE_ORDER);
            Iterator<XSSFTableColumn> it2 = getColumns().iterator();
            int i = 0;
            while (it2.hasNext()) {
                this.columnMap.put(it2.next().getName(), Integer.valueOf(i));
                i++;
            }
        }
        Integer num = this.columnMap.get(str.replace("''", CloudStorageConstants.SINGLE_QUOTES).replace("'#", "#"));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public AreaReference getArea() {
        if (this.ctTable.getRef() == null) {
            return null;
        }
        return new AreaReference(this.ctTable.getRef(), getXSSFSheet().getWorkbook().getSpreadsheetVersion());
    }

    @Internal(since = "POI 3.15 beta 3")
    public CTTable getCTTable() {
        return this.ctTable;
    }

    public AreaReference getCellReferences() {
        return new AreaReference(getStartCellReference(), getEndCellReference(), SpreadsheetVersion.EXCEL2007);
    }

    public int getColumnCount() {
        CTTableColumns tableColumns = this.ctTable.getTableColumns();
        if (tableColumns == null) {
            return 0;
        }
        return (int) tableColumns.getCount();
    }

    public List<XSSFTableColumn> getColumns() {
        if (this.tableColumns == null) {
            ArrayList arrayList = new ArrayList();
            CTTableColumns tableColumns = this.ctTable.getTableColumns();
            if (tableColumns != null) {
                Iterator<CTTableColumn> it2 = tableColumns.getTableColumnList().iterator();
                while (it2.hasNext()) {
                    arrayList.add(new XSSFTableColumn(this, it2.next()));
                }
            }
            this.tableColumns = Collections.unmodifiableList(arrayList);
        }
        return this.tableColumns;
    }

    public String getCommonXpath() {
        if (this.commonXPath == null) {
            String[] strArr = new String[0];
            for (XSSFTableColumn xSSFTableColumn : getColumns()) {
                if (xSSFTableColumn.getXmlColumnPr() != null) {
                    String[] split = xSSFTableColumn.getXmlColumnPr().getXPath().split("/");
                    if (strArr.length == 0) {
                        strArr = split;
                    } else {
                        int min = Math.min(strArr.length, split.length);
                        int i = 0;
                        while (true) {
                            if (i >= min) {
                                break;
                            }
                            if (!strArr[i].equals(split[i])) {
                                strArr = (String[]) Arrays.asList(strArr).subList(0, i).toArray(new String[0]);
                                break;
                            }
                            i++;
                        }
                    }
                }
            }
            strArr[0] = "";
            this.commonXPath = StringUtil.join(strArr, "/");
        }
        return this.commonXPath;
    }

    public int getDataRowCount() {
        CellReference startCellReference = getStartCellReference();
        CellReference endCellReference = getEndCellReference();
        if (startCellReference == null || endCellReference == null) {
            return 0;
        }
        return (((endCellReference.getRow() - startCellReference.getRow()) + 1) - getHeaderRowCount()) - getTotalsRowCount();
    }

    public String getDisplayName() {
        return this.ctTable.getDisplayName();
    }

    public CellReference getEndCellReference() {
        if (this.endCellReference == null) {
            setCellReferences();
        }
        return this.endCellReference;
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public int getEndColIndex() {
        return getEndCellReference().getCol();
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public int getEndRowIndex() {
        return getEndCellReference().getRow();
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public int getHeaderRowCount() {
        return (int) this.ctTable.getHeaderRowCount();
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public String getName() {
        if (this.name == null && this.ctTable.getName() != null) {
            setName(this.ctTable.getName());
        }
        return this.name;
    }

    public int getRowCount() {
        CellReference startCellReference = getStartCellReference();
        CellReference endCellReference = getEndCellReference();
        if (startCellReference == null || endCellReference == null) {
            return 0;
        }
        return (endCellReference.getRow() - startCellReference.getRow()) + 1;
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public String getSheetName() {
        return getXSSFSheet().getSheetName();
    }

    public CellReference getStartCellReference() {
        if (this.startCellReference == null) {
            setCellReferences();
        }
        return this.startCellReference;
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public int getStartColIndex() {
        return getStartCellReference().getCol();
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public int getStartRowIndex() {
        return getStartCellReference().getRow();
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public TableStyleInfo getStyle() {
        if (this.ctTable.isSetTableStyleInfo()) {
            return new XSSFTableStyleInfo(((XSSFSheet) getParent()).getWorkbook().getStylesSource(), this.ctTable.getTableStyleInfo());
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public String getStyleName() {
        if (this.styleName == null && this.ctTable.isSetTableStyleInfo()) {
            setStyleName(this.ctTable.getTableStyleInfo().getName());
        }
        return this.styleName;
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public int getTotalsRowCount() {
        return (int) this.ctTable.getTotalsRowCount();
    }

    public XSSFSheet getXSSFSheet() {
        return (XSSFSheet) getParent();
    }

    @Override // org.apache.poi.ss.usermodel.Table
    public boolean isHasTotalsRow() {
        return this.ctTable.getTotalsRowShown();
    }

    public boolean mapsTo(long j) {
        Iterator<XSSFXmlColumnPr> it2 = getXmlColumnPrs().iterator();
        while (it2.hasNext()) {
            if (it2.next().getMapId() == j) {
                return true;
            }
        }
        return false;
    }

    public void onTableDelete() {
        Iterator<POIXMLDocumentPart.RelationPart> it2 = getRelationParts().iterator();
        while (it2.hasNext()) {
            removeRelation(it2.next().getDocumentPart(), true);
        }
    }

    public void readFrom(InputStream inputStream) throws IOException {
        try {
            this.ctTable = TableDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getTable();
        } catch (XmlException e) {
            throw new IOException(e.getLocalizedMessage());
        }
    }

    public void removeColumn(XSSFTableColumn xSSFTableColumn) {
        int indexOf = getColumns().indexOf(xSSFTableColumn);
        if (indexOf >= 0) {
            this.ctTable.getTableColumns().removeTableColumn(indexOf);
            updateReferences();
            updateHeaders();
        }
    }

    public void setArea(AreaReference areaReference) {
        if (areaReference == null) {
            throw new IllegalArgumentException("AreaReference must not be null");
        }
        String sheetName = areaReference.getFirstCell().getSheetName();
        if (sheetName != null && !sheetName.equals(getXSSFSheet().getSheetName())) {
            throw new IllegalArgumentException("The AreaReference must not reference a different sheet");
        }
        if (!supportsAreaReference(areaReference)) {
            throw new IllegalArgumentException("AreaReference needs at least " + (getHeaderRowCount() + 1 + getTotalsRowCount()) + " rows, to cover at least one data row and all header rows and totals rows");
        }
        String formatAsString = areaReference.formatAsString();
        if (formatAsString.indexOf(33) != -1) {
            formatAsString = formatAsString.substring(formatAsString.indexOf(33) + 1);
        }
        this.ctTable.setRef(formatAsString);
        if (this.ctTable.isSetAutoFilter()) {
            this.ctTable.getAutoFilter().setRef(formatAsString);
        }
        updateReferences();
        int columnCount = getColumnCount();
        int col = (areaReference.getLastCell().getCol() - areaReference.getFirstCell().getCol()) + 1;
        if (col > columnCount) {
            while (columnCount < col) {
                createColumn(null, columnCount);
                columnCount++;
            }
        } else if (col < columnCount) {
            while (columnCount > col) {
                removeColumn(columnCount - 1);
                columnCount--;
            }
        }
        updateHeaders();
    }

    @Internal
    public void setCellRef(AreaReference areaReference) {
        String formatAsString = areaReference.formatAsString();
        if (formatAsString.indexOf(33) != -1) {
            formatAsString = formatAsString.substring(formatAsString.indexOf(33) + 1);
        }
        this.ctTable.setRef(formatAsString);
        if (this.ctTable.isSetAutoFilter()) {
            int totalsRowCount = getTotalsRowCount();
            if (totalsRowCount != 0) {
                formatAsString = new AreaReference(new CellReference(areaReference.getFirstCell().getRow(), areaReference.getFirstCell().getCol()), new CellReference(areaReference.getLastCell().getRow() - totalsRowCount, areaReference.getLastCell().getCol()), SpreadsheetVersion.EXCEL2007).formatAsString();
            }
            this.ctTable.getAutoFilter().setRef(formatAsString);
        }
        updateReferences();
        updateHeaders();
    }

    public void setCellReferences(AreaReference areaReference) {
        setCellRef(areaReference);
    }

    public void setDataRowCount(int i) {
        CellReference cellReference;
        XSSFCell cell;
        if (i < 1) {
            throw new IllegalArgumentException("Table must have at least one data row");
        }
        updateReferences();
        int dataRowCount = getDataRowCount();
        if (dataRowCount == i) {
            return;
        }
        CellReference startCellReference = getStartCellReference();
        CellReference endCellReference = getEndCellReference();
        SpreadsheetVersion spreadsheetVersion = getXSSFSheet().getWorkbook().getSpreadsheetVersion();
        CellReference cellReference2 = new CellReference((startCellReference.getRow() + ((getHeaderRowCount() + i) + getTotalsRowCount())) - 1, endCellReference.getCol());
        AreaReference areaReference = new AreaReference(startCellReference, cellReference2, spreadsheetVersion);
        if (i < dataRowCount) {
            cellReference = new CellReference(areaReference.getLastCell().getRow() + 1, areaReference.getFirstCell().getCol());
        } else {
            cellReference = new CellReference(endCellReference.getRow() + 1, areaReference.getFirstCell().getCol());
            endCellReference = cellReference2;
        }
        for (CellReference cellReference3 : new AreaReference(cellReference, endCellReference, spreadsheetVersion).getAllReferencedCells()) {
            XSSFRow row = getXSSFSheet().getRow(cellReference3.getRow());
            if (row != null && (cell = row.getCell((int) cellReference3.getCol())) != null) {
                cell.setBlank();
                cell.setCellStyle(null);
            }
        }
        setCellRef(areaReference);
    }

    public void setDisplayName(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Display name must not be null or empty");
        }
        this.ctTable.setDisplayName(str);
    }

    public void setName(String str) {
        if (str == null) {
            this.ctTable.unsetName();
            this.name = null;
        } else {
            this.ctTable.setName(str);
            this.name = str;
        }
    }

    public void setStyleName(String str) {
        if (str != null) {
            if (!this.ctTable.isSetTableStyleInfo()) {
                this.ctTable.addNewTableStyleInfo();
            }
            this.ctTable.getTableStyleInfo().setName(str);
            this.styleName = str;
            return;
        }
        if (this.ctTable.isSetTableStyleInfo()) {
            try {
                this.ctTable.getTableStyleInfo().unsetName();
            } catch (Exception e) {
                LOG.atDebug().log("Failed to unset style name", e);
            }
        }
        this.styleName = null;
    }

    public boolean supportsAreaReference(AreaReference areaReference) {
        return (areaReference.getLastCell().getRow() - areaReference.getFirstCell().getRow()) + 1 >= (Math.max(1, getHeaderRowCount()) + 1) + getTotalsRowCount();
    }

    public void updateHeaders() {
        CTTableColumns tableColumns;
        XSSFSheet xSSFSheet = (XSSFSheet) getParent();
        CellReference startCellReference = getStartCellReference();
        if (startCellReference == null) {
            return;
        }
        int row = startCellReference.getRow();
        int col = startCellReference.getCol();
        XSSFRow row2 = xSSFSheet.getRow(row);
        DataFormatter dataFormatter = new DataFormatter();
        if (row2 != null && (tableColumns = getCTTable().getTableColumns()) != null) {
            for (CTTableColumn cTTableColumn : tableColumns.getTableColumnList()) {
                XSSFCell cell = row2.getCell(col);
                if (cell != null) {
                    cTTableColumn.setName(dataFormatter.formatCellValue(cell).replace("\n", "_x000a_").replace("\r", "_x000d_"));
                }
                col++;
            }
        }
        this.tableColumns = null;
        this.columnMap = null;
        this.xmlColumnPrs = null;
        this.commonXPath = null;
    }

    public void updateReferences() {
        this.startCellReference = null;
        this.endCellReference = null;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        updateHeaders();
        TableDocument newInstance = TableDocument.Factory.newInstance();
        newInstance.setTable(this.ctTable);
        newInstance.save(outputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
    }

    private void setCellReferences() {
        String ref = this.ctTable.getRef();
        if (ref != null) {
            String[] split = ref.split(":", 2);
            String str = split[0];
            String str2 = split.length == 2 ? split[1] : str;
            this.startCellReference = new CellReference(str);
            this.endCellReference = new CellReference(str2);
        }
    }

    public XSSFTableColumn createColumn(String str, int i) {
        int columnCount = getColumnCount();
        if (i >= 0 && i <= columnCount) {
            CTTableColumns tableColumns = this.ctTable.getTableColumns();
            if (tableColumns == null) {
                tableColumns = this.ctTable.addNewTableColumns();
            }
            long j = 0;
            for (XSSFTableColumn xSSFTableColumn : getColumns()) {
                if (str != null && str.equalsIgnoreCase(xSSFTableColumn.getName())) {
                    throw new IllegalArgumentException("Column '" + str + "' already exists. Column names must be unique per table.");
                }
                j = Math.max(j, xSSFTableColumn.getId());
            }
            long j2 = j + 1;
            CTTableColumn insertNewTableColumn = tableColumns.insertNewTableColumn(i);
            tableColumns.setCount(tableColumns.sizeOfTableColumnArray());
            insertNewTableColumn.setId(j2);
            if (str != null) {
                insertNewTableColumn.setName(str);
            } else {
                insertNewTableColumn.setName("Column " + j2);
            }
            if (this.ctTable.getRef() != null) {
                setCellRef(new AreaReference(getStartCellReference(), new CellReference(getEndCellReference().getRow(), (r8.getCol() + (columnCount + 1)) - 1), getXSSFSheet().getWorkbook().getSpreadsheetVersion()));
            }
            updateHeaders();
            return getColumns().get(i);
        }
        throw new IllegalArgumentException("Column index out of bounds");
    }

    public XSSFTable(PackagePart packagePart) throws IOException {
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

    public void removeColumn(int i) {
        if (i >= 0 && i <= getColumnCount() - 1) {
            if (getColumnCount() != 1) {
                CTTableColumns tableColumns = this.ctTable.getTableColumns();
                tableColumns.removeTableColumn(i);
                tableColumns.setCount(tableColumns.getTableColumnList().size());
                updateReferences();
                updateHeaders();
                return;
            }
            throw new IllegalArgumentException("Table must have at least one column");
        }
        throw new IllegalArgumentException("Column index out of bounds");
    }
}
