package org.apache.poi.hslf.usermodel;

import java.awt.geom.Rectangle2D;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.TreeSet;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherArrayProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.TableCell;
import org.apache.poi.sl.usermodel.TableShape;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class HSLFTable extends HSLFGroupShape implements HSLFShapeContainer, TableShape<HSLFShape, HSLFTextParagraph> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected static final int BORDERS_ALL = 5;
    protected static final int BORDERS_INSIDE = 7;
    protected static final int BORDERS_NONE = 8;
    protected static final int BORDERS_OUTSIDE = 6;
    protected HSLFTableCell[][] cells;
    private int columnCount;

    /* loaded from: classes12.dex */
    public static class LineRect {

        /* renamed from: l */
        final HSLFLine f111386l;
        final double lx1;
        final double lx2;
        final double ly1;
        final double ly2;

        public LineRect(HSLFLine hSLFLine) {
            this.f111386l = hSLFLine;
            Rectangle2D anchor = hSLFLine.getAnchor();
            this.lx1 = anchor.getMinX();
            this.lx2 = anchor.getMaxX();
            this.ly1 = anchor.getMinY();
            this.ly2 = anchor.getMaxY();
        }

        public int bottomFit(double d, double d2, double d3, double d4) {
            return (int) (Math.abs(d - this.lx1) + Math.abs(d4 - this.ly1) + Math.abs(d2 - this.lx2) + Math.abs(d4 - this.ly2));
        }

        public int leftFit(double d, double d2, double d3, double d4) {
            return (int) (Math.abs(d - this.lx1) + Math.abs(d3 - this.ly1) + Math.abs(d - this.lx2) + Math.abs(d4 - this.ly2));
        }

        public int rightFit(double d, double d2, double d3, double d4) {
            return (int) (Math.abs(d2 - this.lx1) + Math.abs(d3 - this.ly1) + Math.abs(d2 - this.lx2) + Math.abs(d4 - this.ly2));
        }

        public int topFit(double d, double d2, double d3, double d4) {
            return (int) (Math.abs(d - this.lx1) + Math.abs(d3 - this.ly1) + Math.abs(d2 - this.lx2) + Math.abs(d3 - this.ly2));
        }
    }

    public HSLFTable(int i, int i2) {
        this(i, i2, null);
    }

    private int calcSpan(List<Double> list, double d, int i) {
        ListIterator<Double> listIterator = list.listIterator(i);
        double doubleValue = listIterator.next().doubleValue();
        int i2 = 1;
        while (listIterator.hasNext() && listIterator.next().doubleValue() - doubleValue < d) {
            i2++;
        }
        return i2;
    }

    private void cellListToArray() {
        ArrayList<HSLFTableCell> arrayList = new ArrayList();
        for (HSLFShape hSLFShape : getShapes()) {
            if (hSLFShape instanceof HSLFTableCell) {
                arrayList.add((HSLFTableCell) hSLFShape);
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("HSLFTable without HSLFTableCells");
        }
        TreeSet treeSet = new TreeSet();
        TreeSet treeSet2 = new TreeSet();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Rectangle2D anchor = ((HSLFTableCell) it2.next()).getAnchor();
            treeSet.add(Double.valueOf(anchor.getX()));
            treeSet2.add(Double.valueOf(anchor.getY()));
        }
        this.cells = (HSLFTableCell[][]) Array.newInstance((Class<?>) HSLFTableCell.class, treeSet2.size(), treeSet.size());
        ArrayList arrayList2 = new ArrayList(treeSet);
        ArrayList arrayList3 = new ArrayList(treeSet2);
        for (HSLFTableCell hSLFTableCell : arrayList) {
            Rectangle2D anchor2 = hSLFTableCell.getAnchor();
            int indexOf = arrayList3.indexOf(Double.valueOf(anchor2.getY()));
            int indexOf2 = arrayList2.indexOf(Double.valueOf(anchor2.getX()));
            this.cells[indexOf][indexOf2] = hSLFTableCell;
            int calcSpan = calcSpan(arrayList2, anchor2.getWidth(), indexOf2);
            int calcSpan2 = calcSpan(arrayList3, anchor2.getHeight(), indexOf);
            hSLFTableCell.setGridSpan(calcSpan);
            hSLFTableCell.setRowSpan(calcSpan2);
        }
    }

    private void fitLinesToCells() {
        ArrayList arrayList;
        HSLFTableCell[][] hSLFTableCellArr;
        int i;
        int i2;
        HSLFTableCell[] hSLFTableCellArr2;
        int i3;
        ArrayList arrayList2 = new ArrayList();
        for (HSLFShape hSLFShape : getShapes()) {
            if (hSLFShape instanceof HSLFLine) {
                arrayList2.add(new LineRect((HSLFLine) hSLFShape));
            }
        }
        HSLFTableCell[][] hSLFTableCellArr3 = this.cells;
        int length = hSLFTableCellArr3.length;
        int i4 = 0;
        while (i4 < length) {
            HSLFTableCell[] hSLFTableCellArr4 = hSLFTableCellArr3[i4];
            int length2 = hSLFTableCellArr4.length;
            int i5 = 0;
            while (i5 < length2) {
                HSLFTableCell hSLFTableCell = hSLFTableCellArr4[i5];
                if (hSLFTableCell == null) {
                    arrayList = arrayList2;
                    hSLFTableCellArr = hSLFTableCellArr3;
                    i = length;
                    i2 = i4;
                    hSLFTableCellArr2 = hSLFTableCellArr4;
                    i3 = length2;
                } else {
                    Rectangle2D anchor = hSLFTableCell.getAnchor();
                    double minX = anchor.getMinX();
                    double maxX = anchor.getMaxX();
                    double minY = anchor.getMinY();
                    double maxY = anchor.getMaxY();
                    Iterator it2 = arrayList2.iterator();
                    arrayList = arrayList2;
                    int i6 = Integer.MAX_VALUE;
                    int i7 = Integer.MAX_VALUE;
                    int i8 = Integer.MAX_VALUE;
                    LineRect lineRect = null;
                    LineRect lineRect2 = null;
                    LineRect lineRect3 = null;
                    LineRect lineRect4 = null;
                    int i9 = Integer.MAX_VALUE;
                    while (it2.hasNext()) {
                        LineRect lineRect5 = (LineRect) it2.next();
                        HSLFTableCell[][] hSLFTableCellArr5 = hSLFTableCellArr3;
                        LineRect lineRect6 = lineRect4;
                        int i10 = length;
                        HSLFTableCell[] hSLFTableCellArr6 = hSLFTableCellArr4;
                        int i11 = i9;
                        LineRect lineRect7 = lineRect3;
                        int i12 = length2;
                        Iterator it3 = it2;
                        int i13 = i6;
                        int i14 = i7;
                        int i15 = i4;
                        int i16 = i8;
                        int leftFit = lineRect5.leftFit(minX, maxX, minY, maxY);
                        if (leftFit < i16) {
                            i16 = leftFit;
                            lineRect7 = lineRect5;
                        }
                        int i17 = lineRect5.topFit(minX, maxX, minY, maxY);
                        if (i17 < i13) {
                            i13 = i17;
                            lineRect6 = lineRect5;
                        }
                        int rightFit = lineRect5.rightFit(minX, maxX, minY, maxY);
                        if (rightFit < i14) {
                            i14 = rightFit;
                            lineRect2 = lineRect5;
                        }
                        int bottomFit = lineRect5.bottomFit(minX, maxX, minY, maxY);
                        if (bottomFit < i11) {
                            i9 = bottomFit;
                            lineRect = lineRect5;
                        } else {
                            i9 = i11;
                        }
                        lineRect4 = lineRect6;
                        lineRect3 = lineRect7;
                        i8 = i16;
                        i6 = i13;
                        i7 = i14;
                        hSLFTableCellArr3 = hSLFTableCellArr5;
                        length = i10;
                        hSLFTableCellArr4 = hSLFTableCellArr6;
                        length2 = i12;
                        it2 = it3;
                        i4 = i15;
                    }
                    hSLFTableCellArr = hSLFTableCellArr3;
                    i = length;
                    i2 = i4;
                    hSLFTableCellArr2 = hSLFTableCellArr4;
                    i3 = length2;
                    LineRect lineRect8 = lineRect4;
                    int i18 = i9;
                    LineRect lineRect9 = lineRect3;
                    int i19 = i6;
                    int i20 = i7;
                    if (i8 < 5 && lineRect9 != null) {
                        hSLFTableCell.borderLeft = lineRect9.f111386l;
                    }
                    if (i19 < 5 && lineRect8 != null) {
                        hSLFTableCell.borderTop = lineRect8.f111386l;
                    }
                    if (i20 < 5 && lineRect2 != null) {
                        hSLFTableCell.borderRight = lineRect2.f111386l;
                    }
                    if (i18 < 5 && lineRect != null) {
                        hSLFTableCell.borderBottom = lineRect.f111386l;
                    }
                }
                i5++;
                arrayList2 = arrayList;
                hSLFTableCellArr3 = hSLFTableCellArr;
                length = i;
                hSLFTableCellArr4 = hSLFTableCellArr2;
                length2 = i3;
                i4 = i2;
            }
            i4++;
        }
    }

    private void updateRowHeightsProperty() {
        EscherArrayProperty escherArrayProperty = (EscherArrayProperty) ((AbstractEscherOptRecord) getEscherChild(EscherRecordTypes.USER_DEFINED)).lookup(EscherPropertyTypes.GROUPSHAPE__TABLEROWPROPERTIES);
        byte[] bArr = new byte[4];
        int i = 0;
        while (true) {
            HSLFTableCell[][] hSLFTableCellArr = this.cells;
            if (i >= hSLFTableCellArr.length) {
                return;
            }
            LittleEndian.putInt(bArr, 0, Units.pointsToMaster(hSLFTableCellArr[i][0].getAnchor().getHeight()));
            escherArrayProperty.setElement(i, bArr);
            i++;
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public void afterInsert(HSLFSheet hSLFSheet) {
        super.afterInsert(hSLFSheet);
        HashSet hashSet = new HashSet();
        for (HSLFTableCell[] hSLFTableCellArr : this.cells) {
            for (HSLFTableCell hSLFTableCell : hSLFTableCellArr) {
                addShape((HSLFShape) hSLFTableCell);
                HSLFLine[] hSLFLineArr = {hSLFTableCell.borderTop, hSLFTableCell.borderRight, hSLFTableCell.borderBottom, hSLFTableCell.borderLeft};
                for (int i = 0; i < 4; i++) {
                    HSLFLine hSLFLine = hSLFLineArr[i];
                    if (hSLFLine != null) {
                        hashSet.add(hSLFLine);
                    }
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            addShape((HSLFShape) it2.next());
        }
        updateRowHeightsProperty();
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public double getColumnWidth(int i) {
        if (i >= 0) {
            HSLFTableCell[] hSLFTableCellArr = this.cells[0];
            if (i < hSLFTableCellArr.length) {
                return hSLFTableCellArr[i].getAnchor().getWidth();
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Column index '");
        sb.append(i);
        sb.append("' is not within range [0-");
        sb.append(this.cells[0].length - 1);
        sb.append(IteratorUtils.f104924b);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public int getNumberOfColumns() {
        if (this.columnCount == -1) {
            for (HSLFTableCell[] hSLFTableCellArr : this.cells) {
                if (hSLFTableCellArr != null) {
                    this.columnCount = Math.max(this.columnCount, hSLFTableCellArr.length);
                }
            }
        }
        return this.columnCount;
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public int getNumberOfRows() {
        return this.cells.length;
    }

    public HSLFTableCell getRelativeCell(HSLFTableCell hSLFTableCell, int i, int i2) {
        HSLFTableCell[][] hSLFTableCellArr = this.cells;
        int length = hSLFTableCellArr.length;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        loop0: while (true) {
            if (i3 >= length) {
                break;
            }
            int i6 = 0;
            for (HSLFTableCell hSLFTableCell2 : hSLFTableCellArr[i3]) {
                if (hSLFTableCell2 == hSLFTableCell) {
                    z = true;
                    i5 = i6;
                    break loop0;
                }
                i6++;
            }
            i4++;
            i3++;
            i5 = i6;
        }
        int i7 = i4 + i;
        int i8 = i5 + i2;
        if (z && i7 >= 0) {
            HSLFTableCell[][] hSLFTableCellArr2 = this.cells;
            if (i7 < hSLFTableCellArr2.length && i8 >= 0) {
                HSLFTableCell[] hSLFTableCellArr3 = hSLFTableCellArr2[i7];
                if (i8 < hSLFTableCellArr3.length) {
                    return hSLFTableCellArr3[i8];
                }
            }
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public double getRowHeight(int i) {
        if (i >= 0) {
            HSLFTableCell[][] hSLFTableCellArr = this.cells;
            if (i < hSLFTableCellArr.length) {
                return hSLFTableCellArr[i][0].getAnchor().getHeight();
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Row index '");
        sb.append(i);
        sb.append("' is not within range [0-");
        sb.append(this.cells.length - 1);
        sb.append(IteratorUtils.f104924b);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public void initTable() {
        cellListToArray();
        fitLinesToCells();
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFGroupShape
    public void moveAndScale(Rectangle2D rectangle2D) {
        super.moveAndScale(rectangle2D);
        updateRowHeightsProperty();
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public void setColumnWidth(int i, double d) {
        int i2 = 0;
        if (i >= 0) {
            HSLFTableCell[] hSLFTableCellArr = this.cells[0];
            if (i < hSLFTableCellArr.length) {
                double width = d - hSLFTableCellArr[i].getAnchor().getWidth();
                HSLFTableCell[][] hSLFTableCellArr2 = this.cells;
                int length = hSLFTableCellArr2.length;
                while (i2 < length) {
                    HSLFTableCell[] hSLFTableCellArr3 = hSLFTableCellArr2[i2];
                    Rectangle2D anchor = hSLFTableCellArr3[i].getAnchor();
                    HSLFTableCell[][] hSLFTableCellArr4 = hSLFTableCellArr2;
                    int i3 = length;
                    anchor.setRect(anchor.getX(), anchor.getY(), d, anchor.getHeight());
                    hSLFTableCellArr3[i].setAnchor(anchor);
                    if (i < hSLFTableCellArr3.length - 1) {
                        for (int i4 = i + 1; i4 < hSLFTableCellArr3.length; i4++) {
                            Rectangle2D anchor2 = hSLFTableCellArr3[i4].getAnchor();
                            anchor2.setRect(anchor2.getX() + width, anchor2.getY(), anchor2.getWidth(), anchor2.getHeight());
                            hSLFTableCellArr3[i4].setAnchor(anchor2);
                        }
                    }
                    i2++;
                    hSLFTableCellArr2 = hSLFTableCellArr4;
                    length = i3;
                }
                Rectangle2D anchor3 = getAnchor();
                anchor3.setRect(anchor3.getX(), anchor3.getY(), anchor3.getWidth() + width, anchor3.getHeight());
                setExteriorAnchor(anchor3);
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Column index '");
        sb.append(i);
        sb.append("' is not within range [0-");
        sb.append(this.cells[0].length - 1);
        sb.append(IteratorUtils.f104924b);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    public void setRowHeight(int i, double d) {
        HSLFTableCell hSLFTableCell;
        Rectangle2D rectangle2D;
        int i2;
        if (i < 0 || i >= this.cells.length) {
            StringBuilder sb = new StringBuilder();
            sb.append("Row index '");
            sb.append(i);
            sb.append("' is not within range [0-");
            sb.append(this.cells.length - 1);
            sb.append(IteratorUtils.f104924b);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        EscherArrayProperty escherArrayProperty = (EscherArrayProperty) ((AbstractEscherOptRecord) getEscherChild(EscherRecordTypes.USER_DEFINED)).lookup(EscherPropertyTypes.GROUPSHAPE__TABLEROWPROPERTIES);
        byte[] element = escherArrayProperty.getElement(i);
        int i3 = 0;
        double masterToPoints = Units.masterToPoints(LittleEndian.getInt(element, 0));
        LittleEndian.putInt(element, 0, Units.pointsToMaster(d));
        escherArrayProperty.setElement(i, element);
        double d2 = d - masterToPoints;
        int i4 = i;
        while (true) {
            HSLFTableCell[][] hSLFTableCellArr = this.cells;
            if (i4 >= hSLFTableCellArr.length) {
                Rectangle2D anchor = getAnchor();
                anchor.setRect(anchor.getX(), anchor.getY(), anchor.getWidth(), anchor.getHeight() + d2);
                setExteriorAnchor(anchor);
                return;
            }
            HSLFTableCell[] hSLFTableCellArr2 = hSLFTableCellArr[i4];
            int length = hSLFTableCellArr2.length;
            int i5 = i3;
            while (i5 < length) {
                HSLFTableCell hSLFTableCell2 = hSLFTableCellArr2[i5];
                if (hSLFTableCell2 == null) {
                    i2 = i5;
                } else {
                    Rectangle2D anchor2 = hSLFTableCell2.getAnchor();
                    if (i4 == i) {
                        hSLFTableCell = hSLFTableCell2;
                        rectangle2D = anchor2;
                        i2 = i5;
                        anchor2.setRect(anchor2.getX(), anchor2.getY(), anchor2.getWidth(), d);
                    } else {
                        hSLFTableCell = hSLFTableCell2;
                        rectangle2D = anchor2;
                        i2 = i5;
                        rectangle2D.setRect(rectangle2D.getX(), rectangle2D.getY() + d2, rectangle2D.getWidth(), rectangle2D.getHeight());
                    }
                    hSLFTableCell.setAnchor(rectangle2D);
                }
                i5 = i2 + 1;
            }
            i4++;
            i3 = 0;
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public void setSheet(HSLFSheet hSLFSheet) {
        super.setSheet(hSLFSheet);
        HSLFTableCell[][] hSLFTableCellArr = this.cells;
        if (hSLFTableCellArr == null) {
            initTable();
            return;
        }
        for (HSLFTableCell[] hSLFTableCellArr2 : hSLFTableCellArr) {
            for (HSLFTableCell hSLFTableCell : hSLFTableCellArr2) {
                hSLFTableCell.setSheet(hSLFSheet);
            }
        }
    }

    public HSLFTable(int i, int i2, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(shapeContainer);
        this.columnCount = -1;
        if (i < 1) {
            throw new IllegalArgumentException("The number of rows must be greater than 1");
        }
        if (i2 >= 1) {
            this.cells = (HSLFTableCell[][]) Array.newInstance((Class<?>) HSLFTableCell.class, i, i2);
            double d = 0.0d;
            double d2 = 0.0d;
            for (int i3 = 0; i3 < this.cells.length; i3++) {
                d = 0.0d;
                int i4 = 0;
                while (true) {
                    HSLFTableCell[] hSLFTableCellArr = this.cells[i3];
                    if (i4 < hSLFTableCellArr.length) {
                        hSLFTableCellArr[i4] = new HSLFTableCell(this);
                        this.cells[i3][i4].setAnchor(new Rectangle2D.Double(d, d2, 100.0d, 40.0d));
                        d += 100.0d;
                        i4++;
                    }
                }
                d2 += 40.0d;
            }
            setExteriorAnchor(new Rectangle2D.Double(0.0d, 0.0d, d, d2));
            EscherContainerRecord escherContainerRecord = (EscherContainerRecord) getSpContainer().getChild(0);
            EscherOptRecord escherOptRecord = new EscherOptRecord();
            escherOptRecord.setRecordId(EscherRecordTypes.USER_DEFINED.typeID);
            escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.GROUPSHAPE__TABLEPROPERTIES, 1));
            EscherArrayProperty escherArrayProperty = new EscherArrayProperty(EscherPropertyTypes.GROUPSHAPE__TABLEROWPROPERTIES, true, 0);
            escherArrayProperty.setSizeOfElements(4);
            escherArrayProperty.setNumberOfElementsInArray(i);
            escherArrayProperty.setNumberOfElementsInMemory(i);
            escherOptRecord.addEscherProperty(escherArrayProperty);
            escherContainerRecord.addChildBefore(escherOptRecord, EscherRecordTypes.CLIENT_ANCHOR.typeID);
            return;
        }
        throw new IllegalArgumentException("The number of columns must be greater than 1");
    }

    @Override // org.apache.poi.sl.usermodel.TableShape
    /* renamed from: getCell, reason: merged with bridge method [inline-methods] */
    public TableCell<HSLFShape, HSLFTextParagraph> getCell2(int i, int i2) {
        HSLFTableCell[] hSLFTableCellArr;
        if (i >= 0) {
            HSLFTableCell[][] hSLFTableCellArr2 = this.cells;
            if (hSLFTableCellArr2.length > i && (hSLFTableCellArr = hSLFTableCellArr2[i]) != null && i2 >= 0 && hSLFTableCellArr.length > i2) {
                return hSLFTableCellArr[i2];
            }
        }
        return null;
    }

    public HSLFTable(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
        this.columnCount = -1;
    }
}
