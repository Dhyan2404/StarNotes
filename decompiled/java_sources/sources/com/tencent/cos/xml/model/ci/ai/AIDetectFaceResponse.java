package com.tencent.cos.xml.model.ci.ai;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class AIDetectFaceResponse {
    public AIDetectFaceResponseFaceInfos faceInfos;
    public String faceModelVersion;
    public int imageHeight;
    public int imageWidth;
    public String requestId;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "FaceInfos")
    /* loaded from: classes10.dex */
    public static class AIDetectFaceResponseFaceInfos {
        public int height;
        public int width;

        /* renamed from: x */
        public int f93284x;

        /* renamed from: y */
        public int f93285y;
    }
}
