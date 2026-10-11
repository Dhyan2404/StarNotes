package org.apache.poi.ss.usermodel;

import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.formula.eval.ErrorEval;

/* loaded from: classes13.dex */
public final class CellValue {
    public static final CellValue FALSE;
    public static final CellValue TRUE;
    private final boolean _booleanValue;
    private final CellType _cellType;
    private final int _errorCode;
    private final double _numberValue;
    private final String _textValue;

    /* renamed from: org.apache.poi.ss.usermodel.CellValue$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198211 {
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
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        CellType cellType = CellType.BOOLEAN;
        TRUE = new CellValue(cellType, 0.0d, true, null, 0);
        FALSE = new CellValue(cellType, 0.0d, false, null, 0);
    }

    private CellValue(CellType cellType, double d, boolean z, String str, int i) {
        this._cellType = cellType;
        this._numberValue = d;
        this._booleanValue = z;
        this._textValue = str;
        this._errorCode = i;
    }

    public static CellValue getError(int i) {
        return new CellValue(CellType.ERROR, 0.0d, false, null, i);
    }

    public static CellValue valueOf(boolean z) {
        return z ? TRUE : FALSE;
    }

    public String formatAsString() {
        int i = C198211.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()];
        if (i == 1) {
            return String.valueOf(this._numberValue);
        }
        if (i == 2) {
            return '\"' + this._textValue + '\"';
        }
        if (i == 3) {
            return this._booleanValue ? "TRUE" : "FALSE";
        }
        if (i == 4) {
            return ErrorEval.getText(this._errorCode);
        }
        return "<error unexpected cell type " + this._cellType + ">";
    }

    public boolean getBooleanValue() {
        return this._booleanValue;
    }

    public CellType getCellType() {
        return this._cellType;
    }

    public byte getErrorValue() {
        return (byte) this._errorCode;
    }

    public double getNumberValue() {
        return this._numberValue;
    }

    public String getStringValue() {
        return this._textValue;
    }

    public String toString() {
        return CellValue.class.getName() + " [" + formatAsString() + IteratorUtils.f104924b;
    }

    public CellValue(double d) {
        this(CellType.NUMERIC, d, false, null, 0);
    }

    public CellValue(String str) {
        this(CellType.STRING, 0.0d, false, str, 0);
    }
}
