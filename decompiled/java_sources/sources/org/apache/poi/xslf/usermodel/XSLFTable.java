package org.apache.poi.xslf.usermodel;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.usermodel.TableCell;
import org.apache.poi.sl.usermodel.TableShape;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.apache.poi.xddf.usermodel.text.XDDFTextBody;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.values.XmlAnyTypeImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTable;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual;

/* loaded from: classes13.dex */
public class XSLFTable extends XSLFGraphicFrame implements Iterable<XSLFTableRow>, TableShape<XSLFShape, XSLFTextParagraph> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSLFTable.class);
    static final String TABLE_URI = "http://schemas.openxmlformats.org/drawingml/2006/table";
    private final List<XSLFTableRow> _rows;
    private final CTTable _table;

    public XSLFTable(CTGraphicalObjectFrame cTGraphicalObjectFrame, XSLFSheet xSLFSheet) {
        super(cTGraphicalObjectFrame, xSLFSheet);
        CTGraphicalObjectData graphicData = cTGraphicalObjectFrame.getGraphic().getGraphicData();
        XmlCursor newCursor = graphicData.newCursor();
        try {
            if (!newCursor.toChild(XSSFRelation.NS_DRAWINGML, "tbl")) {
                throw new IllegalStateException("a:tbl element was not found in\n " + graphicData);
            }
            XmlObject object = newCursor.getObject();
            if (object instanceof XmlAnyTypeImpl) {
                throw new IllegalStateException("Schemas (*.xsb) for CTTable can't be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes");
            }
            CTTable cTTable = (CTTable) object;
            this._table = cTTable;
            newCursor.close();
            this._rows = new ArrayList(cTTable.sizeOfTrArray());
            Iterator<CTTableRow> it2 = cTTable.getTrList().iterator();
            while (it2.hasNext()) {
                this._rows.add(new XSLFTableRow(it2.next(), this));
            }
            updateRowColIndexes();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private double getCellWidth(double[] dArr, int i, int i2) {
        double d = 0.0d;
        for (int i3 = i; i3 < i + i2; i3++) {
            d += dArr[i3];
        }
        return d;
    }

    private XSLFTableRow initializeRow(CTTableRow cTTableRow) {
        XSLFTableRow xSLFTableRow = new XSLFTableRow(cTTableRow, this);
        xSLFTableRow.setHeight(20.0d);
        return xSLFTableRow;
    }

    public static CTGraphicalObjectFrame prototype(int i) {
        CTGraphicalObjectFrame newInstance = CTGraphicalObjectFrame.Factory.newInstance();
        CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr = newInstance.addNewNvGraphicFramePr();
        CTNonVisualDrawingProps addNewCNvPr = addNewNvGraphicFramePr.addNewCNvPr();
        addNewCNvPr.setName("Table " + i);
        addNewCNvPr.setId((long) i);
        addNewNvGraphicFramePr.addNewCNvGraphicFramePr().addNewGraphicFrameLocks().setNoGrp(true);
        addNewNvGraphicFramePr.addNewNvPr();
        newInstance.addNewXfrm();
        CTGraphicalObjectData addNewGraphicData = newInstance.addNewGraphic().addNewGraphicData();
        XmlCursor newCursor = addNewGraphicData.newCursor();
        try {
            newCursor.toNextToken();
            newCursor.beginElement(new QName(XSSFRelation.NS_DRAWINGML, "tbl"));
            CTTable newInstance2 = CTTable.Factory.newInstance();
            newInstance2.addNewTblPr();
            newInstance2.addNewTblGrid();
            XmlCursor newCursor2 = newInstance2.newCursor();
            try {
                newCursor2.moveXmlContents(newCursor);
                newCursor2.close();
                newCursor.close();
                addNewGraphicData.setUri(TABLE_URI);
                return newInstance;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void addColumn() {
        this._table.getTblGrid().addNewGridCol().setW(Long.valueOf(POIXMLUnits.parseLength(this._table.getTblGrid().getGridColArray(getNumberOfColumns() - 1).xgetW())));
        Iterator<XSLFTableRow> it2 = this._rows.iterator();
        while (it2.hasNext()) {
            XSLFTableCell addCell = it2.next().addCell();
            new XDDFTextBody(addCell, addCell.getTextBody(true)).initialize();
        }
    }

    public XSLFTableRow addRow() {
        XSLFTableRow initializeRow = initializeRow(this._table.addNewTr());
        this._rows.add(initializeRow);
        updateRowColIndexes();
        return initializeRow;
    }

    @Internal
    public CTTable getCTTable() {
        return this._table;
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public double getColumnWidth(int i) {
        return Units.toPoints(POIXMLUnits.parseLength(this._table.getTblGrid().getGridColArray(i).xgetW()));
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public int getNumberOfColumns() {
        return this._table.getTblGrid().sizeOfGridColArray();
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public int getNumberOfRows() {
        return this._table.sizeOfTrArray();
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public double getRowHeight(int i) {
        return Units.toPoints(POIXMLUnits.parseLength(this._table.getTrArray(i).xgetH()));
    }

    public List<XSLFTableRow> getRows() {
        return Collections.unmodifiableList(this._rows);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [org.apache.poi.xslf.usermodel.XMLSlideShow] */
    public XSLFTableStyle getTableStyle() {
        CTTable cTTable = getCTTable();
        if (cTTable.isSetTblPr() && cTTable.getTblPr().isSetTableStyleId()) {
            String tableStyleId = cTTable.getTblPr().getTableStyleId();
            for (XSLFTableStyle xSLFTableStyle : getSheet().getSlideShow().getTableStyles().getStyles()) {
                if (xSLFTableStyle.getStyleId().equals(tableStyleId)) {
                    return xSLFTableStyle;
                }
            }
        }
        return null;
    }

    public void insertColumn(int i) {
        if (getNumberOfColumns() >= i) {
            this._table.getTblGrid().insertNewGridCol(i).setW(Long.valueOf(POIXMLUnits.parseLength(this._table.getTblGrid().getGridColArray(i).xgetW())));
            Iterator<XSLFTableRow> it2 = this._rows.iterator();
            while (it2.hasNext()) {
                XSLFTableCell insertCell = it2.next().insertCell(i);
                new XDDFTextBody(insertCell, insertCell.getTextBody(true)).initialize();
            }
            return;
        }
        throw new IndexOutOfBoundsException("Cannot insert column at " + i + "; table has only " + getNumberOfColumns() + "columns.");
    }

    public XSLFTableRow insertRow(int i) {
        if (getNumberOfRows() >= i) {
            XSLFTableRow initializeRow = initializeRow(this._table.insertNewTr(i));
            for (int i2 = 0; i2 < getNumberOfColumns(); i2++) {
                initializeRow.addCell();
            }
            this._rows.add(i, initializeRow);
            return initializeRow;
        }
        throw new IndexOutOfBoundsException("Cannot insert row at " + i + "; table has only " + getNumberOfRows() + "rows.");
    }

    @Override // java.lang.Iterable
    public Iterator<XSLFTableRow> iterator() {
        return this._rows.iterator();
    }

    public void mergeCells(int i, int i2, int i3, int i4) {
        if (i > i2) {
            throw new IllegalArgumentException("Cannot merge, first row > last row : " + i + CloudStorageConstants.OPERATION_GREATER + i2);
        }
        if (i3 > i4) {
            throw new IllegalArgumentException("Cannot merge, first column > last column : " + i3 + CloudStorageConstants.OPERATION_GREATER + i4);
        }
        int i5 = (i2 - i) + 1;
        boolean z = i5 > 1;
        int i6 = (i4 - i3) + 1;
        boolean z2 = i6 > 1;
        for (int i7 = i; i7 <= i2; i7++) {
            XSLFTableRow xSLFTableRow = this._rows.get(i7);
            for (int i8 = i3; i8 <= i4; i8++) {
                XSLFTableCell xSLFTableCell = xSLFTableRow.getCells().get(i8);
                if (z) {
                    if (i7 == i) {
                        xSLFTableCell.setRowSpan(i5);
                    } else {
                        xSLFTableCell.setVMerge();
                    }
                }
                if (z2) {
                    if (i8 == i3) {
                        xSLFTableCell.setGridSpan(i6);
                    } else {
                        xSLFTableCell.setHMerge();
                    }
                }
            }
        }
    }

    public void removeColumn(int i) {
        if (getNumberOfColumns() >= i) {
            this._table.getTblGrid().removeGridCol(i);
            Iterator<XSLFTableRow> it2 = this._rows.iterator();
            while (it2.hasNext()) {
                it2.next().removeCell(i);
            }
            return;
        }
        throw new IndexOutOfBoundsException("Cannot remove column at " + i + "; table has only " + getNumberOfColumns() + "columns.");
    }

    public void removeRow(int i) {
        if (getNumberOfRows() >= i) {
            this._table.removeTr(i);
            this._rows.remove(i);
            updateRowColIndexes();
        } else {
            throw new IndexOutOfBoundsException("Cannot remove row at " + i + "; table has only " + getNumberOfRows() + "rows.");
        }
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public void setColumnWidth(int i, double d) {
        this._table.getTblGrid().getGridColArray(i).setW(Integer.valueOf(Units.toEMU(d)));
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public void setRowHeight(int i, double d) {
        this._table.getTrArray(i).setH(Integer.valueOf(Units.toEMU(d)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6, types: [org.apache.poi.xslf.usermodel.XSLFTableCell] */
    /* JADX WARN: Type inference failed for: r13v6, types: [org.apache.poi.xslf.usermodel.XSLFTableCell] */
    /* JADX WARN: Type inference failed for: r15v6, types: [org.apache.poi.xslf.usermodel.XSLFTableCell] */
    /* JADX WARN: Type inference failed for: r15v7, types: [org.apache.poi.sl.usermodel.TextShape, org.apache.poi.xslf.usermodel.XSLFTableCell] */
    /* JADX WARN: Type inference failed for: r5v2, types: [org.apache.poi.xslf.usermodel.XSLFTableCell] */
    public void updateCellAnchor() {
        int i;
        double d;
        int numberOfRows = getNumberOfRows();
        int numberOfColumns = getNumberOfColumns();
        double[] dArr = new double[numberOfColumns];
        double[] dArr2 = new double[numberOfRows];
        for (int i2 = 0; i2 < numberOfRows; i2++) {
            dArr2[i2] = getRowHeight(i2);
        }
        for (int i3 = 0; i3 < numberOfColumns; i3++) {
            dArr[i3] = getColumnWidth(i3);
        }
        Rectangle2D anchor = getAnchor();
        DrawFactory drawFactory = DrawFactory.getInstance(null);
        double y = anchor.getY();
        double x = anchor.getX();
        int i4 = 0;
        while (true) {
            double d2 = 0.0d;
            if (i4 >= numberOfRows) {
                break;
            }
            int i5 = 0;
            while (i5 < numberOfColumns) {
                ?? cell2 = getCell2(i4, i5);
                if (cell2 == 0 || cell2.isMerged()) {
                    d = y;
                } else {
                    d = y;
                    if (cell2.getRowSpan() == 1) {
                        cell2.setAnchor(new Rectangle2D.Double(0.0d, 0.0d, getCellWidth(dArr, i5, cell2.getGridSpan()), 0.0d));
                        d2 = Math.max(d2, drawFactory.getDrawable((TextShape<?, ?>) cell2).getTextHeight() + cell2.getTopInset() + cell2.getBottomInset());
                    }
                }
                i5++;
                y = d;
            }
            dArr2[i4] = Math.max(dArr2[i4], d2);
            i4++;
            y = y;
        }
        for (int i6 = 0; i6 < numberOfRows; i6++) {
            x = anchor.getX();
            for (int i7 = 0; i7 < numberOfColumns; i7++) {
                Rectangle2D.Double r12 = new Rectangle2D.Double(x, y, dArr[i7], dArr2[i6]);
                ?? cell22 = getCell2(i6, i7);
                if (cell22 != 0) {
                    cell22.setAnchor(r12);
                    x += dArr[i7] + 0.0d;
                }
            }
            y += dArr2[i6] + 0.0d;
        }
        for (int i8 = 0; i8 < numberOfRows; i8++) {
            int i9 = 0;
            while (i9 < numberOfColumns) {
                ?? cell23 = getCell2(i8, i9);
                if (cell23 == 0) {
                    i = numberOfRows;
                } else {
                    Rectangle2D anchor2 = cell23.getAnchor();
                    int i10 = i9 + 1;
                    while (i10 < cell23.getGridSpan() + i9) {
                        ?? cell24 = getCell2(i8, i10);
                        int i11 = numberOfRows;
                        if (cell24.getGridSpan() != 1 || cell24.getRowSpan() != 1) {
                            LOG.warn("invalid table span - rendering result is probably wrong");
                        }
                        anchor2.add(cell24.getAnchor());
                        i10++;
                        numberOfRows = i11;
                    }
                    i = numberOfRows;
                    for (int i12 = i8 + 1; i12 < cell23.getRowSpan() + i8; i12++) {
                        ?? cell25 = getCell2(i12, i9);
                        if (cell25.getGridSpan() != 1 || cell25.getRowSpan() != 1) {
                            LOG.warn("invalid table span - rendering result is probably wrong");
                        }
                        anchor2.add(cell25.getAnchor());
                    }
                    cell23.setAnchor(anchor2);
                }
                i9++;
                numberOfRows = i;
            }
        }
        setAnchor(new Rectangle2D.Double(anchor.getX(), anchor.getY(), x - anchor.getX(), y - anchor.getY()));
    }

    public void updateRowColIndexes() {
        Iterator<XSLFTableRow> it2 = iterator();
        int i = 0;
        while (it2.hasNext()) {
            Iterator<XSLFTableCell> it3 = it2.next().iterator();
            int i2 = 0;
            while (it3.hasNext()) {
                it3.next().setRowColIndex(i, i2);
                i2++;
            }
            i++;
        }
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    /* renamed from: getCell, reason: avoid collision after fix types in other method */
    public TableCell<XSLFShape, XSLFTextParagraph> getCell2(int i, int i2) {
        XSLFTableRow xSLFTableRow;
        if (i < 0 || this._rows.size() <= i || (xSLFTableRow = this._rows.get(i)) == null) {
            return null;
        }
        List<XSLFTableCell> cells = xSLFTableRow.getCells();
        if (i2 >= 0 && cells.size() > i2) {
            return cells.get(i2);
        }
        return null;
    }
}
