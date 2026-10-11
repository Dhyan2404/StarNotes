package org.apache.poi.ss.formula;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.constant.ErrorConstant;
import org.apache.poi.ss.formula.function.FunctionMetadata;
import org.apache.poi.ss.formula.function.FunctionMetadataRegistry;
import org.apache.poi.ss.formula.ptg.AbstractFunctionPtg;
import org.apache.poi.ss.formula.ptg.AddPtg;
import org.apache.poi.ss.formula.ptg.Area3DPxg;
import org.apache.poi.ss.formula.ptg.AreaPtg;
import org.apache.poi.ss.formula.ptg.ArrayPtg;
import org.apache.poi.ss.formula.ptg.AttrPtg;
import org.apache.poi.ss.formula.ptg.BoolPtg;
import org.apache.poi.ss.formula.ptg.ConcatPtg;
import org.apache.poi.ss.formula.ptg.DividePtg;
import org.apache.poi.ss.formula.ptg.EqualPtg;
import org.apache.poi.ss.formula.ptg.ErrPtg;
import org.apache.poi.ss.formula.ptg.FuncPtg;
import org.apache.poi.ss.formula.ptg.FuncVarPtg;
import org.apache.poi.ss.formula.ptg.GreaterEqualPtg;
import org.apache.poi.ss.formula.ptg.GreaterThanPtg;
import org.apache.poi.ss.formula.ptg.IntPtg;
import org.apache.poi.ss.formula.ptg.IntersectionPtg;
import org.apache.poi.ss.formula.ptg.LessEqualPtg;
import org.apache.poi.ss.formula.ptg.LessThanPtg;
import org.apache.poi.ss.formula.ptg.MemAreaPtg;
import org.apache.poi.ss.formula.ptg.MemFuncPtg;
import org.apache.poi.ss.formula.ptg.MultiplyPtg;
import org.apache.poi.ss.formula.ptg.NamePtg;
import org.apache.poi.ss.formula.ptg.NameXPtg;
import org.apache.poi.ss.formula.ptg.NameXPxg;
import org.apache.poi.ss.formula.ptg.NotEqualPtg;
import org.apache.poi.ss.formula.ptg.NumberPtg;
import org.apache.poi.ss.formula.ptg.OperandPtg;
import org.apache.poi.ss.formula.ptg.OperationPtg;
import org.apache.poi.ss.formula.ptg.ParenthesisPtg;
import org.apache.poi.ss.formula.ptg.PercentPtg;
import org.apache.poi.ss.formula.ptg.PowerPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.RangePtg;
import org.apache.poi.ss.formula.ptg.RefPtg;
import org.apache.poi.ss.formula.ptg.StringPtg;
import org.apache.poi.ss.formula.ptg.SubtractPtg;
import org.apache.poi.ss.formula.ptg.UnaryMinusPtg;
import org.apache.poi.ss.formula.ptg.UnaryPlusPtg;
import org.apache.poi.ss.formula.ptg.UnionPtg;
import org.apache.poi.ss.formula.ptg.ValueOperatorPtg;
import org.apache.poi.ss.usermodel.FormulaError;
import org.apache.poi.ss.usermodel.Name;
import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes13.dex */
public final class FormulaParser {

    /* renamed from: CR */
    private static final char f111524CR = '\r';

