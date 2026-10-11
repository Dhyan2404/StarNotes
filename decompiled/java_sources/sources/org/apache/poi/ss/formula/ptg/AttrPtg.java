package org.apache.poi.ss.formula.ptg;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ss.formula.ptg.AttrPtg;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public final class AttrPtg extends ControlPtg {
    private static final int SIZE = 4;
    public static final byte sid = 25;
    private final int _chooseFuncOffset;
    private final short _data;
    private final int[] _jumpTable;
    private final byte _options;
    private static final BitField semiVolatile = BitFieldFactory.getInstance(1);
    private static final BitField optiIf = BitFieldFactory.getInstance(2);
    private static final BitField optiChoose = BitFieldFactory.getInstance(4);
    private static final BitField optiSkip = BitFieldFactory.getInstance(8);
    private static final BitField optiSum = BitFieldFactory.getInstance(16);
    private static final BitField baxcel = BitFieldFactory.getInstance(32);
    private static final BitField space = BitFieldFactory.getInstance(64);
    public static final AttrPtg SUM = new AttrPtg(16, 0, null, -1);

    /* loaded from: classes13.dex */
    public static final class SpaceType {
        public static final int CR_BEFORE = 1;
        public static final int CR_BEFORE_CLOSE_PAREN = 5;
        public static final int CR_BEFORE_OPEN_PAREN = 3;
        public static final int SPACE_AFTER_EQUALITY = 6;
        public static final int SPACE_BEFORE = 0;
        public static final int SPACE_BEFORE_CLOSE_PAREN = 4;
        public static final int SPACE_BEFORE_OPEN_PAREN = 2;

        private SpaceType() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AttrPtg(LittleEndianInput littleEndianInput) {
        this._options = littleEndianInput.readByte();
        int readShort = littleEndianInput.readShort();
        this._data = readShort;
        if (isOptimizedChoose()) {
            int[] iArr = new int[readShort];
            for (int i = 0; i < readShort; i++) {
                iArr[i] = littleEndianInput.readUShort();
            }
            this._jumpTable = iArr;
            this._chooseFuncOffset = littleEndianInput.readUShort();
            return;
        }
        this._jumpTable = null;
        this._chooseFuncOffset = -1;
    }

    public static AttrPtg createIf(int i) {
        return new AttrPtg(optiIf.set(0), i, null, -1);
    }

    public static AttrPtg createSkip(int i) {
        return new AttrPtg(optiSkip.set(0), i, null, -1);
    }

    public static AttrPtg createSpace(int i, int i2) {
        return new AttrPtg(space.set(0), (i & 255) | ((i2 << 8) & 65535), null, -1);
    }

    public static AttrPtg getSumSingle() {
        return new AttrPtg(optiSum.set(0), 0, null, -1);
    }

    private boolean isBaxcel() {
        return baxcel.isSet(this._options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$0() {
        return Byte.valueOf(this._options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf((this._data >> 8) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$2() {
        return Integer.valueOf(this._data & 255);
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg, org.apache.poi.common.Duplicatable
    public AttrPtg copy() {
        return this;
    }

    public int getChooseFuncOffset() {
        if (this._jumpTable != null) {
            return this._chooseFuncOffset;
        }
        throw new IllegalStateException("Not tAttrChoose");
    }

    public short getData() {
        return this._data;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("volatile", new Supplier() { // from class: com.sunia.HTREnginev2.ug
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AttrPtg.this.isSemiVolatile());
            }
        }, "options", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.vg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = AttrPtg.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, new BitField[]{semiVolatile, optiIf, optiChoose, optiSkip, optiSum, baxcel, space}, new String[]{"SEMI_VOLATILE", "OPTI_IF", "OPTI_CHOOSE", "OPTI_SKIP", "OPTI_SUM", "BAXCEL", "SPACE"}), "space_count", new Supplier() { // from class: com.sunia.HTREnginev2.wg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = AttrPtg.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "space_type", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.xg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = AttrPtg.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, new int[]{0, 1, 2, 3, 4, 5, 6}, new String[]{"SPACE_BEFORE", "CR_BEFORE", "SPACE_BEFORE_OPEN_PAREN", "CR_BEFORE_OPEN_PAREN", "SPACE_BEFORE_CLOSE_PAREN", "CR_BEFORE_CLOSE_PAREN", "SPACE_AFTER_EQUALITY"}));
    }

    public int[] getJumpTable() {
        return (int[]) this._jumpTable.clone();
    }

    public int getNumberOfOperands() {
        return 1;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public byte getSid() {
        return (byte) 25;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public int getSize() {
        int[] iArr = this._jumpTable;
        if (iArr != null) {
            return ((iArr.length + 1) * 2) + 4;
        }
        return 4;
    }

    public int getType() {
        return -1;
    }

    public boolean isOptimizedChoose() {
        return optiChoose.isSet(this._options);
    }

    public boolean isOptimizedIf() {
        return optiIf.isSet(this._options);
    }

    public boolean isSemiVolatile() {
        return semiVolatile.isSet(this._options);
    }

    public boolean isSkip() {
        return optiSkip.isSet(this._options);
    }

    public boolean isSpace() {
        return space.isSet(this._options);
    }

    public boolean isSum() {
        return optiSum.isSet(this._options);
    }

    public String toFormulaString(String[] strArr) {
        if (space.isSet(this._options)) {
            return strArr[0];
        }
        if (optiIf.isSet(this._options)) {
            return toFormulaString() + MotionUtils.f31761c + strArr[0] + MotionUtils.f31762d;
        }
        if (optiSkip.isSet(this._options)) {
            return toFormulaString() + strArr[0];
        }
        return toFormulaString() + MotionUtils.f31761c + strArr[0] + MotionUtils.f31762d;
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public void write(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getPtgClass() + 25);
        littleEndianOutput.writeByte(this._options);
        littleEndianOutput.writeShort(this._data);
        int[] iArr = this._jumpTable;
        if (iArr != null) {
            for (int i : iArr) {
                littleEndianOutput.writeShort(i);
            }
            littleEndianOutput.writeShort(this._chooseFuncOffset);
        }
    }

    @Override // org.apache.poi.ss.formula.ptg.Ptg
    public String toFormulaString() {
        return semiVolatile.isSet(this._options) ? "ATTR(semiVolatile)" : optiIf.isSet(this._options) ? "IF" : optiChoose.isSet(this._options) ? "CHOOSE" : optiSkip.isSet(this._options) ? "" : optiSum.isSet(this._options) ? "SUM" : baxcel.isSet(this._options) ? "ATTR(baxcel)" : space.isSet(this._options) ? "" : "UNKNOWN ATTRIBUTE";
    }

    private AttrPtg(int i, int i2, int[] iArr, int i3) {
        this._options = (byte) i;
        this._data = (short) i2;
        this._jumpTable = iArr;
        this._chooseFuncOffset = i3;
    }
}
