package org.apache.poi.ss.util;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.StringTokenizer;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.util.StringUtil;

/* loaded from: classes13.dex */
public class AreaReference {
    private static final char CELL_DELIMITER = ':';
    private static final SpreadsheetVersion DEFAULT_SPREADSHEET_VERSION = SpreadsheetVersion.EXCEL97;
    private static final char SHEET_NAME_DELIMITER = '!';
    private static final char SPECIAL_NAME_DELIMITER = '\'';
    private final CellReference _firstCell;
    private final boolean _isSingleCell;
    private final CellReference _lastCell;
    private final SpreadsheetVersion _version;

    public AreaReference(String str, SpreadsheetVersion spreadsheetVersion) {
        this._version = spreadsheetVersion == null ? DEFAULT_SPREADSHEET_VERSION : spreadsheetVersion;
        if (isContiguous(str)) {
            String[] separateAreaRefs = separateAreaRefs(str);
            String str2 = separateAreaRefs[0];
            if (separateAreaRefs.length == 1) {
                CellReference cellReference = new CellReference(str2);
                this._firstCell = cellReference;
                this._lastCell = cellReference;
                this._isSingleCell = true;
                return;
            }
            if (separateAreaRefs.length == 2) {
                String str3 = separateAreaRefs[1];
                if (isPlainColumn(str2)) {
                    if (isPlainColumn(str3)) {
                        boolean isPartAbsolute = CellReference.isPartAbsolute(str2);
                        boolean isPartAbsolute2 = CellReference.isPartAbsolute(str3);
                        int convertColStringToIndex = CellReference.convertColStringToIndex(str2);
                        int convertColStringToIndex2 = CellReference.convertColStringToIndex(str3);
                        this._firstCell = new CellReference(0, convertColStringToIndex, true, isPartAbsolute);
                        this._lastCell = new CellReference(65535, convertColStringToIndex2, true, isPartAbsolute2);
                        this._isSingleCell = false;
                        return;
                    }
                    throw new IllegalStateException("Bad area ref '" + str + CloudStorageConstants.SINGLE_QUOTES);
                }
                this._firstCell = new CellReference(str2);
                this._lastCell = new CellReference(str3);
                this._isSingleCell = str2.equals(str3);
                return;
            }
            throw new IllegalArgumentException("Bad area ref '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
        throw new IllegalArgumentException("References passed to the AreaReference must be contiguous, use generateContiguous(ref) if you have non-contiguous references");
    }

    public static AreaReference[] generateContiguous(SpreadsheetVersion spreadsheetVersion, String str) {
        if (spreadsheetVersion == null) {
            spreadsheetVersion = DEFAULT_SPREADSHEET_VERSION;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : splitAreaReferences(str)) {
            arrayList.add(new AreaReference(str2, spreadsheetVersion));
        }
        return (AreaReference[]) arrayList.toArray(new AreaReference[0]);
    }

    public static AreaReference getWholeColumn(SpreadsheetVersion spreadsheetVersion, String str, String str2) {
        if (spreadsheetVersion == null) {
            spreadsheetVersion = DEFAULT_SPREADSHEET_VERSION;
        }
        return new AreaReference(str + "$1:" + str2 + "$" + spreadsheetVersion.getMaxRows(), spreadsheetVersion);
    }

    public static AreaReference getWholeRow(SpreadsheetVersion spreadsheetVersion, String str, String str2) {
        if (spreadsheetVersion == null) {
            spreadsheetVersion = DEFAULT_SPREADSHEET_VERSION;
        }
        return new AreaReference("$A" + str + ":$" + spreadsheetVersion.getLastColumnName() + str2, spreadsheetVersion);
    }

    public static boolean isContiguous(String str) {
        return splitAreaReferences(str).length == 1;
    }

    private static boolean isPlainColumn(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (!(charAt == '$' && length == 0) && (charAt < 'A' || charAt > 'Z')) {
                return false;
            }
        }
        return true;
    }

    public static boolean isWholeColumnReference(SpreadsheetVersion spreadsheetVersion, CellReference cellReference, CellReference cellReference2) {
        if (spreadsheetVersion == null) {
            spreadsheetVersion = DEFAULT_SPREADSHEET_VERSION;
        }
        return cellReference.getRow() == 0 && cellReference.isRowAbsolute() && cellReference2.getRow() == spreadsheetVersion.getLastRowIndex() && cellReference2.isRowAbsolute();
    }

    private static String[] separateAreaRefs(String str) {
        int length = str.length();
        int i = -1;
        int i2 = 0;
        boolean z = false;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt != '\'') {
                if (charAt == ':' && !z) {
                    if (i >= 0) {
                        throw new IllegalArgumentException("More than one cell delimiter ':' appears in area reference '" + str + CloudStorageConstants.SINGLE_QUOTES);
                    }
                    i = i2;
                }
            } else if (!z) {
                z = true;
            } else {
                if (i2 >= length - 1) {
                    throw new IllegalArgumentException("Area reference '" + str + "' ends with special name delimiter ''" + CloudStorageConstants.SINGLE_QUOTES);
                }
                int i3 = i2 + 1;
                if (str.charAt(i3) == '\'') {
                    i2 = i3;
                } else {
                    z = false;
                }
            }
            i2++;
        }
        if (i < 0) {
            return new String[]{str};
        }
        String substring = str.substring(0, i);
        String substring2 = str.substring(i + 1);
        if (substring2.indexOf(33) >= 0) {
            throw new IllegalStateException("Unexpected ! in second cell reference of '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
        int lastIndexOf = substring.lastIndexOf(33);
        if (lastIndexOf < 0) {
            return new String[]{substring, substring2};
        }
        return new String[]{substring, substring.substring(0, lastIndexOf + 1) + substring2};
    }

    private static String[] splitAreaReferences(String str) {
        String str2;
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        loop0: while (true) {
            str2 = "";
            while (stringTokenizer.hasMoreTokens()) {
                if (str2.length() > 0) {
                    str2 = str2 + ",";
                }
                str2 = str2 + stringTokenizer.nextToken();
                int countMatches = StringUtil.countMatches(str2, '\'');
                if (countMatches == 0 || countMatches == 2) {
                    arrayList.add(str2);
                }
            }
            break loop0;
        }
        if (str2.length() > 0) {
            arrayList.add(str2);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public String formatAsString() {
        if (isWholeColumnReference()) {
            return CellReference.convertNumToColString(this._firstCell.getCol()) + ":" + CellReference.convertNumToColString(this._lastCell.getCol());
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append(this._firstCell.formatAsString());
        if (!this._isSingleCell) {
            sb.append(':');
            if (this._lastCell.getSheetName() == null) {
                sb.append(this._lastCell.formatAsString());
            } else {
                this._lastCell.appendCellReference(sb);
            }
        }
        return sb.toString();
    }

    public CellReference[] getAllReferencedCells() {
        if (this._isSingleCell) {
            return new CellReference[]{this._firstCell};
        }
        int max = Math.max(this._firstCell.getRow(), this._lastCell.getRow());
        int min = Math.min((int) this._firstCell.getCol(), (int) this._lastCell.getCol());
        int max2 = Math.max((int) this._firstCell.getCol(), (int) this._lastCell.getCol());
        String sheetName = this._firstCell.getSheetName();
        ArrayList arrayList = new ArrayList();
        for (int min2 = Math.min(this._firstCell.getRow(), this._lastCell.getRow()); min2 <= max; min2++) {
            for (int i = min; i <= max2; i++) {
                arrayList.add(new CellReference(sheetName, min2, i, this._firstCell.isRowAbsolute(), this._firstCell.isColAbsolute()));
            }
        }
        return (CellReference[]) arrayList.toArray(new CellReference[0]);
    }

    public CellReference getFirstCell() {
        return this._firstCell;
    }

    public CellReference getLastCell() {
        return this._lastCell;
    }

    public boolean isSingleCell() {
        return this._isSingleCell;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(getClass().getName());
        sb.append(" [");
        try {
            sb.append(formatAsString());
        } catch (Exception e) {
            sb.append(e);
        }
        sb.append(']');
        return sb.toString();
    }

    public boolean isWholeColumnReference() {
        return isWholeColumnReference(this._version, this._firstCell, this._lastCell);
    }

    public AreaReference(CellReference cellReference, CellReference cellReference2, SpreadsheetVersion spreadsheetVersion) {
        int row;
        boolean isRowAbsolute;
        int row2;
        boolean isRowAbsolute2;
        short col;
        String sheetName;
        short col2;
        boolean z;
        String str;
        boolean isColAbsolute;
        this._version = spreadsheetVersion != null ? spreadsheetVersion : DEFAULT_SPREADSHEET_VERSION;
        boolean z2 = cellReference.getRow() > cellReference2.getRow();
        boolean z3 = cellReference.getCol() > cellReference2.getCol();
        if (!z2 && !z3) {
            this._firstCell = cellReference;
            this._lastCell = cellReference2;
        } else {
            if (z2) {
                row = cellReference2.getRow();
                isRowAbsolute = cellReference2.isRowAbsolute();
                row2 = cellReference.getRow();
                isRowAbsolute2 = cellReference.isRowAbsolute();
            } else {
                row = cellReference.getRow();
                isRowAbsolute = cellReference.isRowAbsolute();
                row2 = cellReference2.getRow();
                isRowAbsolute2 = cellReference2.isRowAbsolute();
            }
            int i = row;
            boolean z4 = isRowAbsolute;
            boolean z5 = isRowAbsolute2;
            if (z3) {
                String sheetName2 = cellReference2.getSheetName();
                col = cellReference2.getCol();
                boolean isColAbsolute2 = cellReference2.isColAbsolute();
                sheetName = cellReference.getSheetName();
                col2 = cellReference.getCol();
                isColAbsolute = cellReference.isColAbsolute();
                str = sheetName2;
                z = isColAbsolute2;
            } else {
                String sheetName3 = cellReference.getSheetName();
                col = cellReference.getCol();
                boolean isColAbsolute3 = cellReference.isColAbsolute();
                sheetName = cellReference2.getSheetName();
                col2 = cellReference2.getCol();
                z = isColAbsolute3;
                str = sheetName3;
                isColAbsolute = cellReference2.isColAbsolute();
            }
            this._firstCell = new CellReference(str, i, col, z4, z);
            this._lastCell = new CellReference(sheetName, row2, col2, z5, isColAbsolute);
        }
        this._isSingleCell = false;
    }
}
