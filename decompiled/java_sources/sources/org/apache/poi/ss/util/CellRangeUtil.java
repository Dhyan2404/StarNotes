package org.apache.poi.ss.util;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes13.dex */
public final class CellRangeUtil {
    public static final int ENCLOSES = 4;
    public static final int INSIDE = 3;
    public static final int NO_INTERSECTION = 1;
    public static final int OVERLAP = 2;

    private CellRangeUtil() {
    }

    public static boolean contains(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2) {
        return m69587le(cellRangeAddress.getFirstRow(), cellRangeAddress2.getFirstRow()) && m69585ge(cellRangeAddress.getLastRow(), cellRangeAddress2.getLastRow()) && m69587le(cellRangeAddress.getFirstColumn(), cellRangeAddress2.getFirstColumn()) && m69585ge(cellRangeAddress.getLastColumn(), cellRangeAddress2.getLastColumn());
    }

    public static CellRangeAddress createEnclosingCellRange(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2) {
        if (cellRangeAddress2 == null) {
            return cellRangeAddress.copy();
        }
        return new CellRangeAddress(m69588lt(cellRangeAddress2.getFirstRow(), cellRangeAddress.getFirstRow()) ? cellRangeAddress2.getFirstRow() : cellRangeAddress.getFirstRow(), m69586gt(cellRangeAddress2.getLastRow(), cellRangeAddress.getLastRow()) ? cellRangeAddress2.getLastRow() : cellRangeAddress.getLastRow(), m69588lt(cellRangeAddress2.getFirstColumn(), cellRangeAddress.getFirstColumn()) ? cellRangeAddress2.getFirstColumn() : cellRangeAddress.getFirstColumn(), m69586gt(cellRangeAddress2.getLastColumn(), cellRangeAddress.getLastColumn()) ? cellRangeAddress2.getLastColumn() : cellRangeAddress.getLastColumn());
    }

    /* renamed from: ge */
    private static boolean m69585ge(int i, int i2) {
        return !m69588lt(i, i2);
    }

    /* renamed from: gt */
    private static boolean m69586gt(int i, int i2) {
        return m69588lt(i2, i);
    }

    public static boolean hasExactSharedBorder(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2) {
        int firstRow = cellRangeAddress2.getFirstRow();
        int lastRow = cellRangeAddress2.getLastRow();
        int firstColumn = cellRangeAddress2.getFirstColumn();
        int lastColumn = cellRangeAddress2.getLastColumn();
        return ((cellRangeAddress.getFirstRow() <= 0 || cellRangeAddress.getFirstRow() - 1 != lastRow) && (firstRow <= 0 || firstRow + (-1) != cellRangeAddress.getLastRow())) ? ((cellRangeAddress.getFirstColumn() > 0 && cellRangeAddress.getFirstColumn() - 1 == lastColumn) || (firstColumn > 0 && cellRangeAddress.getLastColumn() == firstColumn - 1)) && cellRangeAddress.getFirstRow() == firstRow && cellRangeAddress.getLastRow() == lastRow : cellRangeAddress.getFirstColumn() == firstColumn && cellRangeAddress.getLastColumn() == lastColumn;
    }

    public static int intersect(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2) {
        int firstRow = cellRangeAddress2.getFirstRow();
        int lastRow = cellRangeAddress2.getLastRow();
        int firstColumn = cellRangeAddress2.getFirstColumn();
        int lastColumn = cellRangeAddress2.getLastColumn();
        if (m69586gt(cellRangeAddress.getFirstRow(), lastRow) || m69588lt(cellRangeAddress.getLastRow(), firstRow) || m69586gt(cellRangeAddress.getFirstColumn(), lastColumn) || m69588lt(cellRangeAddress.getLastColumn(), firstColumn)) {
            return 1;
        }
        if (contains(cellRangeAddress, cellRangeAddress2)) {
            return 3;
        }
        return contains(cellRangeAddress2, cellRangeAddress) ? 4 : 2;
    }

    /* renamed from: le */
    private static boolean m69587le(int i, int i2) {
        return i == i2 || m69588lt(i, i2);
    }

    /* renamed from: lt */
    private static boolean m69588lt(int i, int i2) {
        if (i == -1) {
            return false;
        }
        return i2 == -1 || i < i2;
    }

    public static CellRangeAddress[] mergeCellRanges(CellRangeAddress[] cellRangeAddressArr) {
        return cellRangeAddressArr.length < 1 ? new CellRangeAddress[0] : toArray(mergeCellRanges(toList(cellRangeAddressArr)));
    }

    private static CellRangeAddress[] mergeRanges(CellRangeAddress cellRangeAddress, CellRangeAddress cellRangeAddress2) {
        int intersect = intersect(cellRangeAddress, cellRangeAddress2);
        if (intersect == 1) {
            if (hasExactSharedBorder(cellRangeAddress, cellRangeAddress2)) {
                return new CellRangeAddress[]{createEnclosingCellRange(cellRangeAddress, cellRangeAddress2)};
            }
            return null;
        }
        if (intersect == 2) {
            return null;
        }
        if (intersect == 3) {
            return new CellRangeAddress[]{cellRangeAddress};
        }
        if (intersect == 4) {
            return new CellRangeAddress[]{cellRangeAddress2};
        }
        throw new IllegalStateException("unexpected intersection result (" + intersect + MotionUtils.f31762d);
    }

    private static CellRangeAddress[] toArray(List<CellRangeAddress> list) {
        CellRangeAddress[] cellRangeAddressArr = new CellRangeAddress[list.size()];
        list.toArray(cellRangeAddressArr);
        return cellRangeAddressArr;
    }

    private static List<CellRangeAddress> toList(CellRangeAddress[] cellRangeAddressArr) {
        ArrayList arrayList = new ArrayList(cellRangeAddressArr.length);
        Collections.addAll(arrayList, cellRangeAddressArr);
        return arrayList;
    }

    private static List<CellRangeAddress> mergeCellRanges(List<CellRangeAddress> list) {
        while (list.size() > 1) {
            int i = 0;
            boolean z = false;
            while (i < list.size()) {
                CellRangeAddress cellRangeAddress = list.get(i);
                int i2 = i + 1;
                int i3 = i2;
                while (i3 < list.size()) {
                    CellRangeAddress[] mergeRanges = mergeRanges(cellRangeAddress, list.get(i3));
                    if (mergeRanges != null) {
                        CellRangeAddress cellRangeAddress2 = mergeRanges[0];
                        list.set(i, cellRangeAddress2);
                        list.remove(i3);
                        i3--;
                        for (int i4 = 1; i4 < mergeRanges.length; i4++) {
                            i3++;
                            list.add(i3, mergeRanges[i4]);
                        }
                        cellRangeAddress = cellRangeAddress2;
                        z = true;
                    }
                    i3++;
                }
                i = i2;
            }
            if (!z) {
                break;
            }
        }
        return list;
    }
}