    /* renamed from: LF */
    private static final char f111525LF = '\n';
    private static final char TAB = '\t';
    private static final String specAll = "All";
    private static final String specData = "Data";
    private static final String specHeaders = "Headers";
    private static final String specThisRow = "This Row";
    private static final String specTotals = "Totals";
    private final FormulaParsingWorkbook _book;
    private final int _formulaLength;
    private final String _formulaString;
    private boolean _inIntersection;
    private int _pointer = 0;
    private ParseNode _rootNode;
    private final int _rowIndex;
    private final int _sheetIndex;
    private final SpreadsheetVersion _ssVersion;
    private int look;
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) FormulaParser.class);
    private static final Pattern CELL_REF_PATTERN = Pattern.compile("(\\$?[A-Za-z]+)?(\\$?[0-9]+)?");

    /* renamed from: org.apache.poi.ss.formula.FormulaParser$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C196811 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$SpreadsheetVersion;

        static {
            int[] iArr = new int[SpreadsheetVersion.values().length];
            $SwitchMap$org$apache$poi$ss$SpreadsheetVersion = iArr;
            try {
                iArr[SpreadsheetVersion.EXCEL97.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$SpreadsheetVersion[SpreadsheetVersion.EXCEL2007.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public static final class SimpleRangePart {
        private final String _rep;
        private final Type _type;

        /* loaded from: classes13.dex */
        public enum Type {
            CELL,
            ROW,
            COLUMN;

            public static Type get(boolean z, boolean z2) {
                if (z) {
                    return z2 ? CELL : COLUMN;
                }
                if (z2) {
                    return ROW;
                }
                throw new IllegalArgumentException("must have either letters or numbers");
            }
        }

        public SimpleRangePart(String str, boolean z, boolean z2) {
            this._rep = str;
            this._type = Type.get(z, z2);
        }

        public CellReference getCellReference() {
            if (this._type == Type.CELL) {
                return new CellReference(this._rep);
            }
            throw new IllegalStateException("Not applicable to this reference-type, expected CELL, but had " + this._type);
        }

        public String getRep() {
            return this._rep;
        }

        public boolean isCell() {
            return this._type == Type.CELL;
        }

        public boolean isColumn() {
            return this._type == Type.COLUMN;
        }

        public boolean isCompatibleForArea(SimpleRangePart simpleRangePart) {
            return this._type == simpleRangePart._type;
        }

        public boolean isRow() {
            return this._type == Type.ROW;
        }

        public boolean isRowOrColumn() {
            return this._type != Type.CELL;
        }

        public String toString() {
            return SimpleRangePart.class.getName() + " [" + this._rep + IteratorUtils.f104924b;
        }
    }

    private FormulaParser(String str, FormulaParsingWorkbook formulaParsingWorkbook, int i, int i2) {
        this._formulaString = str;
        this._book = formulaParsingWorkbook;
        this._ssVersion = formulaParsingWorkbook == null ? SpreadsheetVersion.EXCEL97 : formulaParsingWorkbook.getSpreadsheetVersion();
        this._formulaLength = str.length();
        this._sheetIndex = i;
        this._rowIndex = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001f, code lost:
    
        if (r3 == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0021, code lost:
    
        r0.add(new org.apache.poi.ss.formula.ParseNode(org.apache.poi.ss.formula.ptg.MissingArgPtg.instance));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002d, code lost:
    
        if (r5.look != 41) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002f, code lost:
    
        r5 = new org.apache.poi.ss.formula.ParseNode[r0.size()];
        r0.toArray(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0038, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.poi.ss.formula.ParseNode[] Arguments() {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 2
            r0.<init>(r1)
            r5.skipWhite()
            int r1 = r5.look
            r2 = 41
            if (r1 != r2) goto L12
            org.apache.poi.ss.formula.ParseNode[] r5 = org.apache.poi.ss.formula.ParseNode.EMPTY_ARRAY
            return r5
        L12:
            r1 = 1
        L13:
            r3 = r1
        L14:
            r5.skipWhite()
            int r4 = r5.look
            boolean r4 = isArgumentDelimiter(r4)
            if (r4 == 0) goto L3f
            if (r3 == 0) goto L2b
            org.apache.poi.ss.formula.ParseNode r3 = new org.apache.poi.ss.formula.ParseNode
            org.apache.poi.ss.formula.ptg.Ptg r4 = org.apache.poi.ss.formula.ptg.MissingArgPtg.instance
            r3.<init>(r4)
            r0.add(r3)
        L2b:
            int r3 = r5.look
            if (r3 != r2) goto L39
            int r5 = r0.size()
            org.apache.poi.ss.formula.ParseNode[] r5 = new org.apache.poi.ss.formula.ParseNode[r5]
            r0.toArray(r5)
            return r5
        L39:
            r3 = 44
            r5.match(r3)
            goto L13
        L3f:
            org.apache.poi.ss.formula.ParseNode r3 = r5.intersectionExpression()
            r0.add(r3)
            r5.skipWhite()
            int r3 = r5.look
            boolean r3 = isArgumentDelimiter(r3)
            if (r3 == 0) goto L53
            r3 = 0
            goto L14
        L53:
            java.lang.String r0 = "',' or ')'"
            java.lang.RuntimeException r5 = r5.expected(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.FormulaParser.Arguments():org.apache.poi.ss.formula.ParseNode[]");
    }

    private ParseNode Term() {
        Ptg ptg;
        ParseNode powerFactor = powerFactor();
        while (true) {
            skipWhite();
            int i = this.look;
            if (i == 42) {
                match(42);
                ptg = MultiplyPtg.instance;
            } else {
                if (i != 47) {
                    return powerFactor;
                }
                match(47);
                ptg = DividePtg.instance;
            }
            powerFactor = new ParseNode(ptg, powerFactor, powerFactor());
        }
    }

    private void addName(String str) {
        Name createName = this._book.createName();
        createName.setFunction(true);
        createName.setNameName(str);
        createName.setSheetIndex(this._sheetIndex);
    }

    private ParseNode additiveExpression() {
        Ptg ptg;
        ParseNode Term = Term();
        while (true) {
            skipWhite();
            int i = this.look;
            if (i == 43) {
                match(43);
                ptg = AddPtg.instance;
            } else {
                if (i != 45) {
                    return Term;
                }
                match(45);
                ptg = SubtractPtg.instance;
            }
            Term = new ParseNode(ptg, Term, Term());
        }
    }

    private static ParseNode augmentWithMemPtg(ParseNode parseNode) {
        return new ParseNode(needsMemFunc(parseNode) ? new MemFuncPtg(parseNode.getEncodedSize()) : new MemAreaPtg(parseNode.getEncodedSize()), parseNode);
    }

    private void checkRowLengths(Object[][] objArr, int i) {
        for (int i2 = 0; i2 < objArr.length; i2++) {
            int length = objArr[i2].length;
            if (length != i) {
                throw new FormulaParseException("Array row " + i2 + " has length " + length + " but row 0 has length " + i);
            }
        }
    }

    private static void checkValidRangeOperand(String str, int i, ParseNode parseNode) {
        if (isValidRangeOperand(parseNode)) {
            return;
        }
        throw new FormulaParseException("The " + str + " of the range operator ':' at position " + i + " is not a proper reference.");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private org.apache.poi.ss.formula.ParseNode comparisonExpression() {
        /*
            r4 = this;
            org.apache.poi.ss.formula.ParseNode r0 = r4.concatExpression()
        L4:
            r4.skipWhite()
            int r1 = r4.look
            switch(r1) {
                case 60: goto Ld;
                case 61: goto Ld;
                case 62: goto Ld;
                default: goto Lc;
            }
        Lc:
            return r0
        Ld:
            org.apache.poi.ss.formula.ptg.Ptg r1 = r4.getComparisonToken()
            org.apache.poi.ss.formula.ParseNode r2 = r4.concatExpression()
            org.apache.poi.ss.formula.ParseNode r3 = new org.apache.poi.ss.formula.ParseNode
            r3.<init>(r1, r0, r2)
            r0 = r3
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.FormulaParser.comparisonExpression():org.apache.poi.ss.formula.ParseNode");
    }

    private ParseNode concatExpression() {
        ParseNode additiveExpression = additiveExpression();
        while (true) {
            skipWhite();
            if (this.look != 38) {
                return additiveExpression;
            }
            match(38);
            additiveExpression = new ParseNode(ConcatPtg.instance, additiveExpression, additiveExpression());
        }
    }

    private static Double convertArrayNumber(Ptg ptg, boolean z) {
        double value;
        if (ptg instanceof IntPtg) {
            value = ((IntPtg) ptg).getValue();
        } else {
            if (!(ptg instanceof NumberPtg)) {
                throw new IllegalStateException("Unexpected ptg (" + ptg.getClass().getName() + MotionUtils.f31762d);
            }
            value = ((NumberPtg) ptg).getValue();
        }
        if (!z) {
            value = -value;
        }
        return Double.valueOf(value);
    }

    private AreaReference createAreaRef(SimpleRangePart simpleRangePart, SimpleRangePart simpleRangePart2) {
        if (simpleRangePart.isCompatibleForArea(simpleRangePart2)) {
            return simpleRangePart.isRow() ? AreaReference.getWholeRow(this._ssVersion, simpleRangePart.getRep(), simpleRangePart2.getRep()) : simpleRangePart.isColumn() ? AreaReference.getWholeColumn(this._ssVersion, simpleRangePart.getRep(), simpleRangePart2.getRep()) : new AreaReference(simpleRangePart.getCellReference(), simpleRangePart2.getCellReference(), this._ssVersion);
        }
        throw new FormulaParseException("has incompatible parts: '" + simpleRangePart.getRep() + "' and '" + simpleRangePart2.getRep() + "'.");
    }

    private ParseNode createAreaRefParseNode(SheetIdentifier sheetIdentifier, SimpleRangePart simpleRangePart, SimpleRangePart simpleRangePart2) throws FormulaParseException {
        Ptg areaPtg;
        if (simpleRangePart2 == null) {
            CellReference cellReference = simpleRangePart.getCellReference();
            areaPtg = sheetIdentifier == null ? new RefPtg(cellReference) : this._book.get3DReferencePtg(cellReference, sheetIdentifier);
        } else {
            AreaReference createAreaRef = createAreaRef(simpleRangePart, simpleRangePart2);
            areaPtg = sheetIdentifier == null ? new AreaPtg(createAreaRef) : this._book.get3DReferencePtg(createAreaRef, sheetIdentifier);
        }
        return new ParseNode(areaPtg);
    }

    private RuntimeException expected(String str) {
        String sb;
        if (this.look == 61 && StringUtil.isBlank(this._formulaString.substring(0, this._pointer - 1))) {
            sb = "The specified formula '" + this._formulaString + "' starts with an equals sign which is not allowed.";
        } else {
            StringBuilder sb2 = new StringBuilder("Parse error near char ");
            sb2.append(this._pointer - 1);
            sb2.append(" '");
            StringBuilder appendCodePoint = sb2.appendCodePoint(this.look);
            appendCodePoint.append(CloudStorageConstants.SINGLE_QUOTES);
            appendCodePoint.append(" in specified formula '");
            appendCodePoint.append(this._formulaString);
            appendCodePoint.append("'. Expected ");
            appendCodePoint.append(str);
            sb = appendCodePoint.toString();
        }
        return new FormulaParseException(sb);
    }

    private ParseNode function(String str) {
        Ptg ptg = null;
        if (!AbstractFunctionPtg.isBuiltInFunctionName(str)) {
            FormulaParsingWorkbook formulaParsingWorkbook = this._book;
            if (formulaParsingWorkbook == null) {
                throw new IllegalStateException("Need book to evaluate name '" + str + CloudStorageConstants.SINGLE_QUOTES);
            }
            EvaluationName name = formulaParsingWorkbook.getName(str, this._sheetIndex);
            if (name == null) {
                ptg = this._book.getNameXPtg(str, null);
                if (ptg == null) {
                    LOGGER.atWarn().log("FormulaParser.function: Name '{}' is completely unknown in the current workbook.", str);
                    int i = C196811.$SwitchMap$org$apache$poi$ss$SpreadsheetVersion[this._book.getSpreadsheetVersion().ordinal()];
                    if (i == 1) {
                        addName(str);
                        ptg = this._book.getName(str, this._sheetIndex).createPtg();
                    } else {
                        if (i != 2) {
                            throw new IllegalStateException("Unexpected spreadsheet version: " + this._book.getSpreadsheetVersion().name());
                        }
                        ptg = new NameXPxg(str);
                    }
                }
            } else {
                if (!name.isFunctionName()) {
                    throw new FormulaParseException("Attempt to use name '" + str + "' as a function, but defined name in workbook does not refer to a function");
                }
                ptg = name.createPtg();
            }
        }
        match(40);
        ParseNode[] Arguments = Arguments();
        match(41);
        return getFunction(str, ptg, Arguments);
    }

    private String getBookName() {
        StringBuilder sb = new StringBuilder();
        nextChar();
        while (true) {
            int i = this.look;
            if (i == 93) {
                nextChar();
                return sb.toString();
            }
            sb.appendCodePoint(i);
            nextChar();
        }
    }

    private Ptg getComparisonToken() {
        int i = this.look;
        if (i == 61) {
            match(i);
            return EqualPtg.instance;
        }
        boolean z = i == 62;
        match(i);
        if (z) {
            if (this.look != 61) {
                return GreaterThanPtg.instance;
            }
            match(61);
            return GreaterEqualPtg.instance;
        }
        int i2 = this.look;
        if (i2 == 61) {
            match(61);
            return LessEqualPtg.instance;
        }
        if (i2 != 62) {
            return LessThanPtg.instance;
        }
        match(62);
        return NotEqualPtg.instance;
    }

    private ParseNode getFunction(String str, Ptg ptg, ParseNode[] parseNodeArr) {
        FunctionMetadata functionByName = FunctionMetadataRegistry.getFunctionByName(str.toUpperCase(Locale.ROOT));
        int length = parseNodeArr.length;
        if (functionByName == null) {
            if (ptg == null) {
                throw new IllegalStateException("NamePtg must be supplied for external functions");
            }
            int i = length + 1;
            ParseNode[] parseNodeArr2 = new ParseNode[i];
            parseNodeArr2[0] = new ParseNode(ptg);
            System.arraycopy(parseNodeArr, 0, parseNodeArr2, 1, length);
            return new ParseNode(FuncVarPtg.create(str, i), parseNodeArr2);
        }
        if (ptg != null) {
            throw new IllegalStateException("NamePtg no applicable to internal functions");
        }
        boolean z = !functionByName.hasFixedArgsLength();
        int index = functionByName.getIndex();
        if (index == 4 && parseNodeArr.length == 1) {
            return new ParseNode(AttrPtg.getSumSingle(), parseNodeArr);
        }
        validateNumArgs(parseNodeArr.length, functionByName);
        return new ParseNode(z ? FuncVarPtg.create(str, length) : FuncPtg.create(index), parseNodeArr);
    }

    private static Ptg getNumberPtgFromString(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        if (str2 == null) {
            sb.append(str);
            if (str3 != null) {
                sb.append('E');
                sb.append(str3);
            }
            String sb2 = sb.toString();
            try {
                int parseInt = Integer.parseInt(sb2);
                return IntPtg.isInRange(parseInt) ? new IntPtg(parseInt) : new NumberPtg(sb2);
            } catch (NumberFormatException unused) {
                return new NumberPtg(sb2);
            }
        }
        if (str != null) {
            sb.append(str);
        }
        sb.append('.');
        sb.append(str2);
        if (str3 != null) {
            sb.append('E');
            sb.append(str3);
        }
        return new NumberPtg(sb.toString());
    }

    private Ptg[] getRPNPtg(FormulaType formulaType) {
        new OperandClassTransformer(formulaType).transformFormula(this._rootNode);
        return ParseNode.toTokenArray(this._rootNode);
    }

    private ParseNode intersectionExpression() {
        ParseNode comparisonExpression = comparisonExpression();
        boolean z = false;
        while (true) {
            skipWhite();
            if (!this._inIntersection) {
                break;
            }
            try {
                z = true;
                comparisonExpression = new ParseNode(IntersectionPtg.instance, comparisonExpression, comparisonExpression());
            } catch (FormulaParseException unused) {
                resetPointer(this._pointer);
            }
        }
        return z ? augmentWithMemPtg(comparisonExpression) : comparisonExpression;
    }

    private static boolean isAlpha(int i) {
        return Character.isLetter(i) || i == 36 || i == 95;
    }

    private static boolean isArgumentDelimiter(int i) {
        return i == 44 || i == 41;
    }

    private static boolean isDigit(int i) {
        return Character.isDigit(i);
    }

    private static boolean isUnquotedSheetNameChar(int i) {
        return Character.isLetterOrDigit(i) || i > 128 || i == 32 || i == 46 || i == 95;
    }

    private boolean isValidCellReference(String str) {
        boolean z = CellReference.classifyCellReference(str, this._ssVersion) == CellReference.NameType.CELL;
        if (!z) {
            return z;
        }
        if (!(FunctionMetadataRegistry.getFunctionByName(str.toUpperCase(Locale.ROOT)) != null)) {
            return z;
        }
        int i = this._pointer;
        resetPointer(str.length() + i);
        skipWhite();
        boolean z2 = this.look != 40;
        resetPointer(i);
        return z2;
    }

    private static boolean isValidDefinedNameChar(int i) {
        return Character.isLetterOrDigit(i) || i > 128 || i == 46 || i == 63 || i == 92 || i == 95;
    }

    private static boolean isValidRangeOperand(ParseNode parseNode) {
        Ptg token = parseNode.getToken();
        if (token instanceof OperandPtg) {
            return true;
        }
        if (token instanceof AbstractFunctionPtg) {
            byte defaultOperandClass = ((AbstractFunctionPtg) token).getDefaultOperandClass();
            return defaultOperandClass == 0 || 32 == defaultOperandClass;
        }
        if (token instanceof ValueOperatorPtg) {
            return false;
        }
        if (token instanceof OperationPtg) {
            return true;
        }
        return token instanceof ParenthesisPtg ? isValidRangeOperand(parseNode.getChildren()[0]) : token == ErrPtg.REF_INVALID;
    }

    private static boolean isWhite(int i) {
        return i == 32 || i == 9 || i == 13 || i == 10;
    }

    private void match(int i) {
        if (this.look == i) {
            nextChar();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(CloudStorageConstants.SINGLE_QUOTES);
        StringBuilder appendCodePoint = sb.appendCodePoint(i);
        appendCodePoint.append(CloudStorageConstants.SINGLE_QUOTES);
        throw expected(appendCodePoint.toString());
    }

    private static boolean needsMemFunc(ParseNode parseNode) {
        Ptg token = parseNode.getToken();
        if ((token instanceof AbstractFunctionPtg) || (token instanceof ExternSheetReferenceToken) || (token instanceof NamePtg) || (token instanceof NameXPtg)) {
            return true;
        }
        if (!(token instanceof OperationPtg) && !(token instanceof ParenthesisPtg)) {
            return false;
        }
        for (ParseNode parseNode2 : parseNode.getChildren()) {
            if (needsMemFunc(parseNode2)) {
                return true;
            }
        }
        return false;
    }

    private void nextChar() {
        if (!isWhite(this.look)) {
            this._inIntersection = false;
        } else if (this.look == 32) {
            this._inIntersection = true;
        }
        int i = this._pointer;
        int i2 = this._formulaLength;
        if (i <= i2) {
            if (i < i2) {
                this.look = this._formulaString.codePointAt(i);
            } else {
                this.look = 0;
                this._inIntersection = false;
            }
            this._pointer += Character.charCount(this.look);
            return;
        }
        throw new IllegalStateException("Parsed past the end of the formula, pos: " + this._pointer + ", length: " + this._formulaLength + ", formula: " + this._formulaString);
    }

    private String nextNum() {
        StringBuilder sb = new StringBuilder();
        while (isDigit(this.look)) {
            sb.appendCodePoint(this.look);
            nextChar();
        }
        if (sb.length() == 0) {
            return null;
        }
        return sb.toString();
    }

    public static Ptg[] parse(String str, FormulaParsingWorkbook formulaParsingWorkbook, FormulaType formulaType, int i, int i2) {
        FormulaParser formulaParser = new FormulaParser(str, formulaParsingWorkbook, i, i2);
        formulaParser.parse();
        return formulaParser.getRPNPtg(formulaType);
    }

    private ParseNode parseArray() {
        ArrayList arrayList = new ArrayList();
        while (true) {
            arrayList.add(parseArrayRow());
            int i = this.look;
            if (i == 125) {
                Object[][] objArr = new Object[arrayList.size()];
                arrayList.toArray(objArr);
                checkRowLengths(objArr, objArr[0].length);
                return new ParseNode(new ArrayPtg(objArr));
            }
            if (i != 59) {
                throw expected("'}' or ';'");
            }
            match(59);
        }
    }

    private Object parseArrayItem() {
        skipWhite();
        int i = this.look;
        if (i == 34) {
            return parseStringLiteral();
        }
        if (i == 35) {
            return ErrorConstant.valueOf(parseErrorLiteral());
        }
        if (i != 45) {
            return (i == 70 || i == 84 || i == 102 || i == 116) ? parseBooleanLiteral() : convertArrayNumber(parseNumber(), true);
        }
        match(45);
        skipWhite();
        return convertArrayNumber(parseNumber(), false);
    }

    private Object[] parseArrayRow() {
        int i;
        ArrayList arrayList = new ArrayList();
        while (true) {
            arrayList.add(parseArrayItem());
            skipWhite();
            i = this.look;
            if (i != 44) {
                break;
            }
            match(44);
        }
        if (i != 59 && i != 125) {
            throw expected("'}' or ','");
        }
        Object[] objArr = new Object[arrayList.size()];
        arrayList.toArray(objArr);
        return objArr;
    }

    private String parseAsColumnQuantifier() {
        if (this.look != 91) {
            return null;
        }
        nextChar();
        int i = this.look;
        if (i == 35) {
            return null;
        }
        if (i == 64) {
            nextChar();
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i2 = this.look;
            if (i2 == 93) {
                match(93);
                return sb.toString();
            }
            sb.appendCodePoint(i2);
            nextChar();
        }
    }

    private String parseAsName() {
        int i;
        StringBuilder sb = new StringBuilder();
        if (!Character.isLetter(this.look) && (i = this.look) != 95 && i != 92) {
            throw expected("number, string, defined name, or data table");
        }
        while (isValidDefinedNameChar(this.look)) {
            sb.appendCodePoint(this.look);
            nextChar();
        }
        skipWhite();
        return sb.toString();
    }

    private String parseAsSpecialQuantifier() {
        if (this.look != 91) {
            return null;
        }
        nextChar();
        if (this.look != 35) {
            return null;
        }
        nextChar();
        String parseAsName = parseAsName();
        if (parseAsName.equals("This")) {
            parseAsName = parseAsName + ' ' + parseAsName();
        }
        match(93);
        return parseAsName;
    }

    private Boolean parseBooleanLiteral() {
        String parseUnquotedIdentifier = parseUnquotedIdentifier();
        if ("TRUE".equalsIgnoreCase(parseUnquotedIdentifier)) {
            return Boolean.TRUE;
        }
        if ("FALSE".equalsIgnoreCase(parseUnquotedIdentifier)) {
            return Boolean.FALSE;
        }
        throw expected("'TRUE' or 'FALSE'");
    }

    private int parseErrorLiteral() {
        match(35);
        String parseUnquotedIdentifier = parseUnquotedIdentifier();
        if (parseUnquotedIdentifier == null) {
            throw expected("remainder of error constant literal");
        }
        String upperCase = parseUnquotedIdentifier.toUpperCase(Locale.ROOT);
        char charAt = upperCase.charAt(0);
        if (charAt == 'D') {
            FormulaError formulaError = FormulaError.DIV0;
            if (!upperCase.equals("DIV")) {
                throw expected(formulaError.getString());
            }
            match(47);
            match(48);
            match(33);
            return formulaError.getCode();
        }
        if (charAt != 'N') {
            if (charAt == 'R') {
                FormulaError formulaError2 = FormulaError.REF;
                if (!upperCase.equals(formulaError2.name())) {
                    throw expected(formulaError2.getString());
                }
                match(33);
                return formulaError2.getCode();
            }
            if (charAt != 'V') {
                throw expected("#VALUE!, #REF!, #DIV/0!, #NAME?, #NUM!, #NULL! or #N/A");
            }
            FormulaError formulaError3 = FormulaError.VALUE;
            if (!upperCase.equals(formulaError3.name())) {
                throw expected(formulaError3.getString());
            }
            match(33);
            return formulaError3.getCode();
        }
        FormulaError formulaError4 = FormulaError.NAME;
        if (upperCase.equals(formulaError4.name())) {
            match(63);
            return formulaError4.getCode();
        }
        FormulaError formulaError5 = FormulaError.NUM;
        if (upperCase.equals(formulaError5.name())) {
            match(33);
            return formulaError5.getCode();
        }
        FormulaError formulaError6 = FormulaError.NULL;
        if (upperCase.equals(formulaError6.name())) {
            match(33);
            return formulaError6.getCode();
        }
        FormulaError formulaError7 = FormulaError.NA;
        if (!upperCase.equals("N")) {
            throw expected("#NAME?, #NUM!, #NULL! or #N/A");
        }
        match(47);
        int i = this.look;
        if (i != 65 && i != 97) {
            throw expected(formulaError7.getString());
        }
        match(i);
        return formulaError7.getCode();
    }

    private ParseNode parseNonRange(int i) {
        resetPointer(i);
        if (Character.isDigit(this.look)) {
            return new ParseNode(parseNumber());
        }
        if (this.look == 34) {
            return new ParseNode(new StringPtg(parseStringLiteral()));
        }
        String parseAsName = parseAsName();
        int i2 = this.look;
        if (i2 == 40) {
            return function(parseAsName);
        }
        if (i2 == 91) {
            return parseStructuredReference(parseAsName);
        }
        if (parseAsName.equalsIgnoreCase("TRUE") || parseAsName.equalsIgnoreCase("FALSE")) {
            return new ParseNode(BoolPtg.valueOf(parseAsName.equalsIgnoreCase("TRUE")));
        }
        FormulaParsingWorkbook formulaParsingWorkbook = this._book;
        if (formulaParsingWorkbook == null) {
            throw new IllegalStateException("Need book to evaluate name '" + parseAsName + CloudStorageConstants.SINGLE_QUOTES);
        }
        EvaluationName name = formulaParsingWorkbook.getName(parseAsName, this._sheetIndex);
        if (name == null) {
            throw new FormulaParseException("Specified named range '" + parseAsName + "' does not exist in the current workbook.");
        }
        if (name.isRange()) {
            return new ParseNode(name.createPtg());
        }
        throw new FormulaParseException("Specified name '" + parseAsName + "' is not a range as expected.");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.poi.ss.formula.ptg.Ptg parseNumber() {
        /*
            r6 = this;
            java.lang.String r0 = r6.nextNum()
            int r1 = r6.look
            r2 = 46
            r3 = 0
            if (r1 != r2) goto L13
            r6.nextChar()
            java.lang.String r1 = r6.nextNum()
            goto L14
        L13:
            r1 = r3
        L14:
            int r2 = r6.look
            r4 = 69
            java.lang.String r5 = "Integer"
            if (r2 != r4) goto L50
            r6.nextChar()
            int r2 = r6.look
            r3 = 43
            if (r2 != r3) goto L29
            r6.nextChar()
            goto L33
        L29:
            r3 = 45
            if (r2 != r3) goto L33
            r6.nextChar()
            java.lang.String r2 = "-"
            goto L35
        L33:
            java.lang.String r2 = ""
        L35:
            java.lang.String r3 = r6.nextNum()
            if (r3 == 0) goto L4b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r2)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            goto L50
        L4b:
            java.lang.RuntimeException r6 = r6.expected(r5)
            throw r6
        L50:
            if (r0 != 0) goto L5a
            if (r1 == 0) goto L55
            goto L5a
        L55:
            java.lang.RuntimeException r6 = r6.expected(r5)
            throw r6
        L5a:
            org.apache.poi.ss.formula.ptg.Ptg r6 = getNumberPtgFromString(r0, r1, r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.FormulaParser.parseNumber():org.apache.poi.ss.formula.ptg.Ptg");
    }

    private ParseNode parseRangeExpression() {
        ParseNode parseRangeable = parseRangeable();
        boolean z = false;
        while (this.look == 58) {
            int i = this._pointer;
            nextChar();
            ParseNode parseRangeable2 = parseRangeable();
            checkValidRangeOperand("LHS", i, parseRangeable);
            checkValidRangeOperand("RHS", i, parseRangeable2);
            z = true;
            parseRangeable = new ParseNode(RangePtg.instance, new ParseNode[]{parseRangeable, parseRangeable2});
        }
        return z ? augmentWithMemPtg(parseRangeable) : parseRangeable;
    }

    private ParseNode parseRangeable() {
        int i;
        String str;
        skipWhite();
        int i2 = this._pointer;
        SheetIdentifier parseSheetName = parseSheetName(false);
        if (parseSheetName == null) {
            resetPointer(i2);
        } else {
            skipWhite();
            i2 = this._pointer;
        }
        SimpleRangePart parseSimpleRangePart = parseSimpleRangePart();
        if (parseSimpleRangePart == null) {
            if (parseSheetName == null) {
                return parseNonRange(i2);
            }
            if (this.look == 35) {
                return new ParseNode(ErrPtg.valueOf(parseErrorLiteral()));
            }
            String parseAsName = parseAsName();
            if (parseAsName.length() == 0) {
                throw new FormulaParseException("Cell reference or Named Range expected after sheet name at index " + this._pointer + ".");
            }
            Ptg nameXPtg = this._book.getNameXPtg(parseAsName, parseSheetName);
            if (nameXPtg != null) {
                return new ParseNode(nameXPtg);
            }
            throw new FormulaParseException("Specified name '" + parseAsName + "' for sheet " + parseSheetName.asFormulaString() + " not found");
        }
        boolean isWhite = isWhite(this.look);
        if (isWhite) {
            skipWhite();
        }
        int i3 = this.look;
        if (i3 == 58) {
            int i4 = this._pointer;
            nextChar();
            skipWhite();
            SimpleRangePart parseSimpleRangePart2 = parseSimpleRangePart();
            SimpleRangePart simpleRangePart = (parseSimpleRangePart2 == null || parseSimpleRangePart.isCompatibleForArea(parseSimpleRangePart2)) ? parseSimpleRangePart2 : null;
            if (simpleRangePart == null) {
                resetPointer(i4);
                if (!parseSimpleRangePart.isCell()) {
                    if (parseSheetName != null) {
                        str = CloudStorageConstants.SINGLE_QUOTES + parseSheetName.getSheetIdentifier().getName() + PublicSuffixDatabase.f103895g;
                    } else {
                        str = "";
                    }
                    throw new FormulaParseException(str + parseSimpleRangePart.getRep() + "' is not a proper reference.");
                }
            }
            return createAreaRefParseNode(parseSheetName, parseSimpleRangePart, simpleRangePart);
        }
        if (i3 != 46) {
            if (parseSimpleRangePart.isCell() && isValidCellReference(parseSimpleRangePart.getRep())) {
                return createAreaRefParseNode(parseSheetName, parseSimpleRangePart, null);
            }
            if (parseSheetName == null) {
                return parseNonRange(i2);
            }
            throw new FormulaParseException("Second part of cell reference expected after sheet name at index " + this._pointer + ".");
        }
        nextChar();
        int i5 = 1;
        while (true) {
            i = this.look;
            if (i != 46) {
                break;
            }
            i5++;
            nextChar();
        }
        boolean isWhite2 = isWhite(i);
        skipWhite();
        SimpleRangePart parseSimpleRangePart3 = parseSimpleRangePart();
        String substring = this._formulaString.substring(i2 - 1, this._pointer - 1);
        if (parseSimpleRangePart3 == null) {
            if (parseSheetName == null) {
                return parseNonRange(i2);
            }
            throw new FormulaParseException("Complete area reference expected after sheet name at index " + this._pointer + ".");
        }
        if (isWhite || isWhite2) {
            if (!parseSimpleRangePart.isRowOrColumn() && !parseSimpleRangePart3.isRowOrColumn()) {
                return createAreaRefParseNode(parseSheetName, parseSimpleRangePart, parseSimpleRangePart3);
            }
            throw new FormulaParseException("Dotted range (full row or column) expression '" + substring + "' must not contain whitespace.");
        }
        if (i5 == 1 && parseSimpleRangePart.isRow() && parseSimpleRangePart3.isRow()) {
            return parseNonRange(i2);
        }
        if ((!parseSimpleRangePart.isRowOrColumn() && !parseSimpleRangePart3.isRowOrColumn()) || i5 == 2) {
            return createAreaRefParseNode(parseSheetName, parseSimpleRangePart, parseSimpleRangePart3);
        }
        throw new FormulaParseException("Dotted range (full row or column) expression '" + substring + "' must have exactly 2 dots.");
    }

    private SheetIdentifier parseSheetName(boolean z) {
        String bookName = this.look == 91 ? getBookName() : null;
        int i = this.look;
        if (i != 39 && !z) {
            if (i != 95 && !Character.isLetter(i)) {
                if (this.look != 33 || bookName == null) {
                    return null;
                }
                nextChar();
                return new SheetIdentifier(bookName, null);
            }
            StringBuilder sb = new StringBuilder();
            while (isUnquotedSheetNameChar(this.look)) {
                sb.appendCodePoint(this.look);
                nextChar();
            }
            if (this.look == 39) {
                nextChar();
            }
            NameIdentifier nameIdentifier = new NameIdentifier(sb.toString(), false);
            skipWhite();
            int i2 = this.look;
            if (i2 == 33) {
                nextChar();
                return new SheetIdentifier(bookName, nameIdentifier);
            }
            if (i2 == 58) {
                return parseSheetRange(bookName, nameIdentifier, false);
            }
            return null;
        }
        if (!z) {
            match(39);
        }
        if (this.look == 91) {
            bookName = getBookName();
        }
        StringBuilder sb2 = new StringBuilder();
        boolean z2 = this.look == 39;
        while (!z2) {
            sb2.appendCodePoint(this.look);
            nextChar();
            int i3 = this.look;
            if (i3 == 39) {
                nextChar();
                int i4 = this.look;
                if (i4 == 39) {
                    sb2.appendCodePoint(i4);
                    nextChar();
                } else {
                    z2 = true;
                }
            } else if (i3 == 58) {
                z2 = true;
            }
        }
        NameIdentifier nameIdentifier2 = new NameIdentifier(sb2.toString(), true);
        skipWhite();
        int i5 = this.look;
        if (i5 == 33) {
            nextChar();
            return new SheetIdentifier(bookName, nameIdentifier2);
        }
        if (i5 == 58) {
            return parseSheetRange(bookName, nameIdentifier2, true);
        }
        return null;
    }

    private SheetIdentifier parseSheetRange(String str, NameIdentifier nameIdentifier, boolean z) {
        nextChar();
        SheetIdentifier parseSheetName = parseSheetName(z);
        if (parseSheetName != null) {
            return new SheetRangeIdentifier(str, nameIdentifier, parseSheetName.getSheetIdentifier());
        }
        return null;
    }

    private ParseNode parseSimpleFactor() {
        int i;
        skipWhite();
        int i2 = this.look;
        if (i2 == 34) {
            return new ParseNode(new StringPtg(parseStringLiteral()));
        }
        if (i2 == 35) {
            return new ParseNode(ErrPtg.valueOf(parseErrorLiteral()));
        }
        if (i2 == 40) {
            match(40);
            ParseNode unionExpression = unionExpression();
            match(41);
            return new ParseNode(ParenthesisPtg.instance, unionExpression);
        }
        if (i2 == 43) {
            match(43);
            return parseUnary(true);
        }
        if (i2 == 45) {
            match(45);
            return parseUnary(false);
        }
        if (i2 == 123) {
            match(123);
            ParseNode parseArray = parseArray();
            match(125);
            return parseArray;
        }
        if (isAlpha(i2) || Character.isDigit(this.look) || (i = this.look) == 39 || i == 91 || i == 95 || i == 92) {
            return parseRangeExpression();
        }
        if (i == 46) {
            return new ParseNode(parseNumber());
        }
        throw expected("cell ref or constant literal");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0077, code lost:
    
        if (r5 <= r8._ssVersion.getMaxRows()) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.poi.ss.formula.FormulaParser.SimpleRangePart parseSimpleRangePart() {
        /*
            r8 = this;
            int r0 = r8._pointer
            r1 = 1
            int r0 = r0 - r1
            r2 = 0
            r3 = r2
        L6:
            int r4 = r8._formulaLength
            if (r0 >= r4) goto L2b
            java.lang.String r4 = r8._formulaString
            char r4 = r4.charAt(r0)
            boolean r5 = java.lang.Character.isDigit(r4)
            if (r5 == 0) goto L18
            r2 = r1
            goto L28
        L18:
            boolean r5 = java.lang.Character.isLetter(r4)
            if (r5 == 0) goto L20
            r3 = r1
            goto L28
        L20:
            r5 = 36
            if (r4 == r5) goto L28
            r5 = 95
            if (r4 != r5) goto L2b
        L28:
            int r0 = r0 + 1
            goto L6
        L2b:
            int r4 = r8._pointer
            int r5 = r4 + (-1)
            r6 = 0
            if (r0 > r5) goto L33
            return r6
        L33:
            java.lang.String r5 = r8._formulaString
            int r4 = r4 - r1
            java.lang.String r4 = r5.substring(r4, r0)
            java.util.regex.Pattern r5 = org.apache.poi.ss.formula.FormulaParser.CELL_REF_PATTERN
            java.util.regex.Matcher r5 = r5.matcher(r4)
            boolean r5 = r5.matches()
            if (r5 != 0) goto L47
            return r6
        L47:
            if (r3 == 0) goto L52
            if (r2 == 0) goto L52
            boolean r5 = r8.isValidCellReference(r4)
            if (r5 != 0) goto L7a
            return r6
        L52:
            java.lang.String r5 = ""
            java.lang.String r7 = "$"
            if (r3 == 0) goto L65
            java.lang.String r5 = r4.replace(r7, r5)
            org.apache.poi.ss.SpreadsheetVersion r7 = r8._ssVersion
            boolean r5 = org.apache.poi.ss.util.CellReference.isColumnWithinRange(r5, r7)
            if (r5 != 0) goto L7a
            return r6
        L65:
            if (r2 == 0) goto L84
            java.lang.String r5 = r4.replace(r7, r5)     // Catch: java.lang.NumberFormatException -> L84
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.NumberFormatException -> L84
            if (r5 < r1) goto L84
            org.apache.poi.ss.SpreadsheetVersion r7 = r8._ssVersion
            int r7 = r7.getMaxRows()
            if (r5 <= r7) goto L7a
            goto L84
        L7a:
            int r0 = r0 + r1
            r8.resetPointer(r0)
            org.apache.poi.ss.formula.FormulaParser$SimpleRangePart r8 = new org.apache.poi.ss.formula.FormulaParser$SimpleRangePart
            r8.<init>(r4, r3, r2)
            return r8
        L84:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.FormulaParser.parseSimpleRangePart():org.apache.poi.ss.formula.FormulaParser$SimpleRangePart");
    }

    private String parseStringLiteral() {
        match(34);
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (this.look == 34) {
                nextChar();
                if (this.look != 34) {
                    return sb.toString();
                }
            }
            sb.appendCodePoint(this.look);
            nextChar();
        }
    }

    public static Area3DPxg parseStructuredReference(String str, FormulaParsingWorkbook formulaParsingWorkbook, int i) {
        Ptg[] parse = parse(str, formulaParsingWorkbook, FormulaType.CELL, -1, i);
        if (parse.length == 1) {
            Ptg ptg = parse[0];
            if (ptg instanceof Area3DPxg) {
                return (Area3DPxg) ptg;
            }
        }
        throw new IllegalStateException("Illegal structured reference, had length: " + parse.length);
    }

    private ParseNode parseUnary(boolean z) {
        boolean z2 = isDigit(this.look) || this.look == 46;
        ParseNode powerFactor = powerFactor();
        if (z2) {
            Ptg token = powerFactor.getToken();
            if (token instanceof NumberPtg) {
                return z ? powerFactor : new ParseNode(new NumberPtg(-((NumberPtg) token).getValue()));
            }
            if (token instanceof IntPtg) {
                return z ? powerFactor : new ParseNode(new NumberPtg(-((IntPtg) token).getValue()));
            }
        }
        return new ParseNode(z ? UnaryPlusPtg.instance : UnaryMinusPtg.instance, powerFactor);
    }

    private String parseUnquotedIdentifier() {
        if (this.look == 39) {
            throw expected("unquoted identifier");
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!Character.isLetterOrDigit(this.look) && this.look != 46) {
                break;
            }
            sb.appendCodePoint(this.look);
            nextChar();
        }
        if (sb.length() < 1) {
            return null;
        }
        return sb.toString();
    }

    private ParseNode percentFactor() {
        ParseNode parseSimpleFactor = parseSimpleFactor();
        while (true) {
            skipWhite();
            if (this.look != 37) {
                return parseSimpleFactor;
            }
            match(37);
            parseSimpleFactor = new ParseNode(PercentPtg.instance, parseSimpleFactor);
        }
    }

    private ParseNode powerFactor() {
        ParseNode percentFactor = percentFactor();
        while (true) {
            skipWhite();
            if (this.look != 94) {
                return percentFactor;
            }
            match(94);
            percentFactor = new ParseNode(PowerPtg.instance, percentFactor, percentFactor());
        }
    }

    private void resetPointer(int i) {
        this._pointer = i;
        if (i <= this._formulaLength) {
            this.look = this._formulaString.codePointAt(i - Character.charCount(this.look));
        } else {
            this.look = 0;
        }
    }

    private void skipWhite() {
        while (isWhite(this.look)) {
            nextChar();
        }
    }

    private ParseNode unionExpression() {
        ParseNode intersectionExpression = intersectionExpression();
        boolean z = false;
        while (true) {
            skipWhite();
            if (this.look != 44) {
                break;
            }
            nextChar();
            z = true;
            intersectionExpression = new ParseNode(UnionPtg.instance, intersectionExpression, intersectionExpression());
        }
        return z ? augmentWithMemPtg(intersectionExpression) : intersectionExpression;
    }

    private void validateNumArgs(int i, FunctionMetadata functionMetadata) {
        int maxParams;
        String str;
        String str2;
        if (i < functionMetadata.getMinParams()) {
            String str3 = "Too few arguments to function '" + functionMetadata.getName() + "'. ";
            if (functionMetadata.hasFixedArgsLength()) {
                str2 = str3 + "Expected " + functionMetadata.getMinParams();
            } else {
                str2 = str3 + "At least " + functionMetadata.getMinParams() + " were expected";
            }
            throw new FormulaParseException(str2 + " but got " + i + ".");
        }
        if (functionMetadata.hasUnlimitedVarags()) {
            FormulaParsingWorkbook formulaParsingWorkbook = this._book;
            maxParams = formulaParsingWorkbook != null ? formulaParsingWorkbook.getSpreadsheetVersion().getMaxFunctionArgs() : functionMetadata.getMaxParams();
        } else {
            maxParams = functionMetadata.getMaxParams();
        }
        if (i > maxParams) {
            String str4 = "Too many arguments to function '" + functionMetadata.getName() + "'. ";
            if (functionMetadata.hasFixedArgsLength()) {
                str = str4 + "Expected " + maxParams;
            } else {
                str = str4 + "At most " + maxParams + " were expected";
            }
            throw new FormulaParseException(str + " but got " + i + ".");
        }
    }

    public static Ptg[] parse(String str, FormulaParsingWorkbook formulaParsingWorkbook, FormulaType formulaType, int i) {
        return parse(str, formulaParsingWorkbook, formulaType, i, -1);
    }

    private void parse() {
        this._pointer = 0;
        nextChar();
        this._rootNode = unionExpression();
        if (this._pointer > this._formulaLength) {
            return;
        }
        throw new FormulaParseException("Unused input [" + this._formulaString.substring(this._pointer - 1) + "] after attempting to parse the formula [" + this._formulaString + IteratorUtils.f104924b);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x015d, code lost:
    
        if (r7.equals(org.apache.poi.ss.formula.FormulaParser.specThisRow) == false) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0355  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.poi.ss.formula.ParseNode parseStructuredReference(java.lang.String r30) {
        /*
            Method dump skipped, instructions count: 998
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.FormulaParser.parseStructuredReference(java.lang.String):org.apache.poi.ss.formula.ParseNode");
    }
}
