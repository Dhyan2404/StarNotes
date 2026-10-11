package org.apache.poi.style;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.Units;

/* loaded from: classes13.dex */
public class UnitValue {
    private Unit unit;
    private float value;

    /* renamed from: org.apache.poi.style.UnitValue$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198591 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$style$UnitValue$Unit;

        static {
            int[] iArr = new int[Unit.values().length];
            $SwitchMap$org$apache$poi$style$UnitValue$Unit = iArr;
            try {
                iArr[Unit.EM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$style$UnitValue$Unit[Unit.PT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$style$UnitValue$Unit[Unit.PX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$style$UnitValue$Unit[Unit.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$style$UnitValue$Unit[Unit.PCT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum Unit {
        NUMBER(""),
        PX(ExtUnits.UNIT_PX),
        PT(ExtUnits.UNIT_PT),
        EM(ExtUnits.UNIT_EM),
        PCT("%");

        String suffix;

        Unit(String str) {
            this.suffix = str;
        }

        public String getSuffix() {
            return this.suffix;
        }
    }

    public UnitValue(double d) {
        this.unit = Unit.PX;
        this.value = ExtUnits.getFormatValue(d);
    }

    public static UnitValue fromEM(double d) {
        return new UnitValue(d, Unit.EM);
    }

    public static UnitValue fromNum(double d) {
        return new UnitValue(d, Unit.NUMBER);
    }

    public static UnitValue fromPCT(double d) {
        return new UnitValue(d, Unit.PCT);
    }

    public static UnitValue fromPT(double d) {
        return new UnitValue(d, Unit.PT);
    }

    public static UnitValue fromPX(double d) {
        return new UnitValue(d);
    }

    public UnitValue add(UnitValue unitValue) {
        if (unitValue == null) {
            return this;
        }
        UnitValue unitValue2 = new UnitValue(0.0d);
        Unit unit = this.unit;
        if (unit == unitValue.unit) {
            unitValue2.unit = unit;
            unitValue2.value = ExtUnits.getFormatValue(this.value + unitValue.value);
        } else {
            unitValue2.value = ExtUnits.getFormatValue(getNumberValue() + unitValue.getNumberValue());
        }
        return unitValue2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof UnitValue)) {
            return false;
        }
        UnitValue unitValue = (UnitValue) obj;
        return this.unit == unitValue.unit && this.value == unitValue.value;
    }

    public float getNumberValue() {
        int i = C198591.$SwitchMap$org$apache$poi$style$UnitValue$Unit[this.unit.ordinal()];
        return i != 1 ? i != 2 ? this.value : Units.pointsToPixel(this.value) : ExtUnits.getFormatValue(ExtUnits.emToPX(this.value));
    }

    public Unit getUnit() {
        return this.unit;
    }

    public float getValue() {
        return this.value;
    }

    public boolean isValid() {
        return this.value != 0.0f;
    }

    public String toString() {
        return CloudStorageConstants.SINGLE_QUOTES + this.value + this.unit + Chars.QUOTE;
    }

    public String toStyle() {
        return toStyle(true);
    }

    public String toStyle(boolean z) {
        if (z) {
            return this.value + this.unit.suffix + ';';
        }
        return this.value + this.unit.suffix;
    }

    public UnitValue(double d, Unit unit) {
        this(d);
        this.unit = unit;
    }
}
