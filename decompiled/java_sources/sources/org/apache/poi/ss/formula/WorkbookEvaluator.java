package org.apache.poi.ss.formula;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.TreeSet;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.SimpleMessage;
import org.apache.logging.log4j.util.Supplier;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.CollaboratingWorkbooksEnvironment;
import org.apache.poi.ss.formula.WorkbookEvaluator;
import org.apache.poi.ss.formula.atp.AnalysisToolPak;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.ExternalNameEval;
import org.apache.poi.ss.formula.eval.FunctionEval;
import org.apache.poi.ss.formula.eval.FunctionNameEval;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.NotImplementedException;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.formula.functions.Function;
import org.apache.poi.ss.formula.ptg.Area3DPtg;
import org.apache.poi.ss.formula.ptg.Area3DPxg;
import org.apache.poi.ss.formula.ptg.AreaErrPtg;
import org.apache.poi.ss.formula.ptg.AreaPtg;
import org.apache.poi.ss.formula.ptg.ArrayPtg;
import org.apache.poi.ss.formula.ptg.BoolPtg;
import org.apache.poi.ss.formula.ptg.DeletedArea3DPtg;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;
import org.apache.poi.ss.formula.ptg.ErrPtg;
import org.apache.poi.ss.formula.ptg.ExpPtg;
import org.apache.poi.ss.formula.ptg.FuncVarPtg;
import org.apache.poi.ss.formula.ptg.IntPtg;
import org.apache.poi.ss.formula.ptg.MissingArgPtg;
import org.apache.poi.ss.formula.ptg.NamePtg;
import org.apache.poi.ss.formula.ptg.NameXPtg;
import org.apache.poi.ss.formula.ptg.NameXPxg;
import org.apache.poi.ss.formula.ptg.NumberPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.Ref3DPtg;
import org.apache.poi.ss.formula.ptg.Ref3DPxg;
import org.apache.poi.ss.formula.ptg.RefErrorPtg;
import org.apache.poi.ss.formula.ptg.RefPtg;
import org.apache.poi.ss.formula.ptg.RefPtgBase;
import org.apache.poi.ss.formula.ptg.StringPtg;
import org.apache.poi.ss.formula.ptg.UnknownPtg;
import org.apache.poi.ss.formula.udf.AggregatingUDFFinder;
import org.apache.poi.ss.formula.udf.UDFFinder;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.util.CellRangeAddressBase;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public final class WorkbookEvaluator {
    private static final Logger LOG = LogManager.getLogger((Class<?>) WorkbookEvaluator.class);
    private final Logger EVAL_LOG;
    private EvaluationCache _cache;
    private CollaboratingWorkbooksEnvironment _collaboratingWorkbookEnvironment;
    private final IEvaluationListener _evaluationListener;
    private boolean _ignoreMissingWorkbooks;
    private final Map<String, Integer> _sheetIndexesByName;
    private final Map<EvaluationSheet, Integer> _sheetIndexesBySheet;
    private final IStabilityClassifier _stabilityClassifier;
    private final AggregatingUDFFinder _udfFinder;
    private final EvaluationWorkbook _workbook;
    private int _workbookIx;
    private boolean dbgEvaluationOutputForNextEval;
    private int dbgEvaluationOutputIndent;

    /* renamed from: org.apache.poi.ss.formula.WorkbookEvaluator$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C196851 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BLANK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public WorkbookEvaluator(EvaluationWorkbook evaluationWorkbook, IStabilityClassifier iStabilityClassifier, UDFFinder uDFFinder) {
        this(evaluationWorkbook, null, iStabilityClassifier, uDFFinder);
    }

    private NotImplementedException addExceptionInfo(NotImplementedException notImplementedException, int i, int i2, int i3) {
        try {
            return new NotImplementedException("Error evaluating cell " + new CellReference(this._workbook.getSheetName(i), i2, i3, false, false).formatAsString(), notImplementedException);
        } catch (Exception e) {
            LOG.atError().withThrowable(e).log("Can't add exception info");
            return notImplementedException;
        }
    }

    private boolean adjustRegionRelativeReference(Ptg[] ptgArr, CellReference cellReference, CellRangeAddressBase cellRangeAddressBase) {
        int row = cellReference.getRow() - cellRangeAddressBase.getFirstRow();
        int col = cellReference.getCol() - cellRangeAddressBase.getFirstColumn();
        boolean z = false;
        for (Ptg ptg : ptgArr) {
            if (ptg instanceof RefPtgBase) {
                RefPtgBase refPtgBase = (RefPtgBase) ptg;
                SpreadsheetVersion spreadsheetVersion = this._workbook.getSpreadsheetVersion();
                if (refPtgBase.isRowRelative() && row > 0) {
                    int row2 = refPtgBase.getRow() + row;
                    if (row2 > spreadsheetVersion.getMaxRows()) {
                        throw new IndexOutOfBoundsException(spreadsheetVersion.name() + " files can only have " + spreadsheetVersion.getMaxRows() + " rows, but row " + row2 + " was requested.");
                    }
                    refPtgBase.setRow(row2);
                    z = true;
                }
                if (refPtgBase.isColRelative() && col > 0) {
                    int column = refPtgBase.getColumn() + col;
                    if (column > spreadsheetVersion.getMaxColumns()) {
                        throw new IndexOutOfBoundsException(spreadsheetVersion.name() + " files can only have " + spreadsheetVersion.getMaxColumns() + " columns, but column " + column + " was requested.");
                    }
                    refPtgBase.setColumn(column);
                    z = true;
                }
            }
        }
        return z;
    }

    private static int countTokensToBeSkipped(Ptg[] ptgArr, int i, int i2) {
        int i3 = i;
        while (i2 != 0) {
            i3++;
            if (i3 >= ptgArr.length) {
                throw new IllegalStateException("Skip distance too far (ran out of formula tokens).");
            }
            i2 -= ptgArr[i3].getSize();
            if (i2 < 0) {
                throw new IllegalStateException("Bad skip distance (wrong token size calculation).");
            }
        }
        return i3 - i;
    }

    private static ValueEval dereferenceResult(ValueEval valueEval, OperationEvaluationContext operationEvaluationContext) {
        ValueEval dereferenceResult;
        if (operationEvaluationContext != null) {
            if (operationEvaluationContext.getWorkbook() != null) {
                EvaluationCell cell = operationEvaluationContext.getWorkbook().getSheet(operationEvaluationContext.getSheetIndex()).getCell(operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
                if (cell != null && cell.isPartOfArrayFormulaGroup() && (valueEval instanceof AreaEval)) {
                    dereferenceResult = OperandResolver.getElementFromArray((AreaEval) valueEval, cell);
                } else {
                    dereferenceResult = dereferenceResult(valueEval, operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex());
                }
                return dereferenceResult == BlankEval.instance ? NumberEval.ZERO : dereferenceResult;
            }
            throw new IllegalArgumentException("OperationEvaluationContext ec.getWorkbook() is null");
        }
        throw new IllegalArgumentException("OperationEvaluationContext ec is null");
    }

    private ValueEval evaluateAny(EvaluationCell evaluationCell, final int i, final int i2, final int i3, EvaluationTracker evaluationTracker) {
        ValueEval numberEval;
        IStabilityClassifier iStabilityClassifier = this._stabilityClassifier;
        boolean z = iStabilityClassifier == null || !iStabilityClassifier.isCellFinal(i, i2, i3);
        if (evaluationCell == null || evaluationCell.getCellType() != CellType.FORMULA) {
            ValueEval valueFromNonFormulaCell = getValueFromNonFormulaCell(evaluationCell);
            if (z) {
                evaluationTracker.acceptPlainValueDependency(this._workbook, this._workbookIx, i, i2, i3, valueFromNonFormulaCell);
            }
            return valueFromNonFormulaCell;
        }
        FormulaCellCacheEntry orCreateFormulaCellEntry = this._cache.getOrCreateFormulaCellEntry(evaluationCell);
        if (z || orCreateFormulaCellEntry.isInputSensitive()) {
            evaluationTracker.acceptFormulaDependency(orCreateFormulaCellEntry);
        }
        IEvaluationListener iEvaluationListener = this._evaluationListener;
        if (orCreateFormulaCellEntry.getValue() != null) {
            if (iEvaluationListener != null) {
                iEvaluationListener.onCacheHit(i, i2, i3, orCreateFormulaCellEntry.getValue());
            }
            return orCreateFormulaCellEntry.getValue();
        }
        try {
            if (!evaluationTracker.startEvaluate(orCreateFormulaCellEntry)) {
                return ErrorEval.CIRCULAR_REF_ERROR;
            }
            try {
                Ptg[] formulaTokens = this._workbook.getFormulaTokens(evaluationCell);
                OperationEvaluationContext operationEvaluationContext = new OperationEvaluationContext(this, this._workbook, i, i2, i3, evaluationTracker);
                if (iEvaluationListener == null) {
                    numberEval = evaluateFormula(operationEvaluationContext, formulaTokens);
                } else {
                    iEvaluationListener.onStartEvaluate(evaluationCell, orCreateFormulaCellEntry);
                    ValueEval evaluateFormula = evaluateFormula(operationEvaluationContext, formulaTokens);
                    iEvaluationListener.onEndEvaluate(orCreateFormulaCellEntry, evaluateFormula);
                    numberEval = evaluateFormula;
                }
                evaluationTracker.updateCacheResult(numberEval);
            } catch (NotImplementedException e) {
                throw addExceptionInfo(e, i, i2, i3);
            } catch (RuntimeException e2) {
                if (!(e2.getCause() instanceof CollaboratingWorkbooksEnvironment.WorkbookNotFoundException) || !this._ignoreMissingWorkbooks) {
                    throw e2;
                }
                LOG.atInfo().log("{} - Continuing with cached value!", e2.getCause().getMessage());
                int i4 = C196851.$SwitchMap$org$apache$poi$ss$usermodel$CellType[evaluationCell.getCachedFormulaResultType().ordinal()];
                if (i4 == 1) {
                    numberEval = new NumberEval(evaluationCell.getNumericCellValue());
                } else if (i4 == 2) {
                    numberEval = new StringEval(evaluationCell.getStringCellValue());
                } else if (i4 == 3) {
                    numberEval = BlankEval.instance;
                } else if (i4 == 4) {
                    numberEval = BoolEval.valueOf(evaluationCell.getBooleanCellValue());
                } else {
                    if (i4 != 5) {
                        throw new IllegalStateException("Unexpected cell type '" + evaluationCell.getCellType() + "' found!");
                    }
                    numberEval = ErrorEval.valueOf(evaluationCell.getErrorCellValue());
                }
            }
            final ValueEval valueEval = numberEval;
            LOG.atDebug().log(new Supplier() { // from class: com.sunia.HTREnginev2.mao
                @Override // org.apache.logging.log4j.util.Supplier
                public final Object get() {
                    Message lambda$evaluateAny$0;
                    lambda$evaluateAny$0 = WorkbookEvaluator.this.lambda$evaluateAny$0(i, i2, i3, valueEval);
                    return lambda$evaluateAny$0;
                }
            });
            return numberEval;
        } finally {
            evaluationTracker.endEvaluate(orCreateFormulaCellEntry);
        }
    }

    private ValueEval getEvalForNameRecord(EvaluationName evaluationName, OperationEvaluationContext operationEvaluationContext) {
        if (evaluationName.isFunctionName()) {
            return new FunctionNameEval(evaluationName.getNameText());
        }
        if (evaluationName.hasFormula()) {
            return evaluateNameFormula(evaluationName.getNameDefinition(), operationEvaluationContext);
        }
        throw new IllegalStateException("Don't know how to evaluate name '" + evaluationName.getNameText() + CloudStorageConstants.SINGLE_QUOTES);
    }

    private ValueEval getEvalForPtg(Ptg ptg, OperationEvaluationContext operationEvaluationContext) {
        if (ptg instanceof NamePtg) {
            return getEvalForNameRecord(this._workbook.getName((NamePtg) ptg), operationEvaluationContext);
        }
        if (ptg instanceof NameXPtg) {
            return processNameEval(operationEvaluationContext.getNameXEval((NameXPtg) ptg), operationEvaluationContext);
        }
        if (ptg instanceof NameXPxg) {
            return processNameEval(operationEvaluationContext.getNameXEval((NameXPxg) ptg), operationEvaluationContext);
        }
        if (ptg instanceof IntPtg) {
            return new NumberEval(((IntPtg) ptg).getValue());
        }
        if (ptg instanceof NumberPtg) {
            return new NumberEval(((NumberPtg) ptg).getValue());
        }
        if (ptg instanceof StringPtg) {
            return new StringEval(((StringPtg) ptg).getValue());
        }
        if (ptg instanceof BoolPtg) {
            return BoolEval.valueOf(((BoolPtg) ptg).getValue());
        }
        if (ptg instanceof ErrPtg) {
            return ErrorEval.valueOf(((ErrPtg) ptg).getErrorCode());
        }
        if (ptg instanceof MissingArgPtg) {
            return MissingArgEval.instance;
        }
        if ((ptg instanceof AreaErrPtg) || (ptg instanceof RefErrorPtg) || (ptg instanceof DeletedArea3DPtg) || (ptg instanceof DeletedRef3DPtg)) {
            return ErrorEval.REF_INVALID;
        }
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
        if (ptg instanceof RefPtg) {
            RefPtg refPtg = (RefPtg) ptg;
            return operationEvaluationContext.getRefEval(refPtg.getRow(), refPtg.getColumn());
        }
        if (ptg instanceof AreaPtg) {
            AreaPtg areaPtg = (AreaPtg) ptg;
            return operationEvaluationContext.getAreaEval(areaPtg.getFirstRow(), areaPtg.getFirstColumn(), areaPtg.getLastRow(), areaPtg.getLastColumn());
        }
        if (ptg instanceof ArrayPtg) {
            return operationEvaluationContext.getAreaValueEval(0, 0, r7.getRowCount() - 1, r7.getColumnCount() - 1, ((ArrayPtg) ptg).getTokenArrayValues());
        }
        if (ptg instanceof UnknownPtg) {
            throw new IllegalStateException("UnknownPtg not allowed");
        }
        if (ptg instanceof ExpPtg) {
            throw new IllegalStateException("ExpPtg currently not supported");
        }
        throw new IllegalStateException("Unexpected ptg class (" + ptg.getClass().getName() + MotionUtils.f31762d);
    }

    public static Collection<String> getNotSupportedFunctionNames() {
        TreeSet treeSet = new TreeSet();
        treeSet.addAll(FunctionEval.getNotSupportedFunctionNames());
        treeSet.addAll(AnalysisToolPak.getNotSupportedFunctionNames());
        return Collections.unmodifiableCollection(treeSet);
    }

    private int getSheetIndex(EvaluationSheet evaluationSheet) {
        Integer num = this._sheetIndexesBySheet.get(evaluationSheet);
        if (num == null) {
            int sheetIndex = this._workbook.getSheetIndex(evaluationSheet);
            if (sheetIndex >= 0) {
                num = Integer.valueOf(sheetIndex);
                this._sheetIndexesBySheet.put(evaluationSheet, num);
            } else {
                throw new IllegalStateException("Specified sheet from a different book");
            }
        }
        return num.intValue();
    }

    public static Collection<String> getSupportedFunctionNames() {
        TreeSet treeSet = new TreeSet();
        treeSet.addAll(FunctionEval.getSupportedFunctionNames());
        treeSet.addAll(AnalysisToolPak.getSupportedFunctionNames());
        return Collections.unmodifiableCollection(treeSet);
    }

    public static ValueEval getValueFromNonFormulaCell(EvaluationCell evaluationCell) {
        if (evaluationCell == null) {
            return BlankEval.instance;
        }
        CellType cellType = evaluationCell.getCellType();
        int i = C196851.$SwitchMap$org$apache$poi$ss$usermodel$CellType[cellType.ordinal()];
        if (i == 1) {
            return new NumberEval(evaluationCell.getNumericCellValue());
        }
        if (i == 2) {
            return new StringEval(evaluationCell.getStringCellValue());
        }
        if (i == 3) {
            return BlankEval.instance;
        }
        if (i == 4) {
            return BoolEval.valueOf(evaluationCell.getBooleanCellValue());
        }
        if (i == 5) {
            return ErrorEval.valueOf(evaluationCell.getErrorCellValue());
        }
        throw new IllegalStateException("Unexpected cell type (" + cellType + MotionUtils.f31762d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Message lambda$evaluateAny$0(int i, int i2, int i3, ValueEval valueEval) {
        return new SimpleMessage("Evaluated " + getSheetName(i) + "!" + new CellReference(i2, i3).formatAsString() + " to " + valueEval);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Message lambda$evaluateFormula$1(String str, OperationEvaluationContext operationEvaluationContext, Ptg[] ptgArr) {
        return new SimpleMessage(str + "- evaluateFormula('" + operationEvaluationContext.getRefEvaluatorForCurrentSheet().getSheetNameRange() + "'/" + new CellReference(operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex()).formatAsString() + "): " + Arrays.toString(ptgArr).replace("\\Qorg.apache.poi.ss.formula.ptg.\\E", ""));
    }

    private ValueEval processNameEval(ValueEval valueEval, OperationEvaluationContext operationEvaluationContext) {
        return valueEval instanceof ExternalNameEval ? getEvalForNameRecord(((ExternalNameEval) valueEval).getName(), operationEvaluationContext) : valueEval;
    }

    public static void registerFunction(String str, FreeRefFunction freeRefFunction) {
        AnalysisToolPak.registerFunction(str, freeRefFunction);
    }

    public void attachToEnvironment(CollaboratingWorkbooksEnvironment collaboratingWorkbooksEnvironment, EvaluationCache evaluationCache, int i) {
        this._collaboratingWorkbookEnvironment = collaboratingWorkbooksEnvironment;
        this._cache = evaluationCache;
        this._workbookIx = i;
    }

    public void clearAllCachedResultValues() {
        this._cache.clear();
        this._sheetIndexesBySheet.clear();
        this._workbook.clearAllCachedResultValues();
    }

    public void detachFromEnvironment() {
        this._collaboratingWorkbookEnvironment = CollaboratingWorkbooksEnvironment.EMPTY;
        this._cache = new EvaluationCache(this._evaluationListener);
        this._workbookIx = 0;
    }

    public ValueEval evaluate(EvaluationCell evaluationCell) {
        return evaluateAny(evaluationCell, getSheetIndex(evaluationCell.getSheet()), evaluationCell.getRowIndex(), evaluationCell.getColumnIndex(), new EvaluationTracker(this._cache));
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x01c3, code lost:
    
        r6 = org.apache.poi.ss.formula.eval.FunctionEval.getBasicFunction(((org.apache.poi.ss.formula.ptg.FuncVarPtg) r6).getFunctionIndex()) instanceof org.apache.poi.ss.formula.functions.ArrayMode;
     */
    @org.apache.poi.util.Internal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.poi.ss.formula.eval.ValueEval evaluateFormula(final org.apache.poi.ss.formula.OperationEvaluationContext r17, final org.apache.poi.ss.formula.ptg.Ptg[] r18) {
        /*
            Method dump skipped, instructions count: 591
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.WorkbookEvaluator.evaluateFormula(org.apache.poi.ss.formula.OperationEvaluationContext, org.apache.poi.ss.formula.ptg.Ptg[]):org.apache.poi.ss.formula.eval.ValueEval");
    }

    public ValueEval evaluateList(String str, CellReference cellReference, CellRangeAddressBase cellRangeAddressBase) {
        return evaluate(str, cellReference, cellRangeAddressBase, FormulaType.DATAVALIDATION_LIST);
    }

    public ValueEval evaluateNameFormula(Ptg[] ptgArr, OperationEvaluationContext operationEvaluationContext) {
        if (ptgArr.length == 1) {
            Ptg ptg = ptgArr[0];
            if (!(ptg instanceof FuncVarPtg)) {
                return getEvalForPtg(ptg, operationEvaluationContext);
            }
        }
        return evaluateFormula(new OperationEvaluationContext(this, operationEvaluationContext.getWorkbook(), operationEvaluationContext.getSheetIndex(), operationEvaluationContext.getRowIndex(), operationEvaluationContext.getColumnIndex(), new EvaluationTracker(this._cache), false), ptgArr);
    }

    public ValueEval evaluateReference(EvaluationSheet evaluationSheet, int i, int i2, int i3, EvaluationTracker evaluationTracker) {
        return evaluateAny(evaluationSheet.getCell(i2, i3), i, i2, i3, evaluationTracker);
    }

    public FreeRefFunction findUserDefinedFunction(String str) {
        return this._udfFinder.findFunction(str);
    }

    public CollaboratingWorkbooksEnvironment getEnvironment() {
        return this._collaboratingWorkbookEnvironment;
    }

    public IEvaluationListener getEvaluationListener() {
        return this._evaluationListener;
    }

    public EvaluationName getName(String str, int i) {
        return this._workbook.getName(str, i);
    }

    public WorkbookEvaluator getOtherWorkbookEvaluator(String str) throws CollaboratingWorkbooksEnvironment.WorkbookNotFoundException {
        return this._collaboratingWorkbookEnvironment.getWorkbookEvaluator(str);
    }

    public EvaluationSheet getSheet(int i) {
        return this._workbook.getSheet(i);
    }

    public int getSheetIndexByExternIndex(int i) {
        return this._workbook.convertFromExternSheetIndex(i);
    }

    public String getSheetName(int i) {
        return this._workbook.getSheetName(i);
    }

    public EvaluationWorkbook getWorkbook() {
        return this._workbook;
    }

    public boolean isDebugEvaluationOutputForNextEval() {
        return this.dbgEvaluationOutputForNextEval;
    }

    public boolean isIgnoreMissingWorkbooks() {
        return this._ignoreMissingWorkbooks;
    }

    public void notifyDeleteCell(EvaluationCell evaluationCell) {
        this._cache.notifyDeleteCell(this._workbookIx, getSheetIndex(evaluationCell.getSheet()), evaluationCell);
    }

    public void notifyUpdateCell(EvaluationCell evaluationCell) {
        this._cache.notifyUpdateCell(this._workbookIx, getSheetIndex(evaluationCell.getSheet()), evaluationCell);
    }

    public void setDebugEvaluationOutputForNextEval(boolean z) {
        this.dbgEvaluationOutputForNextEval = z;
    }

    public void setIgnoreMissingWorkbooks(boolean z) {
        this._ignoreMissingWorkbooks = z;
    }

    public WorkbookEvaluator(EvaluationWorkbook evaluationWorkbook, IEvaluationListener iEvaluationListener, IStabilityClassifier iStabilityClassifier, UDFFinder uDFFinder) {
        this.EVAL_LOG = LogManager.getLogger("POI.FormulaEval");
        this.dbgEvaluationOutputIndent = -1;
        this._workbook = evaluationWorkbook;
        this._evaluationListener = iEvaluationListener;
        this._cache = new EvaluationCache(iEvaluationListener);
        this._sheetIndexesBySheet = new IdentityHashMap();
        this._sheetIndexesByName = new IdentityHashMap();
        this._collaboratingWorkbookEnvironment = CollaboratingWorkbooksEnvironment.EMPTY;
        this._workbookIx = 0;
        this._stabilityClassifier = iStabilityClassifier;
        AggregatingUDFFinder aggregatingUDFFinder = evaluationWorkbook == null ? null : (AggregatingUDFFinder) evaluationWorkbook.getUDFFinder();
        if (aggregatingUDFFinder != null && uDFFinder != null) {
            aggregatingUDFFinder.add(uDFFinder);
        }
        this._udfFinder = aggregatingUDFFinder;
    }

    public static void registerFunction(String str, Function function) {
        FunctionEval.registerFunction(str, function);
    }

    public ValueEval evaluate(String str, CellReference cellReference) {
        String sheetName = cellReference == null ? null : cellReference.getSheetName();
        int sheetIndex = sheetName == null ? -1 : getWorkbook().getSheetIndex(sheetName);
        int row = cellReference == null ? -1 : cellReference.getRow();
        return evaluateNameFormula(FormulaParser.parse(str, (FormulaParsingWorkbook) getWorkbook(), FormulaType.CELL, sheetIndex, row), new OperationEvaluationContext(this, getWorkbook(), sheetIndex, row, cellReference != null ? cellReference.getCol() : (short) -1, new EvaluationTracker(this._cache)));
    }

    public int getSheetIndex(String str) {
        Integer num = this._sheetIndexesByName.get(str);
        if (num == null) {
            int sheetIndex = this._workbook.getSheetIndex(str);
            if (sheetIndex < 0) {
                return -1;
            }
            num = Integer.valueOf(sheetIndex);
            this._sheetIndexesByName.put(str, num);
        }
        return num.intValue();
    }

    public static ValueEval dereferenceResult(ValueEval valueEval, int i, int i2) {
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
            return singleValue == BlankEval.instance ? NumberEval.ZERO : singleValue;
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    public ValueEval evaluate(String str, CellReference cellReference, CellRangeAddressBase cellRangeAddressBase) {
        return evaluate(str, cellReference, cellRangeAddressBase, FormulaType.CELL);
    }

    private ValueEval evaluate(String str, CellReference cellReference, CellRangeAddressBase cellRangeAddressBase, FormulaType formulaType) {
        String sheetName = cellReference == null ? null : cellReference.getSheetName();
        if (sheetName != null) {
            int sheetIndex = getWorkbook().getSheetIndex(sheetName);
            Ptg[] parse = FormulaParser.parse(str, (FormulaParsingWorkbook) getWorkbook(), formulaType, sheetIndex, cellReference.getRow());
            adjustRegionRelativeReference(parse, cellReference, cellRangeAddressBase);
            return evaluateNameFormula(parse, new OperationEvaluationContext(this, getWorkbook(), sheetIndex, cellReference.getRow(), cellReference.getCol(), new EvaluationTracker(this._cache), formulaType.isSingleValue()));
        }
        throw new IllegalArgumentException("Sheet name is required");
    }
}
