package org.apache.poi.ss.formula.functions;

import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.eval.AreaEval;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.ss.formula.eval.MissingArgEval;
import org.apache.poi.ss.formula.eval.OperandResolver;
import org.apache.poi.ss.formula.eval.RefEval;
import org.apache.poi.ss.formula.eval.ValueEval;

/* loaded from: classes13.dex */
public final class Offset implements Function {
    private static final int LAST_VALID_COLUMN_INDEX = 255;
    private static final int LAST_VALID_ROW_INDEX = 65535;

    /* loaded from: classes13.dex */
    public static final class LinearOffsetRange {
        private final int _length;
        private final int _offset;

        public LinearOffsetRange(int i, int i2) {
            if (i2 == 0) {
                throw new IllegalStateException("length may not be zero");
            }
            this._offset = i;
            this._length = i2;
        }

        public short getFirstIndex() {
            return (short) this._offset;
        }

        public short getLastIndex() {
            return (short) ((this._offset + this._length) - 1);
        }

        public boolean isOutOfBounds(int i, int i2) {
            return this._offset < i || getLastIndex() > i2;
        }

        public LinearOffsetRange normaliseAndTranslate(int i) {
            int i2 = this._length;
            return i2 > 0 ? i == 0 ? this : new LinearOffsetRange(i + this._offset, i2) : new LinearOffsetRange(i + this._offset + i2 + 1, -i2);
        }

        public String toString() {
            return LinearOffsetRange.class.getName() + " [" + this._offset + RemoveAudioAction.f58149k + ((int) getLastIndex()) + IteratorUtils.f104924b;
        }
    }

    private static AreaEval createOffset(BaseRef baseRef, LinearOffsetRange linearOffsetRange, LinearOffsetRange linearOffsetRange2) throws EvaluationException {
        LinearOffsetRange normaliseAndTranslate = linearOffsetRange.normaliseAndTranslate(baseRef.getFirstRowIndex());
        LinearOffsetRange normaliseAndTranslate2 = linearOffsetRange2.normaliseAndTranslate(baseRef.getFirstColumnIndex());
        if (normaliseAndTranslate.isOutOfBounds(0, 65535)) {
            throw new EvaluationException(ErrorEval.REF_INVALID);
        }
        if (normaliseAndTranslate2.isOutOfBounds(0, 255)) {
            throw new EvaluationException(ErrorEval.REF_INVALID);
        }
        return baseRef.offset(linearOffsetRange.getFirstIndex(), linearOffsetRange.getLastIndex(), linearOffsetRange2.getFirstIndex(), linearOffsetRange2.getLastIndex());
    }

    private static BaseRef evaluateBaseRef(ValueEval valueEval) throws EvaluationException {
        if (valueEval instanceof RefEval) {
            return new BaseRef((RefEval) valueEval);
        }
        if (valueEval instanceof AreaEval) {
            return new BaseRef((AreaEval) valueEval);
        }
        if (valueEval instanceof ErrorEval) {
            throw new EvaluationException((ErrorEval) valueEval);
        }
        throw new EvaluationException(ErrorEval.VALUE_INVALID);
    }

    public static int evaluateIntArg(ValueEval valueEval, int i, int i2) throws EvaluationException {
        return OperandResolver.coerceValueToInt(OperandResolver.getSingleValue(valueEval, i, i2));
    }

    @Override // org.apache.poi.ss.formula.functions.Function
    public ValueEval evaluate(ValueEval[] valueEvalArr, int i, int i2) {
        if (valueEvalArr.length < 1 || valueEvalArr.length > 5) {
            return ErrorEval.VALUE_INVALID;
        }
        int i3 = 0;
        try {
            BaseRef evaluateBaseRef = evaluateBaseRef(valueEvalArr[0]);
            ValueEval valueEval = valueEvalArr[1];
            int evaluateIntArg = valueEval instanceof MissingArgEval ? 0 : evaluateIntArg(valueEval, i, i2);
            ValueEval valueEval2 = valueEvalArr[2];
            if (!(valueEval2 instanceof MissingArgEval)) {
                i3 = evaluateIntArg(valueEval2, i, i2);
            }
            int height = evaluateBaseRef.getHeight();
            int width = evaluateBaseRef.getWidth();
            int length = valueEvalArr.length;
            if (length != 4) {
                if (length != 5) {
                    if (height != 0 && width != 0) {
                        return createOffset(evaluateBaseRef, new LinearOffsetRange(evaluateIntArg, height), new LinearOffsetRange(i3, width));
                    }
                    return ErrorEval.REF_INVALID;
                }
                ValueEval valueEval3 = valueEvalArr[4];
                if (!(valueEval3 instanceof MissingArgEval)) {
                    width = evaluateIntArg(valueEval3, i, i2);
                }
            }
            ValueEval valueEval4 = valueEvalArr[3];
            if (!(valueEval4 instanceof MissingArgEval)) {
                height = evaluateIntArg(valueEval4, i, i2);
            }
            if (height != 0) {
                return createOffset(evaluateBaseRef, new LinearOffsetRange(evaluateIntArg, height), new LinearOffsetRange(i3, width));
            }
            return ErrorEval.REF_INVALID;
        } catch (EvaluationException e) {
            return e.getErrorEval();
        }
    }

    /* loaded from: classes13.dex */
    public static final class BaseRef {
        private final AreaEval _areaEval;
        private final int _firstColumnIndex;
        private final int _firstRowIndex;
        private final int _height;
        private final RefEval _refEval;
        private final int _width;

        public BaseRef(RefEval refEval) {
            this._refEval = refEval;
            this._areaEval = null;
            this._firstRowIndex = refEval.getRow();
            this._firstColumnIndex = refEval.getColumn();
            this._height = 1;
            this._width = 1;
        }

        public int getFirstColumnIndex() {
            return this._firstColumnIndex;
        }

        public int getFirstRowIndex() {
            return this._firstRowIndex;
        }

        public int getHeight() {
            return this._height;
        }

        public int getWidth() {
            return this._width;
        }

        public AreaEval offset(int i, int i2, int i3, int i4) {
            RefEval refEval = this._refEval;
            return refEval == null ? this._areaEval.offset(i, i2, i3, i4) : refEval.offset(i, i2, i3, i4);
        }

        public BaseRef(AreaEval areaEval) {
            this._refEval = null;
            this._areaEval = areaEval;
            this._firstRowIndex = areaEval.getFirstRow();
            this._firstColumnIndex = areaEval.getFirstColumn();
            this._height = (areaEval.getLastRow() - areaEval.getFirstRow()) + 1;
            this._width = (areaEval.getLastColumn() - areaEval.getFirstColumn()) + 1;
        }
    }
}
