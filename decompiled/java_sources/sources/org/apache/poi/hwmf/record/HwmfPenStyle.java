package org.apache.poi.hwmf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.record.HwmfPenStyle;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public class HwmfPenStyle implements Duplicatable, GenericRecord {
    protected int flag;
    protected static final BitField SUBSECTION_DASH = BitFieldFactory.getInstance(7);
    protected static final BitField SUBSECTION_ALTERNATE = BitFieldFactory.getInstance(8);
    protected static final BitField SUBSECTION_ENDCAP = BitFieldFactory.getInstance(768);
    protected static final BitField SUBSECTION_JOIN = BitFieldFactory.getInstance(12288);
    protected static final BitField SUBSECTION_GEOMETRIC = BitFieldFactory.getInstance(65536);

    /* loaded from: classes12.dex */
    public enum HwmfLineCap {
        ROUND(0, 1),
        SQUARE(1, 2),
        FLAT(2, 0);

        public final int awtFlag;
        public final int wmfFlag;

        HwmfLineCap(int i, int i2) {
            this.wmfFlag = i;
            this.awtFlag = i2;
        }

        public static HwmfLineCap valueOf(int i) {
            for (HwmfLineCap hwmfLineCap : values()) {
                if (hwmfLineCap.wmfFlag == i) {
                    return hwmfLineCap;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum HwmfLineDash {
        SOLID(0, null),
        DASH(1, 10.0f, 8.0f),
        DOT(2, 2.0f, 4.0f),
        DASHDOT(3, 10.0f, 8.0f, 2.0f, 8.0f),
        DASHDOTDOT(4, 10.0f, 4.0f, 2.0f, 4.0f, 2.0f, 4.0f),
        NULL(5, null),
        INSIDEFRAME(6, null),
        USERSTYLE(7, null);

        public final float[] dashes;
        public final int wmfFlag;

        HwmfLineDash(int i, float... fArr) {
            this.wmfFlag = i;
            this.dashes = fArr;
        }

        public static HwmfLineDash valueOf(int i) {
            for (HwmfLineDash hwmfLineDash : values()) {
                if (hwmfLineDash.wmfFlag == i) {
                    return hwmfLineDash;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public enum HwmfLineJoin {
        ROUND(0, 1),
        BEVEL(1, 2),
        MITER(2, 0);

        public final int awtFlag;
        public final int wmfFlag;

        HwmfLineJoin(int i, int i2) {
            this.wmfFlag = i;
            this.awtFlag = i2;
        }

        public static HwmfLineJoin valueOf(int i) {
            for (HwmfLineJoin hwmfLineJoin : values()) {
                if (hwmfLineJoin.wmfFlag == i) {
                    return hwmfLineJoin;
                }
            }
            return null;
        }
    }

    public HwmfPenStyle(int i) {
        this.flag = i;
    }

    public static HwmfPenStyle valueOf(int i) {
        return new HwmfPenStyle(i);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("lineCap", new Supplier() { // from class: com.sunia.HTREnginev2.q6i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfPenStyle.this.getLineCap();
            }
        }, "lineJoin", new Supplier() { // from class: com.sunia.HTREnginev2.r6i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfPenStyle.this.getLineJoin();
            }
        }, "lineDash", new Supplier() { // from class: com.sunia.HTREnginev2.s6i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfPenStyle.this.getLineDash();
            }
        }, "lineDashes", new Supplier() { // from class: com.sunia.HTREnginev2.t6i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfPenStyle.this.getLineDashes();
            }
        }, "alternateDash", new Supplier() { // from class: com.sunia.HTREnginev2.u6i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(HwmfPenStyle.this.isAlternateDash());
            }
        }, "geometric", new Supplier() { // from class: com.sunia.HTREnginev2.v6i
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(HwmfPenStyle.this.isGeometric());
            }
        });
    }

    public HwmfLineCap getLineCap() {
        return HwmfLineCap.valueOf(SUBSECTION_ENDCAP.getValue(this.flag));
    }

    public HwmfLineDash getLineDash() {
        return HwmfLineDash.valueOf(SUBSECTION_DASH.getValue(this.flag));
    }

    public float[] getLineDashes() {
        return getLineDash().dashes;
    }

    public HwmfLineJoin getLineJoin() {
        return HwmfLineJoin.valueOf(SUBSECTION_JOIN.getValue(this.flag));
    }

    public boolean isAlternateDash() {
        return SUBSECTION_ALTERNATE.isSet(this.flag);
    }

    public boolean isGeometric() {
        return SUBSECTION_GEOMETRIC.isSet(this.flag);
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.Duplicatable
    public HwmfPenStyle copy() {
        return new HwmfPenStyle(this);
    }

    public HwmfPenStyle(HwmfPenStyle hwmfPenStyle) {
        this.flag = hwmfPenStyle.flag;
    }
}
