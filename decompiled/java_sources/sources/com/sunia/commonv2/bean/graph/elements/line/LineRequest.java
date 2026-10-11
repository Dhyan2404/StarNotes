package com.sunia.commonv2.bean.graph.elements.line;

import com.onyx.android.sdk.geometry.data.GeometryType;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.commonv2.global.HWREngineConstant;

/* loaded from: classes10.dex */
public class LineRequest {
    private String points;
    private String kind = GeometryType.LINE;
    private String type = "Edge";
    private String startDecoration = "none";
    private String endDecoration = HWREngineConstant.Constant.DECORATION_ARROW_HEAD;

    public void setPoints(RecognizePoint recognizePoint, RecognizePoint recognizePoint2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(recognizePoint.f84039x);
        stringBuffer.append(",");
        stringBuffer.append(recognizePoint.f84040y);
        stringBuffer.append(",");
        stringBuffer.append(recognizePoint2.f84039x);
        stringBuffer.append(",");
        stringBuffer.append(recognizePoint2.f84040y);
        this.points = stringBuffer.toString();
    }
}
