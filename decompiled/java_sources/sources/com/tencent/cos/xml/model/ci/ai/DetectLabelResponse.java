package com.tencent.cos.xml.model.ci.ai;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class DetectLabelResponse {
    public DetectLabelResponseLabels albumLabels;
    public DetectLabelResponseLabels cameraLabels;
    public DetectLabelResponseLabels newsLabels;
    public DetectLabelResponseLabels webLabels;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Labels")
    /* loaded from: classes10.dex */
    public static class DetectLabelResponseLabels {

        @XmlElement(flatListNote = true, ignoreListNote = true)
        public List<DetectLabelResponseLabelsItem> labels;
    }

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = OcrValues.ENGINE_UNDEFINED)
    /* loaded from: classes10.dex */
    public static class DetectLabelResponseLabelsItem {
        public int confidence;
        public String firstCategory;
        public String name;
        public String secondCategory;
    }
}
