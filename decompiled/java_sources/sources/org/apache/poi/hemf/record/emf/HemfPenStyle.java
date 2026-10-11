package org.apache.poi.hemf.record.emf;

import org.apache.poi.hwmf.record.HwmfPenStyle;

/* loaded from: classes12.dex */
public class HemfPenStyle extends HwmfPenStyle {
    private float[] dashPattern;

    public HemfPenStyle(int i) {
        super(i);
    }

    public static HemfPenStyle valueOf(HwmfPenStyle.HwmfLineCap hwmfLineCap, HwmfPenStyle.HwmfLineJoin hwmfLineJoin, HwmfPenStyle.HwmfLineDash hwmfLineDash, boolean z, boolean z2) {
        return new HemfPenStyle(HwmfPenStyle.SUBSECTION_GEOMETRIC.setBoolean(HwmfPenStyle.SUBSECTION_ALTERNATE.setBoolean(HwmfPenStyle.SUBSECTION_JOIN.setValue(HwmfPenStyle.SUBSECTION_ENDCAP.setValue(HwmfPenStyle.SUBSECTION_DASH.setValue(0, hwmfLineDash.wmfFlag), hwmfLineCap.wmfFlag), hwmfLineJoin.wmfFlag), z), z2));
    }

    @Override // org.apache.poi.hwmf.record.HwmfPenStyle
    public float[] getLineDashes() {
        return getLineDash() == HwmfPenStyle.HwmfLineDash.USERSTYLE ? this.dashPattern : super.getLineDashes();
    }

    public void setLineDashes(float[] fArr) {
        this.dashPattern = fArr == null ? null : (float[]) fArr.clone();
    }

    public HemfPenStyle(HemfPenStyle hemfPenStyle) {
        super(hemfPenStyle);
        float[] fArr = hemfPenStyle.dashPattern;
        this.dashPattern = fArr == null ? null : (float[]) fArr.clone();
    }

    @Override // org.apache.poi.hwmf.record.HwmfPenStyle, org.apache.poi.common.Duplicatable
    public HemfPenStyle copy() {
        return new HemfPenStyle(this);
    }

    public static HemfPenStyle valueOf(int i) {
        return new HemfPenStyle(i);
    }
}
