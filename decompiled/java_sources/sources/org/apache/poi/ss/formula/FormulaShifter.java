package org.apache.poi.ss.formula;

import com.google.android.material.motion.MotionUtils;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.ptg.Area2DPtgBase;
import org.apache.poi.ss.formula.ptg.Area3DPtg;
import org.apache.poi.ss.formula.ptg.Area3DPxg;
import org.apache.poi.ss.formula.ptg.AreaErrPtg;
import org.apache.poi.ss.formula.ptg.AreaPtg;
import org.apache.poi.ss.formula.ptg.AreaPtgBase;
import org.apache.poi.ss.formula.ptg.Deleted3DPxg;
import org.apache.poi.ss.formula.ptg.DeletedArea3DPtg;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.Ref3DPtg;
import org.apache.poi.ss.formula.ptg.Ref3DPxg;
import org.apache.poi.ss.formula.ptg.RefErrorPtg;
import org.apache.poi.ss.formula.ptg.RefPtg;
import org.apache.poi.ss.formula.ptg.RefPtgBase;

/* loaded from: classes13.dex */
public final class FormulaShifter {
    private final int _amountToMove;
    private final int _dstSheetIndex;
    private final int _externSheetIndex;
    private final int _firstMovedIndex;
    private final int _lastMovedIndex;
    private final ShiftMode _mode;
    private final String _sheetName;
    private final int _srcSheetIndex;
    private final SpreadsheetVersion _version;

