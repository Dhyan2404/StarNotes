package org.apache.poi.ss.formula.functions;

import com.google.android.material.motion.MotionUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.regex.Pattern;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.TwoDEval;
import org.apache.poi.ss.formula.eval.BlankEval;
import org.apache.poi.ss.formula.eval.BoolEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.NumberEval;
import org.apache.poi.ss.formula.eval.NumericValueEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.StringEval;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.functions.Countif;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public final class LookupUtils {
    private static Map<Integer, MatchMode> matchModeMap = new HashMap();
    private static Map<Integer, SearchMode> searchModeMap = new HashMap();

    /* renamed from: org.apache.poi.ss.formula.functions.LookupUtils$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C197481 {

        /* renamed from: $SwitchMap$org$apache$poi$ss$formula$functions$LookupUtils$MatchMode */
        static final /* synthetic */ int[] f111543x16ed7e00;

        static {
            int[] iArr = new int[MatchMode.values().length];
            f111543x16ed7e00 = iArr;
            try {
                iArr[MatchMode.ExactMatchFallbackToLargerValue.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111543x16ed7e00[MatchMode.ExactMatchFallbackToSmallerValue.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public static final class BinarySearchIndexes {
        private int _highIx;
        private int _lowIx = -1;

        public BinarySearchIndexes(int i) {
            this._highIx = i;
        }

        public int getHighIx() {
            return this._highIx;
        }

        public int getLowIx() {
            return this._lowIx;
        }

        public int getMidIx() {
            int i = this._highIx;
            int i2 = this._lowIx;
            int i3 = i - i2;
            if (i3 < 2) {
                return -1;
            }
            return i2 + (i3 / 2);
        }

        public void narrowSearch(int i, boolean z) {
            if (z) {
                this._highIx = i;
            } else {
                this._lowIx = i;
            }
        }
    }

    /* loaded from: classes13.dex */
    public static final class BooleanLookupComparer extends LookupValueComparerBase {
        private final boolean _value;

        public BooleanLookupComparer(BoolEval boolEval) {
            super(boolEval);
            this._value = boolEval.getBooleanValue();
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.LookupValueComparerBase
        public CompareResult compareSameType(ValueEval valueEval) {
            boolean booleanValue = ((BoolEval) valueEval).getBooleanValue();
            boolean z = this._value;
            return z == booleanValue ? CompareResult.EQUAL : z ? CompareResult.GREATER_THAN : CompareResult.LESS_THAN;
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.LookupValueComparerBase
        public String getValueAsString() {
            return String.valueOf(this._value);
        }
    }

    /* loaded from: classes13.dex */
    public static final class ColumnVector implements ValueVector {
        private final int _columnIndex;
        private final int _size;
        private final TwoDEval _tableArray;

        public ColumnVector(TwoDEval twoDEval, int i) {
            this._columnIndex = i;
            int width = twoDEval.getWidth() - 1;
            if (i >= 0 && i <= width) {
                this._tableArray = twoDEval;
                this._size = twoDEval.getHeight();
                return;
            }
            throw new IllegalArgumentException("Specified column index (" + i + ") is outside the allowed range (0.." + width + MotionUtils.f31762d);
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.ValueVector
        public ValueEval getItem(int i) {
            if (i <= this._size) {
                return this._tableArray.getValue(i, this._columnIndex);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Specified index (");
            sb.append(i);
            sb.append(") is outside the allowed range (0..");
            sb.append(this._size - 1);
            sb.append(MotionUtils.f31762d);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.ValueVector
        public int getSize() {
            return this._size;
        }
    }

    /* loaded from: classes13.dex */
    public interface LookupValueComparer {
        CompareResult compareTo(ValueEval valueEval);
    }

    /* loaded from: classes13.dex */
    public static abstract class LookupValueComparerBase implements LookupValueComparer {
        private final Class<? extends ValueEval> _targetClass;

        public LookupValueComparerBase(ValueEval valueEval) {
            if (valueEval == null) {
                throw new IllegalStateException("targetValue cannot be null");
            }
            this._targetClass = valueEval.getClass();
        }

        public abstract CompareResult compareSameType(ValueEval valueEval);

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.LookupValueComparer
        public final CompareResult compareTo(ValueEval valueEval) {
            if (valueEval != null) {
                return this._targetClass != valueEval.getClass() ? CompareResult.TYPE_MISMATCH : compareSameType(valueEval);
            }
            throw new IllegalStateException("compare to value cannot be null");
        }

        public abstract String getValueAsString();

        public String toString() {
            return getClass().getName() + " [" + getValueAsString() + IteratorUtils.f104924b;
        }
    }

    /* loaded from: classes13.dex */
    public enum MatchMode {
        ExactMatch(0),
        ExactMatchFallbackToSmallerValue(-1),
        ExactMatchFallbackToLargerValue(1),
        WildcardMatch(2);

        private final int intValue;

        MatchMode(int i) {
            this.intValue = i;
        }

        public int getIntValue() {
            return this.intValue;
        }
    }

    /* loaded from: classes13.dex */
    public static final class NumberLookupComparer extends LookupValueComparerBase {
        private final double _value;

        public NumberLookupComparer(NumberEval numberEval) {
            super(numberEval);
            this._value = numberEval.getNumberValue();
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.LookupValueComparerBase
        public CompareResult compareSameType(ValueEval valueEval) {
            return CompareResult.valueOf(Double.compare(this._value, ((NumberEval) valueEval).getNumberValue()));
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.LookupValueComparerBase
        public String getValueAsString() {
            return String.valueOf(this._value);
        }
    }

    /* loaded from: classes13.dex */
    public static final class RowVector implements ValueVector {
        private final int _rowIndex;
        private final int _size;
        private final TwoDEval _tableArray;

        public RowVector(TwoDEval twoDEval, int i) {
            this._rowIndex = i;
            int height = twoDEval.getHeight() - 1;
            if (i >= 0 && i <= height) {
                this._tableArray = twoDEval;
                this._size = twoDEval.getWidth();
                return;
            }
            throw new IllegalArgumentException("Specified row index (" + i + ") is outside the allowed range (0.." + height + MotionUtils.f31762d);
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.ValueVector
        public ValueEval getItem(int i) {
            if (i <= this._size) {
                return this._tableArray.getValue(this._rowIndex, i);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Specified index (");
            sb.append(i);
            sb.append(") is outside the allowed range (0..");
            sb.append(this._size - 1);
            sb.append(MotionUtils.f31762d);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.ValueVector
        public int getSize() {
            return this._size;
        }
    }

    /* loaded from: classes13.dex */
    public enum SearchMode {
        IterateForward(1),
        IterateBackward(-1),
        BinarySearchForward(2),
        BinarySearchBackward(-2);

        private final int intValue;

        SearchMode(int i) {
            this.intValue = i;
        }

        public int getIntValue() {
            return this.intValue;
        }
    }

    /* loaded from: classes13.dex */
    public static final class SheetVector implements ValueVector {
        private final RefEval _re;
        private final int _size;

        public SheetVector(RefEval refEval) {
            this._size = refEval.getNumberOfSheets();
            this._re = refEval;
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.ValueVector
        public ValueEval getItem(int i) {
            if (i < this._size) {
                return this._re.getInnerValueEval(this._re.getFirstSheetIndex() + i);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Specified index (");
            sb.append(i);
            sb.append(") is outside the allowed range (0..");
            sb.append(this._size - 1);
            sb.append(MotionUtils.f31762d);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.ValueVector
        public int getSize() {
            return this._size;
        }
    }

    /* loaded from: classes13.dex */
    public static class StringLookupComparer extends LookupValueComparerBase {
        protected final boolean _isMatchFunction;
        protected final boolean _matchExact;
        protected final String _value;
        protected final Pattern _wildCardPattern;

        public StringLookupComparer(StringEval stringEval, boolean z, boolean z2) {
            super(stringEval);
            String stringValue = stringEval.getStringValue();
            this._value = stringValue;
            this._wildCardPattern = Countif.StringMatcher.getWildCardPattern(stringValue);
            this._matchExact = z;
            this._isMatchFunction = z2;
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.LookupValueComparerBase
        public CompareResult compareSameType(ValueEval valueEval) {
            String convertToString = convertToString(valueEval);
            Pattern pattern = this._wildCardPattern;
            return (pattern == null || (!this._isMatchFunction && this._matchExact)) ? CompareResult.valueOf(this._value.compareToIgnoreCase(convertToString)) : CompareResult.valueOf(pattern.matcher(convertToString).matches());
        }

        public String convertToString(ValueEval valueEval) {
            return ((StringEval) valueEval).getStringValue();
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.LookupValueComparerBase
        public String getValueAsString() {
            return this._value;
        }
    }

    /* loaded from: classes13.dex */
    public static final class TolerantStringLookupComparer extends StringLookupComparer {
        public TolerantStringLookupComparer(ValueEval valueEval, boolean z, boolean z2) {
            super(convertToStringEval(valueEval), z, z2);
        }

        public static StringEval convertToStringEval(ValueEval valueEval) {
            return valueEval instanceof StringEval ? (StringEval) valueEval : new StringEval(OperandResolver.coerceValueToString(valueEval));
        }

        @Override // org.apache.poi.ss.formula.functions.LookupUtils.StringLookupComparer
        public String convertToString(ValueEval valueEval) {
            return OperandResolver.coerceValueToString(valueEval);
        }
    }

    /* loaded from: classes13.dex */
    public interface ValueVector {
        ValueEval getItem(int i);

        int getSize();

        default Iterator<Integer> indexIterator() {
            return new Iterator<Integer>() { // from class: org.apache.poi.ss.formula.functions.LookupUtils.ValueVector.1
                private int pos = 0;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.pos < ValueVector.this.getSize();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.Iterator
                public Integer next() {
                    if (hasNext()) {
                        int i = this.pos;
                        this.pos = i + 1;
                        return Integer.valueOf(i);
                    }
                    throw new NoSuchElementException();
                }
            };
        }

        default Iterator<Integer> reverseIndexIterator() {
            return new Iterator<Integer>() { // from class: org.apache.poi.ss.formula.functions.LookupUtils.ValueVector.2
                private int pos;

                {
                    this.pos = ValueVector.this.getSize() - 1;
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.pos > 0;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.Iterator
                public Integer next() {
                    int i = this.pos - 1;
                    this.pos = i;
                    if (i >= 0) {
                        return Integer.valueOf(i);
                    }
                    throw new NoSuchElementException();
                }
            };
        }
    }

    static {
        for (MatchMode matchMode : MatchMode.values()) {
            matchModeMap.put(Integer.valueOf(matchMode.getIntValue()), matchMode);
        }
        for (SearchMode searchMode : SearchMode.values()) {
            searchModeMap.put(Integer.valueOf(searchMode.getIntValue()), searchMode);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0099, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int binarySearchIndexOfValue(org.apache.poi.ss.formula.functions.LookupUtils.LookupValueComparer r10, org.apache.poi.ss.formula.functions.LookupUtils.ValueVector r11, org.apache.poi.ss.formula.functions.LookupUtils.MatchMode r12, boolean r13) {
        /*
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            org.apache.poi.ss.formula.functions.LookupUtils$BinarySearchIndexes r1 = new org.apache.poi.ss.formula.functions.LookupUtils$BinarySearchIndexes
            int r2 = r11.getSize()
            r1.<init>(r2)
            r2 = -1
            r3 = 0
        L10:
            int r4 = r1.getMidIx()
            if (r4 < 0) goto L99
            java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
            boolean r5 = r0.contains(r5)
            if (r5 == 0) goto L22
            goto L99
        L22:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
            r0.add(r5)
            org.apache.poi.ss.formula.eval.ValueEval r5 = r11.getItem(r4)
            org.apache.poi.ss.formula.functions.LookupUtils$CompareResult r6 = r10.compareTo(r5)
            boolean r7 = r6.isEqual()
            if (r7 == 0) goto L38
            return r4
        L38:
            int[] r7 = org.apache.poi.ss.formula.functions.LookupUtils.C197481.f111543x16ed7e00
            int r8 = r12.ordinal()
            r7 = r7[r8]
            r8 = 1
            if (r7 == r8) goto L5f
            r9 = 2
            if (r7 == r9) goto L47
            goto L79
        L47:
            boolean r7 = r6.isGreaterThan()
            if (r7 == 0) goto L79
            if (r3 != 0) goto L50
            goto L67
        L50:
            org.apache.poi.ss.formula.functions.LookupUtils$LookupValueComparer r7 = createTolerantLookupComparer(r5, r8, r8)
            org.apache.poi.ss.formula.functions.LookupUtils$CompareResult r7 = r7.compareTo(r3)
            boolean r7 = r7.isGreaterThan()
            if (r7 == 0) goto L79
            goto L67
        L5f:
            boolean r7 = r6.isLessThan()
            if (r7 == 0) goto L79
            if (r3 != 0) goto L6a
        L67:
            r2 = r4
            r3 = r5
            goto L79
        L6a:
            org.apache.poi.ss.formula.functions.LookupUtils$LookupValueComparer r7 = createTolerantLookupComparer(r5, r8, r8)
            org.apache.poi.ss.formula.functions.LookupUtils$CompareResult r7 = r7.compareTo(r3)
            boolean r7 = r7.isLessThan()
            if (r7 == 0) goto L79
            goto L67
        L79:
            boolean r5 = r6.isTypeMismatch()
            if (r5 == 0) goto L86
            int r4 = handleMidValueTypeMismatch(r10, r11, r1, r4, r13)
            if (r4 < 0) goto L10
            return r4
        L86:
            if (r13 == 0) goto L90
            boolean r5 = r6.isGreaterThan()
            r1.narrowSearch(r4, r5)
            goto L10
        L90:
            boolean r5 = r6.isLessThan()
            r1.narrowSearch(r4, r5)
            goto L10
        L99:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.functions.LookupUtils.binarySearchIndexOfValue(org.apache.poi.ss.formula.functions.LookupUtils$LookupValueComparer, org.apache.poi.ss.formula.functions.LookupUtils$ValueVector, org.apache.poi.ss.formula.functions.LookupUtils$MatchMode, boolean):int");
    }

    public static ValueVector createColumnVector(TwoDEval twoDEval, int i) {
        return new ColumnVector(twoDEval, i);
    }

    public static LookupValueComparer createLookupComparer(ValueEval valueEval, boolean z, boolean z2) {
        if (valueEval == BlankEval.instance) {
            return new NumberLookupComparer(NumberEval.ZERO);
        }
        if (valueEval instanceof StringEval) {
            return new StringLookupComparer((StringEval) valueEval, z, z2);
        }
        if (valueEval instanceof NumberEval) {
            return new NumberLookupComparer((NumberEval) valueEval);
        }
        if (valueEval instanceof BoolEval) {
            return new BooleanLookupComparer((BoolEval) valueEval);
        }
        throw new IllegalArgumentException("Bad lookup value type (" + valueEval.getClass().getName() + MotionUtils.f31762d);
    }

    public static ValueVector createRowVector(TwoDEval twoDEval, int i) {
        return new RowVector(twoDEval, i);
    }

    private static LookupValueComparer createTolerantLookupComparer(ValueEval valueEval, boolean z, boolean z2) {
        return valueEval == BlankEval.instance ? new TolerantStringLookupComparer(new StringEval(""), z, z2) : valueEval instanceof BoolEval ? new BooleanLookupComparer((BoolEval) valueEval) : (z && (valueEval instanceof NumberEval)) ? new NumberLookupComparer((NumberEval) valueEval) : new TolerantStringLookupComparer(valueEval, z, z2);
    }

    public static ValueVector createVector(TwoDEval twoDEval) {
        if (twoDEval.isColumn()) {
            return createColumnVector(twoDEval, 0);
        }
        if (twoDEval.isRow()) {
            return createRowVector(twoDEval, 0);
        }
        return null;
    }

    private static int findLastIndexInRunOfEqualValues(LookupValueComparer lookupValueComparer, ValueVector valueVector, int i, int i2) {
        do {
            i++;
            if (i >= i2) {
                return i2 - 1;
            }
        } while (lookupValueComparer.compareTo(valueVector.getItem(i)).isEqual());
        return i - 1;
    }

    private static int handleMidValueTypeMismatch(LookupValueComparer lookupValueComparer, ValueVector valueVector, BinarySearchIndexes binarySearchIndexes, int i, boolean z) {
        CompareResult compareTo;
        int highIx = binarySearchIndexes.getHighIx();
        int i2 = i;
        do {
            i2++;
            if (i2 == highIx) {
                binarySearchIndexes.narrowSearch(i, true);
                return -1;
            }
            compareTo = lookupValueComparer.compareTo(valueVector.getItem(i2));
            if (compareTo.isLessThan() && !z && i2 == highIx - 1) {
                binarySearchIndexes.narrowSearch(i, true);
                return -1;
            }
            if (compareTo.isGreaterThan() && z && i2 == highIx - 1) {
                binarySearchIndexes.narrowSearch(i, true);
                return -1;
            }
        } while (compareTo.isTypeMismatch());
        if (compareTo.isEqual()) {
            return i2;
        }
        if (z) {
            binarySearchIndexes.narrowSearch(i2, compareTo.isGreaterThan());
        } else {
            binarySearchIndexes.narrowSearch(i2, compareTo.isLessThan());
        }
        return -1;
    }

    public static int lookupFirstIndexOfValue(ValueEval valueEval, ValueVector valueVector, boolean z) throws EvaluationException {
        int lookupFirstIndexOfValue;
        LookupValueComparer createLookupComparer = createLookupComparer(valueEval, z, false);
        if (z) {
            lookupFirstIndexOfValue = performBinarySearch(valueVector, createLookupComparer);
        } else {
            lookupFirstIndexOfValue = lookupFirstIndexOfValue(createLookupComparer, valueVector, MatchMode.ExactMatch);
        }
        if (lookupFirstIndexOfValue >= 0) {
            return lookupFirstIndexOfValue;
        }
        throw new EvaluationException(ErrorEval.f111531NA);
    }

    private static int lookupIndexOfValue(LookupValueComparer lookupValueComparer, ValueVector valueVector, MatchMode matchMode, boolean z) {
        Iterator<Integer> reverseIndexIterator = z ? valueVector.reverseIndexIterator() : valueVector.indexIterator();
        int i = -1;
        ValueEval valueEval = null;
        while (reverseIndexIterator.hasNext()) {
            int intValue = reverseIndexIterator.next().intValue();
            ValueEval item = valueVector.getItem(intValue);
            CompareResult compareTo = lookupValueComparer.compareTo(item);
            if (compareTo.isEqual()) {
                return intValue;
            }
            int i2 = C197481.f111543x16ed7e00[matchMode.ordinal()];
            if (i2 == 1 ? !(!compareTo.isLessThan() || (valueEval != null && !createTolerantLookupComparer(item, true, true).compareTo(valueEval).isLessThan())) : !(i2 != 2 || !compareTo.isGreaterThan() || (valueEval != null && !createTolerantLookupComparer(item, true, true).compareTo(valueEval).isGreaterThan()))) {
                i = intValue;
                valueEval = item;
            }
        }
        return i;
    }

    private static int lookupLastIndexOfValue(LookupValueComparer lookupValueComparer, ValueVector valueVector, MatchMode matchMode) {
        return lookupIndexOfValue(lookupValueComparer, valueVector, matchMode, true);
    }

    public static MatchMode matchMode(int i) {
        MatchMode matchMode = matchModeMap.get(Integer.valueOf(i));
        if (matchMode != null) {
            return matchMode;
        }
        throw new IllegalArgumentException("unknown match mode " + i);
    }

    private static int performBinarySearch(ValueVector valueVector, LookupValueComparer lookupValueComparer) {
        BinarySearchIndexes binarySearchIndexes = new BinarySearchIndexes(valueVector.getSize());
        while (true) {
            int midIx = binarySearchIndexes.getMidIx();
            if (midIx < 0) {
                return binarySearchIndexes.getLowIx();
            }
            CompareResult compareTo = lookupValueComparer.compareTo(valueVector.getItem(midIx));
            if (compareTo.isTypeMismatch()) {
                midIx = handleMidValueTypeMismatch(lookupValueComparer, valueVector, binarySearchIndexes, midIx, false);
                if (midIx < 0) {
                    continue;
                } else {
                    compareTo = lookupValueComparer.compareTo(valueVector.getItem(midIx));
                }
            }
            if (compareTo.isEqual()) {
                return findLastIndexInRunOfEqualValues(lookupValueComparer, valueVector, midIx, binarySearchIndexes.getHighIx());
            }
            binarySearchIndexes.narrowSearch(midIx, compareTo.isLessThan());
        }
    }

    public static boolean resolveRangeLookupArg(ValueEval valueEval, int i, int i2) throws EvaluationException {
        ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, i2);
        if (singleValue == MissingArgEval.instance || (singleValue instanceof BlankEval)) {
            return false;
        }
        if (singleValue instanceof BoolEval) {
            return ((BoolEval) singleValue).getBooleanValue();
        }
        if (singleValue instanceof StringEval) {
            String stringValue = ((StringEval) singleValue).getStringValue();
            if (stringValue.length() < 1) {
                throw EvaluationException.invalidValue();
            }
            Boolean parseBoolean = Countif.parseBoolean(stringValue);
            if (parseBoolean != null) {
                return parseBoolean.booleanValue();
            }
            throw EvaluationException.invalidValue();
        }
        if (singleValue instanceof NumericValueEval) {
            return 0.0d != ((NumericValueEval) singleValue).getNumberValue();
        }
        throw new IllegalStateException("Unexpected eval type (" + singleValue + MotionUtils.f31762d);
    }

    public static int resolveRowOrColIndexArg(ValueEval valueEval, int i, int i2) throws EvaluationException {
        if (valueEval == null) {
            throw new IllegalArgumentException("argument must not be null");
        }
        try {
            ValueEval singleValue = OperandResolver.getSingleValue(valueEval, i, (short) i2);
            if ((singleValue instanceof StringEval) && OperandResolver.parseDouble(((StringEval) singleValue).getStringValue()) == null) {
                throw EvaluationException.invalidRef();
            }
            int coerceValueToInt = OperandResolver.coerceValueToInt(singleValue);
            if (coerceValueToInt >= 1) {
                return coerceValueToInt - 1;
            }
            throw EvaluationException.invalidValue();
        } catch (EvaluationException unused) {
            throw EvaluationException.invalidRef();
        }
    }

    public static TwoDEval resolveTableArrayArg(ValueEval valueEval) throws EvaluationException {
        if (valueEval instanceof TwoDEval) {
            return (TwoDEval) valueEval;
        }
        if (valueEval instanceof RefEval) {
            return ((RefEval) valueEval).offset(0, 0, 0, 0);
        }
        throw EvaluationException.invalidValue();
    }

    public static SearchMode searchMode(int i) {
        SearchMode searchMode = searchModeMap.get(Integer.valueOf(i));
        if (searchMode != null) {
            return searchMode;
        }
        throw new IllegalArgumentException("unknown search mode " + i);
    }

    public static int xlookupIndexOfValue(ValueEval valueEval, ValueVector valueVector, MatchMode matchMode, SearchMode searchMode) throws EvaluationException {
        if ((valueEval instanceof StringEval) && (matchMode == MatchMode.ExactMatchFallbackToLargerValue || matchMode == MatchMode.ExactMatchFallbackToSmallerValue)) {
            String stringValue = ((StringEval) valueEval).getStringValue();
            StringBuilder sb = new StringBuilder(stringValue.length());
            boolean z = false;
            for (char c : stringValue.toCharArray()) {
                if (c == '*' || c == '?' || c == '~') {
                    z = true;
                } else {
                    sb.append(c);
                }
                if (z) {
                    break;
                }
            }
            if (z) {
                valueEval = new StringEval(sb.toString());
            }
        }
        LookupValueComparer createTolerantLookupComparer = createTolerantLookupComparer(valueEval, matchMode != MatchMode.WildcardMatch, true);
        int binarySearchIndexOfValue = searchMode == SearchMode.BinarySearchForward ? binarySearchIndexOfValue(createTolerantLookupComparer, valueVector, matchMode, false) : searchMode == SearchMode.BinarySearchBackward ? binarySearchIndexOfValue(createTolerantLookupComparer, valueVector, matchMode, true) : searchMode == SearchMode.IterateBackward ? lookupLastIndexOfValue(createTolerantLookupComparer, valueVector, matchMode) : lookupFirstIndexOfValue(createTolerantLookupComparer, valueVector, matchMode);
        if (binarySearchIndexOfValue >= 0) {
            return binarySearchIndexOfValue;
        }
        throw new EvaluationException(ErrorEval.f111531NA);
    }

    /* loaded from: classes13.dex */
    public static final class CompareResult {
        private final boolean _isEqual;
        private final boolean _isGreaterThan;
        private final boolean _isLessThan;
        private final boolean _isTypeMismatch;
        public static final CompareResult TYPE_MISMATCH = new CompareResult(true, 0);
        public static final CompareResult LESS_THAN = new CompareResult(false, -1);
        public static final CompareResult EQUAL = new CompareResult(false, 0);
        public static final CompareResult GREATER_THAN = new CompareResult(false, 1);

        private CompareResult(boolean z, int i) {
            if (z) {
                this._isTypeMismatch = true;
                this._isLessThan = false;
                this._isEqual = false;
                this._isGreaterThan = false;
                return;
            }
            this._isTypeMismatch = false;
            this._isLessThan = i < 0;
            this._isEqual = i == 0;
            this._isGreaterThan = i > 0;
        }

        private String formatAsString() {
            return this._isTypeMismatch ? "TYPE_MISMATCH" : this._isLessThan ? "LESS_THAN" : this._isEqual ? "EQUAL" : this._isGreaterThan ? "GREATER_THAN" : "??error??";
        }

        public static CompareResult valueOf(int i) {
            if (i < 0) {
                return LESS_THAN;
            }
            if (i > 0) {
                return GREATER_THAN;
            }
            return EQUAL;
        }

        public boolean isEqual() {
            return this._isEqual;
        }

        public boolean isGreaterThan() {
            return this._isGreaterThan;
        }

        public boolean isLessThan() {
            return this._isLessThan;
        }

        public boolean isTypeMismatch() {
            return this._isTypeMismatch;
        }

        public String toString() {
            return CompareResult.class.getName() + " [" + formatAsString() + IteratorUtils.f104924b;
        }

        public static CompareResult valueOf(boolean z) {
            if (z) {
                return EQUAL;
            }
            return LESS_THAN;
        }
    }

    public static ValueVector createVector(RefEval refEval) {
        return new SheetVector(refEval);
    }

    private static int lookupFirstIndexOfValue(LookupValueComparer lookupValueComparer, ValueVector valueVector, MatchMode matchMode) {
        return lookupIndexOfValue(lookupValueComparer, valueVector, matchMode, false);
    }
}
