package org.apache.poi.ss.formula;

import com.google.android.material.motion.MotionUtils;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.CollaboratingWorkbooksEnvironment;
import org.apache.poi.ss.formula.EvaluationWorkbook;
import org.apache.poi.ss.formula.constant.ErrorConstant;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.ExternalNameEval;
import org.apache.poi.ss.formula.eval.FunctionNameEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.formula.ptg.Area3DPtg;
import org.apache.poi.ss.formula.ptg.Area3DPxg;
import org.apache.poi.ss.formula.ptg.NameXPtg;
import org.apache.poi.ss.formula.ptg.NameXPxg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.Ref3DPtg;
import org.apache.poi.ss.formula.ptg.Ref3DPxg;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public final class OperationEvaluationContext {
    public static final FreeRefFunction UDF = UserDefinedFunction.instance;
    private final WorkbookEvaluator _bookEvaluator;
    private final int _columnIndex;
    private boolean _isInArrayContext;
    private final boolean _isSingleValue;
    private final int _rowIndex;
    private final int _sheetIndex;
    private final EvaluationTracker _tracker;
    private final EvaluationWorkbook _workbook;

    /* renamed from: org.apache.poi.ss.formula.OperationEvaluationContext$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C196841 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$util$CellReference$NameType;

        static {
            int[] iArr = new int[CellReference.NameType.values().length];
            $SwitchMap$org$apache$poi$ss$util$CellReference$NameType = iArr;
            try {
                iArr[CellReference.NameType.BAD_CELL_OR_NAMED_RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$util$CellReference$NameType[CellReference.NameType.NAMED_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$util$CellReference$NameType[CellReference.NameType.COLUMN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$util$CellReference$NameType[CellReference.NameType.ROW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$util$CellReference$NameType[CellReference.NameType.CELL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public OperationEvaluationContext(WorkbookEvaluator workbookEvaluator, EvaluationWorkbook evaluationWorkbook, int i, int i2, int i3, EvaluationTracker evaluationTracker) {
        this(workbookEvaluator, evaluationWorkbook, i, i2, i3, evaluationTracker, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.poi.ss.util.CellReference applyR1C1Reference(org.apache.poi.ss.util.CellReference r7, java.lang.String r8) {
        /*
            java.util.Locale r0 = org.apache.poi.util.LocaleUtil.getUserLocale()
            java.lang.String r0 = r8.toUpperCase(r0)
            r1 = 82
            int r1 = r0.indexOf(r1)
            r2 = 67
            int r0 = r0.indexOf(r2)
            if (r1 < 0) goto La0
            if (r0 <= r1) goto La0
            r2 = 1
            int r1 = r1 + r2
            java.lang.String r1 = r8.substring(r1, r0)
            java.lang.String r1 = r1.trim()
            int r0 = r0 + r2
            java.lang.String r8 = r8.substring(r0)
            java.lang.String r8 = r8.trim()
            java.lang.String r0 = "["
            boolean r3 = r1.startsWith(r0)
            java.lang.String r4 = "]"
            r5 = 0
            r6 = -1
            if (r3 == 0) goto L50
            boolean r3 = r1.endsWith(r4)
            if (r3 == 0) goto L50
            int r3 = r1.length()
            int r3 = r3 - r2
            java.lang.String r1 = r1.substring(r2, r3)
            java.lang.String r1 = r1.trim()
            int r1 = java.lang.Integer.parseInt(r1)
            r3 = r1
            goto L5d
        L50:
            boolean r3 = r1.isEmpty()
            if (r3 != 0) goto L5c
            int r1 = java.lang.Integer.parseInt(r1)
            r3 = r5
            goto L5e
        L5c:
            r3 = r5
        L5d:
            r1 = r6
        L5e:
            boolean r0 = r8.startsWith(r0)
            if (r0 == 0) goto L7c
            boolean r0 = r8.endsWith(r4)
            if (r0 == 0) goto L7c
            int r0 = r8.length()
            int r0 = r0 - r2
            java.lang.String r8 = r8.substring(r2, r0)
            java.lang.String r8 = r8.trim()
            int r5 = java.lang.Integer.parseInt(r8)
            goto L86
        L7c:
            boolean r0 = r8.isEmpty()
            if (r0 != 0) goto L86
            int r6 = java.lang.Integer.parseInt(r8)
        L86:
            if (r1 < 0) goto L8a
            int r1 = r1 - r2
            goto L90
        L8a:
            int r8 = r7.getRow()
            int r1 = r8 + r3
        L90:
            if (r6 < 0) goto L94
            int r6 = r6 - r2
            goto L9a
        L94:
            short r7 = r7.getCol()
            int r6 = r7 + r5
        L9a:
            org.apache.poi.ss.util.CellReference r7 = new org.apache.poi.ss.util.CellReference
            r7.<init>(r1, r6)
            return r7
        La0:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r8)
            java.lang.String r8 = " is not a valid R1C1 reference"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.OperationEvaluationContext.applyR1C1Reference(org.apache.poi.ss.util.CellReference, java.lang.String):org.apache.poi.ss.util.CellReference");
    }

    private static CellReference.NameType classifyCellReference(String str, SpreadsheetVersion spreadsheetVersion) {
        return str.length() < 1 ? CellReference.NameType.BAD_CELL_OR_NAMED_RANGE : CellReference.classifyCellReference(str, spreadsheetVersion);
    }

    private ValueEval convertObjectEval(Object obj) {
        if (obj == null) {
            throw new IllegalStateException("Array item cannot be null");
        }
        if (obj instanceof String) {
            return new StringEval((String) obj);
        }
        if (obj instanceof Double) {
            return new NumberEval(((Double) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return BoolEval.valueOf(((Boolean) obj).booleanValue());
        }
        if (obj instanceof ErrorConstant) {
            return ErrorEval.valueOf(((ErrorConstant) obj).getErrorCode());
        }
        throw new IllegalArgumentException("Unexpected constant class (" + obj.getClass().getName() + MotionUtils.f31762d);
    }

    private ValueEval getExternalNameXEval(EvaluationWorkbook.ExternalName externalName, String str) {
        try {
            WorkbookEvaluator otherWorkbookEvaluator = this._bookEvaluator.getOtherWorkbookEvaluator(str);
            EvaluationName name = otherWorkbookEvaluator.getName(externalName.getName(), externalName.getIx() - 1);
            if (name != null && name.hasFormula()) {
                if (name.getNameDefinition().length > 1) {
                    throw new IllegalStateException("Complex name formulas not supported yet");
                }
                OperationEvaluationContext operationEvaluationContext = new OperationEvaluationContext(otherWorkbookEvaluator, otherWorkbookEvaluator.getWorkbook(), -1, -1, -1, this._tracker);
                Ptg ptg = name.getNameDefinition()[0];
                if (ptg instanceof Ref3DPtg) {
                    return operationEvaluationContext.getRef3DEval((Ref3DPtg) ptg);
                }
                if (ptg instanceof Ref3DPxg) {
                    return operationEvaluationContext.getRef3DEval((Ref3DPxg) ptg);
                }
                if (ptg instanceof Area3DPtg) {
                    return operationEvaluationContext.getArea3DEval((Area3DPtg) ptg);
                }
                if (ptg instanceof Area3DPxg) {
                    return operationEvaluationContext.getArea3DEval((Area3DPxg) ptg);
                }
            }
            return ErrorEval.REF_INVALID;
        } catch (CollaboratingWorkbooksEnvironment.WorkbookNotFoundException unused) {
            return ErrorEval.REF_INVALID;
        }
    }

    private ValueEval getLocalNameXEval(NameXPxg nameXPxg) {
        int sheetIndex = nameXPxg.getSheetName() != null ? this._workbook.getSheetIndex(nameXPxg.getSheetName()) : -1;
        String nameName = nameXPxg.getNameName();
        EvaluationName name = this._workbook.getName(nameName, sheetIndex);
        if (name != null) {
            return new ExternalNameEval(name);
        }
        return new FunctionNameEval(nameName);
    }

    private static CellReference.NameType getR1C1CellType(String str) {
        String upperCase = str.toUpperCase(LocaleUtil.getUserLocale());
        int indexOf = upperCase.indexOf(82);
        int indexOf2 = upperCase.indexOf(67);
        return indexOf != -1 ? indexOf2 == -1 ? CellReference.NameType.ROW : CellReference.NameType.CELL : indexOf2 == -1 ? CellReference.NameType.BAD_CELL_OR_NAMED_RANGE : CellReference.NameType.COLUMN;
    }

    private static int parseColRef(String str) {
        return Integer.parseInt(str) - 1;
    }

    private static int parseRowRef(String str) {
        return CellReference.convertColStringToIndex(str);
    }

    public SheetRangeEvaluator createExternSheetRefEvaluator(ExternSheetReferenceToken externSheetReferenceToken) {
        return createExternSheetRefEvaluator(externSheetReferenceToken.getExternSheetIndex());
    }

    public FreeRefFunction findUserDefinedFunction(String str) {
        return this._bookEvaluator.findUserDefinedFunction(str);
    }

    public ValueEval getArea3DEval(Area3DPtg area3DPtg) {
        return new LazyAreaEval(area3DPtg.getFirstRow(), area3DPtg.getFirstColumn(), area3DPtg.getLastRow(), area3DPtg.getLastColumn(), createExternSheetRefEvaluator(area3DPtg.getExternSheetIndex()));
    }

    public ValueEval getAreaEval(int i, int i2, int i3, int i4) {
        return new LazyAreaEval(i, i2, i3, i4, getRefEvaluatorForCurrentSheet());
    }

    public ValueEval getAreaValueEval(int i, int i2, int i3, int i4, Object[][] objArr) {
        ValueEval[] valueEvalArr = new ValueEval[objArr.length * objArr[0].length];
        int i5 = 0;
        for (Object[] objArr2 : objArr) {
            int i6 = 0;
            while (i6 < objArr[0].length) {
                valueEvalArr[i5] = convertObjectEval(objArr2[i6]);
                i6++;
                i5++;
            }
        }
        return new CacheAreaEval(i, i2, i3, i4, valueEvalArr);
    }

    public int getColumnIndex() {
        return this._columnIndex;
    }

    public ValueEval getDynamicReference(String str, String str2, String str3, String str4, boolean z) {
        int parseRowRef;
        int i;
        int i2;
        int parseRowRef2;
        int parseInt;
        int parseInt2;
        SheetRefEvaluator createExternSheetRefEvaluator = createExternSheetRefEvaluator(str, str2);
        if (createExternSheetRefEvaluator == null) {
            return ErrorEval.REF_INVALID;
        }
        SheetRangeEvaluator sheetRangeEvaluator = new SheetRangeEvaluator(this._sheetIndex, createExternSheetRefEvaluator);
        SpreadsheetVersion spreadsheetVersion = this._workbook.getSpreadsheetVersion();
        CellReference.NameType classifyCellReference = z ? classifyCellReference(str3, spreadsheetVersion) : getR1C1CellType(str3);
        int[] iArr = C196841.$SwitchMap$org$apache$poi$ss$util$CellReference$NameType;
        int i3 = iArr[classifyCellReference.ordinal()];
        if (i3 == 1) {
            return ErrorEval.REF_INVALID;
        }
        if (i3 == 2) {
            EvaluationName name = this._workbook.getName(str3, this._sheetIndex);
            if (name != null) {
                if (name.isRange()) {
                    return this._bookEvaluator.evaluateNameFormula(name.getNameDefinition(), this);
                }
                throw new IllegalStateException("Specified name '" + str3 + "' is not a range as expected.");
            }
            throw new IllegalStateException("Specified name '" + str3 + "' is not found in the workbook (sheetIndex=" + this._sheetIndex + ").");
        }
        if (str4 == null) {
            int i4 = iArr[classifyCellReference.ordinal()];
            if (i4 == 3) {
                if (z) {
                    return ErrorEval.REF_INVALID;
                }
                try {
                    String trim = str3.substring(str3.toUpperCase(LocaleUtil.getUserLocale()).indexOf(67) + 1).trim();
                    if (trim.startsWith(IteratorUtils.f104923a) && trim.endsWith(IteratorUtils.f104924b)) {
                        parseInt = getColumnIndex() + Integer.parseInt(trim.substring(1, trim.length() - 1).trim());
                    } else {
                        if (trim.isEmpty()) {
                            return ErrorEval.REF_INVALID;
                        }
                        parseInt = Integer.parseInt(trim) - 1;
                    }
                    return new LazyAreaEval(0, parseInt, spreadsheetVersion.getLastRowIndex(), parseInt, sheetRangeEvaluator);
                } catch (Exception unused) {
                    return ErrorEval.REF_INVALID;
                }
            }
            if (i4 != 4) {
                if (i4 == 5) {
                    CellReference cellReference = z ? new CellReference(str3) : applyR1C1Reference(new CellReference(getRowIndex(), getColumnIndex()), str3);
                    return new LazyRefEval(cellReference.getRow(), cellReference.getCol(), sheetRangeEvaluator);
                }
                throw new IllegalStateException("Unexpected reference classification of '" + str3 + "'.");
            }
            if (z) {
                return ErrorEval.REF_INVALID;
            }
            try {
                String trim2 = str3.substring(str3.toUpperCase(LocaleUtil.getUserLocale()).indexOf(82) + 1).trim();
                if (trim2.startsWith(IteratorUtils.f104923a) && trim2.endsWith(IteratorUtils.f104924b)) {
                    parseInt2 = getRowIndex() + Integer.parseInt(trim2.substring(1, trim2.length() - 1).trim());
                } else {
                    if (trim2.isEmpty()) {
                        return ErrorEval.REF_INVALID;
                    }
                    parseInt2 = Integer.parseInt(trim2) - 1;
                }
                return new LazyAreaEval(parseInt2, 0, parseInt2, spreadsheetVersion.getLastColumnIndex(), sheetRangeEvaluator);
            } catch (Exception unused2) {
                return ErrorEval.REF_INVALID;
            }
        }
        CellReference.NameType classifyCellReference2 = z ? classifyCellReference(str4, spreadsheetVersion) : getR1C1CellType(str4);
        int i5 = iArr[classifyCellReference2.ordinal()];
        if (i5 == 1) {
            return ErrorEval.REF_INVALID;
        }
        if (i5 == 2) {
            throw new IllegalStateException("Cannot evaluate '" + str3 + "'. Indirect evaluation of defined names not supported yet");
        }
        if (classifyCellReference2 != classifyCellReference) {
            return ErrorEval.REF_INVALID;
        }
        int i6 = iArr[classifyCellReference.ordinal()];
        if (i6 == 3) {
            int lastRowIndex = spreadsheetVersion.getLastRowIndex();
            parseRowRef = parseRowRef(str3);
            i = 0;
            i2 = lastRowIndex;
            parseRowRef2 = parseRowRef(str4);
        } else if (i6 == 4) {
            parseRowRef2 = spreadsheetVersion.getLastColumnIndex();
            i = parseColRef(str3);
            i2 = parseColRef(str4);
            parseRowRef = 0;
        } else {
            if (i6 != 5) {
                throw new IllegalStateException("Unexpected reference classification of '" + str3 + "'.");
            }
            CellReference cellReference2 = z ? new CellReference(str3) : applyR1C1Reference(new CellReference(getRowIndex(), getColumnIndex()), str3);
            i = cellReference2.getRow();
            parseRowRef = cellReference2.getCol();
            CellReference cellReference3 = z ? new CellReference(str4) : applyR1C1Reference(new CellReference(getRowIndex(), getColumnIndex()), str4);
            i2 = cellReference3.getRow();
            parseRowRef2 = cellReference3.getCol();
        }
        return new LazyAreaEval(i, parseRowRef, i2, parseRowRef2, sheetRangeEvaluator);
    }

    public ValueEval getNameXEval(NameXPtg nameXPtg) {
        EvaluationWorkbook.ExternalSheet externalSheet = this._workbook.getExternalSheet(nameXPtg.getSheetRefIndex());
        if (externalSheet != null && externalSheet.getWorkbookName() != null) {
            return getExternalNameXEval(this._workbook.getExternalName(nameXPtg.getSheetRefIndex(), nameXPtg.getNameIndex()), externalSheet.getWorkbookName());
        }
        return getLocalNameXEval(nameXPtg);
    }

    public ValueEval getRef3DEval(Ref3DPtg ref3DPtg) {
        return new LazyRefEval(ref3DPtg.getRow(), ref3DPtg.getColumn(), createExternSheetRefEvaluator(ref3DPtg.getExternSheetIndex()));
    }

    public ValueEval getRefEval(int i, int i2) {
        return new LazyRefEval(i, i2, getRefEvaluatorForCurrentSheet());
    }

    public SheetRangeEvaluator getRefEvaluatorForCurrentSheet() {
        return new SheetRangeEvaluator(this._sheetIndex, new SheetRefEvaluator(this._bookEvaluator, this._tracker, this._sheetIndex));
    }

    public int getRowIndex() {
        return this._rowIndex;
    }

    public int getSheetIndex() {
        return this._sheetIndex;
    }

    public EvaluationWorkbook getWorkbook() {
        return this._workbook;
    }

    public boolean isArraymode() {
        return this._isInArrayContext;
    }

    public boolean isSingleValue() {
        return this._isSingleValue;
    }

    public void setArrayMode(boolean z) {
        this._isInArrayContext = z;
    }

    public OperationEvaluationContext(WorkbookEvaluator workbookEvaluator, EvaluationWorkbook evaluationWorkbook, int i, int i2, int i3, EvaluationTracker evaluationTracker, boolean z) {
        this._bookEvaluator = workbookEvaluator;
        this._workbook = evaluationWorkbook;
        this._sheetIndex = i;
        this._rowIndex = i2;
        this._columnIndex = i3;
        this._tracker = evaluationTracker;
        this._isSingleValue = z;
    }

    public SheetRangeEvaluator createExternSheetRefEvaluator(String str, String str2, int i) {
        return createExternSheetRefEvaluator(this._workbook.getExternalSheet(str, str2, i));
    }

    public ValueEval getRef3DEval(Ref3DPxg ref3DPxg) {
        return new LazyRefEval(ref3DPxg.getRow(), ref3DPxg.getColumn(), createExternSheetRefEvaluator(ref3DPxg.getSheetName(), ref3DPxg.getLastSheetName(), ref3DPxg.getExternalWorkbookNumber()));
    }

    public SheetRangeEvaluator createExternSheetRefEvaluator(int i) {
        return createExternSheetRefEvaluator(this._workbook.getExternalSheet(i));
    }

    public ValueEval getArea3DEval(Area3DPxg area3DPxg) {
        return new LazyAreaEval(area3DPxg.getFirstRow(), area3DPxg.getFirstColumn(), area3DPxg.getLastRow(), area3DPxg.getLastColumn(), createExternSheetRefEvaluator(area3DPxg.getSheetName(), area3DPxg.getLastSheetName(), area3DPxg.getExternalWorkbookNumber()));
    }

    public SheetRangeEvaluator createExternSheetRefEvaluator(EvaluationWorkbook.ExternalSheet externalSheet) {
        WorkbookEvaluator workbookEvaluator;
        int sheetIndex;
        int sheetIndex2;
        if (externalSheet != null && externalSheet.getWorkbookName() != null) {
            String workbookName = externalSheet.getWorkbookName();
            try {
                workbookEvaluator = this._bookEvaluator.getOtherWorkbookEvaluator(workbookName);
                sheetIndex = workbookEvaluator.getSheetIndex(externalSheet.getSheetName());
                sheetIndex2 = externalSheet instanceof EvaluationWorkbook.ExternalSheetRange ? workbookEvaluator.getSheetIndex(((EvaluationWorkbook.ExternalSheetRange) externalSheet).getLastSheetName()) : -1;
                if (sheetIndex < 0) {
                    throw new IllegalStateException("Invalid sheet name '" + externalSheet.getSheetName() + "' in bool '" + workbookName + "'.");
                }
            } catch (CollaboratingWorkbooksEnvironment.WorkbookNotFoundException e) {
                throw new IllegalStateException(e.getMessage(), e);
            }
        } else {
            workbookEvaluator = this._bookEvaluator;
            sheetIndex = externalSheet == null ? 0 : this._workbook.getSheetIndex(externalSheet.getSheetName());
            sheetIndex2 = externalSheet instanceof EvaluationWorkbook.ExternalSheetRange ? this._workbook.getSheetIndex(((EvaluationWorkbook.ExternalSheetRange) externalSheet).getLastSheetName()) : -1;
        }
        if (sheetIndex2 == -1) {
            sheetIndex2 = sheetIndex;
        }
        int i = (sheetIndex2 - sheetIndex) + 1;
        SheetRefEvaluator[] sheetRefEvaluatorArr = new SheetRefEvaluator[i];
        for (int i2 = 0; i2 < i; i2++) {
            sheetRefEvaluatorArr[i2] = new SheetRefEvaluator(workbookEvaluator, this._tracker, i2 + sheetIndex);
        }
        return new SheetRangeEvaluator(sheetIndex, sheetIndex2, sheetRefEvaluatorArr);
    }

    private ValueEval getLocalNameXEval(NameXPtg nameXPtg) {
        EvaluationName name;
        String resolveNameXText = this._workbook.resolveNameXText(nameXPtg);
        int indexOf = resolveNameXText.indexOf(33);
        if (indexOf > -1) {
            String substring = resolveNameXText.substring(0, indexOf);
            String substring2 = resolveNameXText.substring(indexOf + 1);
            EvaluationWorkbook evaluationWorkbook = this._workbook;
            name = evaluationWorkbook.getName(substring2, evaluationWorkbook.getSheetIndex(substring));
        } else {
            name = this._workbook.getName(resolveNameXText, -1);
        }
        if (name != null) {
            return new ExternalNameEval(name);
        }
        return new FunctionNameEval(resolveNameXText);
    }

    public ValueEval getNameXEval(NameXPxg nameXPxg) {
        EvaluationWorkbook.ExternalSheet externalSheet = this._workbook.getExternalSheet(nameXPxg.getSheetName(), null, nameXPxg.getExternalWorkbookNumber());
        if (externalSheet != null && externalSheet.getWorkbookName() != null) {
            return getExternalNameXEval(this._workbook.getExternalName(nameXPxg.getNameName(), nameXPxg.getSheetName(), nameXPxg.getExternalWorkbookNumber()), externalSheet.getWorkbookName());
        }
        return getLocalNameXEval(nameXPxg);
    }

    private SheetRefEvaluator createExternSheetRefEvaluator(String str, String str2) {
        WorkbookEvaluator otherWorkbookEvaluator;
        if (str == null) {
            otherWorkbookEvaluator = this._bookEvaluator;
        } else if (str2 != null) {
            try {
                otherWorkbookEvaluator = this._bookEvaluator.getOtherWorkbookEvaluator(str);
            } catch (CollaboratingWorkbooksEnvironment.WorkbookNotFoundException unused) {
                return null;
            }
        } else {
            throw new IllegalArgumentException("sheetName must not be null if workbookName is provided");
        }
        int sheetIndex = str2 == null ? this._sheetIndex : otherWorkbookEvaluator.getSheetIndex(str2);
        if (sheetIndex < 0) {
            return null;
        }
        return new SheetRefEvaluator(otherWorkbookEvaluator, this._tracker, sheetIndex);
    }
}