    /* renamed from: org.apache.poi.ss.formula.FormulaShifter$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C196821 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode;

        static {
            int[] iArr = new int[ShiftMode.values().length];
            $SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode = iArr;
            try {
                iArr[ShiftMode.RowMove.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode[ShiftMode.RowCopy.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode[ShiftMode.ColumnMove.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode[ShiftMode.ColumnCopy.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode[ShiftMode.SheetMove.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum ShiftMode {
        RowMove,
        RowCopy,
        ColumnMove,
        ColumnCopy,
        SheetMove
    }

    private FormulaShifter(int i, String str, int i2, int i3, int i4, ShiftMode shiftMode, SpreadsheetVersion spreadsheetVersion) {
        if (i2 <= i3) {
            this._externSheetIndex = i;
            this._sheetName = str;
            this._firstMovedIndex = i2;
            this._lastMovedIndex = i3;
            this._amountToMove = i4;
            this._mode = shiftMode;
            this._version = spreadsheetVersion;
            this._dstSheetIndex = -1;
            this._srcSheetIndex = -1;
            return;
        }
        throw new IllegalArgumentException("firstMovedIndex, lastMovedIndex out of order");
    }

    private Ptg adjustPtg(Ptg ptg, int i) {
        int i2 = C196821.$SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode[this._mode.ordinal()];
        if (i2 == 1) {
            return adjustPtgDueToRowMove(ptg, i);
        }
        if (i2 == 2) {
            return adjustPtgDueToRowCopy(ptg);
        }
        if (i2 == 3) {
            return adjustPtgDueToColumnMove(ptg, i);
        }
        if (i2 == 4) {
            return adjustPtgDueToColumnCopy(ptg);
        }
        if (i2 == 5) {
            return adjustPtgDueToSheetMove(ptg);
        }
        throw new IllegalStateException("Unsupported shift mode: " + this._mode);
    }

    private Ptg adjustPtgDueToColumnCopy(Ptg ptg) {
        return adjustPtgDueToCopy(ptg, false);
    }

    private Ptg adjustPtgDueToColumnMove(Ptg ptg, int i) {
        return adjustPtgDueToMove(ptg, i, false);
    }

    private Ptg adjustPtgDueToCopy(Ptg ptg, boolean z) {
        if (ptg instanceof RefPtg) {
            RefPtg refPtg = (RefPtg) ptg;
            return z ? rowCopyRefPtg(refPtg) : columnCopyRefPtg(refPtg);
        }
        if (ptg instanceof Ref3DPtg) {
            Ref3DPtg ref3DPtg = (Ref3DPtg) ptg;
            return z ? rowCopyRefPtg(ref3DPtg) : columnCopyRefPtg(ref3DPtg);
        }
        if (ptg instanceof Ref3DPxg) {
            Ref3DPxg ref3DPxg = (Ref3DPxg) ptg;
            return z ? rowCopyRefPtg(ref3DPxg) : columnCopyRefPtg(ref3DPxg);
        }
        if (ptg instanceof Area2DPtgBase) {
            Area2DPtgBase area2DPtgBase = (Area2DPtgBase) ptg;
            return z ? rowCopyAreaPtg(area2DPtgBase) : columnCopyAreaPtg(area2DPtgBase);
        }
        if (ptg instanceof Area3DPtg) {
            Area3DPtg area3DPtg = (Area3DPtg) ptg;
            return z ? rowCopyAreaPtg(area3DPtg) : columnCopyAreaPtg(area3DPtg);
        }
        if (!(ptg instanceof Area3DPxg)) {
            return null;
        }
        Area3DPxg area3DPxg = (Area3DPxg) ptg;
        return z ? rowCopyAreaPtg(area3DPxg) : columnCopyAreaPtg(area3DPxg);
    }

    private Ptg adjustPtgDueToMove(Ptg ptg, int i, boolean z) {
        if (ptg instanceof RefPtg) {
            if (i != this._externSheetIndex) {
                return null;
            }
            RefPtgBase refPtgBase = (RefPtg) ptg;
            return z ? rowMoveRefPtg(refPtgBase) : columnMoveRefPtg(refPtgBase);
        }
        if (ptg instanceof Ref3DPtg) {
            Ref3DPtg ref3DPtg = (Ref3DPtg) ptg;
            if (this._externSheetIndex != ref3DPtg.getExternSheetIndex()) {
                return null;
            }
            return z ? rowMoveRefPtg(ref3DPtg) : columnMoveRefPtg(ref3DPtg);
        }
        if (ptg instanceof Ref3DPxg) {
            Ref3DPxg ref3DPxg = (Ref3DPxg) ptg;
            if (ref3DPxg.getExternalWorkbookNumber() > 0 || !this._sheetName.equalsIgnoreCase(ref3DPxg.getSheetName())) {
                return null;
            }
            return z ? rowMoveRefPtg(ref3DPxg) : columnMoveRefPtg(ref3DPxg);
        }
        if (ptg instanceof Area2DPtgBase) {
            if (i != this._externSheetIndex) {
                return ptg;
            }
            AreaPtgBase areaPtgBase = (Area2DPtgBase) ptg;
            return z ? rowMoveAreaPtg(areaPtgBase) : columnMoveAreaPtg(areaPtgBase);
        }
        if (ptg instanceof Area3DPtg) {
            Area3DPtg area3DPtg = (Area3DPtg) ptg;
            if (this._externSheetIndex != area3DPtg.getExternSheetIndex()) {
                return null;
            }
            return z ? rowMoveAreaPtg(area3DPtg) : columnMoveAreaPtg(area3DPtg);
        }
        if (ptg instanceof Area3DPxg) {
            Area3DPxg area3DPxg = (Area3DPxg) ptg;
            if (area3DPxg.getExternalWorkbookNumber() <= 0 && this._sheetName.equalsIgnoreCase(area3DPxg.getSheetName())) {
                return z ? rowMoveAreaPtg(area3DPxg) : columnMoveAreaPtg(area3DPxg);
            }
        }
        return null;
    }

    private Ptg adjustPtgDueToRowCopy(Ptg ptg) {
        return adjustPtgDueToCopy(ptg, true);
    }

    private Ptg adjustPtgDueToRowMove(Ptg ptg, int i) {
        return adjustPtgDueToMove(ptg, i, true);
    }

    private Ptg adjustPtgDueToSheetMove(Ptg ptg) {
        Ref3DPtg ref3DPtg;
        int externSheetIndex;
        int i;
        if (!(ptg instanceof Ref3DPtg) || ((externSheetIndex = (ref3DPtg = (Ref3DPtg) ptg).getExternSheetIndex()) < (i = this._srcSheetIndex) && externSheetIndex < this._dstSheetIndex)) {
            return null;
        }
        if (externSheetIndex > i && externSheetIndex > this._dstSheetIndex) {
            return null;
        }
        if (externSheetIndex == i) {
            ref3DPtg.setExternSheetIndex(this._dstSheetIndex);
            return ref3DPtg;
        }
        int i2 = this._dstSheetIndex;
        if (i2 < i) {
            ref3DPtg.setExternSheetIndex(externSheetIndex + 1);
            return ref3DPtg;
        }
        if (i2 > i) {
            ref3DPtg.setExternSheetIndex(externSheetIndex - 1);
            return ref3DPtg;
        }
        return null;
    }

    private Ptg columnCopyAreaPtg(AreaPtgBase areaPtgBase) {
        boolean z;
        int firstColumn = areaPtgBase.getFirstColumn();
        int lastColumn = areaPtgBase.getLastColumn();
        boolean z2 = true;
        if (areaPtgBase.isFirstColRelative()) {
            int i = firstColumn + this._amountToMove;
            if (i < 0 || this._version.getLastColumnIndex() < i) {
                return createDeletedRef(areaPtgBase);
            }
            areaPtgBase.setFirstColumn(i);
            z = true;
        } else {
            z = false;
        }
        if (areaPtgBase.isLastColRelative()) {
            int i2 = lastColumn + this._amountToMove;
            if (i2 < 0 || this._version.getLastColumnIndex() < i2) {
                return createDeletedRef(areaPtgBase);
            }
            areaPtgBase.setLastColumn(i2);
        } else {
            z2 = z;
        }
        if (z2) {
            areaPtgBase.sortTopLeftToBottomRight();
        }
        if (z2) {
            return areaPtgBase;
        }
        return null;
    }

    private Ptg columnCopyRefPtg(RefPtgBase refPtgBase) {
        int column = refPtgBase.getColumn();
        if (!refPtgBase.isColRelative()) {
            return null;
        }
        int i = this._firstMovedIndex + this._amountToMove;
        if (i < 0 || this._version.getLastColumnIndex() < i) {
            return createDeletedRef(refPtgBase);
        }
        int i2 = column + this._amountToMove;
        if (i2 < 0 || this._version.getLastColumnIndex() < i2) {
            return createDeletedRef(refPtgBase);
        }
        refPtgBase.setColumn(i2);
        return refPtgBase;
    }

    private Ptg columnMoveAreaPtg(AreaPtgBase areaPtgBase) {
        int firstColumn = areaPtgBase.getFirstColumn();
        int lastColumn = areaPtgBase.getLastColumn();
        int i = this._firstMovedIndex;
        if (i <= firstColumn && lastColumn <= this._lastMovedIndex) {
            areaPtgBase.setFirstColumn(firstColumn + this._amountToMove);
            areaPtgBase.setLastColumn(lastColumn + this._amountToMove);
            return areaPtgBase;
        }
        int i2 = this._amountToMove;
        int i3 = i + i2;
        int i4 = this._lastMovedIndex;
        int i5 = i4 + i2;
        if (firstColumn < i && i4 < lastColumn) {
            if (i3 < firstColumn && firstColumn <= i5) {
                areaPtgBase.setFirstColumn(i5 + 1);
                return areaPtgBase;
            }
            if (i3 > lastColumn || lastColumn >= i5) {
                return null;
            }
            areaPtgBase.setLastColumn(i3 - 1);
            return areaPtgBase;
        }
        if (i <= firstColumn && firstColumn <= i4) {
            if (i2 < 0) {
                areaPtgBase.setFirstColumn(firstColumn + i2);
                return areaPtgBase;
            }
            if (i3 > lastColumn) {
                return null;
            }
            int i6 = firstColumn + i2;
            if (i5 < lastColumn) {
                areaPtgBase.setFirstColumn(i6);
                return areaPtgBase;
            }
            int i7 = i4 + 1;
            if (i3 > i7) {
                i6 = i7;
            }
            areaPtgBase.setFirstColumn(i6);
            areaPtgBase.setLastColumn(Math.max(lastColumn, i5));
            return areaPtgBase;
        }
        if (i <= lastColumn && lastColumn <= i4) {
            if (i2 > 0) {
                areaPtgBase.setLastColumn(lastColumn + i2);
                return areaPtgBase;
            }
            if (i5 < firstColumn) {
                return null;
            }
            int i8 = lastColumn + i2;
            if (i3 > firstColumn) {
                areaPtgBase.setLastColumn(i8);
                return areaPtgBase;
            }
            int i9 = i - 1;
            if (i5 < i9) {
                i8 = i9;
            }
            areaPtgBase.setFirstColumn(Math.min(firstColumn, i3));
            areaPtgBase.setLastColumn(i8);
            return areaPtgBase;
        }
        if (i5 < firstColumn || lastColumn < i3) {
            return null;
        }
        if (i3 <= firstColumn && lastColumn <= i5) {
            return createDeletedRef(areaPtgBase);
        }
        if (firstColumn <= i3 && i5 <= lastColumn) {
            return null;
        }
        if (i3 < firstColumn && firstColumn <= i5) {
            areaPtgBase.setFirstColumn(i5 + 1);
            return areaPtgBase;
        }
        if (i3 <= lastColumn && lastColumn < i5) {
            areaPtgBase.setLastColumn(i3 - 1);
            return areaPtgBase;
        }
        throw new IllegalStateException("Situation not covered: (" + this._firstMovedIndex + ", " + this._lastMovedIndex + ", " + this._amountToMove + ", " + firstColumn + ", " + lastColumn + MotionUtils.f31762d);
    }

    private Ptg columnMoveRefPtg(RefPtgBase refPtgBase) {
        int column = refPtgBase.getColumn();
        int i = this._firstMovedIndex;
        if (i <= column && column <= this._lastMovedIndex) {
            refPtgBase.setColumn(column + this._amountToMove);
            return refPtgBase;
        }
        int i2 = this._amountToMove;
        int i3 = i + i2;
        int i4 = this._lastMovedIndex + i2;
        if (i4 < column || column < i3) {
            return null;
        }
        if (i3 <= column && column <= i4) {
            return createDeletedRef(refPtgBase);
        }
        throw new IllegalStateException("Situation not covered: (" + this._firstMovedIndex + ", " + this._lastMovedIndex + ", " + this._amountToMove + ", " + column + ", " + column + MotionUtils.f31762d);
    }

    private static Ptg createDeletedRef(Ptg ptg) {
        if (ptg instanceof RefPtg) {
            return new RefErrorPtg();
        }
        if (ptg instanceof Ref3DPtg) {
            return new DeletedRef3DPtg(((Ref3DPtg) ptg).getExternSheetIndex());
        }
        if (ptg instanceof AreaPtg) {
            return new AreaErrPtg();
        }
        if (ptg instanceof Area3DPtg) {
            return new DeletedArea3DPtg(((Area3DPtg) ptg).getExternSheetIndex());
        }
        if (ptg instanceof Ref3DPxg) {
            Ref3DPxg ref3DPxg = (Ref3DPxg) ptg;
            return new Deleted3DPxg(ref3DPxg.getExternalWorkbookNumber(), ref3DPxg.getSheetName());
        }
        if (ptg instanceof Area3DPxg) {
            Area3DPxg area3DPxg = (Area3DPxg) ptg;
            return new Deleted3DPxg(area3DPxg.getExternalWorkbookNumber(), area3DPxg.getSheetName());
        }
        throw new IllegalArgumentException("Unexpected ref ptg class (" + ptg.getClass().getName() + MotionUtils.f31762d);
    }

    public static FormulaShifter createForColumnCopy(int i, String str, int i2, int i3, int i4, SpreadsheetVersion spreadsheetVersion) {
        return new FormulaShifter(i, str, i2, i3, i4, ShiftMode.ColumnCopy, spreadsheetVersion);
    }

    public static FormulaShifter createForColumnShift(int i, String str, int i2, int i3, int i4, SpreadsheetVersion spreadsheetVersion) {
        return new FormulaShifter(i, str, i2, i3, i4, ShiftMode.ColumnMove, spreadsheetVersion);
    }

    public static FormulaShifter createForRowCopy(int i, String str, int i2, int i3, int i4, SpreadsheetVersion spreadsheetVersion) {
        return new FormulaShifter(i, str, i2, i3, i4, ShiftMode.RowCopy, spreadsheetVersion);
    }

    public static FormulaShifter createForRowShift(int i, String str, int i2, int i3, int i4, SpreadsheetVersion spreadsheetVersion) {
        return new FormulaShifter(i, str, i2, i3, i4, ShiftMode.RowMove, spreadsheetVersion);
    }

    public static FormulaShifter createForSheetShift(int i, int i2) {
        return new FormulaShifter(i, i2);
    }

    private Ptg rowCopyAreaPtg(AreaPtgBase areaPtgBase) {
        boolean z;
        int firstRow = areaPtgBase.getFirstRow();
        int lastRow = areaPtgBase.getLastRow();
        boolean z2 = true;
        if (areaPtgBase.isFirstRowRelative()) {
            int i = firstRow + this._amountToMove;
            if (i < 0 || this._version.getLastRowIndex() < i) {
                return createDeletedRef(areaPtgBase);
            }
            areaPtgBase.setFirstRow(i);
            z = true;
        } else {
            z = false;
        }
        if (areaPtgBase.isLastRowRelative()) {
            int i2 = lastRow + this._amountToMove;
            if (i2 < 0 || this._version.getLastRowIndex() < i2) {
                return createDeletedRef(areaPtgBase);
            }
            areaPtgBase.setLastRow(i2);
        } else {
            z2 = z;
        }
        if (z2) {
            areaPtgBase.sortTopLeftToBottomRight();
        }
        if (z2) {
            return areaPtgBase;
        }
        return null;
    }

    private Ptg rowCopyRefPtg(RefPtgBase refPtgBase) {
        int row = refPtgBase.getRow();
        if (!refPtgBase.isRowRelative()) {
            return null;
        }
        int i = this._firstMovedIndex + this._amountToMove;
        if (i < 0 || this._version.getLastRowIndex() < i) {
            return createDeletedRef(refPtgBase);
        }
        int i2 = row + this._amountToMove;
        if (i2 < 0 || this._version.getLastRowIndex() < i2) {
            return createDeletedRef(refPtgBase);
        }
        refPtgBase.setRow(i2);
        return refPtgBase;
    }

    private Ptg rowMoveAreaPtg(AreaPtgBase areaPtgBase) {
        int firstRow = areaPtgBase.getFirstRow();
        int lastRow = areaPtgBase.getLastRow();
        int i = this._firstMovedIndex;
        if (i <= firstRow && lastRow <= this._lastMovedIndex) {
            areaPtgBase.setFirstRow(firstRow + this._amountToMove);
            areaPtgBase.setLastRow(lastRow + this._amountToMove);
            return areaPtgBase;
        }
        int i2 = this._amountToMove;
        int i3 = i + i2;
        int i4 = this._lastMovedIndex;
        int i5 = i4 + i2;
        if (firstRow < i && i4 < lastRow) {
            if (i3 < firstRow && firstRow <= i5) {
                areaPtgBase.setFirstRow(i5 + 1);
                return areaPtgBase;
            }
            if (i3 > lastRow || lastRow >= i5) {
                return null;
            }
            areaPtgBase.setLastRow(i3 - 1);
            return areaPtgBase;
        }
        if (i <= firstRow && firstRow <= i4) {
            if (i2 < 0) {
                areaPtgBase.setFirstRow(firstRow + i2);
                return areaPtgBase;
            }
            if (i3 > lastRow) {
                return null;
            }
            int i6 = firstRow + i2;
            if (i5 < lastRow) {
                areaPtgBase.setFirstRow(i6);
                return areaPtgBase;
            }
            int i7 = i4 + 1;
            if (i3 > i7) {
                i6 = i7;
            }
            areaPtgBase.setFirstRow(i6);
            areaPtgBase.setLastRow(Math.max(lastRow, i5));
            return areaPtgBase;
        }
        if (i <= lastRow && lastRow <= i4) {
            if (i2 > 0) {
                areaPtgBase.setLastRow(lastRow + i2);
                return areaPtgBase;
            }
            if (i5 < firstRow) {
                return null;
            }
            int i8 = lastRow + i2;
            if (i3 > firstRow) {
                areaPtgBase.setLastRow(i8);
                return areaPtgBase;
            }
            int i9 = i - 1;
            if (i5 < i9) {
                i8 = i9;
            }
            areaPtgBase.setFirstRow(Math.min(firstRow, i3));
            areaPtgBase.setLastRow(i8);
            return areaPtgBase;
        }
        if (i5 < firstRow || lastRow < i3) {
            return null;
        }
        if (i3 <= firstRow && lastRow <= i5) {
            return createDeletedRef(areaPtgBase);
        }
        if (firstRow <= i3 && i5 <= lastRow) {
            return null;
        }
        if (i3 < firstRow && firstRow <= i5) {
            areaPtgBase.setFirstRow(i5 + 1);
            return areaPtgBase;
        }
        if (i3 <= lastRow && lastRow < i5) {
            areaPtgBase.setLastRow(i3 - 1);
            return areaPtgBase;
        }
        throw new IllegalStateException("Situation not covered: (" + this._firstMovedIndex + ", " + this._lastMovedIndex + ", " + this._amountToMove + ", " + firstRow + ", " + lastRow + MotionUtils.f31762d);
    }

    private Ptg rowMoveRefPtg(RefPtgBase refPtgBase) {
        int row = refPtgBase.getRow();
        int i = this._firstMovedIndex;
        if (i <= row && row <= this._lastMovedIndex) {
            refPtgBase.setRow(row + this._amountToMove);
            return refPtgBase;
        }
        int i2 = this._amountToMove;
        int i3 = i + i2;
        int i4 = this._lastMovedIndex + i2;
        if (i4 < row || row < i3) {
            return null;
        }
        if (i3 <= row && row <= i4) {
            return createDeletedRef(refPtgBase);
        }
        throw new IllegalStateException("Situation not covered: (" + this._firstMovedIndex + ", " + this._lastMovedIndex + ", " + this._amountToMove + ", " + row + ", " + row + MotionUtils.f31762d);
    }

    public boolean adjustFormula(Ptg[] ptgArr, int i) {
        boolean z = false;
        for (int i2 = 0; i2 < ptgArr.length; i2++) {
            Ptg adjustPtg = adjustPtg(ptgArr[i2], i);
            if (adjustPtg != null) {
                ptgArr[i2] = adjustPtg;
                z = true;
            }
        }
        return z;
    }

    public String toString() {
        return FormulaShifter.class.getName() + " [" + this._firstMovedIndex + this._lastMovedIndex + this._amountToMove + IteratorUtils.f104924b;
    }

    private FormulaShifter(int i, int i2) {
        this._amountToMove = -1;
        this._lastMovedIndex = -1;
        this._firstMovedIndex = -1;
        this._externSheetIndex = -1;
        this._sheetName = null;
        this._version = null;
        this._srcSheetIndex = i;
        this._dstSheetIndex = i2;
        this._mode = ShiftMode.SheetMove;
    }
}
